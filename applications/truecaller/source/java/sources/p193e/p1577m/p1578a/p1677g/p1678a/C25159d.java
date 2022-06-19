package p193e.p1577m.p1578a.p1677g.p1678a;

import android.graphics.drawable.Drawable;
import android.util.Property;
import java.util.WeakHashMap;
/* renamed from: e.m.a.g.a.d */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a/d.class */
public class C25159d extends Property<Drawable, Integer> {

    /* renamed from: b */
    public static final Property<Drawable, Integer> f70404b = new C25159d();

    /* renamed from: a */
    public final WeakHashMap<Drawable, Integer> f70405a = new WeakHashMap<>();

    public C25159d() {
        super(Integer.class, "drawableAlphaCompat");
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
