package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.uk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uk.class */
final class C7037uk {

    /* renamed from: a */
    ByteArrayOutputStream f30651a = new ByteArrayOutputStream(4096);

    /* renamed from: b */
    Base64OutputStream f30652b = new Base64OutputStream(this.f30651a, 10);

    /* JADX WARN: Finally extract failed */
    public final String toString() {
        try {
            this.f30652b.close();
        } catch (IOException e) {
            ei0.m15466d("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.f30651a.close();
                String byteArrayOutputStream = this.f30651a.toString();
                this.f30651a = null;
                this.f30652b = null;
                return byteArrayOutputStream;
            } catch (IOException e2) {
                ei0.m15466d("HashManager: Unable to convert to Base64.", e2);
                this.f30651a = null;
                this.f30652b = null;
                return "";
            }
        } catch (Throwable th) {
            this.f30651a = null;
            this.f30652b = null;
            throw th;
        }
    }
}
