package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzs;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjb.class */
public final class zzjb extends zzf {
    private zzdz zzb;
    private volatile Boolean zzc;
    private final zzal zzd;
    private final zzjr zze;
    private final zzal zzg;
    private final List<Runnable> zzf = new ArrayList();
    private final zzja zza = new zzja(this);

    public zzjb(zzfl zzflVar) {
        super(zzflVar);
        this.zze = new zzjr(zzflVar.zzax());
        this.zzd = new zzil(this, zzflVar);
        this.zzg = new zzin(this, zzflVar);
    }

    public static /* synthetic */ void zzJ(zzjb zzjbVar, ComponentName componentName) {
        zzjbVar.zzg();
        if (zzjbVar.zzb != null) {
            zzjbVar.zzb = null;
            zzjbVar.zzx.zzat().zzk().zzb("Disconnected from device MeasurementService", componentName);
            zzjbVar.zzg();
            zzjbVar.zzB();
        }
    }

    private final boolean zzO() {
        this.zzx.zzas();
        return true;
    }

    public final void zzP() {
        zzg();
        this.zze.zza();
        zzal zzalVar = this.zzd;
        this.zzx.zzc();
        zzalVar.zzb(zzdw.zzI.zzb(null).longValue());
    }

    private final void zzQ(Runnable runnable) throws IllegalStateException {
        zzg();
        if (zzh()) {
            runnable.run();
            return;
        }
        int size = this.zzf.size();
        this.zzx.zzc();
        if (size >= 1000) {
            this.zzx.zzat().zzb().zza("Discarding data. Max runnable queue size reached");
            return;
        }
        this.zzf.add(runnable);
        this.zzg.zzb(60000L);
        zzB();
    }

    public final void zzR() {
        zzg();
        this.zzx.zzat().zzk().zzb("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        for (Runnable runnable : this.zzf) {
            try {
                runnable.run();
            } catch (Exception e) {
                this.zzx.zzat().zzb().zzb("Task exception while flushing queue", e);
            }
        }
        this.zzf.clear();
        this.zzg.zzd();
    }

    private final zzp zzS(boolean z) {
        this.zzx.zzas();
        zzea zzA = this.zzx.zzA();
        String str = null;
        if (z) {
            zzei zzat = this.zzx.zzat();
            if (zzat.zzx.zzd().zzb == null) {
                str = null;
            } else {
                Pair<String, Long> zzb = zzat.zzx.zzd().zzb.zzb();
                str = null;
                if (zzb != null) {
                    if (zzb == zzex.zza) {
                        str = null;
                    } else {
                        String valueOf = String.valueOf(zzb.second);
                        String str2 = (String) zzb.first;
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str2).length());
                        sb.append(valueOf);
                        sb.append(":");
                        sb.append(str2);
                        str = sb.toString();
                    }
                }
            }
        }
        return zzA.zzh(str);
    }

    public final void zzA(Bundle bundle) {
        zzg();
        zzb();
        zzQ(new zzik(this, zzS(false), bundle));
    }

    public final void zzB() {
        zzg();
        zzb();
        if (zzh()) {
            return;
        }
        if (zzD()) {
            this.zza.zzc();
        } else if (this.zzx.zzc().zzy()) {
        } else {
            this.zzx.zzas();
            List<ResolveInfo> queryIntentServices = this.zzx.zzaw().getPackageManager().queryIntentServices(new Intent().setClassName(this.zzx.zzaw(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (queryIntentServices == null || queryIntentServices.size() <= 0) {
                this.zzx.zzat().zzb().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            }
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            Context zzaw = this.zzx.zzaw();
            this.zzx.zzas();
            intent.setComponent(new ComponentName(zzaw, "com.google.android.gms.measurement.AppMeasurementService"));
            this.zza.zza(intent);
        }
    }

    public final Boolean zzC() {
        return this.zzc;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x01a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzD() {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjb.zzD():boolean");
    }

    public final void zzE(zzdz zzdzVar) {
        zzg();
        Preconditions.checkNotNull(zzdzVar);
        this.zzb = zzdzVar;
        zzP();
        zzR();
    }

    public final void zzF() {
        zzg();
        zzb();
        this.zza.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(this.zzx.zzaw(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.zzb = null;
    }

    public final void zzG(zzs zzsVar, zzas zzasVar, String str) {
        zzg();
        zzb();
        if (this.zzx.zzl().zzaa(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) == 0) {
            zzQ(new zzim(this, zzasVar, str, zzsVar));
            return;
        }
        this.zzx.zzat().zze().zza("Not bundling data. Service unavailable or out of date");
        this.zzx.zzl().zzag(zzsVar, new byte[0]);
    }

    public final boolean zzH() {
        zzg();
        zzb();
        if (!this.zzx.zzc().zzn(null, zzdw.zzay)) {
            return false;
        }
        return !zzD() || this.zzx.zzl().zzZ() >= zzdw.zzaz.zzb(null).intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zze() {
        return false;
    }

    public final boolean zzh() {
        zzg();
        zzb();
        return this.zzb != null;
    }

    public final void zzi() {
        zzg();
        zzb();
        zzQ(new zzio(this, zzS(true)));
    }

    public final void zzj(boolean z) {
        zzlc.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzaw)) {
            zzg();
            zzb();
            if (z) {
                zzO();
                this.zzx.zzn().zzh();
            }
            if (!zzH()) {
                return;
            }
            zzQ(new zzip(this, zzS(false)));
        }
    }

    public final void zzk(zzdz zzdzVar, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) {
        zzg();
        zzb();
        zzO();
        this.zzx.zzc();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> zzl = this.zzx.zzn().zzl(100);
            if (zzl != null) {
                arrayList.addAll(zzl);
                i = zzl.size();
            } else {
                i = 0;
            }
            if (abstractSafeParcelable != null && i < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i3);
                if (abstractSafeParcelable2 instanceof zzas) {
                    try {
                        zzdzVar.zzd((zzas) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e) {
                        this.zzx.zzat().zzb().zzb("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkg) {
                    try {
                        zzdzVar.zze((zzkg) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e2) {
                        this.zzx.zzat().zzb().zzb("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzaa) {
                    try {
                        zzdzVar.zzm((zzaa) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e3) {
                        this.zzx.zzat().zzb().zzb("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    this.zzx.zzat().zzb().zza("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    public final void zzl(zzas zzasVar, String str) {
        Preconditions.checkNotNull(zzasVar);
        zzg();
        zzb();
        zzO();
        zzQ(new zziq(this, true, zzS(true), this.zzx.zzn().zzi(zzasVar), zzasVar, str));
    }

    public final void zzm(zzaa zzaaVar) {
        Preconditions.checkNotNull(zzaaVar);
        zzg();
        zzb();
        this.zzx.zzas();
        zzQ(new zzir(this, true, zzS(true), this.zzx.zzn().zzk(zzaaVar), new zzaa(zzaaVar), zzaaVar));
    }

    public final void zzn(AtomicReference<List<zzaa>> atomicReference, String str, String str2, String str3) {
        zzg();
        zzb();
        zzQ(new zzis(this, atomicReference, null, str2, str3, zzS(false)));
    }

    public final void zzo(zzs zzsVar, String str, String str2) {
        zzg();
        zzb();
        zzQ(new zzit(this, str, str2, zzS(false), zzsVar));
    }

    public final void zzq(AtomicReference<List<zzkg>> atomicReference, String str, String str2, String str3, boolean z) {
        zzg();
        zzb();
        zzQ(new zziu(this, atomicReference, null, str2, str3, zzS(false), z));
    }

    public final void zzr(zzs zzsVar, String str, String str2, boolean z) {
        zzg();
        zzb();
        zzQ(new zzic(this, str, str2, zzS(false), z, zzsVar));
    }

    public final void zzs(zzkg zzkgVar) {
        zzg();
        zzb();
        zzO();
        zzQ(new zzid(this, zzS(true), this.zzx.zzn().zzj(zzkgVar), zzkgVar));
    }

    public final void zzt(AtomicReference<List<zzkg>> atomicReference, boolean z) {
        zzg();
        zzb();
        zzQ(new zzie(this, atomicReference, zzS(false), z));
    }

    public final void zzu() {
        zzg();
        zzb();
        zzp zzS = zzS(false);
        zzO();
        this.zzx.zzn().zzh();
        zzQ(new zzif(this, zzS));
    }

    public final void zzv(AtomicReference<String> atomicReference) {
        zzg();
        zzb();
        zzQ(new zzig(this, atomicReference, zzS(false)));
    }

    public final void zzx(zzs zzsVar) {
        zzg();
        zzb();
        zzQ(new zzih(this, zzS(false), zzsVar));
    }

    public final void zzy() {
        zzg();
        zzb();
        zzp zzS = zzS(true);
        this.zzx.zzn().zzm();
        zzQ(new zzii(this, zzS));
    }

    public final void zzz(zzhu zzhuVar) {
        zzg();
        zzb();
        zzQ(new zzij(this, zzhuVar));
    }
}
