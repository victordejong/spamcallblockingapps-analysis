package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebp.class */
public abstract class ebp extends ebv {

    /* renamed from: b */
    private final SparseArray<Map<ebi, ebr>> f48628b = new SparseArray<>();

    /* renamed from: c */
    private final SparseBooleanArray f48629c = new SparseBooleanArray();

    /* renamed from: d */
    private int f48630d = 0;

    /* renamed from: e */
    private ebs f48631e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    @Override // com.google.android.gms.internal.ads.ebv
    /* renamed from: a */
    public final ebx mo15297a(dwc[] dwcVarArr, ebi ebiVar) throws zzhe {
        int i;
        int[] iArr;
        int i2;
        int[] iArr2 = new int[dwcVarArr.length + 1];
        int length = dwcVarArr.length + 1;
        ebg[] ebgVarArr = new ebg[length];
        ?? r0 = new int[dwcVarArr.length + 1];
        for (int i3 = 0; i3 < length; i3++) {
            ebgVarArr[i3] = new ebg[ebiVar.f48604b];
            r0[i3] = new int[ebiVar.f48604b];
        }
        int length2 = dwcVarArr.length;
        int[] iArr3 = new int[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            iArr3[i4] = dwcVarArr[i4].mo15398m();
        }
        for (int i5 = 0; i5 < ebiVar.f48604b; i5++) {
            ebg ebgVar = ebiVar.f48605c[i5];
            int length3 = dwcVarArr.length;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                int i8 = i7;
                i = length3;
                if (i6 >= dwcVarArr.length) {
                    break;
                }
                dwc dwcVar = dwcVarArr[i6];
                int i9 = 0;
                while (true) {
                    i2 = i8;
                    if (i9 < ebgVar.f48593a) {
                        int mo15401a = dwcVar.mo15401a(ebgVar.f48594b[i9]) & 3;
                        i8 = i2;
                        if (mo15401a > i2) {
                            length3 = i6;
                            i = length3;
                            if (mo15401a == 3) {
                                break;
                            }
                            i8 = mo15401a;
                        }
                        i9++;
                    }
                }
                i6++;
                i7 = i2;
            }
            if (i == dwcVarArr.length) {
                iArr = new int[ebgVar.f48593a];
            } else {
                dwc dwcVar2 = dwcVarArr[i];
                iArr = new int[ebgVar.f48593a];
                for (int i10 = 0; i10 < ebgVar.f48593a; i10++) {
                    iArr[i10] = dwcVar2.mo15401a(ebgVar.f48594b[i10]);
                }
            }
            int i11 = iArr2[i];
            ebgVarArr[i][i11] = ebgVar;
            r0[i][i11] = iArr;
            iArr2[i] = iArr2[i] + 1;
        }
        ebi[] ebiVarArr = new ebi[dwcVarArr.length];
        int[] iArr4 = new int[dwcVarArr.length];
        for (int i12 = 0; i12 < dwcVarArr.length; i12++) {
            int i13 = iArr2[i12];
            ebiVarArr[i12] = new ebi((ebg[]) Arrays.copyOf(ebgVarArr[i12], i13));
            r0[i12] = (int[][]) Arrays.copyOf(r0[i12], i13);
            iArr4[i12] = dwcVarArr[i12].mo15576a();
        }
        ebi ebiVar2 = new ebi((ebg[]) Arrays.copyOf(ebgVarArr[dwcVarArr.length], iArr2[dwcVarArr.length]));
        ebu[] mo15303a = mo15303a(dwcVarArr, ebiVarArr, r0);
        int i14 = 0;
        while (true) {
            ebr ebrVar = null;
            if (i14 >= dwcVarArr.length) {
                ebs ebsVar = new ebs(iArr4, ebiVarArr, iArr3, r0, ebiVar2);
                dwb[] dwbVarArr = new dwb[dwcVarArr.length];
                for (int i15 = 0; i15 < dwcVarArr.length; i15++) {
                    dwbVarArr[i15] = mo15303a[i15] != null ? dwb.f47767a : null;
                }
                return new ebx(ebiVar, new ebw(mo15303a), ebsVar, dwbVarArr);
            }
            if (this.f48629c.get(i14)) {
                mo15303a[i14] = null;
            } else {
                ebi ebiVar3 = ebiVarArr[i14];
                Map<ebi, ebr> map = this.f48628b.get(i14);
                if (map != null) {
                    ebrVar = map.get(ebiVar3);
                }
                if (ebrVar != null) {
                    throw new NoSuchMethodError();
                }
            }
            i14++;
        }
    }

    /* renamed from: a */
    public final void m15304a(int i, boolean z) {
        if (this.f48629c.get(i) == z) {
            return;
        }
        this.f48629c.put(i, z);
        if (this.f48640a == null) {
            return;
        }
        this.f48640a.mo15294b();
    }

    @Override // com.google.android.gms.internal.ads.ebv
    /* renamed from: a */
    public final void mo15298a(Object obj) {
        this.f48631e = (ebs) obj;
    }

    /* renamed from: a */
    protected abstract ebu[] mo15303a(dwc[] dwcVarArr, ebi[] ebiVarArr, int[][][] iArr) throws zzhe;
}
