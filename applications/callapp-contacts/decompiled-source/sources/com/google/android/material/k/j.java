package com.google.android.material.k;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/j.class */
public final class j extends f {

    /* renamed from: a  reason: collision with root package name */
    private final f f30687a;

    /* renamed from: b  reason: collision with root package name */
    private final float f30688b;

    public j(f fVar, float f) {
        this.f30687a = fVar;
        this.f30688b = f;
    }

    @Override // com.google.android.material.k.f
    public final void a(float f, float f2, float f3, o oVar) {
        this.f30687a.a(f, f2 - this.f30688b, f3, oVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.k.f
    public final boolean a() {
        return this.f30687a.a();
    }
}
