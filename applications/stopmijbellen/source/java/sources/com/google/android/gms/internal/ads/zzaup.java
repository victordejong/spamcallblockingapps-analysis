package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaup.class */
final class zzaup implements zzaum, zzaul {
    public final zzaum[] zza;
    private final IdentityHashMap<zzauy, Integer> zzb = new IdentityHashMap<>();
    private zzaul zzc;
    private int zzd;
    private zzavd zze;
    private zzaum[] zzf;
    private zzava zzg;

    public zzaup(zzaum... zzaumVarArr) {
        this.zza = zzaumVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.google.android.gms.internal.ads.zzaum[]] */
    /* JADX WARN: Type inference failed for: r0v35, types: [com.google.android.gms.internal.ads.zzaum] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.zzaum
    public final long zzB(zzavh[] zzavhVarArr, boolean[] zArr, zzauy[] zzauyVarArr, boolean[] zArr2, long j) {
        int length;
        boolean z;
        boolean z2;
        boolean z3;
        int length2 = zzavhVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = zzavhVarArr.length;
            if (i >= length) {
                break;
            }
            zzauy zzauyVar = zzauyVarArr[i];
            iArr[i] = zzauyVar == null ? -1 : this.zzb.get(zzauyVar).intValue();
            iArr2[i] = -1;
            zzavh zzavhVar = zzavhVarArr[i];
            if (zzavhVar != null) {
                zzavc zzd = zzavhVar.zzd();
                int i2 = 0;
                while (true) {
                    zzaum[] zzaumVarArr = this.zza;
                    if (i2 >= zzaumVarArr.length) {
                        break;
                    } else if (zzaumVarArr[i2].zzn().zza(zzd) != -1) {
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
        zzauy[] zzauyVarArr2 = new zzauy[length];
        zzauy[] zzauyVarArr3 = new zzauy[length];
        zzavh[] zzavhVarArr2 = new zzavh[length];
        ArrayList arrayList = new ArrayList(this.zza.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.zza.length) {
            for (int i4 = 0; i4 < zzavhVarArr.length; i4++) {
                zzauyVarArr3[i4] = iArr[i4] == i3 ? zzauyVarArr[i4] : null;
                zzavh zzavhVar2 = null;
                if (iArr2[i4] == i3) {
                    zzavhVar2 = zzavhVarArr[i4];
                }
                zzavhVarArr2[i4] = zzavhVar2;
            }
            ?? zzB = this.zza[i3].zzB(zzavhVarArr2, zArr, zzauyVarArr3, zArr2, z4);
            if (i3 == 0) {
                z = zzB;
            } else {
                int i5 = (zzB > z4 ? 1 : (zzB == z4 ? 0 : -1));
                z = z4;
                if (i5 != 0) {
                    throw new IllegalStateException("Children enabled at different positions");
                }
            }
            int i6 = 0;
            boolean z5 = false;
            while (true) {
                z2 = z5;
                if (i6 >= zzavhVarArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    zzawm.zze(zzauyVarArr3[i6] != null);
                    zzauy zzauyVar2 = zzauyVarArr3[i6];
                    zzauyVarArr2[i6] = zzauyVar2;
                    this.zzb.put(zzauyVar2, Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (zzauyVarArr3[i6] != null) {
                            z6 = false;
                        }
                        zzawm.zze(z6);
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
        System.arraycopy(zzauyVarArr2, 0, zzauyVarArr, 0, length);
        zzaum[] zzaumVarArr2 = new zzaum[arrayList.size()];
        this.zzf = zzaumVarArr2;
        arrayList.toArray(zzaumVarArr2);
        this.zzg = new zzaua(this.zzf);
        return z4 == true ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaum, com.google.android.gms.internal.ads.zzava
    public final long zza() {
        return this.zzg.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzaum, com.google.android.gms.internal.ads.zzava
    public final boolean zzbr(long j) {
        return this.zzg.zzbr(j);
    }

    @Override // com.google.android.gms.internal.ads.zzauz
    public final /* bridge */ /* synthetic */ void zzc(zzaum zzaumVar) {
        if (this.zze == null) {
            return;
        }
        this.zzc.zzc(this);
    }

    @Override // com.google.android.gms.internal.ads.zzaul
    public final void zzd(zzaum zzaumVar) {
        int i = this.zzd - 1;
        this.zzd = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (zzaum zzaumVar2 : this.zza) {
            i2 += zzaumVar2.zzn().zzb;
        }
        zzavc[] zzavcVarArr = new zzavc[i2];
        int i3 = 0;
        for (zzaum zzaumVar3 : this.zza) {
            zzavd zzn = zzaumVar3.zzn();
            int i4 = zzn.zzb;
            int i5 = 0;
            while (i5 < i4) {
                zzavcVarArr[i3] = zzn.zzb(i5);
                i5++;
                i3++;
            }
        }
        this.zze = new zzavd(zzavcVarArr);
        this.zzc.zzd(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zzaum
    public final long zzg() {
        char c;
        zzaum[] zzaumVarArr = this.zzf;
        int length = zzaumVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zzg = zzaumVarArr[i].zzg();
            char c2 = c;
            if (zzg != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zzg);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final long zzh() {
        zzaum[] zzaumVarArr;
        long zzh = this.zza[0].zzh();
        int i = 1;
        while (true) {
            zzaum[] zzaumVarArr2 = this.zza;
            if (i >= zzaumVarArr2.length) {
                if (zzh != -9223372036854775807L) {
                    for (zzaum zzaumVar : this.zzf) {
                        if (zzaumVar != this.zza[0] && zzaumVar.zzi(zzh) != zzh) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return zzh;
            } else if (zzaumVarArr2[i].zzh() != -9223372036854775807L) {
                throw new IllegalStateException("Child reported discontinuity");
            } else {
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final long zzi(long j) {
        long zzi = this.zzf[0].zzi(j);
        int i = 1;
        while (true) {
            zzaum[] zzaumVarArr = this.zzf;
            if (i < zzaumVarArr.length) {
                if (zzaumVarArr[i].zzi(zzi) != zzi) {
                    throw new IllegalStateException("Children seeked to different positions");
                }
                i++;
            } else {
                return zzi;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final zzavd zzn() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final void zzq(long j) {
        for (zzaum zzaumVar : this.zzf) {
            zzaumVar.zzq(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final void zzs() throws IOException {
        for (zzaum zzaumVar : this.zza) {
            zzaumVar.zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final void zzw(zzaul zzaulVar, long j) {
        this.zzc = zzaulVar;
        zzaum[] zzaumVarArr = this.zza;
        this.zzd = zzaumVarArr.length;
        for (zzaum zzaumVar : zzaumVarArr) {
            zzaumVar.zzw(this, j);
        }
    }
}
