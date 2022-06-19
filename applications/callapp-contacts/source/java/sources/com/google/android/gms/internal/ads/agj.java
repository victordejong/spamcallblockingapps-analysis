package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agj.class */
public final class agj {
    /* renamed from: a */
    public static void m18760a(String str, AbstractC13087z<?> abstractC13087z, zzap zzapVar) throws zzap {
        AbstractC12650iy zzj = abstractC13087z.zzj();
        int zzi = abstractC13087z.zzi();
        try {
            zzj.mo14593a(zzapVar);
            abstractC13087z.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzi)));
        } catch (zzap e) {
            abstractC13087z.zzc(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzi)));
            throw e;
        }
    }

    /* renamed from: a */
    public static byte[] m18761a(InputStream inputStream, int i, C12886rq c12886rq) throws IOException {
        Throwable th;
        byte[] bArr;
        afk afkVar = new afk(c12886rq, i);
        try {
            bArr = c12886rq.m14209a(1024);
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
                            C12759mz.m14482a("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    c12886rq.m14208a(bArr);
                    afkVar.close();
                    throw th;
                }
            }
            byte[] byteArray = afkVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    C12759mz.m14482a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            c12886rq.m14208a(bArr);
            afkVar.close();
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            bArr = null;
        }
    }
}
