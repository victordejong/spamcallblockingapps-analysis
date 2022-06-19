package com.google.android.gms.internal.vision;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.tenor.android.core.constant.StringConstant;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzbe.class */
public abstract class zzbe<T> {
    private static Context zze;
    private static boolean zzfz = false;
    private static zzcu<zzcn<zzba>> zzga;
    private final String name;
    private final zzbk zzgb;
    private final T zzgc;
    private volatile int zzge;
    private volatile T zzgf;
    private static final Object zzfy = new Object();
    private static final AtomicInteger zzgd = new AtomicInteger();

    private zzbe(zzbk zzbkVar, String str, T t) {
        this.zzge = -1;
        String str2 = zzbkVar.zzgk;
        if (str2 == null && zzbkVar.zzgl == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && zzbkVar.zzgl != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.zzgb = zzbkVar;
        this.name = str;
        this.zzgc = t;
    }

    public /* synthetic */ zzbe(zzbk zzbkVar, String str, Object obj, zzbg zzbgVar) {
        this(zzbkVar, str, obj);
    }

    public static void init(Context context) {
        synchronized (zzfy) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zze != context) {
                zzaq.zzx();
                zzbj.zzx();
                zzav.zzaa();
                zzgd.incrementAndGet();
                zze = context;
                zzga = zzcx.zza(zzbd.zzfx);
            }
        }
    }

    public static void maybeInit(Context context) {
        synchronized (zzfy) {
            if (zze == null) {
                init(context);
            }
        }
    }

    public static <T> zzbe<T> zza(zzbk zzbkVar, String str, T t, zzbh<T> zzbhVar) {
        return new zzbi(zzbkVar, str, t, zzbhVar);
    }

    public static zzbe<Boolean> zza(zzbk zzbkVar, String str, boolean z) {
        return new zzbf(zzbkVar, str, Boolean.valueOf(z));
    }

    public static void zzab() {
        zzgd.incrementAndGet();
    }

    private final T zzad() {
        zzau zzauVar;
        Object zzb;
        boolean z = false;
        if (!this.zzgb.zzgq) {
            String str = (String) zzav.zze(zze).zzb("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
            z = false;
            if (str != null && zzal.zzeu.matcher(str).matches()) {
                z = true;
            }
        }
        if (z) {
            if (!Log.isLoggable("PhenotypeFlag", 3)) {
                return null;
            }
            String valueOf = String.valueOf(zzac());
            if (valueOf.length() != 0) {
                "Bypass reading Phenotype values for flag: ".concat(valueOf);
                return null;
            }
            new String("Bypass reading Phenotype values for flag: ");
            return null;
        }
        zzbk zzbkVar = this.zzgb;
        Uri uri = zzbkVar.zzgl;
        if (uri == null) {
            zzauVar = zzbj.zzb(zze, zzbkVar.zzgk);
        } else if (!zzbc.zza(zze, uri)) {
            zzauVar = null;
        } else if (this.zzgb.zzgr) {
            ContentResolver contentResolver = zze.getContentResolver();
            String lastPathSegment = this.zzgb.zzgl.getLastPathSegment();
            String packageName = zze.getPackageName();
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + String.valueOf(lastPathSegment).length() + 1);
            sb.append(lastPathSegment);
            sb.append(StringConstant.HASH);
            sb.append(packageName);
            zzauVar = zzaq.zza(contentResolver, zzbb.getContentProviderUri(sb.toString()));
        } else {
            zzauVar = zzaq.zza(zze.getContentResolver(), this.zzgb.zzgl);
        }
        if (zzauVar != null && (zzb = zzauVar.zzb(zzac())) != null) {
            return zza(zzb);
        }
        return null;
    }

    private final T zzae() {
        zzbk zzbkVar = this.zzgb;
        if (!zzbkVar.zzgo) {
            zzcl<Context, Boolean> zzclVar = zzbkVar.zzgs;
            if (zzclVar != null && !zzclVar.apply(zze).booleanValue()) {
                return null;
            }
            zzav zze2 = zzav.zze(zze);
            zzbk zzbkVar2 = this.zzgb;
            Object zzb = zze2.zzb(zzbkVar2.zzgo ? null : zze(zzbkVar2.zzgm));
            if (zzb == null) {
                return null;
            }
            return zza(zzb);
        }
        return null;
    }

    public static final /* synthetic */ zzcn zzaf() {
        new zzaz();
        return zzaz.zzf(zze);
    }

    private final String zze(String str) {
        if (str == null || !str.isEmpty()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf(this.name);
            return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        return this.name;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007d, code lost:
        if (r8 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0095, code lost:
        if (r8 != null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T get() {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzbe.get():java.lang.Object");
    }

    public abstract T zza(Object obj);

    public final String zzac() {
        return zze(this.zzgb.zzgn);
    }
}
