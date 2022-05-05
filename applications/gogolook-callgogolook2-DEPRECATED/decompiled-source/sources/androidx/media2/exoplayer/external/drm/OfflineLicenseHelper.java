package androidx.media2.exoplayer.external.drm;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.ExoMediaCrypto;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.HashMap;
import java.util.UUID;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/OfflineLicenseHelper.class */
public final class OfflineLicenseHelper<T extends ExoMediaCrypto> {
    public static final DrmInitData DUMMY_DRM_INIT_DATA = new DrmInitData(new DrmInitData.SchemeData[0]);
    public final DefaultDrmSessionManager<T> drmSessionManager;
    public final HandlerThread handlerThread = new HandlerThread("OfflineLicenseHelper");
    public final ConditionVariable conditionVariable = new ConditionVariable();

    public OfflineLicenseHelper(UUID uuid, ExoMediaDrm<T> exoMediaDrm, MediaDrmCallback mediaDrmCallback, @Nullable HashMap<String, String> hashMap) {
        this.handlerThread.start();
        DefaultDrmSessionEventListener defaultDrmSessionEventListener = new DefaultDrmSessionEventListener() { // from class: androidx.media2.exoplayer.external.drm.OfflineLicenseHelper.1
            @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
            public void onDrmKeysLoaded() {
                OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
            public void onDrmKeysRemoved() {
                OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
            public void onDrmKeysRestored() {
                OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
            public void onDrmSessionAcquired() {
                DefaultDrmSessionEventListener$$CC.onDrmSessionAcquired$$dflt$$(this);
            }

            @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
            public void onDrmSessionManagerError(Exception exc) {
                OfflineLicenseHelper.this.conditionVariable.open();
            }

            @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSessionEventListener
            public void onDrmSessionReleased() {
                DefaultDrmSessionEventListener$$CC.onDrmSessionReleased$$dflt$$(this);
            }
        };
        this.drmSessionManager = new DefaultDrmSessionManager<>(uuid, exoMediaDrm, mediaDrmCallback, hashMap);
        this.drmSessionManager.addListener(new Handler(this.handlerThread.getLooper()), defaultDrmSessionEventListener);
    }

    private byte[] blockingKeyRequest(int i, @Nullable byte[] bArr, DrmInitData drmInitData) throws DrmSession.DrmSessionException {
        DrmSession<T> openBlockingKeyRequest = openBlockingKeyRequest(i, bArr, drmInitData);
        DrmSession.DrmSessionException error = openBlockingKeyRequest.getError();
        byte[] offlineLicenseKeySetId = openBlockingKeyRequest.getOfflineLicenseKeySetId();
        this.drmSessionManager.releaseSession(openBlockingKeyRequest);
        if (error == null) {
            return (byte[]) Assertions.checkNotNull(offlineLicenseKeySetId);
        }
        throw error;
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, HttpDataSource.Factory factory) throws UnsupportedDrmException {
        return newWidevineInstance(str, false, factory, null);
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, boolean z, HttpDataSource.Factory factory) throws UnsupportedDrmException {
        return newWidevineInstance(str, z, factory, null);
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, boolean z, HttpDataSource.Factory factory, @Nullable HashMap<String, String> hashMap) throws UnsupportedDrmException {
        UUID uuid = C0463C.WIDEVINE_UUID;
        return new OfflineLicenseHelper<>(uuid, FrameworkMediaDrm.newInstance(uuid), new HttpMediaDrmCallback(str, z, factory), hashMap);
    }

    private DrmSession<T> openBlockingKeyRequest(int i, @Nullable byte[] bArr, DrmInitData drmInitData) {
        this.drmSessionManager.setMode(i, bArr);
        this.conditionVariable.close();
        DrmSession<T> acquireSession = this.drmSessionManager.acquireSession(this.handlerThread.getLooper(), drmInitData);
        this.conditionVariable.block();
        return acquireSession;
    }

    public byte[] downloadLicense(DrmInitData drmInitData) throws DrmSession.DrmSessionException {
        byte[] blockingKeyRequest;
        synchronized (this) {
            Assertions.checkArgument(drmInitData != null);
            blockingKeyRequest = blockingKeyRequest(2, null, drmInitData);
        }
        return blockingKeyRequest;
    }

    public Pair<Long, Long> getLicenseDurationRemainingSec(byte[] bArr) throws DrmSession.DrmSessionException {
        synchronized (this) {
            Assertions.checkNotNull(bArr);
            DrmSession<T> openBlockingKeyRequest = openBlockingKeyRequest(1, bArr, DUMMY_DRM_INIT_DATA);
            DrmSession.DrmSessionException error = openBlockingKeyRequest.getError();
            Pair<Long, Long> licenseDurationRemainingSec = WidevineUtil.getLicenseDurationRemainingSec(openBlockingKeyRequest);
            this.drmSessionManager.releaseSession(openBlockingKeyRequest);
            if (error == null) {
                return (Pair) Assertions.checkNotNull(licenseDurationRemainingSec);
            } else if (error.getCause() instanceof KeysExpiredException) {
                return Pair.create(0L, 0L);
            } else {
                throw error;
            }
        }
    }

    public byte[] getPropertyByteArray(String str) {
        byte[] propertyByteArray;
        synchronized (this) {
            propertyByteArray = this.drmSessionManager.getPropertyByteArray(str);
        }
        return propertyByteArray;
    }

    public String getPropertyString(String str) {
        String propertyString;
        synchronized (this) {
            propertyString = this.drmSessionManager.getPropertyString(str);
        }
        return propertyString;
    }

    public void release() {
        this.handlerThread.quit();
    }

    public void releaseLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        synchronized (this) {
            Assertions.checkNotNull(bArr);
            blockingKeyRequest(3, bArr, DUMMY_DRM_INIT_DATA);
        }
    }

    public byte[] renewLicense(byte[] bArr) throws DrmSession.DrmSessionException {
        byte[] blockingKeyRequest;
        synchronized (this) {
            Assertions.checkNotNull(bArr);
            blockingKeyRequest = blockingKeyRequest(2, bArr, DUMMY_DRM_INIT_DATA);
        }
        return blockingKeyRequest;
    }

    public void setPropertyByteArray(String str, byte[] bArr) {
        synchronized (this) {
            this.drmSessionManager.setPropertyByteArray(str, bArr);
        }
    }

    public void setPropertyString(String str, String str2) {
        synchronized (this) {
            this.drmSessionManager.setPropertyString(str, str2);
        }
    }
}
