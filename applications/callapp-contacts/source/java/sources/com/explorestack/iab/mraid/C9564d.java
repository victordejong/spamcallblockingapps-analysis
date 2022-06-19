package com.explorestack.iab.mraid;
/* renamed from: com.explorestack.iab.mraid.d */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/d.class */
public final class C9564d {

    /* renamed from: a */
    public int f32500a;

    /* renamed from: b */
    public int f32501b;

    /* renamed from: c */
    public int f32502c;

    /* renamed from: d */
    public int f32503d;

    /* renamed from: e */
    public EnumC9577j f32504e;

    /* renamed from: f */
    public boolean f32505f;

    public C9564d() {
        this(0, 0, 0, 0, EnumC9577j.TopRight, true);
    }

    public C9564d(int i, int i2, int i3, int i4, EnumC9577j enumC9577j, boolean z) {
        this.f32500a = i;
        this.f32501b = i2;
        this.f32502c = i3;
        this.f32503d = i4;
        this.f32504e = enumC9577j;
        this.f32505f = z;
    }

    public final String toString() {
        return "MRAIDResizeProperties{width=" + this.f32500a + ", height=" + this.f32501b + ", offsetX=" + this.f32502c + ", offsetY=" + this.f32503d + ", customClosePosition=" + this.f32504e + ", allowOffscreen=" + this.f32505f + '}';
    }
}
