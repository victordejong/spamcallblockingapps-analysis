package androidx.media2.exoplayer.external.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.ExoMediaCrypto;
import androidx.media2.exoplayer.external.drm.ExoMediaDrm;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.EventDispatcher;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.Util;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
@TargetApi(18)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession.class */
public class DefaultDrmSession<T extends ExoMediaCrypto> implements DrmSession<T> {
    public static final int MAX_LICENSE_DURATION_TO_RENEW_SECONDS = 60;
    public static final int MSG_KEYS = 1;
    public static final int MSG_PROVISION = 0;
    public static final String TAG = "DefaultDrmSession";
    public final MediaDrmCallback callback;
    @Nullable
    public ExoMediaDrm.KeyRequest currentKeyRequest;
    @Nullable
    public ExoMediaDrm.ProvisionRequest currentProvisionRequest;
    public final EventDispatcher<DefaultDrmSessionEventListener> eventDispatcher;
    public final int initialDrmRequestRetryCount;
    @Nullable
    public DrmSession.DrmSessionException lastException;
    @Nullable
    public T mediaCrypto;
    public final ExoMediaDrm<T> mediaDrm;
    public final int mode;
    public byte[] offlineLicenseKeySetId;
    public int openCount;
    @Nullable
    public final HashMap<String, String> optionalKeyRequestParameters;
    @Nullable
    public DefaultDrmSession<T>.PostRequestHandler postRequestHandler;
    public final DefaultDrmSession<T>.PostResponseHandler postResponseHandler;
    public final ProvisioningManager<T> provisioningManager;
    public final ReleaseCallback<T> releaseCallback;
    @Nullable
    public HandlerThread requestHandlerThread;
    @Nullable
    public final List<DrmInitData.SchemeData> schemeDatas;
    public byte[] sessionId;
    public int state;
    public final UUID uuid;

    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$PostRequestHandler.class */
    public class PostRequestHandler extends Handler {
        public PostRequestHandler(Looper looper) {
            super(looper);
        }

        private long getRetryDelayMillis(int i) {
            return Math.min((i - 1) * 1000, 5000);
        }

        private boolean maybeRetryRequest(Message message) {
            int i;
            if (!(message.arg1 == 1) || (i = message.arg2 + 1) > DefaultDrmSession.this.initialDrmRequestRetryCount) {
                return false;
            }
            Message obtain = Message.obtain(message);
            obtain.arg2 = i;
            sendMessageDelayed(obtain, getRetryDelayMillis(i));
            return true;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object e;
            Object obj = message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    e = DefaultDrmSession.this.callback.executeProvisionRequest(DefaultDrmSession.this.uuid, (ExoMediaDrm.ProvisionRequest) obj);
                } else if (i == 1) {
                    e = DefaultDrmSession.this.callback.executeKeyRequest(DefaultDrmSession.this.uuid, (ExoMediaDrm.KeyRequest) obj);
                } else {
                    throw new RuntimeException();
                }
            } catch (Exception e2) {
                e = e2;
                if (maybeRetryRequest(message)) {
                    return;
                }
            }
            DefaultDrmSession.this.postResponseHandler.obtainMessage(message.what, Pair.create(obj, e)).sendToTarget();
        }

        public void post(int i, Object obj, boolean z) {
            obtainMessage(i, z ? 1 : 0, 0, obj).sendToTarget();
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$PostResponseHandler.class */
    public class PostResponseHandler extends Handler {
        public PostResponseHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                DefaultDrmSession.this.onProvisionResponse(obj, obj2);
            } else if (i == 1) {
                DefaultDrmSession.this.onKeyResponse(obj, obj2);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$ProvisioningManager.class */
    public interface ProvisioningManager<T extends ExoMediaCrypto> {
        void onProvisionCompleted();

        void onProvisionError(Exception exc);

        void provisionRequired(DefaultDrmSession<T> defaultDrmSession);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$ReleaseCallback.class */
    public interface ReleaseCallback<T extends ExoMediaCrypto> {
        void onSessionReleased(DefaultDrmSession<T> defaultDrmSession);
    }

    public DefaultDrmSession(UUID uuid, ExoMediaDrm<T> exoMediaDrm, ProvisioningManager<T> provisioningManager, ReleaseCallback<T> releaseCallback, @Nullable List<DrmInitData.SchemeData> list, int i, @Nullable byte[] bArr, @Nullable HashMap<String, String> hashMap, MediaDrmCallback mediaDrmCallback, Looper looper, EventDispatcher<DefaultDrmSessionEventListener> eventDispatcher, int i2) {
        if (i == 1 || i == 3) {
            Assertions.checkNotNull(bArr);
        }
        this.uuid = uuid;
        this.provisioningManager = provisioningManager;
        this.releaseCallback = releaseCallback;
        this.mediaDrm = exoMediaDrm;
        this.mode = i;
        if (bArr != null) {
            this.offlineLicenseKeySetId = bArr;
            this.schemeDatas = null;
        } else {
            this.schemeDatas = Collections.unmodifiableList((List) Assertions.checkNotNull(list));
        }
        this.optionalKeyRequestParameters = hashMap;
        this.callback = mediaDrmCallback;
        this.initialDrmRequestRetryCount = i2;
        this.eventDispatcher = eventDispatcher;
        this.state = 2;
        this.postResponseHandler = new PostResponseHandler(looper);
    }

    private void doLicense(boolean z) {
        int i = this.mode;
        if (i == 0 || i == 1) {
            if (this.offlineLicenseKeySetId == null) {
                postKeyRequest(this.sessionId, 1, z);
            } else if (this.state == 4 || restoreKeys()) {
                long licenseDurationRemainingSec = getLicenseDurationRemainingSec();
                if (this.mode == 0 && licenseDurationRemainingSec <= 60) {
                    StringBuilder sb = new StringBuilder(88);
                    sb.append("Offline license has expired or will expire soon. Remaining seconds: ");
                    sb.append(licenseDurationRemainingSec);
                    Log.m37489d(TAG, sb.toString());
                    postKeyRequest(this.sessionId, 2, z);
                } else if (licenseDurationRemainingSec <= 0) {
                    onError(new KeysExpiredException());
                } else {
                    this.state = 4;
                    this.eventDispatcher.dispatch(DefaultDrmSession$$Lambda$2.$instance);
                }
            }
        } else if (i != 2) {
            if (i == 3) {
                Assertions.checkNotNull(this.offlineLicenseKeySetId);
                if (restoreKeys()) {
                    postKeyRequest(this.offlineLicenseKeySetId, 3, z);
                }
            }
        } else if (this.offlineLicenseKeySetId == null) {
            postKeyRequest(this.sessionId, 2, z);
        } else if (restoreKeys()) {
            postKeyRequest(this.sessionId, 2, z);
        }
    }

    private long getLicenseDurationRemainingSec() {
        if (!C0463C.WIDEVINE_UUID.equals(this.uuid)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) Assertions.checkNotNull(WidevineUtil.getLicenseDurationRemainingSec(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private boolean isOpen() {
        int i = this.state;
        return i == 3 || i == 4;
    }

    private void onError(final Exception exc) {
        this.lastException = new DrmSession.DrmSessionException(exc);
        this.eventDispatcher.dispatch(new EventDispatcher.Event(exc) { // from class: androidx.media2.exoplayer.external.drm.DefaultDrmSession$$Lambda$5
            public final Exception arg$1;

            {
                this.arg$1 = exc;
            }

            @Override // androidx.media2.exoplayer.external.util.EventDispatcher.Event
            public void sendTo(Object obj) {
                ((DefaultDrmSessionEventListener) obj).onDrmSessionManagerError(this.arg$1);
            }
        });
        if (this.state != 4) {
            this.state = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeyResponse(Object obj, Object obj2) {
        if (obj == this.currentKeyRequest && isOpen()) {
            this.currentKeyRequest = null;
            if (obj2 instanceof Exception) {
                onKeysError((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.mode == 3) {
                    this.mediaDrm.provideKeyResponse((byte[]) Util.castNonNull(this.offlineLicenseKeySetId), bArr);
                    this.eventDispatcher.dispatch(DefaultDrmSession$$Lambda$3.$instance);
                    return;
                }
                byte[] provideKeyResponse = this.mediaDrm.provideKeyResponse(this.sessionId, bArr);
                if (!((this.mode != 2 && (this.mode != 0 || this.offlineLicenseKeySetId == null)) || provideKeyResponse == null || provideKeyResponse.length == 0)) {
                    this.offlineLicenseKeySetId = provideKeyResponse;
                }
                this.state = 4;
                this.eventDispatcher.dispatch(DefaultDrmSession$$Lambda$4.$instance);
            } catch (Exception e) {
                onKeysError(e);
            }
        }
    }

    private void onKeysError(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.provisioningManager.provisionRequired(this);
        } else {
            onError(exc);
        }
    }

    private void onKeysRequired() {
        if (this.mode == 0 && this.state == 4) {
            Util.castNonNull(this.sessionId);
            doLicense(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProvisionResponse(Object obj, Object obj2) {
        if (obj != this.currentProvisionRequest) {
            return;
        }
        if (this.state == 2 || isOpen()) {
            this.currentProvisionRequest = null;
            if (obj2 instanceof Exception) {
                this.provisioningManager.onProvisionError((Exception) obj2);
                return;
            }
            try {
                this.mediaDrm.provideProvisionResponse((byte[]) obj2);
                this.provisioningManager.onProvisionCompleted();
            } catch (Exception e) {
                this.provisioningManager.onProvisionError(e);
            }
        }
    }

    private boolean openInternal(boolean z) {
        if (isOpen()) {
            return true;
        }
        try {
            this.sessionId = this.mediaDrm.openSession();
            this.eventDispatcher.dispatch(DefaultDrmSession$$Lambda$1.$instance);
            this.mediaCrypto = this.mediaDrm.createMediaCrypto(this.sessionId);
            this.state = 3;
            return true;
        } catch (NotProvisionedException e) {
            if (z) {
                this.provisioningManager.provisionRequired(this);
                return false;
            }
            onError(e);
            return false;
        } catch (Exception e2) {
            onError(e2);
            return false;
        }
    }

    private void postKeyRequest(byte[] bArr, int i, boolean z) {
        try {
            this.currentKeyRequest = this.mediaDrm.getKeyRequest(bArr, this.schemeDatas, i, this.optionalKeyRequestParameters);
            ((PostRequestHandler) Util.castNonNull(this.postRequestHandler)).post(1, Assertions.checkNotNull(this.currentKeyRequest), z);
        } catch (Exception e) {
            onKeysError(e);
        }
    }

    private boolean restoreKeys() {
        try {
            this.mediaDrm.restoreKeys(this.sessionId, this.offlineLicenseKeySetId);
            return true;
        } catch (Exception e) {
            Log.m37486e(TAG, "Error trying to restore Widevine keys.", e);
            onError(e);
            return false;
        }
    }

    public void acquire() {
        int i = this.openCount + 1;
        this.openCount = i;
        if (i == 1) {
            this.requestHandlerThread = new HandlerThread("DrmRequestHandler");
            this.requestHandlerThread.start();
            this.postRequestHandler = new PostRequestHandler(this.requestHandlerThread.getLooper());
            if (openInternal(true)) {
                doLicense(true);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    @Nullable
    public final DrmSession.DrmSessionException getError() {
        return this.state == 1 ? this.lastException : null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    @Nullable
    public final T getMediaCrypto() {
        return this.mediaCrypto;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    @Nullable
    public byte[] getOfflineLicenseKeySetId() {
        return this.offlineLicenseKeySetId;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final int getState() {
        return this.state;
    }

    public boolean hasSessionId(byte[] bArr) {
        return Arrays.equals(this.sessionId, bArr);
    }

    public void onMediaDrmEvent(int i) {
        if (i == 2) {
            onKeysRequired();
        }
    }

    public void onProvisionCompleted() {
        if (openInternal(false)) {
            doLicense(true);
        }
    }

    public void onProvisionError(Exception exc) {
        onError(exc);
    }

    public void provision() {
        this.currentProvisionRequest = this.mediaDrm.getProvisionRequest();
        ((PostRequestHandler) Util.castNonNull(this.postRequestHandler)).post(0, Assertions.checkNotNull(this.currentProvisionRequest), true);
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        byte[] bArr = this.sessionId;
        return bArr == null ? null : this.mediaDrm.queryKeyStatus(bArr);
    }

    public void release() {
        int i = this.openCount - 1;
        this.openCount = i;
        if (i == 0) {
            this.state = 0;
            this.postResponseHandler.removeCallbacksAndMessages(null);
            ((PostRequestHandler) Util.castNonNull(this.postRequestHandler)).removeCallbacksAndMessages(null);
            this.postRequestHandler = null;
            ((HandlerThread) Util.castNonNull(this.requestHandlerThread)).quit();
            this.requestHandlerThread = null;
            this.mediaCrypto = null;
            this.lastException = null;
            this.currentKeyRequest = null;
            this.currentProvisionRequest = null;
            byte[] bArr = this.sessionId;
            if (bArr != null) {
                this.mediaDrm.closeSession(bArr);
                this.sessionId = null;
                this.eventDispatcher.dispatch(DefaultDrmSession$$Lambda$0.$instance);
            }
            this.releaseCallback.onSessionReleased(this);
        }
    }
}
