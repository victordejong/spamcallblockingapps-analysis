package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.google.android.gms.ads.internal.util.zzd;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efn.class */
final class efn {

    /* renamed from: a  reason: collision with root package name */
    private ByteArrayOutputStream f27789a = new ByteArrayOutputStream(4096);

    /* renamed from: b  reason: collision with root package name */
    private Base64OutputStream f27790b = new Base64OutputStream(this.f27789a, 10);

    public final void a(byte[] bArr) throws IOException {
        this.f27790b.write(bArr);
    }

    /* JADX WARN: Finally extract failed */
    public final String toString() {
        try {
            this.f27790b.close();
        } catch (IOException e) {
            zzd.zzc("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.f27789a.close();
                String byteArrayOutputStream = this.f27789a.toString();
                this.f27789a = null;
                this.f27790b = null;
                return byteArrayOutputStream;
            } catch (IOException e2) {
                zzd.zzc("HashManager: Unable to convert to Base64.", e2);
                this.f27789a = null;
                this.f27790b = null;
                return "";
            }
        } catch (Throwable th) {
            this.f27789a = null;
            this.f27790b = null;
            throw th;
        }
    }
}
