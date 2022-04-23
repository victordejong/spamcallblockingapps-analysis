package androidx.media2.exoplayer.external.drm;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.ExoMediaCrypto;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/ExoMediaDrm.class */
public interface ExoMediaDrm<T extends ExoMediaCrypto> {
    public static final int EVENT_KEY_EXPIRED = 3;
    public static final int EVENT_KEY_REQUIRED = 2;
    public static final int EVENT_PROVISION_REQUIRED = 1;
    public static final int KEY_TYPE_OFFLINE = 2;
    public static final int KEY_TYPE_RELEASE = 3;
    public static final int KEY_TYPE_STREAMING = 1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest.class */
    public static final class KeyRequest {
        public final byte[] data;
        public final String licenseServerUrl;

        public KeyRequest(byte[] bArr, String str) {
            this.data = bArr;
            this.licenseServerUrl = str;
        }

        public byte[] getData() {
            return this.data;
        }

        public String getLicenseServerUrl() {
            return this.licenseServerUrl;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus.class */
    public static final class KeyStatus {
        public final byte[] keyId;
        public final int statusCode;

        public KeyStatus(int i, byte[] bArr) {
            this.statusCode = i;
            this.keyId = bArr;
        }

        public byte[] getKeyId() {
            return this.keyId;
        }

        public int getStatusCode() {
            return this.statusCode;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener.class */
    public interface OnEventListener<T extends ExoMediaCrypto> {
        void onEvent(ExoMediaDrm<? extends T> exoMediaDrm, byte[] bArr, int i, int i2, @Nullable byte[] bArr2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener.class */
    public interface OnKeyStatusChangeListener<T extends ExoMediaCrypto> {
        void onKeyStatusChange(ExoMediaDrm<? extends T> exoMediaDrm, byte[] bArr, List<KeyStatus> list, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest.class */
    public static final class ProvisionRequest {
        public final byte[] data;
        public final String defaultUrl;

        public ProvisionRequest(byte[] bArr, String str) {
            this.data = bArr;
            this.defaultUrl = str;
        }

        public byte[] getData() {
            return this.data;
        }

        public String getDefaultUrl() {
            return this.defaultUrl;
        }
    }

    void closeSession(byte[] bArr);

    T createMediaCrypto(byte[] bArr) throws MediaCryptoException;

    KeyRequest getKeyRequest(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i, @Nullable HashMap<String, String> hashMap) throws NotProvisionedException;

    byte[] getPropertyByteArray(String str);

    String getPropertyString(String str);

    ProvisionRequest getProvisionRequest();

    byte[] openSession() throws MediaDrmException;

    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws NotProvisionedException, DeniedByServerException;

    void provideProvisionResponse(byte[] bArr) throws DeniedByServerException;

    Map<String, String> queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);

    void setOnEventListener(OnEventListener<? super T> onEventListener);

    void setOnKeyStatusChangeListener(OnKeyStatusChangeListener<? super T> onKeyStatusChangeListener);

    void setPropertyByteArray(String str, byte[] bArr);

    void setPropertyString(String str, String str2);
}
