package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpl.class */
public final class zzcpl extends zzbiy {
    private final zzclh zza;
    private final boolean zzc;
    private final boolean zzd;
    @GuardedBy("lock")
    private int zze;
    @GuardedBy("lock")
    private zzbjc zzf;
    @GuardedBy("lock")
    private boolean zzg;
    @GuardedBy("lock")
    private float zzi;
    @GuardedBy("lock")
    private float zzj;
    @GuardedBy("lock")
    private float zzk;
    @GuardedBy("lock")
    private boolean zzl;
    @GuardedBy("lock")
    private boolean zzm;
    @GuardedBy("lock")
    private zzbpq zzn;
    private final Object zzb = new Object();
    @GuardedBy("lock")
    private boolean zzh = true;

    public zzcpl(zzclh zzclhVar, float f, boolean z, boolean z2) {
        this.zza = zzclhVar;
        this.zzi = f;
        this.zzc = z;
        this.zzd = z2;
    }

    private final void zzw(final int i, final int i2, final boolean z, final boolean z2) {
        zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpj
            @Override // java.lang.Runnable
            public final void run() {
                zzcpl.this.zzd(i, i2, z, z2);
            }
        });
    }

    private final void zzx(String str, Map<String, String> map) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        final HashMap hashMap2 = hashMap;
        zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpk
            @Override // java.lang.Runnable
            public final void run() {
                zzcpl.this.zzr(hashMap2);
            }
        });
    }

    public final void zzc(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.zzb) {
            z2 = true;
            if (f2 == this.zzi) {
                z2 = f3 != this.zzk;
            }
            this.zzi = f2;
            this.zzj = f;
            z3 = this.zzh;
            this.zzh = z;
            i2 = this.zze;
            this.zze = i;
            float f4 = this.zzk;
            this.zzk = f3;
            if (Math.abs(f3 - f4) > 1.0E-4f) {
                this.zza.zzH().invalidate();
            }
        }
        if (z2) {
            try {
                zzbpq zzbpqVar = this.zzn;
                if (zzbpqVar != null) {
                    zzbpqVar.zze();
                }
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
            }
        }
        zzw(i2, i, z3, z);
    }

    public final /* synthetic */ void zzd(int i, int i2, boolean z, boolean z2) {
        boolean z3;
        int i3;
        boolean z4;
        int i4;
        zzbjc zzbjcVar;
        zzbjc zzbjcVar2;
        zzbjc zzbjcVar3;
        synchronized (this.zzb) {
            boolean z5 = this.zzg;
            boolean z6 = false;
            if (z5 || i2 != 1) {
                i3 = i2;
                z3 = false;
            } else {
                i3 = 1;
                z3 = true;
            }
            if (i == i2 || i3 != 1) {
                z4 = false;
                i4 = i3;
            } else {
                i4 = 1;
                z4 = true;
            }
            boolean z7 = i != i2 && i4 == 2;
            boolean z8 = i != i2 && i4 == 3;
            if (z5 || z3) {
                z6 = true;
            }
            this.zzg = z6;
            if (z3) {
                try {
                    zzbjc zzbjcVar4 = this.zzf;
                    if (zzbjcVar4 != null) {
                        zzbjcVar4.zzi();
                    }
                } catch (RemoteException e) {
                    zzciz.zzl("#007 Could not call remote method.", e);
                }
            }
            if (z4 && (zzbjcVar3 = this.zzf) != null) {
                zzbjcVar3.zzh();
            }
            if (z7 && (zzbjcVar2 = this.zzf) != null) {
                zzbjcVar2.zzg();
            }
            if (z8) {
                zzbjc zzbjcVar5 = this.zzf;
                if (zzbjcVar5 != null) {
                    zzbjcVar5.zze();
                }
                this.zza.zzy();
            }
            if (z != z2 && (zzbjcVar = this.zzf) != null) {
                zzbjcVar.zzf(z2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zze() {
        float f;
        synchronized (this.zzb) {
            f = this.zzk;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zzf() {
        float f;
        synchronized (this.zzb) {
            f = this.zzj;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zzg() {
        float f;
        synchronized (this.zzb) {
            f = this.zzi;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final int zzh() {
        int i;
        synchronized (this.zzb) {
            i = this.zze;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final zzbjc zzi() throws RemoteException {
        zzbjc zzbjcVar;
        synchronized (this.zzb) {
            zzbjcVar = this.zzf;
        }
        return zzbjcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzj(boolean z) {
        zzx(true != z ? "unmute" : "mute", null);
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzk() {
        zzx("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzl() {
        zzx("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzm(zzbjc zzbjcVar) {
        synchronized (this.zzb) {
            this.zzf = zzbjcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzn() {
        zzx("stop", null);
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzo() {
        boolean z;
        boolean zzp = zzp();
        synchronized (this.zzb) {
            z = false;
            if (!zzp) {
                z = false;
                if (this.zzm) {
                    z = false;
                    if (this.zzd) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzp() {
        boolean z;
        synchronized (this.zzb) {
            z = false;
            if (this.zzc) {
                z = false;
                if (this.zzl) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzq() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzh;
        }
        return z;
    }

    public final /* synthetic */ void zzr(Map map) {
        this.zza.zzd("pubVideoCmd", map);
    }

    public final void zzs(zzbkq zzbkqVar) {
        boolean z = zzbkqVar.zza;
        boolean z2 = zzbkqVar.zzb;
        boolean z3 = zzbkqVar.zzc;
        synchronized (this.zzb) {
            this.zzl = z2;
            this.zzm = z3;
        }
        zzx("initialState", CollectionUtils.mapOf("muteStart", true != z ? "0" : "1", "customControlsRequested", true != z2 ? "0" : "1", "clickToExpandRequested", true != z3 ? "0" : "1"));
    }

    public final void zzt(float f) {
        synchronized (this.zzb) {
            this.zzj = f;
        }
    }

    public final void zzu() {
        boolean z;
        int i;
        synchronized (this.zzb) {
            z = this.zzh;
            i = this.zze;
            this.zze = 3;
        }
        zzw(i, 3, z, z);
    }

    public final void zzv(zzbpq zzbpqVar) {
        synchronized (this.zzb) {
            this.zzn = zzbpqVar;
        }
    }
}
