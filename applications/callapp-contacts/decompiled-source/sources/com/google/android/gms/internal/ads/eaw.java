package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.IdentityHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eaw.class */
final class eaw implements ear, eas {

    /* renamed from: a  reason: collision with root package name */
    public final eas[] f27546a;

    /* renamed from: b  reason: collision with root package name */
    private final IdentityHashMap<ebc, Integer> f27547b = new IdentityHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private ear f27548c;

    /* renamed from: d  reason: collision with root package name */
    private int f27549d;
    private ebi e;
    private eas[] f;
    private ebf g;

    public eaw(eas... easVarArr) {
        this.f27546a = easVarArr;
    }

    @Override // com.google.android.gms.internal.ads.eas, com.google.android.gms.internal.ads.ebf
    public final long K_() {
        return this.g.K_();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.eas
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.ebu[] r9, boolean[] r10, com.google.android.gms.internal.ads.ebc[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eaw.a(com.google.android.gms.internal.ads.ebu[], boolean[], com.google.android.gms.internal.ads.ebc[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final void a(ear earVar, long j) {
        this.f27548c = earVar;
        eas[] easVarArr = this.f27546a;
        this.f27549d = easVarArr.length;
        for (eas easVar : easVarArr) {
            easVar.a(this, j);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.ear
    public final void a(eas easVar) {
        int i = this.f27549d - 1;
        this.f27549d = i;
        if (i <= 0) {
            int i2 = 0;
            for (eas easVar2 : this.f27546a) {
                i2 += easVar2.c().f27575b;
            }
            ebg[] ebgVarArr = new ebg[i2];
            int i3 = 0;
            for (eas easVar3 : this.f27546a) {
                ebi c2 = easVar3.c();
                int i4 = c2.f27575b;
                int i5 = 0;
                while (i5 < i4) {
                    ebgVarArr[i3] = c2.f27576c[i5];
                    i5++;
                    i3++;
                }
            }
            this.e = new ebi(ebgVarArr);
            this.f27548c.a((eas) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.ebe
    public final /* synthetic */ void a(eas easVar) {
        if (this.e != null) {
            this.f27548c.a((ear) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.eas, com.google.android.gms.internal.ads.ebf
    public final boolean a(long j) {
        return this.g.a(j);
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final long b(long j) {
        long b2 = this.f[0].b(j);
        int i = 1;
        while (true) {
            eas[] easVarArr = this.f;
            if (i >= easVarArr.length) {
                return b2;
            }
            if (easVarArr[i].b(b2) == b2) {
                i++;
            } else {
                throw new IllegalStateException("Children seeked to different positions");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final void b() throws IOException {
        for (eas easVar : this.f27546a) {
            easVar.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final ebi c() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final long d() {
        eas[] easVarArr;
        long d2 = this.f27546a[0].d();
        int i = 1;
        while (true) {
            eas[] easVarArr2 = this.f27546a;
            if (i >= easVarArr2.length) {
                if (d2 != -9223372036854775807L) {
                    for (eas easVar : this.f) {
                        if (easVar != this.f27546a[0] && easVar.b(d2) != d2) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return d2;
            } else if (easVarArr2[i].d() == -9223372036854775807L) {
                i++;
            } else {
                throw new IllegalStateException("Child reported discontinuity");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.eas
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long e() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.internal.ads.eas[] r0 = r0.f
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x000f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003e
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            long r0 = r0.e()
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r1 = r11
            long r0 = java.lang.Math.min(r0, r1)
            r13 = r0
        L_0x0034:
            int r8 = r8 + 1
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x003e:
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004b
            r0 = -9223372036854775808
            return r0
        L_0x004b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eaw.e():long");
    }
}
