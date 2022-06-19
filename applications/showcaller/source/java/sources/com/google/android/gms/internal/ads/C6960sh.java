package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.sh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sh.class */
public final class C6960sh {

    /* renamed from: b */
    private int f29508b;

    /* renamed from: c */
    private int f29509c;

    /* renamed from: d */
    private int f29510d = 0;

    /* renamed from: e */
    private C6775nh[] f29511e = new C6775nh[100];

    /* renamed from: a */
    private final C6775nh[] f29507a = new C6775nh[1];

    public C6960sh(boolean z, int i) {
    }

    /* renamed from: a */
    public final void m11028a() {
        synchronized (this) {
            m11027b(0);
        }
    }

    /* renamed from: b */
    public final void m11027b(int i) {
        synchronized (this) {
            int i2 = this.f29508b;
            this.f29508b = i;
            if (i < i2) {
                m11023f();
            }
        }
    }

    /* renamed from: c */
    public final C6775nh m11026c() {
        C6775nh c6775nh;
        synchronized (this) {
            this.f29509c++;
            int i = this.f29510d;
            if (i > 0) {
                C6775nh[] c6775nhArr = this.f29511e;
                int i2 = i - 1;
                this.f29510d = i2;
                c6775nh = c6775nhArr[i2];
                c6775nhArr[i2] = null;
            } else {
                c6775nh = new C6775nh(new byte[65536], 0);
            }
        }
        return c6775nh;
    }

    /* renamed from: d */
    public final void m11025d(C6775nh c6775nh) {
        synchronized (this) {
            C6775nh[] c6775nhArr = this.f29507a;
            c6775nhArr[0] = c6775nh;
            m11024e(c6775nhArr);
        }
    }

    /* renamed from: e */
    public final void m11024e(C6775nh[] c6775nhArr) {
        synchronized (this) {
            int i = this.f29510d;
            int length = c6775nhArr.length;
            int i2 = i + length;
            C6775nh[] c6775nhArr2 = this.f29511e;
            int length2 = c6775nhArr2.length;
            int i3 = 0;
            if (i2 >= length2) {
                this.f29511e = (C6775nh[]) Arrays.copyOf(c6775nhArr2, Math.max(length2 + length2, i2));
                i3 = 0;
            }
            while (i3 < length) {
                C6775nh c6775nh = c6775nhArr[i3];
                byte[] bArr = c6775nh.f27143a;
                C6775nh[] c6775nhArr3 = this.f29511e;
                int i4 = this.f29510d;
                this.f29510d = i4 + 1;
                c6775nhArr3[i4] = c6775nh;
                i3++;
            }
            this.f29509c -= c6775nhArr.length;
            notifyAll();
        }
    }

    /* renamed from: f */
    public final void m11023f() {
        synchronized (this) {
            int max = Math.max(0, C6961si.m11017e(this.f29508b, 65536) - this.f29509c);
            int i = this.f29510d;
            if (max >= i) {
                return;
            }
            Arrays.fill(this.f29511e, max, i, (Object) null);
            this.f29510d = max;
        }
    }

    /* renamed from: g */
    public final int m11022g() {
        int i;
        synchronized (this) {
            i = this.f29509c;
        }
        return i * 65536;
    }
}
