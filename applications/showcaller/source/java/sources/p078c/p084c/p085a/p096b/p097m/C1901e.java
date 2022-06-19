package p078c.p084c.p085a.p096b.p097m;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;
/* renamed from: c.c.a.b.m.e */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/m/e.class */
public class C1901e extends Property<Drawable, Integer> {

    /* renamed from: a */
    public static final Property<Drawable, Integer> f6820a = new C1901e();

    /* renamed from: b */
    private final WeakHashMap<Drawable, Integer> f6821b = new WeakHashMap<>();

    private C1901e() {
        super(Integer.class, "drawableAlphaCompat");
    }

    /* renamed from: a */
    public Integer get(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (!this.f6821b.containsKey(drawable)) {
            return 255;
        }
        return this.f6821b.get(drawable);
    }

    /* renamed from: b */
    public void set(Drawable drawable, Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f6821b.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
