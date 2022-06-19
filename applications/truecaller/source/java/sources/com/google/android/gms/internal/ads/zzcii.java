package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcii.class */
public abstract class zzcii extends TextureView implements zzcje {
    public final zzciv zza = new zzciv();
    public final zzcjf zzb;

    public zzcii(Context context) {
        super(context);
        this.zzb = new zzcjf(context, this);
    }

    public void zzA(int i) {
    }

    public void zzB(int i) {
    }

    public abstract String zzd();

    public abstract void zze(zzcih zzcihVar);

    public abstract void zzf(String str);

    public abstract void zzg();

    public abstract void zzh();

    public abstract void zzi();

    public abstract int zzj();

    public abstract int zzk();

    public abstract void zzl(int i);

    public abstract void zzm(float f, float f2);

    public abstract int zzn();

    public abstract int zzo();

    public abstract long zzp();

    public abstract long zzq();

    public abstract long zzr();

    public abstract int zzs();

    public abstract void zzt();

    public void zzw(String str, String[] strArr) {
        zzf(str);
    }

    public void zzx(int i) {
    }

    public void zzy(int i) {
    }

    public void zzz(int i) {
    }
}
