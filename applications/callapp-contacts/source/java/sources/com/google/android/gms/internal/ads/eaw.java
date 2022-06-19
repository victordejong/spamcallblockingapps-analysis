package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eaw.class */
final class eaw implements ear, eas {

    /* renamed from: a */
    public final eas[] f48544a;

    /* renamed from: b */
    private final IdentityHashMap<ebc, Integer> f48545b = new IdentityHashMap<>();

    /* renamed from: c */
    private ear f48546c;

    /* renamed from: d */
    private int f48547d;

    /* renamed from: e */
    private ebi f48548e;

    /* renamed from: f */
    private eas[] f48549f;

    /* renamed from: g */
    private ebf f48550g;

    public eaw(eas... easVarArr) {
        this.f48544a = easVarArr;
    }

    @Override // com.google.android.gms.internal.ads.eas, com.google.android.gms.internal.ads.ebf
    /* renamed from: K_ */
    public final long mo15316K_() {
        return this.f48550g.mo15316K_();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.google.android.gms.internal.ads.eas[]] */
    /* JADX WARN: Type inference failed for: r0v38, types: [com.google.android.gms.internal.ads.eas] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5 */
    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: a */
    public final long mo15356a(ebu[] ebuVarArr, boolean[] zArr, ebc[] ebcVarArr, boolean[] zArr2, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        int[] iArr = new int[ebuVarArr.length];
        int[] iArr2 = new int[ebuVarArr.length];
        for (int i = 0; i < ebuVarArr.length; i++) {
            iArr[i] = ebcVarArr[i] == null ? -1 : this.f48545b.get(ebcVarArr[i]).intValue();
            iArr2[i] = -1;
            if (ebuVarArr[i] != null) {
                ebg mo15302a = ebuVarArr[i].mo15302a();
                int i2 = 0;
                while (true) {
                    eas[] easVarArr = this.f48544a;
                    if (i2 >= easVarArr.length) {
                        break;
                    } else if (easVarArr[i2].mo15353c().m15308a(mo15302a) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        this.f48545b.clear();
        int length = ebuVarArr.length;
        ebc[] ebcVarArr2 = new ebc[length];
        ebc[] ebcVarArr3 = new ebc[ebuVarArr.length];
        ebu[] ebuVarArr2 = new ebu[ebuVarArr.length];
        ArrayList arrayList = new ArrayList(this.f48544a.length);
        int i3 = 0;
        boolean z4 = j;
        while (i3 < this.f48544a.length) {
            for (int i4 = 0; i4 < ebuVarArr.length; i4++) {
                ebcVarArr3[i4] = iArr[i4] == i3 ? ebcVarArr[i4] : null;
                ebu ebuVar = null;
                if (iArr2[i4] == i3) {
                    ebuVar = ebuVarArr[i4];
                }
                ebuVarArr2[i4] = ebuVar;
            }
            ?? mo15356a = this.f48544a[i3].mo15356a(ebuVarArr2, zArr, ebcVarArr3, zArr2, z4);
            if (i3 == 0) {
                z = mo15356a;
            } else {
                int i5 = (mo15356a > z4 ? 1 : (mo15356a == z4 ? 0 : -1));
                z = z4;
                if (i5 != 0) {
                    throw new IllegalStateException("Children enabled at different positions");
                }
            }
            int i6 = 0;
            boolean z5 = false;
            while (true) {
                z2 = z5;
                if (i6 >= ebuVarArr.length) {
                    break;
                }
                boolean z6 = true;
                if (iArr2[i6] == i3) {
                    ecr.m15247b(ebcVarArr3[i6] != null);
                    ebcVarArr2[i6] = ebcVarArr3[i6];
                    this.f48545b.put(ebcVarArr3[i6], Integer.valueOf(i3));
                    z3 = true;
                } else {
                    z3 = z2;
                    if (iArr[i6] == i3) {
                        if (ebcVarArr3[i6] != null) {
                            z6 = false;
                        }
                        ecr.m15247b(z6);
                        z3 = z2;
                    }
                }
                i6++;
                z5 = z3;
            }
            if (z2) {
                arrayList.add(this.f48544a[i3]);
            }
            i3++;
            z4 = z;
        }
        System.arraycopy(ebcVarArr2, 0, ebcVarArr, 0, length);
        eas[] easVarArr2 = new eas[arrayList.size()];
        this.f48549f = easVarArr2;
        arrayList.toArray(easVarArr2);
        this.f48550g = new eae(this.f48549f);
        return z4 == true ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: a */
    public final void mo15358a(ear earVar, long j) {
        this.f48546c = earVar;
        eas[] easVarArr = this.f48544a;
        this.f48547d = easVarArr.length;
        for (eas easVar : easVarArr) {
            easVar.mo15358a(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.ear
    /* renamed from: a */
    public final void mo15357a(eas easVar) {
        int i = this.f48547d - 1;
        this.f48547d = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (eas easVar2 : this.f48544a) {
            i2 += easVar2.mo15353c().f48604b;
        }
        ebg[] ebgVarArr = new ebg[i2];
        int i3 = 0;
        for (eas easVar3 : this.f48544a) {
            ebi mo15353c = easVar3.mo15353c();
            int i4 = mo15353c.f48604b;
            int i5 = 0;
            while (i5 < i4) {
                ebgVarArr[i3] = mo15353c.f48605c[i5];
                i5++;
                i3++;
            }
        }
        this.f48548e = new ebi(ebgVarArr);
        this.f48546c.mo15357a((eas) this);
    }

    @Override // com.google.android.gms.internal.ads.ebe
    /* renamed from: a */
    public final /* synthetic */ void mo15317a(eas easVar) {
        if (this.f48548e != null) {
            this.f48546c.mo15317a((ear) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.eas, com.google.android.gms.internal.ads.ebf
    /* renamed from: a */
    public final boolean mo15315a(long j) {
        return this.f48550g.mo15315a(j);
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: b */
    public final long mo15354b(long j) {
        long mo15354b = this.f48549f[0].mo15354b(j);
        int i = 1;
        while (true) {
            eas[] easVarArr = this.f48549f;
            if (i < easVarArr.length) {
                if (easVarArr[i].mo15354b(mo15354b) != mo15354b) {
                    throw new IllegalStateException("Children seeked to different positions");
                }
                i++;
            } else {
                return mo15354b;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: b */
    public final void mo15355b() throws IOException {
        for (eas easVar : this.f48544a) {
            easVar.mo15355b();
        }
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: c */
    public final ebi mo15353c() {
        return this.f48548e;
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: d */
    public final long mo15352d() {
        eas[] easVarArr;
        long mo15352d = this.f48544a[0].mo15352d();
        int i = 1;
        while (true) {
            eas[] easVarArr2 = this.f48544a;
            if (i >= easVarArr2.length) {
                if (mo15352d != -9223372036854775807L) {
                    for (eas easVar : this.f48549f) {
                        if (easVar != this.f48544a[0] && easVar.mo15354b(mo15352d) != mo15352d) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return mo15352d;
            } else if (easVarArr2[i].mo15352d() != -9223372036854775807L) {
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
    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: e */
    public final long mo15351e() {
        char c;
        eas[] easVarArr = this.f48549f;
        int length = easVarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo15351e = easVarArr[i].mo15351e();
            char c2 = c;
            if (mo15351e != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo15351e);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }
}
