package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacy.class */
public final class zzacy {
    public static final String zza = "zzacy";
    private final zzabr zzb;
    private final String zzc;
    private final String zzd;
    private final Class<?>[] zzf;
    private volatile Method zze = null;
    private final CountDownLatch zzg = new CountDownLatch(1);

    public zzacy(zzabr zzabrVar, String str, String str2, Class<?>... clsArr) {
        this.zzb = zzabrVar;
        this.zzc = str;
        this.zzd = str2;
        this.zzf = clsArr;
        zzabrVar.zze().submit(new zzacx(this));
    }

    public static /* synthetic */ void zza(zzacy zzacyVar) {
        CountDownLatch countDownLatch;
        Class loadClass;
        try {
            loadClass = zzacyVar.zzb.zzf().loadClass(zzacyVar.zzc(zzacyVar.zzb.zzh(), zzacyVar.zzc));
        } catch (zzaaw | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException e) {
        } catch (NullPointerException e2) {
            countDownLatch = zzacyVar.zzg;
        } catch (Throwable th) {
            zzacyVar.zzg.countDown();
            throw th;
        }
        if (loadClass == null) {
            countDownLatch = zzacyVar.zzg;
        } else {
            zzacyVar.zze = loadClass.getMethod(zzacyVar.zzc(zzacyVar.zzb.zzh(), zzacyVar.zzd), zzacyVar.zzf);
            if (zzacyVar.zze == null) {
                countDownLatch = zzacyVar.zzg;
            }
            countDownLatch = zzacyVar.zzg;
        }
        countDownLatch.countDown();
    }

    private final String zzc(byte[] bArr, String str) throws zzaaw, UnsupportedEncodingException {
        return new String(this.zzb.zzg().zzb(bArr, str), StringConstant.UTF8);
    }

    public final Method zzb() {
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
