package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqn.class */
final class zzqn implements zzpy, zzpx {
    private final zzpy[] zza;
    private zzpx zzd;
    private zzch zze;
    private final zzpm zzh;
    private final ArrayList<zzpy> zzc = new ArrayList<>();
    private zzrp zzg = new zzpl(new zzrp[0]);
    private final IdentityHashMap<zzrn, Integer> zzb = new IdentityHashMap<>();
    private zzpy[] zzf = new zzpy[0];

    public zzqn(zzpm zzpmVar, long[] jArr, zzpy[] zzpyVarArr, byte... bArr) {
        this.zzh = zzpmVar;
        this.zza = zzpyVarArr;
        for (int i = 0; i < zzpyVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.zza[i] = new zzql(zzpyVarArr[i], j);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zza(long j, zzio zzioVar) {
        zzpy[] zzpyVarArr = this.zzf;
        return (zzpyVarArr.length > 0 ? zzpyVarArr[0] : this.zza[0]).zza(j, zzioVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzb() {
        return this.zzg.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final long zzc() {
        return this.zzg.zzc();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzd() {
        zzpy zzpyVar;
        zzpy[] zzpyVarArr = this.zzf;
        int length = zzpyVarArr.length;
        char c = 1;
        int i = 0;
        while (i < length) {
            zzpy zzpyVar2 = zzpyVarArr[i];
            char zzd = zzpyVar2.zzd();
            if (zzd == -9223372036854775807L) {
                zzd = c;
                if (c == -9223372036854775807L) {
                    continue;
                } else if (zzpyVar2.zze(c) != c) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                } else {
                    zzd = c;
                }
            } else if (c == -9223372036854775807L) {
                zzpy[] zzpyVarArr2 = this.zzf;
                int length2 = zzpyVarArr2.length;
                for (int i2 = 0; i2 < length2 && (zzpyVar = zzpyVarArr2[i2]) != zzpyVar2; i2++) {
                    if (zzpyVar.zze(zzd) != zzd) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
            } else if (zzd != c) {
                throw new IllegalStateException("Conflicting discontinuities.");
            } else {
                zzd = c;
            }
            i++;
            c = zzd;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zze(long j) {
        long zze = this.zzf[0].zze(j);
        int i = 1;
        while (true) {
            zzpy[] zzpyVarArr = this.zzf;
            if (i < zzpyVarArr.length) {
                if (zzpyVarArr[i].zze(zze) != zze) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
                i++;
            } else {
                return zze;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final zzch zzf() {
        zzch zzchVar = this.zze;
        Objects.requireNonNull(zzchVar);
        return zzchVar;
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final /* bridge */ /* synthetic */ void zzg(zzpy zzpyVar) {
        zzpx zzpxVar = this.zzd;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzh(long j, boolean z) {
        for (zzpy zzpyVar : this.zzf) {
            zzpyVar.zzh(j, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public final void zzi(zzpy zzpyVar) {
        this.zzc.remove(zzpyVar);
        if (!this.zzc.isEmpty()) {
            return;
        }
        int i = 0;
        for (zzpy zzpyVar2 : this.zza) {
            i += zzpyVar2.zzf().zzc;
        }
        zzcf[] zzcfVarArr = new zzcf[i];
        int i2 = 0;
        for (zzpy zzpyVar3 : this.zza) {
            zzch zzf = zzpyVar3.zzf();
            int i3 = zzf.zzc;
            int i4 = 0;
            while (i4 < i3) {
                zzcfVarArr[i2] = zzf.zzb(i4);
                i4++;
                i2++;
            }
        }
        this.zze = new zzch(zzcfVarArr);
        zzpx zzpxVar = this.zzd;
        Objects.requireNonNull(zzpxVar);
        zzpxVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzj() throws IOException {
        for (zzpy zzpyVar : this.zza) {
            zzpyVar.zzj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpy
    public final void zzk(zzpx zzpxVar, long j) {
        this.zzd = zzpxVar;
        Collections.addAll(this.zzc, this.zza);
        for (zzpy zzpyVar : this.zza) {
            zzpyVar.zzk(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final void zzl(long j) {
        this.zzg.zzl(j);
    }

    public final zzpy zzm(int i) {
        zzpy zzpyVar;
        zzpy zzpyVar2 = this.zza[i];
        zzpy zzpyVar3 = zzpyVar2;
        if (zzpyVar2 instanceof zzql) {
            zzpyVar = ((zzql) zzpyVar2).zza;
            zzpyVar3 = zzpyVar;
        }
        return zzpyVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzn(long j) {
        if (!this.zzc.isEmpty()) {
            int size = this.zzc.size();
            for (int i = 0; i < size; i++) {
                this.zzc.get(i).zzn(j);
            }
            return false;
        }
        return this.zzg.zzn(j);
    }

    @Override // com.google.android.gms.internal.ads.zzpy, com.google.android.gms.internal.ads.zzrp
    public final boolean zzo() {
        return this.zzg.zzo();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.zzpy[]] */
    /* JADX WARN: Type inference failed for: r0v32, types: [com.google.android.gms.internal.ads.zzpy] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.zzpy
    public final long zzq(zzsb[] zzsbVarArr, boolean[] zArr, zzrn[] zzrnVarArr, boolean[] zArr2, long j) {
        int length;
        boolean z;
        boolean z2;
        boolean z3;
        int length2 = zzsbVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = zzsbVarArr.length;
            if (i >= length) {
                break;
            }
            zzrn zzrnVar = zzrnVarArr[i];
            Integer num = zzrnVar == null ? null : this.zzb.get(zzrnVar);
            iArr[i] = num == null ? -1 : num.intValue();
            iArr2[i] = -1;
            zzsb zzsbVar = zzsbVarArr[i];
            if (zzsbVar != null) {
                zzcf zze = zzsbVar.zze();
                int i2 = 0;
                while (true) {
                    zzpy[] zzpyVarArr = this.zza;
                    if (i2 >= zzpyVarArr.length) {
                        break;
                    } else if (zzpyVarArr[i2].zzf().zza(zze) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            i++;
        }
        this.zzb.clear();
        zzrn[] zzrnVarArr2 = new zzrn[length];
        zzrn[] zzrnVarArr3 = new zzrn[length];
        zzsb[] zzsbVarArr2 = new zzsb[length];
        ArrayList arrayList = new ArrayList(this.zza.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.zza.length) {
            for (int i4 = 0; i4 < zzsbVarArr.length; i4++) {
                zzrnVarArr3[i4] = iArr[i4] == i3 ? zzrnVarArr[i4] : null;
                zzsbVarArr2[i4] = iArr2[i4] == i3 ? zzsbVarArr[i4] : null;
            }
            ?? zzq = this.zza[i3].zzq(zzsbVarArr2, zArr, zzrnVarArr3, zArr2, z4);
            if (i3 == 0) {
                z = zzq;
            } else {
                int i5 = (zzq > z4 ? 1 : (zzq == z4 ? 0 : -1));
                z = z4;
                if (i5 != 0) {
                    throw new IllegalStateException("Children enabled at different positions.");
                }
            }
            int i6 = 0;
            boolean z5 = false;
            while (true) {
                z2 = z5;
                if (i6 >= zzsbVarArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    zzrn zzrnVar2 = zzrnVarArr3[i6];
                    Objects.requireNonNull(zzrnVar2);
                    zzrnVarArr2[i6] = zzrnVar2;
                    this.zzb.put(zzrnVar2, Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (zzrnVarArr3[i6] != null) {
                            z6 = false;
                        }
                        zzdy.zzf(z6);
                        z3 = z2;
                    }
                }
                i6++;
                z5 = z3;
            }
            if (z2) {
                arrayList.add(this.zza[i3]);
            }
            i3++;
            z4 = z;
        }
        System.arraycopy(zzrnVarArr2, 0, zzrnVarArr, 0, length);
        zzpy[] zzpyVarArr2 = (zzpy[]) arrayList.toArray(new zzpy[0]);
        this.zzf = zzpyVarArr2;
        this.zzg = new zzpl(zzpyVarArr2);
        return z4 == true ? 1 : 0;
    }
}
