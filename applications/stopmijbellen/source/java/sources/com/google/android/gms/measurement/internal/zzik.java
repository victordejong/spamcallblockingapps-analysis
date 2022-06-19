package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzik.class */
public final class zzik extends zzf {
    @VisibleForTesting
    public zzid zza;
    private volatile zzid zzb;
    private zzid zzc;
    private Activity zze;
    private volatile boolean zzf;
    private volatile zzid zzg;
    private zzid zzh;
    private boolean zzi;
    private zzid zzk;
    private String zzl;
    private final Object zzj = new Object();
    private final Map<Activity, zzid> zzd = new ConcurrentHashMap();

    public zzik(zzfu zzfuVar) {
        super(zzfuVar);
    }

    private final void zzA(Activity activity, zzid zzidVar, boolean z) {
        zzid zzidVar2 = this.zzb == null ? this.zzc : this.zzb;
        if (zzidVar.zzb == null) {
            zzidVar = new zzid(zzidVar.zza, activity != null ? zzi(activity.getClass(), "Activity") : null, zzidVar.zzc, zzidVar.zze, zzidVar.zzf);
        }
        this.zzc = this.zzb;
        this.zzb = zzidVar;
        this.zzs.zzav().zzh(new zzif(this, zzidVar, zzidVar2, this.zzs.zzay().elapsedRealtime(), z));
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0175, code lost:
        if (r10 != 0) goto L54;
     */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzB(com.google.android.gms.measurement.internal.zzid r8, com.google.android.gms.measurement.internal.zzid r9, long r10, boolean r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzik.zzB(com.google.android.gms.measurement.internal.zzid, com.google.android.gms.measurement.internal.zzid, long, boolean, android.os.Bundle):void");
    }

    public final void zzC(zzid zzidVar, boolean z, long j) {
        this.zzs.zzB().zzc(this.zzs.zzay().elapsedRealtime());
        if (!this.zzs.zzh().zzb.zzd(zzidVar != null && zzidVar.zzd, z, j) || zzidVar == null) {
            return;
        }
        zzidVar.zzd = false;
    }

    private final zzid zzD(Activity activity) {
        Preconditions.checkNotNull(activity);
        zzid zzidVar = this.zzd.get(activity);
        zzid zzidVar2 = zzidVar;
        if (zzidVar == null) {
            zzidVar2 = new zzid(null, zzi(activity.getClass(), "Activity"), this.zzs.zzl().zzd());
            this.zzd.put(activity, zzidVar2);
        }
        if (this.zzs.zzc().zzn(null, zzea.zzar) && this.zzg != null) {
            return this.zzg;
        }
        return zzidVar2;
    }

    public static void zzm(zzid zzidVar, Bundle bundle, boolean z) {
        boolean z2 = z;
        if (zzidVar != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = zzidVar.zza;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = zzidVar.zzb;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", zzidVar.zzc);
                return;
            }
            z2 = false;
        }
        if (zzidVar != null || !z2) {
            return;
        }
        bundle.remove("_sn");
        bundle.remove("_sc");
        bundle.remove("_si");
    }

    public static /* synthetic */ void zzu(zzik zzikVar, Bundle bundle, zzid zzidVar, zzid zzidVar2, long j) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        zzikVar.zzB(zzidVar, zzidVar2, j, true, zzikVar.zzs.zzl().zzF(null, "screen_view", bundle, null, true));
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zze() {
        return false;
    }

    public final zzid zzh(boolean z) {
        zzb();
        zzg();
        if (!this.zzs.zzc().zzn(null, zzea.zzar) || !z) {
            return this.zza;
        }
        zzid zzidVar = this.zza;
        return zzidVar != null ? zzidVar : this.zzh;
    }

    @VisibleForTesting
    public final String zzi(Class<?> cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str2 = length > 0 ? split[length - 1] : "";
        int length2 = str2.length();
        this.zzs.zzc();
        String str3 = str2;
        if (length2 > 100) {
            this.zzs.zzc();
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzik.zzj(android.os.Bundle, long):void");
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzik.zzk(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    public final zzid zzl() {
        return this.zzb;
    }

    public final void zzn(String str, zzid zzidVar) {
        zzg();
        synchronized (this) {
            String str2 = this.zzl;
            if (str2 == null || str2.equals(str) || zzidVar != null) {
                this.zzl = str;
                this.zzk = zzidVar;
            }
        }
    }

    public final void zzo(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.zzs.zzc().zzt() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzd.put(activity, new zzid(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), bundle2.getString("referrer_name"), bundle2.getLong(FacebookAdapter.KEY_ID)));
    }

    public final void zzq(Activity activity) {
        if (this.zzs.zzc().zzn(null, zzea.zzar)) {
            synchronized (this.zzj) {
                this.zzi = true;
                if (activity != this.zze) {
                    synchronized (this.zzj) {
                        this.zze = activity;
                        this.zzf = false;
                    }
                    if (this.zzs.zzc().zzn(null, zzea.zzaq) && this.zzs.zzc().zzt()) {
                        this.zzg = null;
                        this.zzs.zzav().zzh(new zzij(this));
                    }
                }
            }
        }
        if (this.zzs.zzc().zzn(null, zzea.zzaq) && !this.zzs.zzc().zzt()) {
            this.zzb = this.zzg;
            this.zzs.zzav().zzh(new zzig(this));
            return;
        }
        zzA(activity, zzD(activity), false);
        zzd zzB = this.zzs.zzB();
        zzB.zzs.zzav().zzh(new zzc(zzB, zzB.zzs.zzay().elapsedRealtime()));
    }

    public final void zzr(Activity activity) {
        if (this.zzs.zzc().zzn(null, zzea.zzar)) {
            synchronized (this.zzj) {
                this.zzi = false;
                this.zzf = true;
            }
        }
        long elapsedRealtime = this.zzs.zzay().elapsedRealtime();
        if (this.zzs.zzc().zzn(null, zzea.zzaq) && !this.zzs.zzc().zzt()) {
            this.zzb = null;
            this.zzs.zzav().zzh(new zzih(this, elapsedRealtime));
            return;
        }
        zzid zzD = zzD(activity);
        this.zzc = this.zzb;
        this.zzb = null;
        this.zzs.zzav().zzh(new zzii(this, zzD, elapsedRealtime));
    }

    public final void zzs(Activity activity, Bundle bundle) {
        zzid zzidVar;
        if (!this.zzs.zzc().zzt() || bundle == null || (zzidVar = this.zzd.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong(FacebookAdapter.KEY_ID, zzidVar.zzc);
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, zzidVar.zza);
        bundle2.putString("referrer_name", zzidVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    public final void zzt(Activity activity) {
        synchronized (this.zzj) {
            if (activity == this.zze) {
                this.zze = null;
            }
        }
        if (!this.zzs.zzc().zzt()) {
            return;
        }
        this.zzd.remove(activity);
    }
}
