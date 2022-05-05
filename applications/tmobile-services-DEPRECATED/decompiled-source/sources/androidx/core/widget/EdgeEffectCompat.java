package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/EdgeEffectCompat.class */
public final class EdgeEffectCompat {

    /* renamed from: a */
    private EdgeEffect f3399a;

    @Deprecated
    public EdgeEffectCompat(Context context) {
        this.f3399a = new EdgeEffect(context);
    }

    /* renamed from: d */
    public static void m18905d(@NonNull EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }

    @Deprecated
    /* renamed from: a */
    public boolean m18908a(Canvas canvas) {
        return this.f3399a.draw(canvas);
    }

    @Deprecated
    /* renamed from: b */
    public boolean m18907b() {
        return this.f3399a.isFinished();
    }

    @Deprecated
    /* renamed from: c */
    public boolean m18906c(int i) {
        this.f3399a.onAbsorb(i);
        return true;
    }

    @Deprecated
    /* renamed from: e */
    public boolean m18904e(float f, float f2) {
        m18905d(this.f3399a, f, f2);
        return true;
    }

    @Deprecated
    /* renamed from: f */
    public boolean m18903f() {
        this.f3399a.onRelease();
        return this.f3399a.isFinished();
    }

    @Deprecated
    /* renamed from: g */
    public void m18902g(int i, int i2) {
        this.f3399a.setSize(i, i2);
    }
}
