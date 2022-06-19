package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzht.class */
public final class zzht implements zzhe, zzhd {
    private final zzhe[] zza;
    private zzhd zzd;
    private zzs zze;
    private final zzgs zzh;
    private final ArrayList<zzhe> zzc = new ArrayList<>();
    private zziw zzg = new zzgr(new zziw[0]);
    private final IdentityHashMap<zziu, Integer> zzb = new IdentityHashMap<>();
    private zzhe[] zzf = new zzhe[0];

    public zzht(zzgs zzgsVar, long[] jArr, zzhe[] zzheVarArr, byte... bArr) {
        this.zzh = zzgsVar;
        this.zza = zzheVarArr;
        for (int i = 0; i < zzheVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.zza[i] = new zzhr(zzheVarArr[i], j);
            }
        }
    }

    public final zzhe zza(int i) {
        zzhe zzheVar;
        zzhe zzheVar2 = this.zza[i];
        zzhe zzheVar3 = zzheVar2;
        if (zzheVar2 instanceof zzhr) {
            zzheVar = ((zzhr) zzheVar2).zza;
            zzheVar3 = zzheVar;
        }
        return zzheVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzb(zzhd zzhdVar, long j) {
        this.zzd = zzhdVar;
        Collections.addAll(this.zzc, this.zza);
        for (zzhe zzheVar : this.zza) {
            zzheVar.zzb(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzc() throws IOException {
        for (zzhe zzheVar : this.zza) {
            zzheVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final zzs zzd() {
        zzs zzsVar = this.zze;
        Objects.requireNonNull(zzsVar);
        return zzsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zze(long j, boolean z) {
        for (zzhe zzheVar : this.zzf) {
            zzheVar.zze(j, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final void zzf(long j) {
        this.zzg.zzf(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzg() {
        zzhe zzheVar;
        zzhe[] zzheVarArr = this.zzf;
        int length = zzheVarArr.length;
        int i = 0;
        ?? r0 = -9223372036854775807;
        while (true) {
            char c = r0;
            if (i < length) {
                zzhe zzheVar2 = zzheVarArr[i];
                char zzg = zzheVar2.zzg();
                if (zzg == -9223372036854775807L) {
                    zzg = c;
                    if (c == -9223372036854775807L) {
                        continue;
                    } else if (zzheVar2.zzi(c) != c) {
                        throw new IllegalStateException("Unexpected child seekToUs result.");
                    } else {
                        zzg = c;
                    }
                } else if (c == -9223372036854775807L) {
                    zzhe[] zzheVarArr2 = this.zzf;
                    int length2 = zzheVarArr2.length;
                    for (int i2 = 0; i2 < length2 && (zzheVar = zzheVarArr2[i2]) != zzheVar2; i2++) {
                        if (zzheVar.zzi(zzg) != zzg) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                } else if (zzg != c) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                } else {
                    zzg = c;
                }
                i++;
                r0 = zzg;
            } else {
                return c;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final long zzh() {
        return this.zzg.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzi(long j) {
        long zzi = this.zzf[0].zzi(j);
        int i = 1;
        while (true) {
            zzhe[] zzheVarArr = this.zzf;
            if (i < zzheVarArr.length) {
                if (zzheVarArr[i].zzi(zzi) != zzi) {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
                i++;
            } else {
                return zzi;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzj(long j, zzahz zzahzVar) {
        zzhe[] zzheVarArr = this.zzf;
        return (zzheVarArr.length > 0 ? zzheVarArr[0] : this.zza[0]).zzj(j, zzahzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final long zzk() {
        return this.zzg.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final boolean zzl(long j) {
        if (!this.zzc.isEmpty()) {
            int size = this.zzc.size();
            for (int i = 0; i < size; i++) {
                this.zzc.get(i).zzl(j);
            }
            return false;
        }
        return this.zzg.zzl(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final boolean zzm() {
        return this.zzg.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzhd
    public final void zzn(zzhe zzheVar) {
        this.zzc.remove(zzheVar);
        if (!this.zzc.isEmpty()) {
            return;
        }
        int i = 0;
        for (zzhe zzheVar2 : this.zza) {
            i += zzheVar2.zzd().zzb;
        }
        zzq[] zzqVarArr = new zzq[i];
        int i2 = 0;
        for (zzhe zzheVar3 : this.zza) {
            zzs zzd = zzheVar3.zzd();
            int i3 = zzd.zzb;
            int i4 = 0;
            while (i4 < i3) {
                zzqVarArr[i2] = zzd.zza(i4);
                i4++;
                i2++;
            }
        }
        this.zze = new zzs(zzqVarArr);
        zzhd zzhdVar = this.zzd;
        Objects.requireNonNull(zzhdVar);
        zzhdVar.zzn(this);
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final /* bridge */ /* synthetic */ void zzp(zzhe zzheVar) {
        zzhd zzhdVar = this.zzd;
        Objects.requireNonNull(zzhdVar);
        zzhdVar.zzp(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.zzhe[]] */
    /* JADX WARN: Type inference failed for: r0v32, types: [com.google.android.gms.internal.ads.zzhe] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzq(zzjg[] zzjgVarArr, boolean[] zArr, zziu[] zziuVarArr, boolean[] zArr2, long j) {
        int length;
        boolean z;
        boolean z2;
        boolean z3;
        int length2 = zzjgVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = zzjgVarArr.length;
            if (i >= length) {
                break;
            }
            zziu zziuVar = zziuVarArr[i];
            Integer num = zziuVar == null ? null : this.zzb.get(zziuVar);
            iArr[i] = num == null ? -1 : num.intValue();
            iArr2[i] = -1;
            zzjg zzjgVar = zzjgVarArr[i];
            if (zzjgVar != null) {
                zzq zzb = zzjgVar.zzb();
                int i2 = 0;
                while (true) {
                    zzhe[] zzheVarArr = this.zza;
                    if (i2 >= zzheVarArr.length) {
                        break;
                    } else if (zzheVarArr[i2].zzd().zzb(zzb) != -1) {
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
        zziu[] zziuVarArr2 = new zziu[length];
        zziu[] zziuVarArr3 = new zziu[length];
        zzjg[] zzjgVarArr2 = new zzjg[length];
        ArrayList arrayList = new ArrayList(this.zza.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.zza.length) {
            for (int i4 = 0; i4 < zzjgVarArr.length; i4++) {
                zziuVarArr3[i4] = iArr[i4] == i3 ? zziuVarArr[i4] : null;
                zzjgVarArr2[i4] = iArr2[i4] == i3 ? zzjgVarArr[i4] : null;
            }
            ?? zzq = this.zza[i3].zzq(zzjgVarArr2, zArr, zziuVarArr3, zArr2, z4);
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
                if (i6 >= zzjgVarArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    zziu zziuVar2 = zziuVarArr3[i6];
                    Objects.requireNonNull(zziuVar2);
                    zziuVarArr2[i6] = zziuVar2;
                    this.zzb.put(zziuVar2, Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (zziuVarArr3[i6] != null) {
                            z6 = false;
                        }
                        zzakt.zzd(z6);
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
        System.arraycopy(zziuVarArr2, 0, zziuVarArr, 0, length);
        zzhe[] zzheVarArr2 = (zzhe[]) arrayList.toArray(new zzhe[0]);
        this.zzf = zzheVarArr2;
        this.zzg = new zzgr(zzheVarArr2);
        return z4 == true ? 1 : 0;
    }
}
