package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoi.class */
public final class zzdoi {
    public static ParcelFileDescriptor zze(InputStream inputStream) {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        zzazp.zzeic.execute(new Runnable(inputStream, createPipe[1]) { // from class: com.google.android.gms.internal.ads.zzdoh
            private final InputStream zzhlr;
            private final ParcelFileDescriptor zzhls;

            {
                this.zzhlr = inputStream;
                this.zzhls = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                InputStream inputStream2 = this.zzhlr;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.zzhls);
                    try {
                        IOUtils.copyStream(inputStream2, autoCloseOutputStream);
                        autoCloseOutputStream.close();
                        if (inputStream2 == null) {
                            return;
                        }
                        inputStream2.close();
                    } catch (Throwable th) {
                        try {
                            autoCloseOutputStream.close();
                        } catch (Throwable th2) {
                            zzeja.zza(th, th2);
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
