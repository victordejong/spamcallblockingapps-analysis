package com.explorestack.iab.mraid;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public int f19130a;

    /* renamed from: b  reason: collision with root package name */
    public int f19131b;

    /* renamed from: c  reason: collision with root package name */
    public int f19132c;

    /* renamed from: d  reason: collision with root package name */
    public int f19133d;
    public j e;
    public boolean f;

    public d() {
        this(0, 0, 0, 0, j.TopRight, true);
    }

    public d(int i, int i2, int i3, int i4, j jVar, boolean z) {
        this.f19130a = i;
        this.f19131b = i2;
        this.f19132c = i3;
        this.f19133d = i4;
        this.e = jVar;
        this.f = z;
    }

    public final String toString() {
        return "MRAIDResizeProperties{width=" + this.f19130a + ", height=" + this.f19131b + ", offsetX=" + this.f19132c + ", offsetY=" + this.f19133d + ", customClosePosition=" + this.e + ", allowOffscreen=" + this.f + '}';
    }
}
