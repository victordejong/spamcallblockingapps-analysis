package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.material.progressindicator.AbstractC8225b;
/* renamed from: com.google.android.material.progressindicator.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/g.class */
abstract class AbstractC8238g<S extends AbstractC8225b> {

    /* renamed from: a */
    S f37136a;

    /* renamed from: b */
    protected AbstractC8234f f37137b;

    public AbstractC8238g(S s) {
        this.f37136a = s;
    }

    /* renamed from: a */
    abstract void mo4333a(Canvas canvas, float f);

    /* renamed from: b */
    public abstract void mo4332b(Canvas canvas, Paint paint, float f, float f2, int i);

    /* renamed from: c */
    public abstract void mo4331c(Canvas canvas, Paint paint);

    /* renamed from: d */
    public abstract int mo4330d();

    /* renamed from: e */
    public abstract int mo4329e();

    /* renamed from: f */
    public void m4350f(AbstractC8234f abstractC8234f) {
        this.f37137b = abstractC8234f;
    }

    /* renamed from: g */
    public void m4349g(Canvas canvas, float f) {
        this.f37136a.mo4397e();
        mo4333a(canvas, f);
    }
}
