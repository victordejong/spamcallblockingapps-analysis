package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.support.p001v4.util.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdo.class */
public final class zzdo extends zzf {
    @VisibleForTesting
    protected zzdn zzaro;
    private volatile zzdn zzarp;
    private zzdn zzarq;
    private final Map<Activity, zzdn> zzarr = new ArrayMap();
    private zzdn zzars;
    private String zzart;

    public zzdo(zzbt zzbtVar) {
        super(zzbtVar);
    }

    @MainThread
    private final void zza(Activity activity, zzdn zzdnVar, boolean z) {
        zzdn zzdnVar2 = this.zzarp == null ? this.zzarq : this.zzarp;
        zzdn zzdnVar3 = zzdnVar;
        if (zzdnVar.zzarl == null) {
            zzdnVar3 = new zzdn(zzdnVar.zzuw, zzcn(activity.getClass().getCanonicalName()), zzdnVar.zzarm);
        }
        this.zzarq = this.zzarp;
        this.zzarp = zzdnVar3;
        zzgn().zzc(new zzdp(this, z, zzdnVar2, zzdnVar3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(@NonNull zzdn zzdnVar) {
        zzgd().zzq(zzbx().elapsedRealtime());
        if (zzgj().zzn(zzdnVar.zzarn)) {
            zzdnVar.zzarn = false;
        }
    }

    public static void zza(zzdn zzdnVar, Bundle bundle, boolean z) {
        if (bundle != null && zzdnVar != null && (!bundle.containsKey("_sc") || z)) {
            if (zzdnVar.zzuw != null) {
                bundle.putString("_sn", zzdnVar.zzuw);
            } else {
                bundle.remove("_sn");
            }
            bundle.putString("_sc", zzdnVar.zzarl);
            bundle.putLong("_si", zzdnVar.zzarm);
        } else if (bundle != null && zzdnVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    @VisibleForTesting
    private static String zzcn(String str) {
        String[] split = str.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        return str2.length() > 100 ? str2.substring(0, 100) : str2;
    }

    @MainThread
    private final zzdn zze(@NonNull Activity activity) {
        Preconditions.checkNotNull(activity);
        zzdn zzdnVar = this.zzarr.get(activity);
        zzdn zzdnVar2 = zzdnVar;
        if (zzdnVar == null) {
            zzdnVar2 = new zzdn(null, zzcn(activity.getClass().getCanonicalName()), zzgm().zzmc());
            this.zzarr.put(activity, zzdnVar2);
        }
        return zzdnVar2;
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @MainThread
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.zzarr.put(activity, new zzdn(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
        }
    }

    @MainThread
    public final void onActivityDestroyed(Activity activity) {
        this.zzarr.remove(activity);
    }

    @MainThread
    public final void onActivityPaused(Activity activity) {
        zzdn zze = zze(activity);
        this.zzarq = this.zzarp;
        this.zzarp = null;
        zzgn().zzc(new zzdq(this, zze));
    }

    @MainThread
    public final void onActivityResumed(Activity activity) {
        zza(activity, zze(activity), false);
        zza zzgd = zzgd();
        zzgd.zzgn().zzc(new zzd(zzgd, zzgd.zzbx().elapsedRealtime()));
    }

    @MainThread
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzdn zzdnVar;
        if (bundle != null && (zzdnVar = this.zzarr.get(activity)) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("id", zzdnVar.zzarm);
            bundle2.putString("name", zzdnVar.zzuw);
            bundle2.putString("referrer_name", zzdnVar.zzarl);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    public final void setCurrentScreen(@NonNull Activity activity, @Size(max = 36, min = 1) @Nullable String str, @Size(max = 36, min = 1) @Nullable String str2) {
        if (this.zzarp == null) {
            zzgo().zzjg().zzbx("setCurrentScreen cannot be called while no activity active");
        } else if (this.zzarr.get(activity) == null) {
            zzgo().zzjg().zzbx("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            String str3 = str2;
            if (str2 == null) {
                str3 = zzcn(activity.getClass().getCanonicalName());
            }
            boolean equals = this.zzarp.zzarl.equals(str3);
            boolean zzu = zzfk.zzu(this.zzarp.zzuw, str);
            if (equals && zzu) {
                zzgo().zzji().zzbx("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                zzgo().zzjg().zzg("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str3 == null || (str3.length() > 0 && str3.length() <= 100)) {
                zzgo().zzjl().zze("Setting current screen to name, class", str == null ? "null" : str, str3);
                zzdn zzdnVar = new zzdn(str, str3, zzgm().zzmc());
                this.zzarr.put(activity, zzdnVar);
                zza(activity, zzdnVar, true);
            } else {
                zzgo().zzjg().zzg("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str3.length()));
            }
        }
    }

    @WorkerThread
    public final void zza(String str, zzdn zzdnVar) {
        zzaf();
        synchronized (this) {
            if (this.zzart == null || this.zzart.equals(str) || zzdnVar != null) {
                this.zzart = str;
                this.zzars = zzdnVar;
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzgd() {
        return super.zzgd();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzcs zzge() {
        return super.zzge();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzaj zzgf() {
        return super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdr zzgg() {
        return super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdo zzgh() {
        return super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzal zzgi() {
        return super.zzgi();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzeq zzgj() {
        return super.zzgj();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgt() {
        return false;
    }

    @WorkerThread
    public final zzdn zzla() {
        zzcl();
        zzaf();
        return this.zzaro;
    }

    public final zzdn zzlb() {
        zzgb();
        return this.zzarp;
    }
}
