package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfbl.class */
public final class zzfbl {
    public static ParcelFileDescriptor zza(InputStream inputStream) throws IOException {
        ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
        ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
        zzchg.zza.execute(new Runnable(inputStream, createPipe[1]) { // from class: com.google.android.gms.internal.ads.zzfbk
            private final InputStream zza;
            private final ParcelFileDescriptor zzb;

            {
                this.zza = inputStream;
                this.zzb = parcelFileDescriptor2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                InputStream inputStream2 = this.zza;
                try {
                    ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.zzb);
                    try {
                        IOUtils.m38779a(inputStream2, autoCloseOutputStream, false, 1024);
                        autoCloseOutputStream.close();
                        inputStream2.close();
                    } catch (Throwable th) {
                        try {
                            autoCloseOutputStream.close();
                        } catch (Throwable th2) {
                            zzged.zza(th, th2);
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
