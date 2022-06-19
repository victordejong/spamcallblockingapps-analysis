package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dut.class */
final class dut {

    /* renamed from: a */
    private ByteArrayOutputStream f15828a = new ByteArrayOutputStream(4096);

    /* renamed from: b */
    private Base64OutputStream f15829b = new Base64OutputStream(this.f15828a, 10);

    /* renamed from: a */
    public final void m8528a(byte[] bArr) {
        this.f15829b.write(bArr);
    }

    public final String toString() {
        String str;
        try {
            this.f15829b.close();
        } catch (IOException e) {
            C3556uu.m6748c("HashManager: Unable to convert to Base64.", e);
        }
        try {
            this.f15828a.close();
            str = this.f15828a.toString();
        } catch (IOException e2) {
            C3556uu.m6748c("HashManager: Unable to convert to Base64.", e2);
            str = "";
        } finally {
            this.f15828a = null;
            this.f15829b = null;
        }
        return str;
    }
}
