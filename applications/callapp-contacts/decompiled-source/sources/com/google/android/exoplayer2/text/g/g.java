package com.google.android.exoplayer2.text.g;

import android.text.Layout;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/g.class */
final class g {

    /* renamed from: a  reason: collision with root package name */
    String f21845a;

    /* renamed from: b  reason: collision with root package name */
    int f21846b;

    /* renamed from: c  reason: collision with root package name */
    boolean f21847c;

    /* renamed from: d  reason: collision with root package name */
    int f21848d;
    boolean e;
    float k;
    String l;
    Layout.Alignment o;
    b q;
    int f = -1;
    int g = -1;
    int h = -1;
    int i = -1;
    int j = -1;
    int m = -1;
    int n = -1;
    int p = -1;
    float r = Float.MAX_VALUE;

    public final int a() {
        int i = this.h;
        if (i == -1 && this.i == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.i == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    public final g a(int i) {
        this.f21846b = i;
        this.f21847c = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g a(g gVar) {
        int i;
        Layout.Alignment alignment;
        String str;
        if (gVar != null) {
            if (!this.f21847c && gVar.f21847c) {
                a(gVar.f21846b);
            }
            if (this.h == -1) {
                this.h = gVar.h;
            }
            if (this.i == -1) {
                this.i = gVar.i;
            }
            if (this.f21845a == null && (str = gVar.f21845a) != null) {
                this.f21845a = str;
            }
            if (this.f == -1) {
                this.f = gVar.f;
            }
            if (this.g == -1) {
                this.g = gVar.g;
            }
            if (this.n == -1) {
                this.n = gVar.n;
            }
            if (this.o == null && (alignment = gVar.o) != null) {
                this.o = alignment;
            }
            if (this.p == -1) {
                this.p = gVar.p;
            }
            if (this.j == -1) {
                this.j = gVar.j;
                this.k = gVar.k;
            }
            if (this.q == null) {
                this.q = gVar.q;
            }
            if (this.r == Float.MAX_VALUE) {
                this.r = gVar.r;
            }
            if (!this.e && gVar.e) {
                b(gVar.f21848d);
            }
            if (this.m == -1 && (i = gVar.m) != -1) {
                this.m = i;
            }
        }
        return this;
    }

    public final g a(boolean z) {
        this.f = z ? 1 : 0;
        return this;
    }

    public final g b(int i) {
        this.f21848d = i;
        this.e = true;
        return this;
    }

    public final g b(boolean z) {
        this.g = z ? 1 : 0;
        return this;
    }

    public final g c(boolean z) {
        this.p = z ? 1 : 0;
        return this;
    }
}
