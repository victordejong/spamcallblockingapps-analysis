package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpm.class */
public final class dpm extends dlw {

    /* renamed from: b  reason: collision with root package name */
    static final int[] f27069b = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};

    /* renamed from: c  reason: collision with root package name */
    private final int f27070c;

    /* renamed from: d  reason: collision with root package name */
    private final dlw f27071d;
    private final dlw e;
    private final int f;
    private final int g;

    private dpm(dlw dlwVar, dlw dlwVar2) {
        this.f27071d = dlwVar;
        this.e = dlwVar2;
        int b2 = dlwVar.b();
        this.f = b2;
        this.f27070c = b2 + dlwVar2.b();
        this.g = Math.max(dlwVar.i(), dlwVar2.i()) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dpm(dlw dlwVar, dlw dlwVar2, dpl dplVar) {
        this(dlwVar, dlwVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static dlw a(dlw dlwVar, dlw dlwVar2) {
        if (dlwVar2.b() == 0) {
            return dlwVar;
        }
        if (dlwVar.b() == 0) {
            return dlwVar2;
        }
        int b2 = dlwVar.b() + dlwVar2.b();
        if (b2 < 128) {
            return b(dlwVar, dlwVar2);
        }
        if (dlwVar instanceof dpm) {
            dpm dpmVar = (dpm) dlwVar;
            if (dpmVar.e.b() + dlwVar2.b() < 128) {
                return new dpm(dpmVar.f27071d, b(dpmVar.e, dlwVar2));
            } else if (dpmVar.f27071d.i() > dpmVar.e.i() && dpmVar.i() > dlwVar2.i()) {
                return new dpm(dpmVar.f27071d, new dpm(dpmVar.e, dlwVar2));
            }
        }
        if (b2 >= d(Math.max(dlwVar.i(), dlwVar2.i()) + 1)) {
            return new dpm(dlwVar, dlwVar2);
        }
        dpo dpoVar = new dpo(null);
        dpoVar.a(dlwVar);
        dpoVar.a(dlwVar2);
        dlw pop = dpoVar.f27074a.pop();
        while (!dpoVar.f27074a.isEmpty()) {
            pop = new dpm(dpoVar.f27074a.pop(), pop, null);
        }
        return pop;
    }

    private static dlw b(dlw dlwVar, dlw dlwVar2) {
        int b2 = dlwVar.b();
        int b3 = dlwVar2.b();
        byte[] bArr = new byte[b2 + b3];
        dlwVar.a(bArr, 0, 0, b2);
        dlwVar2.a(bArr, 0, b2, b3);
        return dlw.b(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i) {
        int[] iArr = f27069b;
        if (i >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final byte a(int i) {
        b(i, this.f27070c);
        return b(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dlw
    public final int a(int i, int i2, int i3) {
        int i4 = this.f;
        if (i2 + i3 <= i4) {
            return this.f27071d.a(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.e.a(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.e.a(this.f27071d.a(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final dlw a(int i, int i2) {
        int c2 = c(i, i2, this.f27070c);
        if (c2 == 0) {
            return dlw.f26941a;
        }
        if (c2 == this.f27070c) {
            return this;
        }
        int i3 = this.f;
        if (i2 <= i3) {
            return this.f27071d.a(i, i2);
        }
        if (i >= i3) {
            return this.e.a(i - i3, i2 - i3);
        }
        dlw dlwVar = this.f27071d;
        return new dpm(dlwVar.a(i, dlwVar.b()), this.e.a(0, i2 - this.f));
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final dmb a() {
        return new dpl(this);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    protected final String a(Charset charset) {
        return new String(d(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dlw
    public final void a(dlt dltVar) throws IOException {
        this.f27071d.a(dltVar);
        this.e.a(dltVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dlw
    public final byte b(int i) {
        int i2 = this.f;
        return i < i2 ? this.f27071d.b(i) : this.e.b(i - i2);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final int b() {
        return this.f27070c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dlw
    public final int b(int i, int i2, int i3) {
        int i4 = this.f;
        if (i2 + i3 <= i4) {
            return this.f27071d.b(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.e.b(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.e.b(this.f27071d.b(i, i2, i5), 0, i3 - i5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dlw
    public final void b(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.f;
        if (i + i3 <= i4) {
            this.f27071d.b(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.e.b(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.f27071d.b(bArr, i, i2, i5);
            this.e.b(bArr, 0, i2 + i5, i3 - i5);
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
        if (this.f27070c != dlwVar.b()) {
            return false;
        }
        if (this.f27070c == 0) {
            return true;
        }
        int k = k();
        int k2 = dlwVar.k();
        if (k != 0 && k2 != 0 && k != k2) {
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
            int b2 = next.b() - i;
            int b3 = next2.b() - i2;
            int min = Math.min(b2, b3);
            if (!(i == 0 ? next.a(next2, i2, min) : next2.a(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.f27070c;
            if (i3 < i4) {
                if (min == b2) {
                    i = 0;
                    next = dpnVar.next();
                } else {
                    i += min;
                    next = next;
                }
                if (min == b3) {
                    next2 = dpnVar2.next();
                    i2 = 0;
                } else {
                    i2 += min;
                }
            } else if (i3 == i4) {
                return true;
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final boolean f() {
        int a2 = this.f27071d.a(0, 0, this.f);
        dlw dlwVar = this.e;
        return dlwVar.a(a2, 0, dlwVar.b()) == 0;
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final dmi g() {
        return new dmn(new dpq(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dlw
    public final int i() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.dlw, java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dlw
    public final boolean j() {
        return this.f27070c >= d(this.g);
    }
}
