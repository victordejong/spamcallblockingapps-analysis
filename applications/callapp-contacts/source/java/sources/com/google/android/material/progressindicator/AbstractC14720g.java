package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.material.progressindicator.AbstractC14707b;
/* renamed from: com.google.android.material.progressindicator.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/g.class */
abstract class AbstractC14720g<S extends AbstractC14707b> {

    /* renamed from: a */
    S f53704a;

    /* renamed from: b */
    protected AbstractC14716f f53705b;

    public AbstractC14720g(S s) {
        this.f53704a = s;
    }

    /* renamed from: a */
    public abstract int mo10304a();

    /* renamed from: a */
    abstract void mo10303a(Canvas canvas, float f);

    /* renamed from: a */
    public abstract void mo10302a(Canvas canvas, Paint paint);

    /* renamed from: a */
    public abstract void mo10300a(Canvas canvas, Paint paint, float f, float f2, int i);

    /* renamed from: a */
    public final void m10317a(AbstractC14716f abstractC14716f) {
        this.f53705b = abstractC14716f;
    }

    /* renamed from: b */
    public abstract int mo10299b();

    /* renamed from: b */
    public final void m10316b(Canvas canvas, float f) {
        this.f53704a.mo10341c();
        mo10303a(canvas, f);
    }
}
