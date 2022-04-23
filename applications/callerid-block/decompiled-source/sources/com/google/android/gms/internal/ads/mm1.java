package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.C1615l;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mm1.class */
public final class mm1 {
    /* renamed from: a */
    public static ParcelFileDescriptor m6544a(final InputStream inputStream) {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
        C2073zo.f9410a.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: com.google.android.gms.internal.ads.km1

            /* renamed from: b */
            private final InputStream f6996b;

            /* renamed from: c */
            private final ParcelFileDescriptor f6997c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6996b = inputStream;
                this.f6997c = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                InputStream inputStream2 = this.f6996b;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f6997c);
                    try {
                        C1615l.m8221b(inputStream2, autoCloseOutputStream);
                        autoCloseOutputStream.close();
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Throwable th) {
                        try {
                            autoCloseOutputStream.close();
                        } catch (Throwable th2) {
                            ab2.m8151a(th, th2);
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
