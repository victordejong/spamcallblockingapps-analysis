package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.amazon.device.ads.DtbConstants;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcnh.class */
public final class zzcnh extends zzbhb {
    private final zzcjb zza;
    private final boolean zzc;
    private final boolean zzd;
    private int zze;
    private zzbhf zzf;
    private boolean zzg;
    private float zzi;
    private float zzj;
    private float zzk;
    private boolean zzl;
    private boolean zzm;
    private zzbnp zzn;
    private final Object zzb = new Object();
    private boolean zzh = true;

    public zzcnh(zzcjb zzcjbVar, float f, boolean z, boolean z2) {
        this.zza = zzcjbVar;
        this.zzi = f;
        this.zzc = z;
        this.zzd = z2;
    }

    private final void zzw(String str, Map<String, String> map) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzchg.zze.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.ads.zzcnf
            private final zzcnh zza;
            private final Map zzb;

            {
                this.zza = this;
                this.zzb = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzu(this.zzb);
            }
        });
    }

    private final void zzx(int i, int i2, boolean z, boolean z2) {
        zzchg.zze.execute(new Runnable(this, i, i2, z, z2) { // from class: com.google.android.gms.internal.ads.zzcng
            private final zzcnh zza;
            private final int zzb;
            private final int zzc;
            private final boolean zzd;
            private final boolean zze;

            {
                this.zza = this;
                this.zzb = i;
                this.zzc = i2;
                this.zzd = z;
                this.zze = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzt(this.zzb, this.zzc, this.zzd, this.zze);
            }
        });
    }

    public final void zzc(zzbis zzbisVar) {
        boolean z = zzbisVar.zza;
        boolean z2 = zzbisVar.zzb;
        boolean z3 = zzbisVar.zzc;
        synchronized (this.zzb) {
            this.zzl = z2;
            this.zzm = z3;
        }
        String str = true != z ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1";
        String str2 = true != z2 ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1";
        String str3 = true != z3 ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1";
        C26174a c26174a = new C26174a(3);
        c26174a.put("muteStart", str);
        c26174a.put("customControlsRequested", str2);
        c26174a.put("clickToExpandRequested", str3);
        zzw("initialState", Collections.unmodifiableMap(c26174a));
    }

    public final void zzd(float f) {
        synchronized (this.zzb) {
            this.zzj = f;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zze() {
        zzw("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzf() {
        zzw("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzg(boolean z) {
        zzw(true != z ? "unmute" : "mute", null);
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzh() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzh;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final int zzi() {
        int i;
        synchronized (this.zzb) {
            i = this.zze;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzj() {
        float f;
        synchronized (this.zzb) {
            f = this.zzi;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzk() {
        float f;
        synchronized (this.zzb) {
            f = this.zzj;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzl(zzbhf zzbhfVar) {
        synchronized (this.zzb) {
            this.zzf = zzbhfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzm() {
        float f;
        synchronized (this.zzb) {
            f = this.zzk;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzn() {
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

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final zzbhf zzo() throws RemoteException {
        zzbhf zzbhfVar;
        synchronized (this.zzb) {
            zzbhfVar = this.zzf;
        }
        return zzbhfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzp() {
        boolean z;
        boolean zzn = zzn();
        synchronized (this.zzb) {
            z = false;
            if (!zzn) {
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

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzq() {
        zzw("stop", null);
    }

    public final void zzr() {
        boolean z;
        int i;
        synchronized (this.zzb) {
            z = this.zzh;
            i = this.zze;
            this.zze = 3;
        }
        zzx(i, 3, z, z);
    }

    public final void zzs(float f, float f2, int i, boolean z, float f3) {
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
                zzbnp zzbnpVar = this.zzn;
                if (zzbnpVar != null) {
                    zzbnpVar.zze();
                }
            } catch (RemoteException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
            }
        }
        zzx(i2, i, z3, z);
    }

    public final /* synthetic */ void zzt(int i, int i2, boolean z, boolean z2) {
        boolean z3;
        int i3;
        boolean z4;
        zzbhf zzbhfVar;
        zzbhf zzbhfVar2;
        zzbhf zzbhfVar3;
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
            } else {
                i3 = 1;
                z4 = true;
            }
            boolean z7 = i != i2 && i3 == 2;
            boolean z8 = i != i2 && i3 == 3;
            if (z5 || z3) {
                z6 = true;
            }
            this.zzg = z6;
            if (z3) {
                try {
                    zzbhf zzbhfVar4 = this.zzf;
                    if (zzbhfVar4 != null) {
                        zzbhfVar4.zze();
                    }
                } catch (RemoteException e) {
                    zzcgt.zzl("#007 Could not call remote method.", e);
                }
            }
            if (z4 && (zzbhfVar3 = this.zzf) != null) {
                zzbhfVar3.zzf();
            }
            if (z7 && (zzbhfVar2 = this.zzf) != null) {
                zzbhfVar2.zzg();
            }
            if (z8) {
                zzbhf zzbhfVar5 = this.zzf;
                if (zzbhfVar5 != null) {
                    zzbhfVar5.zzh();
                }
                this.zza.zzA();
            }
            if (z != z2 && (zzbhfVar = this.zzf) != null) {
                zzbhfVar.zzi(z2);
            }
        }
    }

    public final /* synthetic */ void zzu(Map map) {
        this.zza.zze("pubVideoCmd", map);
    }

    public final void zzv(zzbnp zzbnpVar) {
        synchronized (this.zzb) {
            this.zzn = zzbnpVar;
        }
    }
}
