package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/k.class */
public final class k implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f22212a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22213b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f22214c;

    /* renamed from: d  reason: collision with root package name */
    private final a[] f22215d;
    private int e;
    private int f;
    private int g;
    private a[] h;

    public k(boolean z, int i) {
        this(z, i, 0);
    }

    public k(boolean z, int i, int i2) {
        a.a(i > 0);
        a.a(i2 >= 0);
        this.f22212a = z;
        this.f22213b = i;
        this.g = i2;
        this.h = new a[i2 + 100];
        if (i2 > 0) {
            this.f22214c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.h[i3] = new a(this.f22214c, i3 * i);
            }
        } else {
            this.f22214c = null;
        }
        this.f22215d = new a[1];
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public final a a() {
        a aVar;
        synchronized (this) {
            this.f++;
            int i = this.g;
            if (i > 0) {
                a[] aVarArr = this.h;
                int i2 = i - 1;
                this.g = i2;
                aVar = (a) a.b(aVarArr[i2]);
                this.h[this.g] = null;
            } else {
                aVar = new a(new byte[this.f22213b], 0);
            }
        }
        return aVar;
    }

    public final void a(int i) {
        synchronized (this) {
            boolean z = i < this.e;
            this.e = i;
            if (z) {
                b();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public final void a(a aVar) {
        synchronized (this) {
            a[] aVarArr = this.f22215d;
            aVarArr[0] = aVar;
            a(aVarArr);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public final void a(a[] aVarArr) {
        synchronized (this) {
            int i = this.g;
            int length = aVarArr.length;
            a[] aVarArr2 = this.h;
            if (length + i >= aVarArr2.length) {
                this.h = (a[]) Arrays.copyOf(aVarArr2, Math.max(aVarArr2.length * 2, i + aVarArr.length));
            }
            for (a aVar : aVarArr) {
                a[] aVarArr3 = this.h;
                int i2 = this.g;
                this.g = i2 + 1;
                aVarArr3[i2] = aVar;
            }
            this.f -= aVarArr.length;
            notifyAll();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public final void b() {
        synchronized (this) {
            int i = 0;
            int max = Math.max(0, af.a(this.e, this.f22213b) - this.f);
            int i2 = this.g;
            if (max < i2) {
                int i3 = max;
                if (this.f22214c != null) {
                    int i4 = i2 - 1;
                    while (i <= i4) {
                        a aVar = (a) a.b(this.h[i]);
                        if (aVar.f22129a == this.f22214c) {
                            i++;
                        } else {
                            a aVar2 = (a) a.b(this.h[i4]);
                            if (aVar2.f22129a != this.f22214c) {
                                i4--;
                            } else {
                                a[] aVarArr = this.h;
                                aVarArr[i] = aVar2;
                                aVarArr[i4] = aVar;
                                i4--;
                                i++;
                            }
                        }
                    }
                    int max2 = Math.max(max, i);
                    i3 = max2;
                    if (max2 >= this.g) {
                        return;
                    }
                }
                Arrays.fill(this.h, i3, this.g, (Object) null);
                this.g = i3;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public final int c() {
        return this.f22213b;
    }

    public final void d() {
        synchronized (this) {
            if (this.f22212a) {
                a(0);
            }
        }
    }

    public final int e() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f;
            i2 = this.f22213b;
        }
        return i * i2;
    }
}
