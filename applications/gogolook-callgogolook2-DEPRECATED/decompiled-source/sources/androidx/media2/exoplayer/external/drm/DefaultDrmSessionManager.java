package androidx.media2.exoplayer.external.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.drm.DefaultDrmSession;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.ExoMediaCrypto;
import androidx.media2.exoplayer.external.drm.ExoMediaDrm;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.EventDispatcher;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.Util;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
@TargetApi(18)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager.class */
public class DefaultDrmSessionManager<T extends ExoMediaCrypto> implements DrmSessionManager<T>, DefaultDrmSession.ProvisioningManager<T> {
    public static final int INITIAL_DRM_REQUEST_RETRY_COUNT = 3;
    public static final int MODE_DOWNLOAD = 2;
    public static final int MODE_PLAYBACK = 0;
    public static final int MODE_QUERY = 1;
    public static final int MODE_RELEASE = 3;
    public static final String PLAYREADY_CUSTOM_DATA_KEY = "PRCustomData";
    public static final String TAG = "DefaultDrmSessionMgr";
    public final MediaDrmCallback callback;
    public final EventDispatcher<DefaultDrmSessionEventListener> eventDispatcher;
    public final int initialDrmRequestRetryCount;
    public final ExoMediaDrm<T> mediaDrm;
    @Nullable
    public volatile DefaultDrmSessionManager<T>.MediaDrmHandler mediaDrmHandler;
    public int mode;
    public final boolean multiSession;
    @Nullable
    public byte[] offlineLicenseKeySetId;
    @Nullable
    public final HashMap<String, String> optionalKeyRequestParameters;
    @Nullable
    public Looper playbackLooper;
    public final List<DefaultDrmSession<T>> provisioningSessions;
    public final List<DefaultDrmSession<T>> sessions;
    public final UUID uuid;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener.class */
    public class MediaDrmEventListener implements ExoMediaDrm.OnEventListener<T> {
        public MediaDrmEventListener() {
        }

        @Override // androidx.media2.exoplayer.external.drm.ExoMediaDrm.OnEventListener
        public void onEvent(ExoMediaDrm<? extends T> exoMediaDrm, byte[] bArr, int i, int i2, @Nullable byte[] bArr2) {
            ((MediaDrmHandler) Assertions.checkNotNull(DefaultDrmSessionManager.this.mediaDrmHandler)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler.class */
    public class MediaDrmHandler extends Handler {
        public MediaDrmHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr != null) {
                for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.sessions) {
                    if (defaultDrmSession.hasSessionId(bArr)) {
                        defaultDrmSession.onMediaDrmEvent(message.what);
                        return;
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException.class */
    public static final class MissingSchemeDataException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public MissingSchemeDataException(java.util.UUID r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r7 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r7
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 29
                int r2 = r2 + r3
                r1.<init>(r2)
                r6 = r0
                r0 = r6
                java.lang.String r1 = "Media does not support uuid: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r6
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager.MissingSchemeDataException.<init>(java.util.UUID):void");
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$Mode.class */
    public @interface Mode {
    }

    public DefaultDrmSessionManager(UUID uuid, ExoMediaDrm<T> exoMediaDrm, MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap) {
        this(uuid, exoMediaDrm, mediaDrmCallback, hashMap, false, 3);
    }

    public DefaultDrmSessionManager(UUID uuid, ExoMediaDrm<T> exoMediaDrm, MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap, boolean z) {
        this(uuid, exoMediaDrm, mediaDrmCallback, hashMap, z, 3);
    }

    public DefaultDrmSessionManager(UUID uuid, ExoMediaDrm<T> exoMediaDrm, MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap, boolean z, int i) {
        Assertions.checkNotNull(uuid);
        Assertions.checkNotNull(exoMediaDrm);
        Assertions.checkArgument(!C0463C.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.uuid = uuid;
        this.mediaDrm = exoMediaDrm;
        this.callback = mediaDrmCallback;
        this.optionalKeyRequestParameters = hashMap;
        this.eventDispatcher = new EventDispatcher<>();
        this.multiSession = z;
        this.initialDrmRequestRetryCount = i;
        this.mode = 0;
        this.sessions = new ArrayList();
        this.provisioningSessions = new ArrayList();
        if (z && C0463C.WIDEVINE_UUID.equals(uuid) && Util.SDK_INT >= 19) {
            exoMediaDrm.setPropertyString("sessionSharing", AdsSettingsKt.KEY_ENABLE);
        }
        exoMediaDrm.setOnEventListener(new MediaDrmEventListener());
    }

    public static List<DrmInitData.SchemeData> getSchemeDatas(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if ((schemeData.matches(uuid) || (C0463C.CLEARKEY_UUID.equals(uuid) && schemeData.matches(C0463C.COMMON_PSSH_UUID))) && (schemeData.data != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    public static DefaultDrmSessionManager<FrameworkMediaCrypto> newFrameworkInstance(UUID uuid, MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap) throws UnsupportedDrmException {
        return new DefaultDrmSessionManager<>(uuid, FrameworkMediaDrm.newInstance(uuid), mediaDrmCallback, hashMap, false, 3);
    }

    public static DefaultDrmSessionManager<FrameworkMediaCrypto> newPlayReadyInstance(MediaDrmCallback mediaDrmCallback, @Nullable String str) throws UnsupportedDrmException {
        HashMap hashMap;
        if (!TextUtils.isEmpty(str)) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put(PLAYREADY_CUSTOM_DATA_KEY, str);
            hashMap = hashMap2;
        } else {
            hashMap = null;
        }
        return newFrameworkInstance(C0463C.PLAYREADY_UUID, mediaDrmCallback, hashMap);
    }

    public static DefaultDrmSessionManager<FrameworkMediaCrypto> newWidevineInstance(MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap) throws UnsupportedDrmException {
        return newFrameworkInstance(C0463C.WIDEVINE_UUID, mediaDrmCallback, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSessionReleased */
    public void bridge$lambda$0$DefaultDrmSessionManager(DefaultDrmSession<T> defaultDrmSession) {
        this.sessions.remove(defaultDrmSession);
        if (this.provisioningSessions.size() > 1 && this.provisioningSessions.get(0) == defaultDrmSession) {
            this.provisioningSessions.get(1).provision();
        }
        this.provisioningSessions.remove(defaultDrmSession);
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSessionManager
    public DrmSession<T> acquireSession(Looper looper, DrmInitData drmInitData) {
        List<DrmInitData.SchemeData> list;
        DefaultDrmSession<T> defaultDrmSession;
        Looper looper2 = this.playbackLooper;
        Assertions.checkState(looper2 == null || looper2 == looper);
        if (this.sessions.isEmpty()) {
            this.playbackLooper = looper;
            if (this.mediaDrmHandler == null) {
                this.mediaDrmHandler = new MediaDrmHandler(looper);
            }
        }
        if (this.offlineLicenseKeySetId == null) {
            list = getSchemeDatas(drmInitData, this.uuid, false);
            if (list.isEmpty()) {
                final MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.uuid);
                this.eventDispatcher.dispatch(new EventDispatcher.Event(missingSchemeDataException) { // from class: androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager$$Lambda$0
                    public final DefaultDrmSessionManager.MissingSchemeDataException arg$1;

                    {
                        this.arg$1 = missingSchemeDataException;
                    }

                    @Override // androidx.media2.exoplayer.external.util.EventDispatcher.Event
                    public void sendTo(Object obj) {
                        ((DefaultDrmSessionEventListener) obj).onDrmSessionManagerError(this.arg$1);
                    }
                });
                return new ErrorStateDrmSession(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
        } else {
            list = null;
        }
        if (this.multiSession) {
            Iterator<DefaultDrmSession<T>> it = this.sessions.iterator();
            do {
                defaultDrmSession = null;
                if (!it.hasNext()) {
                    break;
                }
                defaultDrmSession = it.next();
            } while (!Util.areEqual(defaultDrmSession.schemeDatas, list));
        } else {
            defaultDrmSession = this.sessions.isEmpty() ? null : this.sessions.get(0);
        }
        if (defaultDrmSession == null) {
            defaultDrmSession = new DefaultDrmSession<>(this.uuid, this.mediaDrm, this, new DefaultDrmSession.ReleaseCallback(this) { // from class: androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager$$Lambda$1
                public final DefaultDrmSessionManager arg$1;

                {
                    this.arg$1 = this;
                }

                @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.ReleaseCallback
                public void onSessionReleased(DefaultDrmSession defaultDrmSession2) {
                    this.arg$1.bridge$lambda$0$DefaultDrmSessionManager(defaultDrmSession2);
                }
            }, list, this.mode, this.offlineLicenseKeySetId, this.optionalKeyRequestParameters, this.callback, looper, this.eventDispatcher, this.initialDrmRequestRetryCount);
            this.sessions.add(defaultDrmSession);
        }
        defaultDrmSession.acquire();
        return defaultDrmSession;
    }

    public final void addListener(Handler handler, DefaultDrmSessionEventListener defaultDrmSessionEventListener) {
        this.eventDispatcher.addListener(handler, defaultDrmSessionEventListener);
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSessionManager
    public boolean canAcquireSession(DrmInitData drmInitData) {
        if (this.offlineLicenseKeySetId != null) {
            return true;
        }
        if (getSchemeDatas(drmInitData, this.uuid, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(C0463C.COMMON_PSSH_UUID)) {
                return false;
            }
            String valueOf = String.valueOf(this.uuid);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 72);
            sb.append("DrmInitData only contains common PSSH SchemeData. Assuming support for: ");
            sb.append(valueOf);
            Log.m37483w(TAG, sb.toString());
        }
        String str = drmInitData.schemeType;
        boolean z = true;
        if (str != null) {
            if ("cenc".equals(str)) {
                z = true;
            } else if (!C0463C.CENC_TYPE_cbc1.equals(str) && !C0463C.CENC_TYPE_cbcs.equals(str) && !C0463C.CENC_TYPE_cens.equals(str)) {
                return true;
            } else {
                z = Util.SDK_INT >= 25;
            }
        }
        return z;
    }

    public final byte[] getPropertyByteArray(String str) {
        return this.mediaDrm.getPropertyByteArray(str);
    }

    public final String getPropertyString(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.ProvisioningManager
    public void onProvisionCompleted() {
        for (DefaultDrmSession<T> defaultDrmSession : this.provisioningSessions) {
            defaultDrmSession.onProvisionCompleted();
        }
        this.provisioningSessions.clear();
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.ProvisioningManager
    public void onProvisionError(Exception exc) {
        for (DefaultDrmSession<T> defaultDrmSession : this.provisioningSessions) {
            defaultDrmSession.onProvisionError(exc);
        }
        this.provisioningSessions.clear();
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.ProvisioningManager
    public void provisionRequired(DefaultDrmSession<T> defaultDrmSession) {
        if (!this.provisioningSessions.contains(defaultDrmSession)) {
            this.provisioningSessions.add(defaultDrmSession);
            if (this.provisioningSessions.size() == 1) {
                defaultDrmSession.provision();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSessionManager
    public void releaseSession(DrmSession<T> drmSession) {
        if (!(drmSession instanceof ErrorStateDrmSession)) {
            ((DefaultDrmSession) drmSession).release();
        }
    }

    public final void removeListener(DefaultDrmSessionEventListener defaultDrmSessionEventListener) {
        this.eventDispatcher.removeListener(defaultDrmSessionEventListener);
    }

    public void setMode(int i, @Nullable byte[] bArr) {
        Assertions.checkState(this.sessions.isEmpty());
        if (i == 1 || i == 3) {
            Assertions.checkNotNull(bArr);
        }
        this.mode = i;
        this.offlineLicenseKeySetId = bArr;
    }

    public final void setPropertyByteArray(String str, byte[] bArr) {
        this.mediaDrm.setPropertyByteArray(str, bArr);
    }

    public final void setPropertyString(String str, String str2) {
        this.mediaDrm.setPropertyString(str, str2);
    }
}
