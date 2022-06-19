package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzib.class */
public final class zzib extends zzf {
    protected zzhu zza;
    private volatile zzhu zzb;
    private zzhu zzc;
    private Activity zze;
    private volatile boolean zzf;
    private volatile zzhu zzg;
    private zzhu zzh;
    private boolean zzi;
    private zzhu zzk;
    private String zzl;
    private final Object zzj = new Object();
    private final Map<Activity, zzhu> zzd = new ConcurrentHashMap();

    public zzib(zzfl zzflVar) {
        super(zzflVar);
    }

    private final void zzA(Activity activity, zzhu zzhuVar, boolean z) {
        zzhu zzhuVar2 = this.zzb == null ? this.zzc : this.zzb;
        if (zzhuVar.zzb == null) {
            zzhuVar = new zzhu(zzhuVar.zza, activity != null ? zzi(activity.getClass(), "Activity") : null, zzhuVar.zzc, zzhuVar.zze, zzhuVar.zzf);
        }
        this.zzc = this.zzb;
        this.zzb = zzhuVar;
        this.zzx.zzau().zzh(new zzhw(this, zzhuVar, zzhuVar2, this.zzx.zzax().elapsedRealtime(), z));
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0184  */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzB(com.google.android.gms.measurement.internal.zzhu r8, com.google.android.gms.measurement.internal.zzhu r9, long r10, boolean r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzib.zzB(com.google.android.gms.measurement.internal.zzhu, com.google.android.gms.measurement.internal.zzhu, long, boolean, android.os.Bundle):void");
    }

    public final void zzC(zzhu zzhuVar, boolean z, long j) {
        this.zzx.zzB().zzc(this.zzx.zzax().elapsedRealtime());
        if (!this.zzx.zzh().zzb.zzd(zzhuVar != null && zzhuVar.zzd, z, j) || zzhuVar == null) {
            return;
        }
        zzhuVar.zzd = false;
    }

    private final zzhu zzD(Activity activity) {
        Preconditions.checkNotNull(activity);
        zzhu zzhuVar = this.zzd.get(activity);
        zzhu zzhuVar2 = zzhuVar;
        if (zzhuVar == null) {
            zzhuVar2 = new zzhu(null, zzi(activity.getClass(), "Activity"), this.zzx.zzl().zzd());
            this.zzd.put(activity, zzhuVar2);
        }
        if (this.zzx.zzc().zzn(null, zzdw.zzat) && this.zzg != null) {
            return this.zzg;
        }
        return zzhuVar2;
    }

    public static void zzm(zzhu zzhuVar, Bundle bundle, boolean z) {
        boolean z2 = z;
        if (zzhuVar != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = zzhuVar.zza;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = zzhuVar.zzb;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", zzhuVar.zzc);
                return;
            }
            z2 = false;
        }
        if (zzhuVar != null || !z2) {
            return;
        }
        bundle.remove("_sn");
        bundle.remove("_sc");
        bundle.remove("_si");
    }

    public static /* synthetic */ void zzu(zzib zzibVar, Bundle bundle, zzhu zzhuVar, zzhu zzhuVar2, long j) {
        bundle.remove(FirebaseAnalytics.Param.SCREEN_NAME);
        bundle.remove(FirebaseAnalytics.Param.SCREEN_CLASS);
        zzibVar.zzB(zzhuVar, zzhuVar2, j, true, zzibVar.zzx.zzl().zzF(null, FirebaseAnalytics.Event.SCREEN_VIEW, bundle, null, true));
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zze() {
        return false;
    }

    public final zzhu zzh(boolean z) {
        zzb();
        zzg();
        if (!this.zzx.zzc().zzn(null, zzdw.zzat) || !z) {
            return this.zza;
        }
        zzhu zzhuVar = this.zza;
        return zzhuVar != null ? zzhuVar : this.zzh;
    }

    final String zzi(Class<?> cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str2 = length > 0 ? split[length - 1] : "";
        int length2 = str2.length();
        this.zzx.zzc();
        String str3 = str2;
        if (length2 > 100) {
            this.zzx.zzc();
            str3 = str2.substring(0, 100);
        }
        return str3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
        if (r0 > 100) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b7, code lost:
        if (r0 > 100) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(android.os.Bundle r11, long r12) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzib.zzj(android.os.Bundle, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bd, code lost:
        if (r0 <= 100) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00fb, code lost:
        if (r0 <= 100) goto L39;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzk(android.app.Activity r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzib.zzk(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    public final zzhu zzl() {
        return this.zzb;
    }

    public final void zzn(String str, zzhu zzhuVar) {
        zzg();
        synchronized (this) {
            String str2 = this.zzl;
            if (str2 == null || str2.equals(str) || zzhuVar != null) {
                this.zzl = str;
                this.zzk = zzhuVar;
            }
        }
    }

    public final void zzo(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.zzx.zzc().zzt() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzd.put(activity, new zzhu(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void zzq(Activity activity) {
        if (this.zzx.zzc().zzn(null, zzdw.zzat)) {
            synchronized (this.zzj) {
                this.zzi = true;
                if (activity != this.zze) {
                    synchronized (this.zzj) {
                        this.zze = activity;
                        this.zzf = false;
                    }
                    if (this.zzx.zzc().zzn(null, zzdw.zzas) && this.zzx.zzc().zzt()) {
                        this.zzg = null;
                        this.zzx.zzau().zzh(new zzia(this));
                    }
                }
            }
        }
        if (this.zzx.zzc().zzn(null, zzdw.zzas) && !this.zzx.zzc().zzt()) {
            this.zzb = this.zzg;
            this.zzx.zzau().zzh(new zzhx(this));
            return;
        }
        zzA(activity, zzD(activity), false);
        zzd zzB = this.zzx.zzB();
        zzB.zzx.zzau().zzh(new zzc(zzB, zzB.zzx.zzax().elapsedRealtime()));
    }

    public final void zzr(Activity activity) {
        if (this.zzx.zzc().zzn(null, zzdw.zzat)) {
            synchronized (this.zzj) {
                this.zzi = false;
                this.zzf = true;
            }
        }
        long elapsedRealtime = this.zzx.zzax().elapsedRealtime();
        if (this.zzx.zzc().zzn(null, zzdw.zzas) && !this.zzx.zzc().zzt()) {
            this.zzb = null;
            this.zzx.zzau().zzh(new zzhy(this, elapsedRealtime));
            return;
        }
        zzhu zzD = zzD(activity);
        this.zzc = this.zzb;
        this.zzb = null;
        this.zzx.zzau().zzh(new zzhz(this, zzD, elapsedRealtime));
    }

    public final void zzs(Activity activity, Bundle bundle) {
        zzhu zzhuVar;
        if (!this.zzx.zzc().zzt() || bundle == null || (zzhuVar = this.zzd.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzhuVar.zzc);
        bundle2.putString("name", zzhuVar.zza);
        bundle2.putString("referrer_name", zzhuVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    public final void zzt(Activity activity) {
        synchronized (this.zzj) {
            if (activity == this.zze) {
                this.zze = null;
            }
        }
        if (!this.zzx.zzc().zzt()) {
            return;
        }
        this.zzd.remove(activity);
    }
}
