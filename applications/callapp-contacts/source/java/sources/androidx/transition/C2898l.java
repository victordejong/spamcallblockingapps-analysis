package androidx.transition;

import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.graphics.Path;
import android.graphics.PointF;
import android.os.Build;
import android.util.Property;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.transition.l */
/* loaded from: classes-dex2jar.jar:androidx/transition/l.class */
final class C2898l {
    private C2898l() {
    }

    /* renamed from: a */
    public static <T> ObjectAnimator m39684a(T t, Property<T, PointF> property, Path path) {
        return Build.VERSION.SDK_INT >= 21 ? ObjectAnimator.ofObject(t, property, (TypeConverter) null, path) : ObjectAnimator.ofFloat(t, new C2899m(property, path), BitmapDescriptorFactory.HUE_RED, 1.0f);
    }
}
