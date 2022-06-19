package p1727n3.p1789g0;

import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.g0.z */
/* loaded from: classes-dex2jar.jar:n3/g0/z.class */
public class C26233z {

    /* renamed from: a */
    public static final C26200f0 f73143a;

    /* renamed from: b */
    public static final Property<View, Float> f73144b;

    /* renamed from: n3.g0.z$a */
    /* loaded from: classes-dex2jar.jar:n3/g0/z$a.class */
    public static final class C26234a extends Property<View, Float> {
        public C26234a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(C26233z.m2274a(view));
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            float floatValue = f.floatValue();
            C26233z.f73143a.mo2555e(view, floatValue);
        }
    }

    /* renamed from: n3.g0.z$b */
    /* loaded from: classes-dex2jar.jar:n3/g0/z$b.class */
    public static final class C26235b extends Property<View, Rect> {
        public C26235b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Rect get(View view) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            return view.getClipBounds();
        }

        @Override // android.util.Property
        public void set(View view, Rect rect) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            view.setClipBounds(rect);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f73143a = new e0();
        } else {
            f73143a = new d0();
        }
        f73144b = new C26234a(Float.class, "translationAlpha");
        new C26235b(Rect.class, "clipBounds");
    }

    /* renamed from: a */
    public static float m2274a(View view) {
        return f73143a.mo2558b(view);
    }

    /* renamed from: b */
    public static void m2273b(View view, int i, int i2, int i3, int i4) {
        f73143a.m2556d(view, i, i2, i3, i4);
    }
}
