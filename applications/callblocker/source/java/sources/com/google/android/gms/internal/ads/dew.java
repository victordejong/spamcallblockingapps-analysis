package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dew.class */
public final class dew extends dbi {

    /* renamed from: b */
    static final int[] f14176b = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};

    /* renamed from: c */
    private final int f14177c;

    /* renamed from: d */
    private final dbi f14178d;

    /* renamed from: e */
    private final dbi f14179e;

    /* renamed from: f */
    private final int f14180f;

    /* renamed from: g */
    private final int f14181g;

    private dew(dbi dbiVar, dbi dbiVar2) {
        this.f14178d = dbiVar;
        this.f14179e = dbiVar2;
        this.f14180f = dbiVar.mo9911b();
        this.f14177c = this.f14180f + dbiVar2.mo9911b();
        this.f14181g = Math.max(dbiVar.mo9902i(), dbiVar2.mo9902i()) + 1;
    }

    public /* synthetic */ dew(dbi dbiVar, dbi dbiVar2, dez dezVar) {
        this(dbiVar, dbiVar2);
    }

    /* renamed from: a */
    public static dbi m9915a(dbi dbiVar, dbi dbiVar2) {
        dbi m9856a;
        if (dbiVar2.mo9911b() != 0) {
            if (dbiVar.mo9911b() == 0) {
                dbiVar = dbiVar2;
            } else {
                int mo9911b = dbiVar2.mo9911b() + dbiVar.mo9911b();
                if (mo9911b < 128) {
                    dbiVar = m9908b(dbiVar, dbiVar2);
                } else {
                    if (dbiVar instanceof dew) {
                        dew dewVar = (dew) dbiVar;
                        if (dewVar.f14179e.mo9911b() + dbiVar2.mo9911b() < 128) {
                            dbiVar = new dew(dewVar.f14178d, m9908b(dewVar.f14179e, dbiVar2));
                        } else if (dewVar.f14178d.mo9902i() > dewVar.f14179e.mo9902i() && dewVar.mo9902i() > dbiVar2.mo9902i()) {
                            dbiVar = new dew(dewVar.f14178d, new dew(dewVar.f14179e, dbiVar2));
                        }
                    }
                    if (mo9911b >= m9905d(Math.max(dbiVar.mo9902i(), dbiVar2.mo9902i()) + 1)) {
                        dbiVar = new dew(dbiVar, dbiVar2);
                    } else {
                        m9856a = new dey(null).m9856a(dbiVar, dbiVar2);
                        dbiVar = m9856a;
                    }
                }
            }
        }
        return dbiVar;
    }

    /* renamed from: b */
    private static dbi m9908b(dbi dbiVar, dbi dbiVar2) {
        int mo9911b = dbiVar.mo9911b();
        int mo9911b2 = dbiVar2.mo9911b();
        byte[] bArr = new byte[mo9911b + mo9911b2];
        dbiVar.m10217a(bArr, 0, 0, mo9911b);
        dbiVar2.m10217a(bArr, 0, mo9911b, mo9911b2);
        return dbi.m10214b(bArr);
    }

    /* renamed from: d */
    public static int m9905d(int i) {
        return i >= f14176b.length ? Integer.MAX_VALUE : f14176b[i];
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final byte mo9918a(int i) {
        m10215b(i, this.f14177c);
        return mo9910b(i);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final int mo9916a(int i, int i2, int i3) {
        int mo9916a;
        if (i2 + i3 <= this.f14180f) {
            mo9916a = this.f14178d.mo9916a(i, i2, i3);
        } else if (i2 >= this.f14180f) {
            mo9916a = this.f14179e.mo9916a(i, i2 - this.f14180f, i3);
        } else {
            int i4 = this.f14180f - i2;
            mo9916a = this.f14179e.mo9916a(this.f14178d.mo9916a(i, i2, i4), 0, i3 - i4);
        }
        return mo9916a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [com.google.android.gms.internal.ads.dbi] */
    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final dbi mo9917a(int i, int i2) {
        dew dewVar;
        int c = m10211c(i, i2, this.f14177c);
        if (c == 0) {
            dewVar = dbi.f13932a;
        } else {
            dewVar = this;
            if (c != this.f14177c) {
                if (i2 <= this.f14180f) {
                    dewVar = this.f14178d.mo9917a(i, i2);
                } else if (i >= this.f14180f) {
                    dewVar = this.f14179e.mo9917a(i - this.f14180f, i2 - this.f14180f);
                } else {
                    dbi dbiVar = this.f14178d;
                    dewVar = new dew(dbiVar.mo9917a(i, dbiVar.mo9911b()), this.f14179e.mo9917a(0, i2 - this.f14180f));
                }
            }
        }
        return dewVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final dbr mo9919a() {
        return new dez(this);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    protected final String mo9912a(Charset charset) {
        return new String(m10210d(), charset);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo9914a(dbj dbjVar) {
        this.f14178d.mo9914a(dbjVar);
        this.f14179e.mo9914a(dbjVar);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public final byte mo9910b(int i) {
        return i < this.f14180f ? this.f14178d.mo9910b(i) : this.f14179e.mo9910b(i - this.f14180f);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public final int mo9911b() {
        return this.f14177c;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public final int mo9909b(int i, int i2, int i3) {
        int mo9909b;
        if (i2 + i3 <= this.f14180f) {
            mo9909b = this.f14178d.mo9909b(i, i2, i3);
        } else if (i2 >= this.f14180f) {
            mo9909b = this.f14179e.mo9909b(i, i2 - this.f14180f, i3);
        } else {
            int i4 = this.f14180f - i2;
            mo9909b = this.f14179e.mo9909b(this.f14178d.mo9909b(i, i2, i4), 0, i3 - i4);
        }
        return mo9909b;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public final void mo9906b(byte[] bArr, int i, int i2, int i3) {
        if (i + i3 <= this.f14180f) {
            this.f14178d.mo9906b(bArr, i, i2, i3);
        } else if (i >= this.f14180f) {
            this.f14179e.mo9906b(bArr, i - this.f14180f, i2, i3);
        } else {
            int i4 = this.f14180f - i;
            this.f14178d.mo9906b(bArr, i, i2, i4);
            this.f14179e.mo9906b(bArr, 0, i2 + i4, i3 - i4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r0 == r0) goto L20;
     */
    @Override // com.google.android.gms.internal.ads.dbi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dew.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: f */
    public final boolean mo9904f() {
        boolean z = false;
        if (this.f14179e.mo9916a(this.f14178d.mo9916a(0, 0, this.f14180f), 0, this.f14179e.mo9911b()) == 0) {
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: g */
    public final dby mo9903g() {
        return new dbz(new dfa(this));
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: i */
    public final int mo9902i() {
        return this.f14181g;
    }

    @Override // com.google.android.gms.internal.ads.dbi, java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: j */
    public final boolean mo9901j() {
        return this.f14177c >= m9905d(this.f14181g);
    }
}
