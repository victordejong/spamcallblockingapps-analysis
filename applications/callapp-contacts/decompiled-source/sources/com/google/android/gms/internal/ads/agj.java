package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agj.class */
public final class agj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, z<?> zVar, zzap zzapVar) throws zzap {
        iy zzj = zVar.zzj();
        int zzi = zVar.zzi();
        try {
            zzj.a(zzapVar);
            zVar.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzi)));
        } catch (zzap e) {
            zVar.zzc(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzi)));
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(InputStream inputStream, int i, rq rqVar) throws IOException {
        Throwable th;
        byte[] bArr;
        afk afkVar = new afk(rqVar, i);
        try {
            bArr = rqVar.a(1024);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    afkVar.write(bArr, 0, read);
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            mz.a("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    rqVar.a(bArr);
                    afkVar.close();
                    throw th;
                }
            }
            byte[] byteArray = afkVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    mz.a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            rqVar.a(bArr);
            afkVar.close();
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            bArr = null;
        }
    }
}
