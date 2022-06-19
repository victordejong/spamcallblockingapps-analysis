package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bu2.class */
final class bu2 {

    /* renamed from: a */
    ByteArrayOutputStream f6206a = new ByteArrayOutputStream(4096);

    /* renamed from: b */
    Base64OutputStream f6207b = new Base64OutputStream(this.f6206a, 10);

    /* JADX WARN: Finally extract failed */
    public final String toString() {
        String str;
        try {
            this.f6207b.close();
        } catch (IOException e) {
            C1894po.m6182d("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.f6206a.close();
                str = this.f6206a.toString();
            } catch (IOException e2) {
                C1894po.m6182d("HashManager: Unable to convert to Base64.", e2);
                str = "";
            }
            this.f6206a = null;
            this.f6207b = null;
            return str;
        } catch (Throwable th) {
            this.f6206a = null;
            this.f6207b = null;
            throw th;
        }
    }
}
