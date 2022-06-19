package com.google.android.exoplayer2.drm;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Pair;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.ExoMediaCrypto;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import java.util.HashMap;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/OfflineLicenseHelper.class */
public final class OfflineLicenseHelper<T extends ExoMediaCrypto> {
    private final ConditionVariable conditionVariable = new ConditionVariable();
    private final DefaultDrmSessionManager<T> drmSessionManager;
    private final HandlerThread handlerThread;

    public OfflineLicenseHelper(UUID uuid, ExoMediaDrm<T> exoMediaDrm, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap) {
        HandlerThread handlerThread = new HandlerThread("OfflineLicenseHelper");
        this.handlerThread = handlerThread;
        handlerThread.start();
        1 r0 = new 1(this);
        DefaultDrmSessionManager<T> defaultDrmSessionManager = new DefaultDrmSessionManager<>(uuid, exoMediaDrm, mediaDrmCallback, hashMap);
        this.drmSessionManager = defaultDrmSessionManager;
        defaultDrmSessionManager.addListener(new Handler(handlerThread.getLooper()), r0);
    }

    private byte[] blockingKeyRequest(int i, byte[] bArr, DrmInitData drmInitData) {
        DrmSession<T> openBlockingKeyRequest = openBlockingKeyRequest(i, bArr, drmInitData);
        DrmSession.DrmSessionException error = openBlockingKeyRequest.getError();
        byte[] offlineLicenseKeySetId = openBlockingKeyRequest.getOfflineLicenseKeySetId();
        this.drmSessionManager.releaseSession(openBlockingKeyRequest);
        if (error == null) {
            return offlineLicenseKeySetId;
        }
        throw error;
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, HttpDataSource.Factory factory) {
        return newWidevineInstance(str, false, factory, null);
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, boolean z, HttpDataSource.Factory factory) {
        return newWidevineInstance(str, z, factory, null);
    }

    public static OfflineLicenseHelper<FrameworkMediaCrypto> newWidevineInstance(String str, boolean z, HttpDataSource.Factory factory, HashMap<String, String> hashMap) {
        UUID uuid = C0515C.WIDEVINE_UUID;
        return new OfflineLicenseHelper<>(uuid, FrameworkMediaDrm.newInstance(uuid), new HttpMediaDrmCallback(str, z, factory), hashMap);
    }

    private DrmSession<T> openBlockingKeyRequest(int i, byte[] bArr, DrmInitData drmInitData) {
        this.drmSessionManager.setMode(i, bArr);
        this.conditionVariable.close();
        DrmSession<T> acquireSession = this.drmSessionManager.acquireSession(this.handlerThread.getLooper(), drmInitData);
        this.conditionVariable.block();
        return acquireSession;
    }

    public byte[] downloadLicense(DrmInitData drmInitData) {
        byte[] blockingKeyRequest;
        synchronized (this) {
            Assertions.checkArgument(drmInitData != null);
            blockingKeyRequest = blockingKeyRequest(2, null, drmInitData);
        }
        return blockingKeyRequest;
    }

    public Pair<Long, Long> getLicenseDurationRemainingSec(byte[] bArr) {
        synchronized (this) {
            Assertions.checkNotNull(bArr);
            DrmSession<T> openBlockingKeyRequest = openBlockingKeyRequest(1, bArr, null);
            DrmSession.DrmSessionException error = openBlockingKeyRequest.getError();
            Pair<Long, Long> licenseDurationRemainingSec = WidevineUtil.getLicenseDurationRemainingSec(openBlockingKeyRequest);
            this.drmSessionManager.releaseSession(openBlockingKeyRequest);
            if (error != null) {
                if (!(error.getCause() instanceof KeysExpiredException)) {
                    throw error;
                }
                return Pair.create(0L, 0L);
            }
            return licenseDurationRemainingSec;
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

    public void releaseLicense(byte[] bArr) {
        synchronized (this) {
            Assertions.checkNotNull(bArr);
            blockingKeyRequest(3, bArr, null);
        }
    }

    public byte[] renewLicense(byte[] bArr) {
        byte[] blockingKeyRequest;
        synchronized (this) {
            Assertions.checkNotNull(bArr);
            blockingKeyRequest = blockingKeyRequest(2, bArr, null);
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
