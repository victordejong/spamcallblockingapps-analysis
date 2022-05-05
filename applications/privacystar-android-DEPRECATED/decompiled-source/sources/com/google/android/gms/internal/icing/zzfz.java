package com.google.android.gms.internal.icing;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfz.class */
public class zzfz {
    protected volatile int zzoe = -1;

    public static final byte[] zza(zzfz zzfzVar) {
        byte[] bArr = new byte[zzfzVar.zzan()];
        try {
            zzfs zzf = zzfs.zzf(bArr, 0, bArr.length);
            zzfzVar.zza(zzf);
            zzf.zzda();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public String toString() {
        return zzga.zzb(this);
    }

    public void zza(zzfs zzfsVar) throws IOException {
    }

    public final int zzan() {
        int zze = zze();
        this.zzoe = zze;
        return zze;
    }

    /* renamed from: zzdb */
    public zzfz clone() throws CloneNotSupportedException {
        return (zzfz) super.clone();
    }

    protected int zze() {
        return 0;
    }
}
