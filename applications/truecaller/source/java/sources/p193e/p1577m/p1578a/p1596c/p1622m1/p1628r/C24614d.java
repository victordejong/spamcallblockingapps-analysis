package p193e.p1577m.p1578a.p1596c.p1622m1.p1628r;

import android.text.Layout;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.m1.r.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/r/d.class */
public final class C24614d {

    /* renamed from: a */
    public String f68914a;

    /* renamed from: b */
    public int f68915b;

    /* renamed from: c */
    public boolean f68916c;

    /* renamed from: d */
    public int f68917d;

    /* renamed from: e */
    public boolean f68918e;

    /* renamed from: f */
    public int f68919f = -1;

    /* renamed from: g */
    public int f68920g = -1;

    /* renamed from: h */
    public int f68921h = -1;

    /* renamed from: i */
    public int f68922i = -1;

    /* renamed from: j */
    public int f68923j = -1;

    /* renamed from: k */
    public float f68924k;

    /* renamed from: l */
    public String f68925l;

    /* renamed from: m */
    public Layout.Alignment f68926m;

    /* renamed from: a */
    public C24614d m4833a(C24614d c24614d) {
        if (c24614d != null) {
            if (!this.f68916c && c24614d.f68916c) {
                int i = c24614d.f68915b;
                C26232y.m2286x(true);
                this.f68915b = i;
                this.f68916c = true;
            }
            if (this.f68921h == -1) {
                this.f68921h = c24614d.f68921h;
            }
            if (this.f68922i == -1) {
                this.f68922i = c24614d.f68922i;
            }
            if (this.f68914a == null) {
                this.f68914a = c24614d.f68914a;
            }
            if (this.f68919f == -1) {
                this.f68919f = c24614d.f68919f;
            }
            if (this.f68920g == -1) {
                this.f68920g = c24614d.f68920g;
            }
            if (this.f68926m == null) {
                this.f68926m = c24614d.f68926m;
            }
            if (this.f68923j == -1) {
                this.f68923j = c24614d.f68923j;
                this.f68924k = c24614d.f68924k;
            }
            if (!this.f68918e && c24614d.f68918e) {
                this.f68917d = c24614d.f68917d;
                this.f68918e = true;
            }
        }
        return this;
    }

    /* renamed from: b */
    public int m4832b() {
        int i = this.f68921h;
        if (i == -1 && this.f68922i == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.f68922i == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }
}
