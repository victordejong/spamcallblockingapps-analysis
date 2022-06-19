package androidx.p045j;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
/* renamed from: androidx.j.f */
/* loaded from: classes-dex2jar.jar:androidx/j/f.class */
class C0799f {
    /* renamed from: a */
    public static <T> ObjectAnimator m19431a(T t, Property<T, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(t, property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(t, new C0801h(property, path), 0.0f, 1.0f);
    }
}
