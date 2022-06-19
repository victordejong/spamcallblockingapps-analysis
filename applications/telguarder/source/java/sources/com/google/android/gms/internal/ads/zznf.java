package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznf.class */
public final class zznf implements zzne {
    private final zzne[] zzbey;
    private final ArrayList<zzne> zzbez;
    private zznd zzbfa;
    private zzid zzbfb;
    private Object zzbfc;
    private zznh zzbfe;
    private final zzie zzaew = new zzie();
    private int zzbfd = -1;

    public zznf(zzne... zzneVarArr) {
        this.zzbey = zzneVarArr;
        this.zzbez = new ArrayList<>(Arrays.asList(zzneVarArr));
    }

    public final void zza(int i, zzid zzidVar, Object obj) {
        zznh zznhVar;
        if (this.zzbfe == null) {
            int zzff = zzidVar.zzff();
            for (int i2 = 0; i2 < zzff; i2++) {
                zzidVar.zza(i2, this.zzaew, false);
            }
            if (this.zzbfd == -1) {
                this.zzbfd = zzidVar.zzfg();
            } else if (zzidVar.zzfg() != this.zzbfd) {
                zznhVar = new zznh(1);
                this.zzbfe = zznhVar;
            }
            zznhVar = null;
            this.zzbfe = zznhVar;
        }
        if (this.zzbfe != null) {
            return;
        }
        this.zzbez.remove(this.zzbey[i]);
        if (i == 0) {
            this.zzbfb = zzidVar;
            this.zzbfc = obj;
        }
        if (!this.zzbez.isEmpty()) {
            return;
        }
        this.zzbfa.zzb(this.zzbfb, this.zzbfc);
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final zznc zza(int i, zzol zzolVar) {
        int length = this.zzbey.length;
        zznc[] zzncVarArr = new zznc[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzncVarArr[i2] = this.zzbey[i2].zza(i, zzolVar);
        }
        return new zzng(zzncVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zza(zzhh zzhhVar, boolean z, zznd zzndVar) {
        this.zzbfa = zzndVar;
        int i = 0;
        while (true) {
            zzne[] zzneVarArr = this.zzbey;
            if (i < zzneVarArr.length) {
                zzneVarArr[i].zza(zzhhVar, false, new zzni(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzb(zznc zzncVar) {
        zzng zzngVar = (zzng) zzncVar;
        int i = 0;
        while (true) {
            zzne[] zzneVarArr = this.zzbey;
            if (i < zzneVarArr.length) {
                zzneVarArr[i].zzb(zzngVar.zzbff[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzhz() throws IOException {
        zznh zznhVar = this.zzbfe;
        if (zznhVar == null) {
            for (zzne zzneVar : this.zzbey) {
                zzneVar.zzhz();
            }
            return;
        }
        throw zznhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzne
    public final void zzia() {
        for (zzne zzneVar : this.zzbey) {
            zzneVar.zzia();
        }
    }
}
