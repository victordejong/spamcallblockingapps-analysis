package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeb.class */
public abstract class zzeb implements zzde {
    public zzdc zzb;
    public zzdc zzc;
    private zzdc zzd;
    private zzdc zze;
    private ByteBuffer zzf;
    private ByteBuffer zzg;
    private boolean zzh;

    public zzeb() {
        ByteBuffer byteBuffer = zzde.zza;
        this.zzf = byteBuffer;
        this.zzg = byteBuffer;
        zzdc zzdcVar = zzdc.zza;
        this.zzd = zzdcVar;
        this.zze = zzdcVar;
        this.zzb = zzdcVar;
        this.zzc = zzdcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final zzdc zza(zzdc zzdcVar) throws zzdd {
        this.zzd = zzdcVar;
        this.zze = zzk(zzdcVar);
        return zzb() ? this.zze : zzdc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public boolean zzb() {
        return this.zze != zzdc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void zzd() {
        this.zzh = true;
        zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public ByteBuffer zze() {
        ByteBuffer byteBuffer = this.zzg;
        this.zzg = zzde.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public boolean zzf() {
        return this.zzh && this.zzg == zzde.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void zzg() {
        this.zzg = zzde.zza;
        this.zzh = false;
        this.zzb = this.zzd;
        this.zzc = this.zze;
        zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzde
    public final void zzh() {
        zzg();
        this.zzf = zzde.zza;
        zzdc zzdcVar = zzdc.zza;
        this.zzd = zzdcVar;
        this.zze = zzdcVar;
        this.zzb = zzdcVar;
        this.zzc = zzdcVar;
        zzn();
    }

    public final ByteBuffer zzi(int i) {
        if (this.zzf.capacity() < i) {
            this.zzf = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.zzf.clear();
        }
        ByteBuffer byteBuffer = this.zzf;
        this.zzg = byteBuffer;
        return byteBuffer;
    }

    public final boolean zzj() {
        return this.zzg.hasRemaining();
    }

    public zzdc zzk(zzdc zzdcVar) throws zzdd {
        throw null;
    }

    public void zzl() {
    }

    public void zzm() {
    }

    public void zzn() {
    }
}
