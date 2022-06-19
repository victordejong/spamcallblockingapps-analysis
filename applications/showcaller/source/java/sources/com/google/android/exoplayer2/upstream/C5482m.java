package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.upstream.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/m.class */
public final class C5482m implements AbstractC5472e {

    /* renamed from: a */
    private final boolean f17755a;

    /* renamed from: b */
    private final int f17756b;

    /* renamed from: c */
    private final byte[] f17757c;

    /* renamed from: d */
    private final C5471d[] f17758d;

    /* renamed from: e */
    private int f17759e;

    /* renamed from: f */
    private int f17760f;

    /* renamed from: g */
    private int f17761g;

    /* renamed from: h */
    private C5471d[] f17762h;

    public C5482m(boolean z, int i) {
        this(z, i, 0);
    }

    public C5482m(boolean z, int i, int i2) {
        C5508e.m18915a(i > 0);
        C5508e.m18915a(i2 >= 0);
        this.f17755a = z;
        this.f17756b = i;
        this.f17761g = i2;
        this.f17762h = new C5471d[i2 + 100];
        if (i2 > 0) {
            this.f17757c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f17762h[i3] = new C5471d(this.f17757c, i3 * i);
            }
        } else {
            this.f17757c = null;
        }
        this.f17758d = new C5471d[1];
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5472e
    /* renamed from: a */
    public void mo19013a(C5471d c5471d) {
        synchronized (this) {
            C5471d[] c5471dArr = this.f17758d;
            c5471dArr[0] = c5471d;
            mo19010d(c5471dArr);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5472e
    /* renamed from: b */
    public C5471d mo19012b() {
        C5471d c5471d;
        synchronized (this) {
            this.f17760f++;
            int i = this.f17761g;
            if (i > 0) {
                C5471d[] c5471dArr = this.f17762h;
                int i2 = i - 1;
                this.f17761g = i2;
                c5471d = c5471dArr[i2];
                c5471dArr[i2] = null;
            } else {
                c5471d = new C5471d(new byte[this.f17756b], 0);
            }
        }
        return c5471d;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5472e
    /* renamed from: c */
    public void mo19011c() {
        synchronized (this) {
            int max = Math.max(0, C5515h0.m18829i(this.f17759e, this.f17756b) - this.f17760f);
            int i = this.f17761g;
            if (max >= i) {
                return;
            }
            int i2 = max;
            if (this.f17757c != null) {
                int i3 = i - 1;
                int i4 = 0;
                while (i4 <= i3) {
                    C5471d[] c5471dArr = this.f17762h;
                    C5471d c5471d = c5471dArr[i4];
                    byte[] bArr = c5471d.f17730a;
                    byte[] bArr2 = this.f17757c;
                    if (bArr == bArr2) {
                        i4++;
                    } else {
                        C5471d c5471d2 = c5471dArr[i3];
                        if (c5471d2.f17730a != bArr2) {
                            i3--;
                        } else {
                            c5471dArr[i4] = c5471d2;
                            c5471dArr[i3] = c5471d;
                            i3--;
                            i4++;
                        }
                    }
                }
                int max2 = Math.max(max, i4);
                i2 = max2;
                if (max2 >= this.f17761g) {
                    return;
                }
            }
            Arrays.fill(this.f17762h, i2, this.f17761g, (Object) null);
            this.f17761g = i2;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5472e
    /* renamed from: d */
    public void mo19010d(C5471d[] c5471dArr) {
        synchronized (this) {
            int i = this.f17761g;
            int length = c5471dArr.length;
            C5471d[] c5471dArr2 = this.f17762h;
            if (length + i >= c5471dArr2.length) {
                this.f17762h = (C5471d[]) Arrays.copyOf(c5471dArr2, Math.max(c5471dArr2.length * 2, i + c5471dArr.length));
            }
            for (C5471d c5471d : c5471dArr) {
                C5471d[] c5471dArr3 = this.f17762h;
                int i2 = this.f17761g;
                this.f17761g = i2 + 1;
                c5471dArr3[i2] = c5471d;
            }
            this.f17760f -= c5471dArr.length;
            notifyAll();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5472e
    /* renamed from: e */
    public int mo19009e() {
        return this.f17756b;
    }

    /* renamed from: f */
    public int m19008f() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f17760f;
            i2 = this.f17756b;
        }
        return i * i2;
    }

    /* renamed from: g */
    public void m19007g() {
        synchronized (this) {
            if (this.f17755a) {
                m19006h(0);
            }
        }
    }

    /* renamed from: h */
    public void m19006h(int i) {
        synchronized (this) {
            boolean z = i < this.f17759e;
            this.f17759e = i;
            if (z) {
                mo19011c();
            }
        }
    }
}
