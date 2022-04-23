package androidx.transition;

import android.animation.PropertyValuesHolder;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/transition/n.class */
final class n {
    private n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PropertyValuesHolder a(Property<?, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? PropertyValuesHolder.ofObject(property, (TypeConverter) null, path) : PropertyValuesHolder.ofFloat(new m(property, path), BitmapDescriptorFactory.HUE_RED, 1.0f);
    }
}
