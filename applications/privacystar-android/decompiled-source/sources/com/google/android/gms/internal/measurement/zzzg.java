package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzzg.class */
public abstract class zzzg {
    protected volatile int zzcfm = -1;

    public static final <T extends zzzg> T zza(T t, byte[] bArr) throws zzzf {
        return (T) zzb(t, bArr, 0, bArr.length);
    }

    public static final void zza(zzzg zzzgVar, byte[] bArr, int i, int i2) {
        try {
            zzyy zzk = zzyy.zzk(bArr, 0, i2);
            zzzgVar.zza(zzk);
            zzk.zzyt();
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    private static final <T extends zzzg> T zzb(T t, byte[] bArr, int i, int i2) throws zzzf {
        try {
            zzyx zzj = zzyx.zzj(bArr, 0, i2);
            t.zza(zzj);
            zzj.zzan(0);
            return t;
        } catch (zzzf e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e2);
        }
    }

    public String toString() {
        return zzzh.zzc(this);
    }

    public abstract zzzg zza(zzyx zzyxVar) throws IOException;

    public void zza(zzyy zzyyVar) throws IOException {
    }

    protected int zzf() {
        return 0;
    }

    public final int zzvu() {
        int zzf = zzf();
        this.zzcfm = zzf;
        return zzf;
    }

    /* renamed from: zzyu */
    public zzzg clone() throws CloneNotSupportedException {
        return (zzzg) super.clone();
    }

    public final int zzza() {
        if (this.zzcfm < 0) {
            zzvu();
        }
        return this.zzcfm;
    }
}
