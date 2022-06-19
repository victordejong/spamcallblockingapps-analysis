package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpm.class */
public final class dpm extends dlw {

    /* renamed from: b */
    static final int[] f47370b = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};

    /* renamed from: c */
    private final int f47371c;

    /* renamed from: d */
    private final dlw f47372d;

    /* renamed from: e */
    private final dlw f47373e;

    /* renamed from: f */
    private final int f47374f;

    /* renamed from: g */
    private final int f47375g;

    private dpm(dlw dlwVar, dlw dlwVar2) {
        this.f47372d = dlwVar;
        this.f47373e = dlwVar2;
        int mo16138b = dlwVar.mo16138b();
        this.f47374f = mo16138b;
        this.f47371c = mo16138b + dlwVar2.mo16138b();
        this.f47375g = Math.max(dlwVar.mo16129i(), dlwVar2.mo16129i()) + 1;
    }

    public /* synthetic */ dpm(dlw dlwVar, dlw dlwVar2, dpl dplVar) {
        this(dlwVar, dlwVar2);
    }

    /* renamed from: a */
    public static dlw m16141a(dlw dlwVar, dlw dlwVar2) {
        if (dlwVar2.mo16138b() == 0) {
            return dlwVar;
        }
        if (dlwVar.mo16138b() == 0) {
            return dlwVar2;
        }
        int mo16138b = dlwVar.mo16138b() + dlwVar2.mo16138b();
        if (mo16138b < 128) {
            return m16135b(dlwVar, dlwVar2);
        }
        if (dlwVar instanceof dpm) {
            dpm dpmVar = (dpm) dlwVar;
            if (dpmVar.f47373e.mo16138b() + dlwVar2.mo16138b() < 128) {
                return new dpm(dpmVar.f47372d, m16135b(dpmVar.f47373e, dlwVar2));
            } else if (dpmVar.f47372d.mo16129i() > dpmVar.f47373e.mo16129i() && dpmVar.mo16129i() > dlwVar2.mo16129i()) {
                return new dpm(dpmVar.f47372d, new dpm(dpmVar.f47373e, dlwVar2));
            }
        }
        if (mo16138b >= m16132d(Math.max(dlwVar.mo16129i(), dlwVar2.mo16129i()) + 1)) {
            return new dpm(dlwVar, dlwVar2);
        }
        dpo dpoVar = new dpo(null);
        dpoVar.m16125a(dlwVar);
        dpoVar.m16125a(dlwVar2);
        dlw pop = dpoVar.f47378a.pop();
        while (true) {
            dlw dlwVar3 = pop;
            if (dpoVar.f47378a.isEmpty()) {
                return dlwVar3;
            }
            pop = new dpm(dpoVar.f47378a.pop(), dlwVar3, null);
        }
    }

    /* renamed from: b */
    private static dlw m16135b(dlw dlwVar, dlw dlwVar2) {
        int mo16138b = dlwVar.mo16138b();
        int mo16138b2 = dlwVar2.mo16138b();
        byte[] bArr = new byte[mo16138b + mo16138b2];
        dlwVar.m16473a(bArr, 0, 0, mo16138b);
        dlwVar2.m16473a(bArr, 0, mo16138b, mo16138b2);
        return dlw.m16471b(bArr);
    }

    /* renamed from: d */
    public static int m16132d(int i) {
        int[] iArr = f47370b;
        if (i >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final byte mo16145a(int i) {
        m16472b(i, this.f47371c);
        return mo16137b(i);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final int mo16143a(int i, int i2, int i3) {
        int i4 = this.f47374f;
        if (i2 + i3 <= i4) {
            return this.f47372d.mo16143a(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f47373e.mo16143a(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f47373e.mo16143a(this.f47372d.mo16143a(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final dlw mo16144a(int i, int i2) {
        int c = m16468c(i, i2, this.f47371c);
        if (c == 0) {
            return dlw.f47199a;
        }
        if (c == this.f47371c) {
            return this;
        }
        int i3 = this.f47374f;
        if (i2 <= i3) {
            return this.f47372d.mo16144a(i, i2);
        }
        if (i >= i3) {
            return this.f47373e.mo16144a(i - i3, i2 - i3);
        }
        dlw dlwVar = this.f47372d;
        return new dpm(dlwVar.mo16144a(i, dlwVar.mo16138b()), this.f47373e.mo16144a(0, i2 - this.f47374f));
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final dmb mo16146a() {
        return new dpl(this);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    protected final String mo16139a(Charset charset) {
        return new String(m16467d(), charset);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final void mo16142a(dlt dltVar) throws IOException {
        this.f47372d.mo16142a(dltVar);
        this.f47373e.mo16142a(dltVar);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public final byte mo16137b(int i) {
        int i2 = this.f47374f;
        return i < i2 ? this.f47372d.mo16137b(i) : this.f47373e.mo16137b(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public final int mo16138b() {
        return this.f47371c;
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public final int mo16136b(int i, int i2, int i3) {
        int i4 = this.f47374f;
        if (i2 + i3 <= i4) {
            return this.f47372d.mo16136b(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f47373e.mo16136b(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f47373e.mo16136b(this.f47372d.mo16136b(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public final void mo16133b(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.f47374f;
        if (i + i3 <= i4) {
            this.f47372d.mo16133b(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.f47373e.mo16133b(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.f47372d.mo16133b(bArr, i, i2, i5);
            this.f47373e.mo16133b(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dlw)) {
            return false;
        }
        dlw dlwVar = (dlw) obj;
        if (this.f47371c != dlwVar.mo16138b()) {
            return false;
        }
        if (this.f47371c == 0) {
            return true;
        }
        int m16464k = m16464k();
        int m16464k2 = dlwVar.m16464k();
        if (m16464k != 0 && m16464k2 != 0 && m16464k != m16464k2) {
            return false;
        }
        dpn dpnVar = new dpn(this, null);
        dmd next = dpnVar.next();
        dpn dpnVar2 = new dpn(dlwVar, null);
        dmd next2 = dpnVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int mo16138b = next.mo16138b() - i;
            int mo16138b2 = next2.mo16138b() - i2;
            int min = Math.min(mo16138b, mo16138b2);
            if (!(i == 0 ? next.mo16458a(next2, i2, min) : next2.mo16458a(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.f47371c;
            if (i3 >= i4) {
                if (i3 != i4) {
                    throw new IllegalStateException();
                }
                return true;
            }
            if (min == mo16138b) {
                next = dpnVar.next();
                i = 0;
            } else {
                i += min;
            }
            if (min == mo16138b2) {
                next2 = dpnVar2.next();
                i2 = 0;
            } else {
                i2 += min;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: f */
    public final boolean mo16131f() {
        int mo16143a = this.f47372d.mo16143a(0, 0, this.f47374f);
        dlw dlwVar = this.f47373e;
        return dlwVar.mo16143a(mo16143a, 0, dlwVar.mo16138b()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: g */
    public final dmi mo16130g() {
        return new dmn(new dpq(this));
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: i */
    public final int mo16129i() {
        return this.f47375g;
    }

    @Override // com.google.android.gms.internal.ads.dlw, java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: j */
    public final boolean mo16128j() {
        return this.f47371c >= m16132d(this.f47375g);
    }
}
