package androidx.p045j;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.j.i */
/* loaded from: classes-dex2jar.jar:androidx/j/i.class */
class C0832i {
    /* renamed from: a */
    public static PropertyValuesHolder m5263a(Property<?, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? PropertyValuesHolder.ofObject(property, (TypeConverter) null, path) : PropertyValuesHolder.ofFloat(new C0831h(property, path), FlexItem.FLEX_GROW_DEFAULT, 1.0f);
    }
}
