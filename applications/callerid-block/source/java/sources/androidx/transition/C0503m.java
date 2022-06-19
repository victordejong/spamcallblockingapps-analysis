package androidx.transition;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
/* renamed from: androidx.transition.m */
/* loaded from: classes-dex2jar.jar:androidx/transition/m.class */
class C0503m {
    /* renamed from: a */
    static <T> ObjectAnimator m12004a(T t, Property<T, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(t, property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(t, new C0504n(property, path), 0.0f, 1.0f);
    }
}
