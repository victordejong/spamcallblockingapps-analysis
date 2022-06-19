package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzng.class */
final class zzng implements zznb, zznc {
    private zznu zzafg;
    private zznb zzbdy;
    public final zznc[] zzbff;
    private final IdentityHashMap<zznn, Integer> zzbfg = new IdentityHashMap<>();
    private int zzbfh;
    private zznc[] zzbfi;
    private zznq zzbfj;

    public zzng(zznc... zzncVarArr) {
        this.zzbff = zzncVarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.zznc[]] */
    /* JADX WARN: Type inference failed for: r0v38, types: [com.google.android.gms.internal.ads.zznc] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.zznc
    public final long zza(zzog[] zzogVarArr, boolean[] zArr, zznn[] zznnVarArr, boolean[] zArr2, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        int[] iArr = new int[zzogVarArr.length];
        int[] iArr2 = new int[zzogVarArr.length];
        for (int i = 0; i < zzogVarArr.length; i++) {
            iArr[i] = zznnVarArr[i] == null ? -1 : this.zzbfg.get(zznnVarArr[i]).intValue();
            iArr2[i] = -1;
            if (zzogVarArr[i] != null) {
                zznr zzil = zzogVarArr[i].zzil();
                int i2 = 0;
                while (true) {
                    zznc[] zzncVarArr = this.zzbff;
                    if (i2 >= zzncVarArr.length) {
                        break;
                    } else if (zzncVarArr[i2].zzhp().zza(zzil) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        this.zzbfg.clear();
        int length = zzogVarArr.length;
        zznn[] zznnVarArr2 = new zznn[length];
        zznn[] zznnVarArr3 = new zznn[zzogVarArr.length];
        zzog[] zzogVarArr2 = new zzog[zzogVarArr.length];
        ArrayList arrayList = new ArrayList(this.zzbff.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.zzbff.length) {
            for (int i4 = 0; i4 < zzogVarArr.length; i4++) {
                zznnVarArr3[i4] = iArr[i4] == i3 ? zznnVarArr[i4] : null;
                zzog zzogVar = null;
                if (iArr2[i4] == i3) {
                    zzogVar = zzogVarArr[i4];
                }
                zzogVarArr2[i4] = zzogVar;
            }
            ?? zza = this.zzbff[i3].zza(zzogVarArr2, zArr, zznnVarArr3, zArr2, z4);
            if (i3 == 0) {
                z = zza;
            } else {
                int i5 = (zza > z4 ? 1 : (zza == z4 ? 0 : -1));
                z = z4;
                if (i5 != 0) {
                    throw new IllegalStateException("Children enabled at different positions");
                }
            }
            int i6 = 0;
            boolean z5 = false;
            while (true) {
                z2 = z5;
                if (i6 >= zzogVarArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    zzpg.checkState(zznnVarArr3[i6] != null);
                    zznnVarArr2[i6] = zznnVarArr3[i6];
                    this.zzbfg.put(zznnVarArr3[i6], Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (zznnVarArr3[i6] != null) {
                            z6 = false;
                        }
                        zzpg.checkState(z6);
                        z3 = z2;
                    }
                }
                i6++;
                z5 = z3;
            }
            if (z2) {
                arrayList.add(this.zzbff[i3]);
            }
            i3++;
            z4 = z;
        }
        System.arraycopy(zznnVarArr2, 0, zznnVarArr, 0, length);
        zznc[] zzncVarArr2 = new zznc[arrayList.size()];
        this.zzbfi = zzncVarArr2;
        arrayList.toArray(zzncVarArr2);
        this.zzbfj = new zzmp(this.zzbfi);
        return z4 == true ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zza(zznb zznbVar, long j) {
        this.zzbdy = zznbVar;
        zznc[] zzncVarArr = this.zzbff;
        this.zzbfh = zzncVarArr.length;
        for (zznc zzncVar : zzncVarArr) {
            zzncVar.zza(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznb
    public final void zza(zznc zzncVar) {
        int i = this.zzbfh - 1;
        this.zzbfh = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (zznc zzncVar2 : this.zzbff) {
            i2 += zzncVar2.zzhp().length;
        }
        zznr[] zznrVarArr = new zznr[i2];
        int i3 = 0;
        for (zznc zzncVar3 : this.zzbff) {
            zznu zzhp = zzncVar3.zzhp();
            int i4 = zzhp.length;
            int i5 = 0;
            while (i5 < i4) {
                zznrVarArr[i3] = zzhp.zzbc(i5);
                i5++;
                i3++;
            }
        }
        this.zzafg = new zznu(zznrVarArr);
        this.zzbdy.zza((zznc) this);
    }

    @Override // com.google.android.gms.internal.ads.zznp
    public final /* synthetic */ void zza(zznc zzncVar) {
        if (this.zzafg != null) {
            this.zzbdy.zza((zznb) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc, com.google.android.gms.internal.ads.zznq
    public final boolean zzee(long j) {
        return this.zzbfj.zzee(j);
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zzef(long j) {
        for (zznc zzncVar : this.zzbfi) {
            zzncVar.zzef(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzeg(long j) {
        long zzeg = this.zzbfi[0].zzeg(j);
        int i = 1;
        while (true) {
            zznc[] zzncVarArr = this.zzbfi;
            if (i < zzncVarArr.length) {
                if (zzncVarArr[i].zzeg(zzeg) != zzeg) {
                    throw new IllegalStateException("Children seeked to different positions");
                }
                i++;
            } else {
                return zzeg;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc, com.google.android.gms.internal.ads.zznq
    public final long zzhn() {
        return this.zzbfj.zzhn();
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zzho() throws IOException {
        for (zznc zzncVar : this.zzbff) {
            zzncVar.zzho();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final zznu zzhp() {
        return this.zzafg;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzhq() {
        zznc[] zzncVarArr;
        long zzhq = this.zzbff[0].zzhq();
        int i = 1;
        while (true) {
            zznc[] zzncVarArr2 = this.zzbff;
            if (i >= zzncVarArr2.length) {
                if (zzhq != -9223372036854775807L) {
                    for (zznc zzncVar : this.zzbfi) {
                        if (zzncVar != this.zzbff[0] && zzncVar.zzeg(zzhq) != zzhq) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return zzhq;
            } else if (zzncVarArr2[i].zzhq() != -9223372036854775807L) {
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
    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzhr() {
        char c;
        zznc[] zzncVarArr = this.zzbfi;
        int length = zzncVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zzhr = zzncVarArr[i].zzhr();
            char c2 = c;
            if (zzhr != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zzhr);
            }
            i++;
            r0 = c2;
        }
        if (c == LongCompanionObject.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }
}
