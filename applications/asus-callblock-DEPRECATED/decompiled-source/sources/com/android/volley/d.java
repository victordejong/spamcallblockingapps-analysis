package com.android.volley;
/* loaded from: classes-dex2jar.jar:com/android/volley/d.class */
public final class d implements r {

    /* renamed from: a  reason: collision with root package name */
    private int f2290a;

    /* renamed from: b  reason: collision with root package name */
    private int f2291b;
    private final int c;
    private final float d;

    public d() {
        this(2500, 0, 1.0f);
    }

    public d(int i, int i2, float f) {
        this.f2290a = i;
        this.c = i2;
        this.d = f;
    }

    @Override // com.android.volley.r
    public final int a() {
        return this.f2290a;
    }

    @Override // com.android.volley.r
    public final void a(u uVar) {
        this.f2291b++;
        this.f2290a = (int) (this.f2290a + (this.f2290a * this.d));
        if (!(this.f2291b <= this.c)) {
            throw uVar;
        }
    }

    @Override // com.android.volley.r
    public final int b() {
        return this.f2291b;
    }
}
