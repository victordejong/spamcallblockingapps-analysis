package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.internal.ads.zzehy;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpc.class */
public final class zzdpc {
    /* renamed from: a */
    public static ParcelFileDescriptor m13341a(final InputStream inputStream) throws IOException {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
        zzbbz.f24764a.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: c.d.b.d.g.a.ky

            /* renamed from: a */
            public final InputStream f13920a;

            /* renamed from: b */
            public final ParcelFileDescriptor f13921b;

            {
                this.f13920a = inputStream;
                this.f13921b = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                InputStream inputStream2 = this.f13920a;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f13921b);
                    try {
                        IOUtils.m17074a(inputStream2, autoCloseOutputStream);
                        autoCloseOutputStream.close();
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                    } catch (Throwable th) {
                        try {
                            autoCloseOutputStream.close();
                        } catch (Throwable th2) {
                            zzehy.m12542a(th, th2);
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
