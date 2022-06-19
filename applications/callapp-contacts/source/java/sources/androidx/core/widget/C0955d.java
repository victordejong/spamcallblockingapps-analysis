package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.widget.EdgeEffect;
/* renamed from: androidx.core.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/d.class */
public final class C0955d {

    /* renamed from: a */
    public EdgeEffect f3862a;

    @Deprecated
    public C0955d(Context context) {
        this.f3862a = new EdgeEffect(context);
    }

    /* renamed from: a */
    public static void m43975a(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }

    @Deprecated
    /* renamed from: a */
    public final void m43977a(int i, int i2) {
        this.f3862a.setSize(i, i2);
    }

    @Deprecated
    /* renamed from: a */
    public final boolean m43979a() {
        this.f3862a.onRelease();
        return this.f3862a.isFinished();
    }

    @Deprecated
    /* renamed from: a */
    public final boolean m43978a(float f) {
        this.f3862a.onPull(f);
        return true;
    }

    @Deprecated
    /* renamed from: a */
    public final boolean m43976a(Canvas canvas) {
        return this.f3862a.draw(canvas);
    }
}
