package p153l1;

import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
import p291y.C4951d;
/* renamed from: l1.q */
/* loaded from: classes-dex2jar.jar:l1/q.class */
public class C3469q {

    /* renamed from: a */
    public static final C4951d f11571a;

    /* renamed from: b */
    public static final Property<View, Float> f11572b;

    /* renamed from: l1.q$a */
    /* loaded from: classes-dex2jar.jar:l1/q$a.class */
    public static final class C3470a extends Property<View, Float> {
        public C3470a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(C3469q.m2245a(view));
        }

        @Override // android.util.Property
        public void set(View view, Float f) {
            float floatValue = f.floatValue();
            C3469q.f11571a.mo191l(view, floatValue);
        }
    }

    /* renamed from: l1.q$b */
    /* loaded from: classes-dex2jar.jar:l1/q$b.class */
    public static final class C3471b extends Property<View, Rect> {
        public C3471b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public Rect get(View view) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            return C3589v.C3595f.m2063a(view);
        }

        @Override // android.util.Property
        public void set(View view, Rect rect) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3595f.m2061c(view, rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f11571a = new C3476v();
        } else if (i >= 23) {
            f11571a = new C3475u();
        } else if (i >= 22) {
            f11571a = new C3474t();
        } else {
            f11571a = new C3473s();
        }
        f11572b = new C3470a(Float.class, "translationAlpha");
        new C3471b(Rect.class, "clipBounds");
    }

    /* renamed from: a */
    public static float m2245a(View view) {
        return f11571a.mo195h(view);
    }

    /* renamed from: b */
    public static void m2244b(View view, int i, int i2, int i3, int i4) {
        f11571a.mo192k(view, i, i2, i3, i4);
    }
}
