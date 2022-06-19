package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.measurement.zzcf;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p007a6.C0033h;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjk.class */
public final class zzjk extends zzf {
    private zzed zzb;
    private volatile Boolean zzc;
    private final zzal zzd;
    private final zzka zze;
    private final zzal zzg;
    private final List<Runnable> zzf = new ArrayList();
    private final zzjj zza = new zzjj(this);

    public zzjk(zzfu zzfuVar) {
        super(zzfuVar);
        this.zze = new zzka(zzfuVar.zzay());
        this.zzd = new zziu(this, zzfuVar);
        this.zzg = new zziw(this, zzfuVar);
    }

    public static /* synthetic */ void zzJ(zzjk zzjkVar, ComponentName componentName) {
        zzjkVar.zzg();
        if (zzjkVar.zzb != null) {
            zzjkVar.zzb = null;
            zzjkVar.zzs.zzau().zzk().zzb("Disconnected from device MeasurementService", componentName);
            zzjkVar.zzg();
            zzjkVar.zzB();
        }
    }

    private final boolean zzO() {
        this.zzs.zzat();
        return true;
    }

    public final void zzP() {
        zzg();
        this.zze.zza();
        zzal zzalVar = this.zzd;
        this.zzs.zzc();
        zzalVar.zzb(zzea.zzI.zzb(null).longValue());
    }

    private final void zzQ(Runnable runnable) throws IllegalStateException {
        zzg();
        if (zzh()) {
            runnable.run();
            return;
        }
        int size = this.zzf.size();
        this.zzs.zzc();
        if (size >= 1000) {
            C0033h.m8883n(this.zzs, "Discarding data. Max runnable queue size reached");
            return;
        }
        this.zzf.add(runnable);
        this.zzg.zzb(60000L);
        zzB();
    }

    public final void zzR() {
        zzg();
        this.zzs.zzau().zzk().zzb("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        for (Runnable runnable : this.zzf) {
            try {
                runnable.run();
            } catch (RuntimeException e) {
                this.zzs.zzau().zzb().zzb("Task exception while flushing queue", e);
            }
        }
        this.zzf.clear();
        this.zzg.zzd();
    }

    private final zzp zzS(boolean z) {
        this.zzs.zzat();
        zzee zzA = this.zzs.zzA();
        String str = null;
        if (z) {
            zzem zzau = this.zzs.zzau();
            if (zzau.zzs.zzd().zzb == null) {
                str = null;
            } else {
                Pair<String, Long> zzb = zzau.zzs.zzd().zzb.zzb();
                str = null;
                if (zzb != null) {
                    if (zzb == zzfb.zza) {
                        str = null;
                    } else {
                        String valueOf = String.valueOf(zzb.second);
                        String str2 = (String) zzb.first;
                        str = C0608b.m7625j(new StringBuilder(valueOf.length() + 1 + String.valueOf(str2).length()), valueOf, ":", str2);
                    }
                }
            }
        }
        return zzA.zzh(str);
    }

    public final void zzA(Bundle bundle) {
        zzg();
        zzb();
        zzQ(new zzit(this, zzS(false), bundle));
    }

    public final void zzB() {
        zzg();
        zzb();
        if (zzh()) {
            return;
        }
        if (zzD()) {
            this.zza.zzc();
        } else if (this.zzs.zzc().zzy()) {
        } else {
            this.zzs.zzat();
            List<ResolveInfo> queryIntentServices = this.zzs.zzax().getPackageManager().queryIntentServices(new Intent().setClassName(this.zzs.zzax(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (queryIntentServices == null || queryIntentServices.size() <= 0) {
                C0033h.m8883n(this.zzs, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            }
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            Context zzax = this.zzs.zzax();
            this.zzs.zzat();
            intent.setComponent(new ComponentName(zzax, "com.google.android.gms.measurement.AppMeasurementService"));
            this.zza.zza(intent);
        }
    }

    public final Boolean zzC() {
        return this.zzc;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzD() {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjk.zzD():boolean");
    }

    @VisibleForTesting
    public final void zzE(zzed zzedVar) {
        zzg();
        Preconditions.checkNotNull(zzedVar);
        this.zzb = zzedVar;
        zzP();
        zzR();
    }

    public final void zzF() {
        zzg();
        zzb();
        this.zza.zzb();
        try {
            ConnectionTracker.getInstance().unbindService(this.zzs.zzax(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.zzb = null;
    }

    public final void zzG(zzcf zzcfVar, zzas zzasVar, String str) {
        zzg();
        zzb();
        if (this.zzs.zzl().zzaa(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) == 0) {
            zzQ(new zziv(this, zzasVar, str, zzcfVar));
            return;
        }
        C1676a.m4786k(this.zzs, "Not bundling data. Service unavailable or out of date");
        this.zzs.zzl().zzag(zzcfVar, new byte[0]);
    }

    public final boolean zzH() {
        zzg();
        zzb();
        return !zzD() || this.zzs.zzl().zzZ() >= zzea.zzau.zzb(null).intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zze() {
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
        zzQ(new zzix(this, zzS(true)));
    }

    public final void zzj(boolean z) {
        zzg();
        zzb();
        if (z) {
            zzO();
            this.zzs.zzn().zzh();
        }
        if (zzH()) {
            zzQ(new zziy(this, zzS(false)));
        }
    }

    @VisibleForTesting
    public final void zzk(zzed zzedVar, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) {
        zzg();
        zzb();
        zzO();
        this.zzs.zzc();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> zzl = this.zzs.zzn().zzl(100);
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
                        zzedVar.zzd((zzas) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e) {
                        this.zzs.zzau().zzb().zzb("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkq) {
                    try {
                        zzedVar.zze((zzkq) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e2) {
                        this.zzs.zzau().zzb().zzb("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzaa) {
                    try {
                        zzedVar.zzm((zzaa) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e3) {
                        this.zzs.zzau().zzb().zzb("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    C0033h.m8883n(this.zzs, "Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    public final void zzl(zzas zzasVar, String str) {
        Preconditions.checkNotNull(zzasVar);
        zzg();
        zzb();
        zzO();
        zzQ(new zziz(this, true, zzS(true), this.zzs.zzn().zzi(zzasVar), zzasVar, str));
    }

    public final void zzm(zzaa zzaaVar) {
        Preconditions.checkNotNull(zzaaVar);
        zzg();
        zzb();
        this.zzs.zzat();
        zzQ(new zzja(this, true, zzS(true), this.zzs.zzn().zzk(zzaaVar), new zzaa(zzaaVar), zzaaVar));
    }

    public final void zzn(AtomicReference<List<zzaa>> atomicReference, String str, String str2, String str3) {
        zzg();
        zzb();
        zzQ(new zzjb(this, atomicReference, null, str2, str3, zzS(false)));
    }

    public final void zzo(zzcf zzcfVar, String str, String str2) {
        zzg();
        zzb();
        zzQ(new zzjc(this, str, str2, zzS(false), zzcfVar));
    }

    public final void zzq(AtomicReference<List<zzkq>> atomicReference, String str, String str2, String str3, boolean z) {
        zzg();
        zzb();
        zzQ(new zzjd(this, atomicReference, null, str2, str3, zzS(false), z));
    }

    public final void zzr(zzcf zzcfVar, String str, String str2, boolean z) {
        zzg();
        zzb();
        zzQ(new zzil(this, str, str2, zzS(false), z, zzcfVar));
    }

    public final void zzs(zzkq zzkqVar) {
        zzg();
        zzb();
        zzO();
        zzQ(new zzim(this, zzS(true), this.zzs.zzn().zzj(zzkqVar), zzkqVar));
    }

    public final void zzt(AtomicReference<List<zzkq>> atomicReference, boolean z) {
        zzg();
        zzb();
        zzQ(new zzin(this, atomicReference, zzS(false), z));
    }

    public final void zzu() {
        zzg();
        zzb();
        zzp zzS = zzS(false);
        zzO();
        this.zzs.zzn().zzh();
        zzQ(new zzio(this, zzS));
    }

    public final void zzv(AtomicReference<String> atomicReference) {
        zzg();
        zzb();
        zzQ(new zzip(this, atomicReference, zzS(false)));
    }

    public final void zzx(zzcf zzcfVar) {
        zzg();
        zzb();
        zzQ(new zziq(this, zzS(false), zzcfVar));
    }

    public final void zzy() {
        zzg();
        zzb();
        zzp zzS = zzS(true);
        this.zzs.zzn().zzm();
        zzQ(new zzir(this, zzS));
    }

    public final void zzz(zzid zzidVar) {
        zzg();
        zzb();
        zzQ(new zzis(this, zzidVar));
    }
}
