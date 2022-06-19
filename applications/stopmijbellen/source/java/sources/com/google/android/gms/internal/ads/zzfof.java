package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.AdError;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfof.class */
public final class zzfof {
    private static final HashMap<String, Class<?>> zza = new HashMap<>();
    private final Context zzb;
    private final zzfog zzc;
    private final zzfmh zzd;
    private final zzfmc zze;
    private zzfnu zzf;
    private final Object zzg = new Object();

    public zzfof(Context context, zzfog zzfogVar, zzfmh zzfmhVar, zzfmc zzfmcVar) {
        this.zzb = context;
        this.zzc = zzfogVar;
        this.zzd = zzfmhVar;
        this.zze = zzfmcVar;
    }

    private final Class<?> zzd(zzfnv zzfnvVar) throws zzfoe {
        synchronized (this) {
            String zzk = zzfnvVar.zza().zzk();
            HashMap<String, Class<?>> hashMap = zza;
            Class<?> cls = hashMap.get(zzk);
            if (cls != null) {
                return cls;
            }
            try {
                if (!this.zze.zza(zzfnvVar.zzc())) {
                    throw new zzfoe(2026, "VM did not pass signature verification");
                }
                try {
                    File zzb = zzfnvVar.zzb();
                    if (!zzb.exists()) {
                        zzb.mkdirs();
                    }
                    Class loadClass = new DexClassLoader(zzfnvVar.zzc().getAbsolutePath(), zzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    hashMap.put(zzk, loadClass);
                    return loadClass;
                } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                    throw new zzfoe((int) AdError.REMOTE_ADS_SERVICE_ERROR, e);
                }
            } catch (GeneralSecurityException e2) {
                throw new zzfoe(2026, e2);
            }
        }
    }

    public final zzfmk zza() {
        zzfnu zzfnuVar;
        synchronized (this.zzg) {
            zzfnuVar = this.zzf;
        }
        return zzfnuVar;
    }

    public final zzfnv zzb() {
        synchronized (this.zzg) {
            zzfnu zzfnuVar = this.zzf;
            if (zzfnuVar != null) {
                return zzfnuVar.zzf();
            }
            return null;
        }
    }

    public final boolean zzc(zzfnv zzfnvVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfnu zzfnuVar = new zzfnu(zzd(zzfnvVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzfnvVar.zze(), null, new Bundle(), 2), zzfnvVar, this.zzc, this.zzd);
                if (!zzfnuVar.zzh()) {
                    throw new zzfoe(4000, "init failed");
                }
                int zze = zzfnuVar.zze();
                if (zze != 0) {
                    StringBuilder sb = new StringBuilder(15);
                    sb.append("ci: ");
                    sb.append(zze);
                    throw new zzfoe(4001, sb.toString());
                }
                synchronized (this.zzg) {
                    zzfnu zzfnuVar2 = this.zzf;
                    if (zzfnuVar2 != null) {
                        try {
                            zzfnuVar2.zzg();
                        } catch (zzfoe e) {
                            this.zzd.zzc(e.zza(), -1L, e);
                        }
                    }
                    this.zzf = zzfnuVar;
                }
                this.zzd.zzd(3000, System.currentTimeMillis() - currentTimeMillis);
                return true;
            } catch (Exception e2) {
                throw new zzfoe((int) AdError.INTERNAL_ERROR_2004, e2);
            }
        } catch (zzfoe e3) {
            this.zzd.zzc(e3.zza(), System.currentTimeMillis() - currentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.zzd.zzc(4010, System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        }
    }
}
