package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.upstream.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/k.class */
public final class C11573k implements AbstractC11533b {

    /* renamed from: a */
    private final boolean f38533a;

    /* renamed from: b */
    private final int f38534b;

    /* renamed from: c */
    private final byte[] f38535c;

    /* renamed from: d */
    private final C11532a[] f38536d;

    /* renamed from: e */
    private int f38537e;

    /* renamed from: f */
    private int f38538f;

    /* renamed from: g */
    private int f38539g;

    /* renamed from: h */
    private C11532a[] f38540h;

    public C11573k(boolean z, int i) {
        this(z, i, 0);
    }

    public C11573k(boolean z, int i, int i2) {
        C11593a.m20022a(i > 0);
        C11593a.m20022a(i2 >= 0);
        this.f38533a = z;
        this.f38534b = i;
        this.f38539g = i2;
        this.f38540h = new C11532a[i2 + 100];
        if (i2 > 0) {
            this.f38535c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f38540h[i3] = new C11532a(this.f38535c, i3 * i);
            }
        } else {
            this.f38535c = null;
        }
        this.f38536d = new C11532a[1];
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11533b
    /* renamed from: a */
    public final C11532a mo20071a() {
        C11532a c11532a;
        synchronized (this) {
            this.f38538f++;
            int i = this.f38539g;
            if (i > 0) {
                C11532a[] c11532aArr = this.f38540h;
                int i2 = i - 1;
                this.f38539g = i2;
                c11532a = (C11532a) C11593a.m20020b(c11532aArr[i2]);
                this.f38540h[this.f38539g] = null;
            } else {
                c11532a = new C11532a(new byte[this.f38534b], 0);
            }
        }
        return c11532a;
    }

    /* renamed from: a */
    public final void m20070a(int i) {
        synchronized (this) {
            boolean z = i < this.f38537e;
            this.f38537e = i;
            if (z) {
                mo20067b();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11533b
    /* renamed from: a */
    public final void mo20069a(C11532a c11532a) {
        synchronized (this) {
            C11532a[] c11532aArr = this.f38536d;
            c11532aArr[0] = c11532a;
            mo20068a(c11532aArr);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11533b
    /* renamed from: a */
    public final void mo20068a(C11532a[] c11532aArr) {
        synchronized (this) {
            int i = this.f38539g;
            int length = c11532aArr.length;
            C11532a[] c11532aArr2 = this.f38540h;
            if (length + i >= c11532aArr2.length) {
                this.f38540h = (C11532a[]) Arrays.copyOf(c11532aArr2, Math.max(c11532aArr2.length * 2, i + c11532aArr.length));
            }
            for (C11532a c11532a : c11532aArr) {
                C11532a[] c11532aArr3 = this.f38540h;
                int i2 = this.f38539g;
                this.f38539g = i2 + 1;
                c11532aArr3[i2] = c11532a;
            }
            this.f38538f -= c11532aArr.length;
            notifyAll();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11533b
    /* renamed from: b */
    public final void mo20067b() {
        synchronized (this) {
            int max = Math.max(0, C11599af.m19998a(this.f38537e, this.f38534b) - this.f38538f);
            int i = this.f38539g;
            if (max >= i) {
                return;
            }
            int i2 = max;
            if (this.f38535c != null) {
                int i3 = i - 1;
                int i4 = 0;
                while (i4 <= i3) {
                    C11532a c11532a = (C11532a) C11593a.m20020b(this.f38540h[i4]);
                    if (c11532a.f38390a == this.f38535c) {
                        i4++;
                    } else {
                        C11532a c11532a2 = (C11532a) C11593a.m20020b(this.f38540h[i3]);
                        if (c11532a2.f38390a != this.f38535c) {
                            i3--;
                        } else {
                            C11532a[] c11532aArr = this.f38540h;
                            c11532aArr[i4] = c11532a2;
                            c11532aArr[i3] = c11532a;
                            i3--;
                            i4++;
                        }
                    }
                }
                int max2 = Math.max(max, i4);
                i2 = max2;
                if (max2 >= this.f38539g) {
                    return;
                }
            }
            Arrays.fill(this.f38540h, i2, this.f38539g, (Object) null);
            this.f38539g = i2;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11533b
    /* renamed from: c */
    public final int mo20066c() {
        return this.f38534b;
    }

    /* renamed from: d */
    public final void m20065d() {
        synchronized (this) {
            if (this.f38533a) {
                m20070a(0);
            }
        }
    }

    /* renamed from: e */
    public final int m20064e() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f38538f;
            i2 = this.f38534b;
        }
        return i * i2;
    }
}
