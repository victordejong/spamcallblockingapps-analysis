package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.C2714k;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/chu.class */
public final class chu {
    /* renamed from: a */
    public static ParcelFileDescriptor m11265a(InputStream inputStream) {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        C3650yg.f17642a.execute(new Runnable(inputStream, createPipe[1]) { // from class: com.google.android.gms.internal.ads.cht

            /* renamed from: a */
            private final InputStream f13075a;

            /* renamed from: b */
            private final ParcelFileDescriptor f13076b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13075a = inputStream;
                this.f13076b = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                InputStream inputStream2 = this.f13075a;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f13076b);
                    C2714k.m13847a(inputStream2, autoCloseOutputStream);
                    autoCloseOutputStream.close();
                    if (inputStream2 == null) {
                        return;
                    }
                    inputStream2.close();
                } catch (IOException e) {
                }
            }
        });
        return parcelFileDescriptor;
    }
}
