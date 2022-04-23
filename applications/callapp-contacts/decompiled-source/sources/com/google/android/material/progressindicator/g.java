package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.material.progressindicator.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/g.class */
abstract class g<S extends b> {

    /* renamed from: a  reason: collision with root package name */
    S f30762a;

    /* renamed from: b  reason: collision with root package name */
    protected f f30763b;

    public g(S s) {
        this.f30762a = s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a();

    abstract void a(Canvas canvas, float f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Canvas canvas, Paint paint);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Canvas canvas, Paint paint, float f, float f2, int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(f fVar) {
        this.f30763b = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Canvas canvas, float f) {
        this.f30762a.c();
        a(canvas, f);
    }
}
