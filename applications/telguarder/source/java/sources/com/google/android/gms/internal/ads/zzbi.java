package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbi.class */
public final class zzbi {
    public static void zza(zzab<?> zzabVar, IOException iOException, long j, zzbb zzbbVar, byte[] bArr) throws zzap {
        if (iOException instanceof SocketTimeoutException) {
            zza("socket", zzabVar, new zzam());
        } else if (iOException instanceof MalformedURLException) {
            String valueOf = String.valueOf(zzabVar.getUrl());
            throw new RuntimeException(valueOf.length() != 0 ? "Bad URL ".concat(valueOf) : new String("Bad URL "), iOException);
        } else if (zzbbVar == null) {
            throw new zzy(iOException);
        } else {
            int statusCode = zzbbVar.getStatusCode();
            zzao.m1355e("Unexpected response code %d for %s", Integer.valueOf(statusCode), zzabVar.getUrl());
            if (bArr == null) {
                zza("network", zzabVar, new zzw());
                return;
            }
            zzz zzzVar = new zzz(statusCode, bArr, false, SystemClock.elapsedRealtime() - j, zzbbVar.zzq());
            if (statusCode == 401 || statusCode == 403) {
                zza("auth", zzabVar, new zzl(zzzVar));
            } else if (statusCode >= 400 && statusCode <= 499) {
                throw new zzo(zzzVar);
            } else {
                if (statusCode >= 500 && statusCode <= 599) {
                    throw new zzan(zzzVar);
                }
                throw new zzan(zzzVar);
            }
        }
    }

    private static void zza(String str, zzab<?> zzabVar, zzap zzapVar) throws zzap {
        zzak zzj = zzabVar.zzj();
        int zzi = zzabVar.zzi();
        try {
            zzj.zza(zzapVar);
            zzabVar.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzi)));
        } catch (zzap e) {
            zzabVar.zzc(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzi)));
            throw e;
        }
    }

    public static byte[] zza(InputStream inputStream, int i, zzat zzatVar) throws IOException {
        Throwable th;
        byte[] bArr;
        zzbh zzbhVar = new zzbh(zzatVar, i);
        try {
            bArr = zzatVar.zzf(1024);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    zzbhVar.write(bArr, 0, read);
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            zzao.m1354v("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    zzatVar.zza(bArr);
                    zzbhVar.close();
                    throw th;
                }
            }
            byte[] byteArray = zzbhVar.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zzao.m1354v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            zzatVar.zza(bArr);
            zzbhVar.close();
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            bArr = null;
        }
    }
}
