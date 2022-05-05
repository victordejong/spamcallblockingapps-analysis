package p081h.p203i.p204a.p294f.p295a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import java.util.WeakHashMap;
/* renamed from: h.i.a.f.a.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/a/e.class */
public class C9171e extends Property<Drawable, Integer> {

    /* renamed from: b */
    public static final Property<Drawable, Integer> f20886b = new C9171e();

    /* renamed from: a */
    public final WeakHashMap<Drawable, Integer> f20887a = new WeakHashMap<>();

    public C9171e() {
        super(Integer.class, "drawableAlphaCompat");
    }

    /* renamed from: a */
    public Integer get(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.f20887a.containsKey(drawable)) {
            return this.f20887a.get(drawable);
        }
        return 255;
    }

    /* renamed from: a */
    public void set(Drawable drawable, Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f20887a.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
