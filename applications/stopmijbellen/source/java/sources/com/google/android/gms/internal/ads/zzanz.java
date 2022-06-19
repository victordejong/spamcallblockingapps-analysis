package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanz.class */
public final class zzanz {
    public static final String zza = "zzanz";
    private final zzams zzb;
    private final String zzc;
    private final String zzd;
    private final Class<?>[] zzf;
    private volatile Method zze = null;
    private final CountDownLatch zzg = new CountDownLatch(1);

    public zzanz(zzams zzamsVar, String str, String str2, Class<?>... clsArr) {
        this.zzb = zzamsVar;
        this.zzc = str;
        this.zzd = str2;
        this.zzf = clsArr;
        zzamsVar.zzk().submit(new zzany(this));
    }

    public static /* bridge */ /* synthetic */ void zzb(zzanz zzanzVar) {
        CountDownLatch countDownLatch;
        Class loadClass;
        try {
            loadClass = zzanzVar.zzb.zzi().loadClass(zzanzVar.zzc(zzanzVar.zzb.zzu(), zzanzVar.zzc));
        } catch (zzalx | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException e) {
        } catch (NullPointerException e2) {
            countDownLatch = zzanzVar.zzg;
        } catch (Throwable th) {
            zzanzVar.zzg.countDown();
            throw th;
        }
        if (loadClass == null) {
            countDownLatch = zzanzVar.zzg;
        } else {
            zzanzVar.zze = loadClass.getMethod(zzanzVar.zzc(zzanzVar.zzb.zzu(), zzanzVar.zzd), zzanzVar.zzf);
            if (zzanzVar.zze == null) {
                countDownLatch = zzanzVar.zzg;
            }
            countDownLatch = zzanzVar.zzg;
        }
        countDownLatch.countDown();
    }

    private final String zzc(byte[] bArr, String str) throws zzalx, UnsupportedEncodingException {
        return new String(this.zzb.zze().zzb(bArr, str), "UTF-8");
    }

    public final Method zza() {
        if (this.zze != null) {
            return this.zze;
        }
        Method method = null;
        if (!this.zzg.await(2L, TimeUnit.SECONDS)) {
            return null;
        }
        method = this.zze;
        return method;
    }
}
