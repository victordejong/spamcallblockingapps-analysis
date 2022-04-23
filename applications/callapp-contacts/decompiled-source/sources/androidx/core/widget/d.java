package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.widget.EdgeEffect;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public EdgeEffect f2061a;

    @Deprecated
    public d(Context context) {
        this.f2061a = new EdgeEffect(context);
    }

    public static void a(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }

    @Deprecated
    public final void a(int i, int i2) {
        this.f2061a.setSize(i, i2);
    }

    @Deprecated
    public final boolean a() {
        this.f2061a.onRelease();
        return this.f2061a.isFinished();
    }

    @Deprecated
    public final boolean a(float f) {
        this.f2061a.onPull(f);
        return true;
    }

    @Deprecated
    public final boolean a(Canvas canvas) {
        return this.f2061a.draw(canvas);
    }
}
