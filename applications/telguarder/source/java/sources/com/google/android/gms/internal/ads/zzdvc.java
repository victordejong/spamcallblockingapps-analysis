package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.AdError;
import com.pubmatic.sdk.common.POBError;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvc.class */
public final class zzdvc {
    private static final HashMap<String, Class<?>> zzhux = new HashMap<>();
    private final Context context;
    private final zzdvb zzhuj;
    private final zzdsx zzhuy;
    private zzduq zzhuz;
    private final Object zzhva = new Object();
    private final zzdsy zzvs;

    public zzdvc(Context context, zzdvb zzdvbVar, zzdsy zzdsyVar, zzdsx zzdsxVar) {
        this.context = context;
        this.zzhuj = zzdvbVar;
        this.zzvs = zzdsyVar;
        this.zzhuy = zzdsxVar;
    }

    private final Class<?> zza(zzdup zzdupVar) throws zzduz {
        synchronized (this) {
            if (zzdupVar.zzayk() != null) {
                String zzdg = zzdupVar.zzayk().zzdg();
                HashMap<String, Class<?>> hashMap = zzhux;
                Class<?> cls = hashMap.get(zzdg);
                if (cls != null) {
                    return cls;
                }
                try {
                    if (!this.zzhuy.zzb(zzdupVar.zzayl())) {
                        throw new zzduz(2026, "VM did not pass signature verification");
                    }
                    try {
                        File zzaym = zzdupVar.zzaym();
                        if (!zzaym.exists()) {
                            zzaym.mkdirs();
                        }
                        Class loadClass = new DexClassLoader(zzdupVar.zzayl().getAbsolutePath(), zzaym.getAbsolutePath(), null, this.context.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                        hashMap.put(zzdg, loadClass);
                        return loadClass;
                    } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                        throw new zzduz((int) AdError.REMOTE_ADS_SERVICE_ERROR, e);
                    }
                } catch (GeneralSecurityException e2) {
                    throw new zzduz(2026, e2);
                }
            }
            throw new zzduz(4010, "mc");
        }
    }

    private final Object zza(Class<?> cls, zzdup zzdupVar) throws zzduz {
        try {
            return cls.getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.context, "msa-r", zzdupVar.zzayn(), null, new Bundle(), 2);
        } catch (Exception e) {
            throw new zzduz((int) AdError.INTERNAL_ERROR_2004, e);
        }
    }

    public final zzdte zzayv() {
        zzduq zzduqVar;
        synchronized (this.zzhva) {
            zzduqVar = this.zzhuz;
        }
        return zzduqVar;
    }

    public final zzdup zzayw() {
        synchronized (this.zzhva) {
            zzduq zzduqVar = this.zzhuz;
            if (zzduqVar != null) {
                return zzduqVar.zzayo();
            }
            return null;
        }
    }

    public final void zzb(zzdup zzdupVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzduq zzduqVar = new zzduq(zza(zza(zzdupVar), zzdupVar), zzdupVar, this.zzhuj, this.zzvs);
            if (!zzduqVar.zzayp()) {
                throw new zzduz(4000, "init failed");
            }
            int zzayq = zzduqVar.zzayq();
            if (zzayq != 0) {
                StringBuilder sb = new StringBuilder(15);
                sb.append("ci: ");
                sb.append(zzayq);
                throw new zzduz((int) POBError.NO_PARTNER_DETAILS, sb.toString());
            }
            synchronized (this.zzhva) {
                zzduq zzduqVar2 = this.zzhuz;
                if (zzduqVar2 != null) {
                    try {
                        zzduqVar2.close();
                    } catch (zzduz e) {
                        this.zzvs.zza(e.zzayu(), -1L, e);
                    }
                }
                this.zzhuz = zzduqVar;
            }
            this.zzvs.zzh(3000, System.currentTimeMillis() - currentTimeMillis);
        } catch (zzduz e2) {
            this.zzvs.zza(e2.zzayu(), System.currentTimeMillis() - currentTimeMillis, e2);
        } catch (Exception e3) {
            this.zzvs.zza(4010, System.currentTimeMillis() - currentTimeMillis, e3);
        }
    }
}
