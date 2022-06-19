package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzn;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzij.class */
public final class zzij extends zze {
    private zzeo zzb;
    private volatile Boolean zzc;
    private final zzaf zzd;
    private final zzjx zze;
    private final zzaf zzg;
    private final List<Runnable> zzf = new ArrayList();
    private final zzjb zza = new zzjb(this);

    public zzij(zzga zzgaVar) {
        super(zzgaVar);
        this.zze = new zzjx(zzgaVar.zzm());
        this.zzd = new zzim(this, zzgaVar);
        this.zzg = new zzit(this, zzgaVar);
    }

    private final zzm zza(boolean z) {
        zzu();
        return zzg().zza(z ? zzr().zzy() : null);
    }

    public final void zza(ComponentName componentName) {
        zzd();
        if (this.zzb != null) {
            this.zzb = null;
            zzr().zzx().zza("Disconnected from device MeasurementService", componentName);
            zzd();
            zzaf();
        }
    }

    private final void zza(Runnable runnable) {
        zzd();
        if (zzab()) {
            runnable.run();
        } else if (this.zzf.size() >= 1000) {
            zzr().zzf().zza("Discarding data. Max runnable queue size reached");
        } else {
            this.zzf.add(runnable);
            this.zzg.zza(60000L);
            zzaf();
        }
    }

    private final boolean zzai() {
        zzu();
        return true;
    }

    public final void zzaj() {
        zzd();
        this.zze.zza();
        this.zzd.zza(zzap.zzag.zza(null).longValue());
    }

    public final void zzak() {
        zzd();
        if (!zzab()) {
            return;
        }
        zzr().zzx().zza("Inactivity, disconnecting from the service");
        zzah();
    }

    public final void zzal() {
        zzd();
        zzr().zzx().zza("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        for (Runnable runnable : this.zzf) {
            try {
                runnable.run();
            } catch (Exception e) {
                zzr().zzf().zza("Task exception while flushing queue", e);
            }
        }
        this.zzf.clear();
        this.zzg.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(zzn zznVar) {
        zzd();
        zzw();
        zza(new zzip(this, zza(false), zznVar));
    }

    public final void zza(zzn zznVar, zzan zzanVar, String str) {
        zzd();
        zzw();
        if (zzp().zza(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) == 0) {
            zza(new zziu(this, zzanVar, str, zznVar));
            return;
        }
        zzr().zzi().zza("Not bundling data. Service unavailable or out of date");
        zzp().zza(zznVar, new byte[0]);
    }

    public final void zza(zzn zznVar, String str, String str2) {
        zzd();
        zzw();
        zza(new zzja(this, str, str2, zza(false), zznVar));
    }

    public final void zza(zzn zznVar, String str, String str2, boolean z) {
        zzd();
        zzw();
        zza(new zzjc(this, str, str2, z, zza(false), zznVar));
    }

    public final void zza(zzan zzanVar, String str) {
        Preconditions.checkNotNull(zzanVar);
        zzd();
        zzw();
        boolean zzai = zzai();
        zza(new zziv(this, zzai, zzai && zzj().zza(zzanVar), zzanVar, zza(true), str));
    }

    public final void zza(zzeo zzeoVar) {
        zzd();
        Preconditions.checkNotNull(zzeoVar);
        this.zzb = zzeoVar;
        zzaj();
        zzal();
    }

    public final void zza(zzeo zzeoVar, AbstractSafeParcelable abstractSafeParcelable, zzm zzmVar) {
        List<AbstractSafeParcelable> zza;
        zzd();
        zzb();
        zzw();
        boolean zzai = zzai();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            if (!zzai || (zza = zzj().zza(100)) == null) {
                i = 0;
            } else {
                arrayList.addAll(zza);
                i = zza.size();
            }
            if (abstractSafeParcelable != null && i < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                i3++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList2.get(i3);
                if (abstractSafeParcelable2 instanceof zzan) {
                    try {
                        zzeoVar.zza((zzan) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e) {
                        zzr().zzf().zza("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkl) {
                    try {
                        zzeoVar.zza((zzkl) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e2) {
                        zzr().zzf().zza("Failed to send attribute to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzv) {
                    try {
                        zzeoVar.zza((zzv) abstractSafeParcelable2, zzmVar);
                    } catch (RemoteException e3) {
                        zzr().zzf().zza("Failed to send conditional property to the service", e3);
                    }
                } else {
                    zzr().zzf().zza("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    public final void zza(zzif zzifVar) {
        zzd();
        zzw();
        zza(new zzir(this, zzifVar));
    }

    public final void zza(zzkl zzklVar) {
        zzd();
        zzw();
        zza(new zzil(this, zzai() && zzj().zza(zzklVar), zzklVar, zza(true)));
    }

    public final void zza(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        zzd();
        zzw();
        zzu();
        zza(new zziy(this, true, zzj().zza(zzvVar), new zzv(zzvVar), zza(true), zzvVar));
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzd();
        zzw();
        zza(new zziq(this, atomicReference, zza(false)));
    }

    public final void zza(AtomicReference<List<zzv>> atomicReference, String str, String str2, String str3) {
        zzd();
        zzw();
        zza(new zzix(this, atomicReference, str, str2, str3, zza(false)));
    }

    public final void zza(AtomicReference<List<zzkl>> atomicReference, String str, String str2, String str3, boolean z) {
        zzd();
        zzw();
        zza(new zziz(this, atomicReference, str, str2, str3, z, zza(false)));
    }

    public final void zza(AtomicReference<List<zzkl>> atomicReference, boolean z) {
        zzd();
        zzw();
        zza(new zzio(this, atomicReference, zza(false), z));
    }

    public final boolean zzab() {
        zzd();
        zzw();
        return this.zzb != null;
    }

    public final void zzac() {
        zzd();
        zzw();
        zza(new zziw(this, zza(true)));
    }

    public final void zzad() {
        zzd();
        zzb();
        zzw();
        zzm zza = zza(false);
        if (zzai()) {
            zzj().zzab();
        }
        zza(new zzin(this, zza));
    }

    public final void zzae() {
        zzd();
        zzw();
        zzm zza = zza(true);
        boolean zza2 = zzt().zza(zzap.zzbv);
        if (zza2) {
            zzj().zzac();
        }
        zza(new zzis(this, zza, zza2));
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzaf() {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzij.zzaf():void");
    }

    public final Boolean zzag() {
        return this.zzc;
    }

    public final void zzah() {
        zzd();
        zzw();
        this.zza.zza();
        try {
            ConnectionTracker.getInstance().unbindService(zzn(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.zzb = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }
}
