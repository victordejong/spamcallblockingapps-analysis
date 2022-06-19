package androidx.p045j;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.j.f */
/* loaded from: classes-dex2jar.jar:androidx/j/f.class */
class C0829f {
    /* renamed from: a */
    public static <T> ObjectAnimator m5266a(T t, Property<T, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(t, property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(t, new C0831h(property, path), FlexItem.FLEX_GROW_DEFAULT, 1.0f);
    }
}
