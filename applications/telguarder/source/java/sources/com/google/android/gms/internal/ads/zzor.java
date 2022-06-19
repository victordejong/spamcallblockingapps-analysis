package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzor.class */
public final class zzor implements zzol {
    private final boolean zzbid;
    private final int zzbie;
    private final byte[] zzbif;
    private final zzom[] zzbig;
    private int zzbih;
    private int zzbii;
    private int zzbij;
    private zzom[] zzbik;

    public zzor(boolean z, int i) {
        this(true, 65536, 0);
    }

    private zzor(boolean z, int i, int i2) {
        zzpg.checkArgument(true);
        zzpg.checkArgument(true);
        this.zzbid = true;
        this.zzbie = 65536;
        this.zzbij = 0;
        this.zzbik = new zzom[100];
        this.zzbif = null;
        this.zzbig = new zzom[1];
    }

    public final void reset() {
        synchronized (this) {
            if (this.zzbid) {
                zzbf(0);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final void zza(zzom zzomVar) {
        synchronized (this) {
            zzom[] zzomVarArr = this.zzbig;
            zzomVarArr[0] = zzomVar;
            zza(zzomVarArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final void zza(zzom[] zzomVarArr) {
        boolean z;
        synchronized (this) {
            int i = this.zzbij;
            int length = zzomVarArr.length;
            zzom[] zzomVarArr2 = this.zzbik;
            if (length + i >= zzomVarArr2.length) {
                this.zzbik = (zzom[]) Arrays.copyOf(zzomVarArr2, Math.max(zzomVarArr2.length << 1, i + zzomVarArr.length));
            }
            for (zzom zzomVar : zzomVarArr) {
                if (zzomVar.data != null && zzomVar.data.length != this.zzbie) {
                    z = false;
                    zzpg.checkArgument(z);
                    zzom[] zzomVarArr3 = this.zzbik;
                    int i2 = this.zzbij;
                    this.zzbij = i2 + 1;
                    zzomVarArr3[i2] = zzomVar;
                }
                z = true;
                zzpg.checkArgument(z);
                zzom[] zzomVarArr32 = this.zzbik;
                int i22 = this.zzbij;
                this.zzbij = i22 + 1;
                zzomVarArr32[i22] = zzomVar;
            }
            this.zzbii -= zzomVarArr.length;
            notifyAll();
        }
    }

    public final void zzbf(int i) {
        synchronized (this) {
            boolean z = i < this.zzbih;
            this.zzbih = i;
            if (z) {
                zzn();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final zzom zzin() {
        zzom zzomVar;
        synchronized (this) {
            this.zzbii++;
            int i = this.zzbij;
            if (i > 0) {
                zzom[] zzomVarArr = this.zzbik;
                int i2 = i - 1;
                this.zzbij = i2;
                zzomVar = zzomVarArr[i2];
                zzomVarArr[i2] = null;
            } else {
                zzomVar = new zzom(new byte[this.zzbie], 0);
            }
        }
        return zzomVar;
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final int zzio() {
        return this.zzbie;
    }

    public final int zziq() {
        int i;
        int i2;
        synchronized (this) {
            i = this.zzbii;
            i2 = this.zzbie;
        }
        return i * i2;
    }

    @Override // com.google.android.gms.internal.ads.zzol
    public final void zzn() {
        synchronized (this) {
            int max = Math.max(0, zzpt.zzf(this.zzbih, this.zzbie) - this.zzbii);
            int i = this.zzbij;
            if (max >= i) {
                return;
            }
            Arrays.fill(this.zzbik, max, i, (Object) null);
            this.zzbij = max;
        }
    }
}
