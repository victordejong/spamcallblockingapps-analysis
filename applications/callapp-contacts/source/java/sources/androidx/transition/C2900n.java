package androidx.transition;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.transition.n */
/* loaded from: classes-dex2jar.jar:androidx/transition/n.class */
final class C2900n {
    private C2900n() {
    }

    /* renamed from: a */
    public static PropertyValuesHolder m39683a(Property<?, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? PropertyValuesHolder.ofObject(property, (TypeConverter) null, path) : PropertyValuesHolder.ofFloat(new C2899m(property, path), BitmapDescriptorFactory.HUE_RED, 1.0f);
    }
}
