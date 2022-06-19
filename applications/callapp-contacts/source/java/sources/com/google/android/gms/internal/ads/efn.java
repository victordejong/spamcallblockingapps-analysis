package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.google.android.gms.ads.internal.util.zzd;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efn.class */
final class efn {

    /* renamed from: a */
    private ByteArrayOutputStream f48970a = new ByteArrayOutputStream(4096);

    /* renamed from: b */
    private Base64OutputStream f48971b = new Base64OutputStream(this.f48970a, 10);

    /* renamed from: a */
    public final void m15090a(byte[] bArr) throws IOException {
        this.f48971b.write(bArr);
    }

    /* JADX WARN: Finally extract failed */
    public final String toString() {
        try {
            this.f48971b.close();
        } catch (IOException e) {
            zzd.zzc("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.f48970a.close();
                String byteArrayOutputStream = this.f48970a.toString();
                this.f48970a = null;
                this.f48971b = null;
                return byteArrayOutputStream;
            } catch (IOException e2) {
                zzd.zzc("HashManager: Unable to convert to Base64.", e2);
                this.f48970a = null;
                this.f48971b = null;
                return "";
            }
        } catch (Throwable th) {
            this.f48970a = null;
            this.f48971b = null;
            throw th;
        }
    }
}
