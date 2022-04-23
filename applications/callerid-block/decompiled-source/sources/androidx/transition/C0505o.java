package androidx.transition;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
/* renamed from: androidx.transition.o */
/* loaded from: classes-dex2jar.jar:androidx/transition/o.class */
class C0505o {
    /* renamed from: a */
    static PropertyValuesHolder m12001a(Property<?, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? PropertyValuesHolder.ofObject(property, (TypeConverter) null, path) : PropertyValuesHolder.ofFloat(new C0504n(property, path), 0.0f, 1.0f);
    }
}
