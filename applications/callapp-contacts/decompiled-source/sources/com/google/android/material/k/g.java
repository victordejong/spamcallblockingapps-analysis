package com.google.android.material.k;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/g.class */
public final class g extends f {

    /* renamed from: a  reason: collision with root package name */
    private final float f30675a;

    public g(float f) {
        this.f30675a = f - 0.001f;
    }

    @Override // com.google.android.material.k.f
    public final void a(float f, float f2, float f3, o oVar) {
        float sqrt = (float) ((this.f30675a * Math.sqrt(2.0d)) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.f30675a, 2.0d) - Math.pow(sqrt, 2.0d));
        oVar.a(f2 - sqrt, ((float) (-((this.f30675a * Math.sqrt(2.0d)) - this.f30675a))) + sqrt2);
        oVar.b(f2, (float) (-((this.f30675a * Math.sqrt(2.0d)) - this.f30675a)));
        oVar.b(f2 + sqrt, ((float) (-((this.f30675a * Math.sqrt(2.0d)) - this.f30675a))) + sqrt2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.k.f
    public final boolean a() {
        return true;
    }
}
