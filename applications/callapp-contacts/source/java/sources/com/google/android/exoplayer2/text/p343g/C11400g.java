package com.google.android.exoplayer2.text.p343g;

import android.text.Layout;
/* renamed from: com.google.android.exoplayer2.text.g.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/g.class */
final class C11400g {

    /* renamed from: a */
    String f37610a;

    /* renamed from: b */
    int f37611b;

    /* renamed from: c */
    boolean f37612c;

    /* renamed from: d */
    int f37613d;

    /* renamed from: e */
    boolean f37614e;

    /* renamed from: k */
    float f37620k;

    /* renamed from: l */
    String f37621l;

    /* renamed from: o */
    Layout.Alignment f37624o;

    /* renamed from: q */
    C11392b f37626q;

    /* renamed from: f */
    int f37615f = -1;

    /* renamed from: g */
    int f37616g = -1;

    /* renamed from: h */
    int f37617h = -1;

    /* renamed from: i */
    int f37618i = -1;

    /* renamed from: j */
    int f37619j = -1;

    /* renamed from: m */
    int f37622m = -1;

    /* renamed from: n */
    int f37623n = -1;

    /* renamed from: p */
    int f37625p = -1;

    /* renamed from: r */
    float f37627r = Float.MAX_VALUE;

    /* renamed from: a */
    public final int m20673a() {
        int i = this.f37617h;
        if (i == -1 && this.f37618i == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.f37618i == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    /* renamed from: a */
    public final C11400g m20672a(int i) {
        this.f37611b = i;
        this.f37612c = true;
        return this;
    }

    /* renamed from: a */
    public final C11400g m20671a(C11400g c11400g) {
        int i;
        Layout.Alignment alignment;
        String str;
        if (c11400g != null) {
            if (!this.f37612c && c11400g.f37612c) {
                m20672a(c11400g.f37611b);
            }
            if (this.f37617h == -1) {
                this.f37617h = c11400g.f37617h;
            }
            if (this.f37618i == -1) {
                this.f37618i = c11400g.f37618i;
            }
            if (this.f37610a == null && (str = c11400g.f37610a) != null) {
                this.f37610a = str;
            }
            if (this.f37615f == -1) {
                this.f37615f = c11400g.f37615f;
            }
            if (this.f37616g == -1) {
                this.f37616g = c11400g.f37616g;
            }
            if (this.f37623n == -1) {
                this.f37623n = c11400g.f37623n;
            }
            if (this.f37624o == null && (alignment = c11400g.f37624o) != null) {
                this.f37624o = alignment;
            }
            if (this.f37625p == -1) {
                this.f37625p = c11400g.f37625p;
            }
            if (this.f37619j == -1) {
                this.f37619j = c11400g.f37619j;
                this.f37620k = c11400g.f37620k;
            }
            if (this.f37626q == null) {
                this.f37626q = c11400g.f37626q;
            }
            if (this.f37627r == Float.MAX_VALUE) {
                this.f37627r = c11400g.f37627r;
            }
            if (!this.f37614e && c11400g.f37614e) {
                m20669b(c11400g.f37613d);
            }
            if (this.f37622m == -1 && (i = c11400g.f37622m) != -1) {
                this.f37622m = i;
            }
        }
        return this;
    }

    /* renamed from: a */
    public final C11400g m20670a(boolean z) {
        this.f37615f = z ? 1 : 0;
        return this;
    }

    /* renamed from: b */
    public final C11400g m20669b(int i) {
        this.f37613d = i;
        this.f37614e = true;
        return this;
    }

    /* renamed from: b */
    public final C11400g m20668b(boolean z) {
        this.f37616g = z ? 1 : 0;
        return this;
    }

    /* renamed from: c */
    public final C11400g m20667c(boolean z) {
        this.f37625p = z ? 1 : 0;
        return this;
    }
}
