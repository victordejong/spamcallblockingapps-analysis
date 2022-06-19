package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzass.class */
public final class zzass implements zzasp, zzaso {
    public final zzasp[] zza;
    private final IdentityHashMap<zzatb, Integer> zzb = new IdentityHashMap<>();
    private zzaso zzc;
    private int zzd;
    private zzatg zze;
    private zzasp[] zzf;
    private zzatd zzg;

    public zzass(zzasp... zzaspVarArr) {
        this.zza = zzaspVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.google.android.gms.internal.ads.zzasp[]] */
    /* JADX WARN: Type inference failed for: r0v35, types: [com.google.android.gms.internal.ads.zzasp] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.zzasp
    public final long zzB(zzatk[] zzatkVarArr, boolean[] zArr, zzatb[] zzatbVarArr, boolean[] zArr2, long j) {
        int length;
        boolean z;
        boolean z2;
        boolean z3;
        int length2 = zzatkVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = zzatkVarArr.length;
            if (i >= length) {
                break;
            }
            zzatb zzatbVar = zzatbVarArr[i];
            iArr[i] = zzatbVar == null ? -1 : this.zzb.get(zzatbVar).intValue();
            iArr2[i] = -1;
            zzatk zzatkVar = zzatkVarArr[i];
            if (zzatkVar != null) {
                zzatf zza = zzatkVar.zza();
                int i2 = 0;
                while (true) {
                    zzasp[] zzaspVarArr = this.zza;
                    if (i2 >= zzaspVarArr.length) {
                        break;
                    } else if (zzaspVarArr[i2].zzn().zzb(zza) != -1) {
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
        zzatb[] zzatbVarArr2 = new zzatb[length];
        zzatb[] zzatbVarArr3 = new zzatb[length];
        zzatk[] zzatkVarArr2 = new zzatk[length];
        ArrayList arrayList = new ArrayList(this.zza.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.zza.length) {
            for (int i4 = 0; i4 < zzatkVarArr.length; i4++) {
                zzatbVarArr3[i4] = iArr[i4] == i3 ? zzatbVarArr[i4] : null;
                zzatk zzatkVar2 = null;
                if (iArr2[i4] == i3) {
                    zzatkVar2 = zzatkVarArr[i4];
                }
                zzatkVarArr2[i4] = zzatkVar2;
            }
            ?? zzB = this.zza[i3].zzB(zzatkVarArr2, zArr, zzatbVarArr3, zArr2, z4);
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
                if (i6 >= zzatkVarArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    zzaup.zzd(zzatbVarArr3[i6] != null);
                    zzatb zzatbVar2 = zzatbVarArr3[i6];
                    zzatbVarArr2[i6] = zzatbVar2;
                    this.zzb.put(zzatbVar2, Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (zzatbVarArr3[i6] != null) {
                            z6 = false;
                        }
                        zzaup.zzd(z6);
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
        System.arraycopy(zzatbVarArr2, 0, zzatbVarArr, 0, length);
        zzasp[] zzaspVarArr2 = new zzasp[arrayList.size()];
        this.zzf = zzaspVarArr2;
        arrayList.toArray(zzaspVarArr2);
        this.zzg = new zzasd(this.zzf);
        return z4 == true ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzasp, com.google.android.gms.internal.ads.zzatd
    public final long zza() {
        return this.zzg.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzasp, com.google.android.gms.internal.ads.zzatd
    public final boolean zzb(long j) {
        return this.zzg.zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzatc
    public final /* bridge */ /* synthetic */ void zzbh(zzasp zzaspVar) {
        if (this.zze == null) {
            return;
        }
        this.zzc.zzbh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzaso
    public final void zzj(zzasp zzaspVar) {
        int i = this.zzd - 1;
        this.zzd = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (zzasp zzaspVar2 : this.zza) {
            i2 += zzaspVar2.zzn().zzb;
        }
        zzatf[] zzatfVarArr = new zzatf[i2];
        int i3 = 0;
        for (zzasp zzaspVar3 : this.zza) {
            zzatg zzn = zzaspVar3.zzn();
            int i4 = zzn.zzb;
            int i5 = 0;
            while (i5 < i4) {
                zzatfVarArr[i3] = zzn.zza(i5);
                i5++;
                i3++;
            }
        }
        this.zze = new zzatg(zzatfVarArr);
        this.zzc.zzj(this);
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final void zzl(zzaso zzasoVar, long j) {
        this.zzc = zzasoVar;
        zzasp[] zzaspVarArr = this.zza;
        this.zzd = zzaspVarArr.length;
        for (zzasp zzaspVar : zzaspVarArr) {
            zzaspVar.zzl(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final void zzm() throws IOException {
        for (zzasp zzaspVar : this.zza) {
            zzaspVar.zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final zzatg zzn() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final void zzo(long j) {
        for (zzasp zzaspVar : this.zzf) {
            zzaspVar.zzo(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final long zzp() {
        zzasp[] zzaspVarArr;
        long zzp = this.zza[0].zzp();
        int i = 1;
        while (true) {
            zzasp[] zzaspVarArr2 = this.zza;
            if (i >= zzaspVarArr2.length) {
                if (zzp != -9223372036854775807L) {
                    for (zzasp zzaspVar : this.zzf) {
                        if (zzaspVar != this.zza[0] && zzaspVar.zzr(zzp) != zzp) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return zzp;
            } else if (zzaspVarArr2[i].zzp() != -9223372036854775807L) {
                throw new IllegalStateException("Child reported discontinuity");
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.zzasp
    public final long zzq() {
        char c;
        zzasp[] zzaspVarArr = this.zzf;
        int length = zzaspVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zzq = zzaspVarArr[i].zzq();
            char c2 = c;
            if (zzq != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zzq);
            }
            i++;
            r0 = c2;
        }
        if (c == RecyclerView.FOREVER_NS) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final long zzr(long j) {
        long zzr = this.zzf[0].zzr(j);
        int i = 1;
        while (true) {
            zzasp[] zzaspVarArr = this.zzf;
            if (i < zzaspVarArr.length) {
                if (zzaspVarArr[i].zzr(zzr) != zzr) {
                    throw new IllegalStateException("Children seeked to different positions");
                }
                i++;
            } else {
                return zzr;
            }
        }
    }
}
