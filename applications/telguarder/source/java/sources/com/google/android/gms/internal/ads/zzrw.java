package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.google.android.gms.ads.internal.util.zzd;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrw.class */
final class zzrw {
    private ByteArrayOutputStream zzbuh = new ByteArrayOutputStream(4096);
    private Base64OutputStream zzbui = new Base64OutputStream(this.zzbuh, 10);

    /* JADX WARN: Finally extract failed */
    public final String toString() {
        try {
            this.zzbui.close();
        } catch (IOException e) {
            zzd.zzc("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.zzbuh.close();
                String byteArrayOutputStream = this.zzbuh.toString();
                this.zzbuh = null;
                this.zzbui = null;
                return byteArrayOutputStream;
            } catch (IOException e2) {
                zzd.zzc("HashManager: Unable to convert to Base64.", e2);
                this.zzbuh = null;
                this.zzbui = null;
                return "";
            }
        } catch (Throwable th) {
            this.zzbuh = null;
            this.zzbui = null;
            throw th;
        }
    }

    public final void write(byte[] bArr) throws IOException {
        this.zzbui.write(bArr);
    }
}
