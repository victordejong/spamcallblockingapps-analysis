package p090f3;

import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.WeakHashMap;
/* renamed from: f3.d */
/* loaded from: classes-dex2jar.jar:f3/d.class */
public class C2730d extends Property<Drawable, Integer> {

    /* renamed from: a */
    public static final Property<Drawable, Integer> f9379a = new C2730d();

    public C2730d() {
        super(Integer.class, "drawableAlphaCompat");
        new WeakHashMap();
    }

    @Override // android.util.Property
    public Integer get(Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    public void set(Drawable drawable, Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
