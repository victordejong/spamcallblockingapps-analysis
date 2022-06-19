package com.google.android.material.p374k;
/* renamed from: com.google.android.material.k.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/g.class */
public final class C14669g extends C14668f {

    /* renamed from: a */
    private final float f53472a;

    public C14669g(float f) {
        this.f53472a = f - 0.001f;
    }

    @Override // com.google.android.material.p374k.C14668f
    /* renamed from: a */
    public final void mo10433a(float f, float f2, float f3, C14686o c14686o) {
        float sqrt = (float) ((this.f53472a * Math.sqrt(2.0d)) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.f53472a, 2.0d) - Math.pow(sqrt, 2.0d));
        c14686o.m10394a(f2 - sqrt, ((float) (-((this.f53472a * Math.sqrt(2.0d)) - this.f53472a))) + sqrt2);
        c14686o.m10388b(f2, (float) (-((this.f53472a * Math.sqrt(2.0d)) - this.f53472a)));
        c14686o.m10388b(f2 + sqrt, ((float) (-((this.f53472a * Math.sqrt(2.0d)) - this.f53472a))) + sqrt2);
    }

    @Override // com.google.android.material.p374k.C14668f
    /* renamed from: a */
    public final boolean mo10434a() {
        return true;
    }
}
