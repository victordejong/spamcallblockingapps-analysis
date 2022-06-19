package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.C6233k;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rk2.class */
public final class rk2 {
    /* renamed from: a */
    public static ParcelFileDescriptor m11432a(InputStream inputStream) {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        qi0.f28495a.execute(new Runnable(inputStream, createPipe[1]) { // from class: com.google.android.gms.internal.ads.qk2

            /* renamed from: d */
            private final InputStream f28541d;

            /* renamed from: e */
            private final ParcelFileDescriptor f28542e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28541d = inputStream;
                this.f28542e = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                InputStream inputStream2 = this.f28541d;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f28542e);
                    try {
                        C6233k.m16789b(inputStream2, autoCloseOutputStream);
                        autoCloseOutputStream.close();
                        if (inputStream2 == null) {
                            return;
                        }
                        inputStream2.close();
                    } catch (Throwable th) {
                        try {
                            autoCloseOutputStream.close();
                        } catch (Throwable th2) {
                            qc3.m11958a(th, th2);
                        }
                        throw th;
                    }
                } catch (IOException e) {
                }
            }
        });
        return parcelFileDescriptor;
    }
}
