package p153l1;

import android.animation.AnimatorListenerAdapter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Objects;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: l1.b */
/* loaded from: classes-dex2jar.jar:l1/b.class */
public class C3431b extends AbstractC3451g {

    /* renamed from: x */
    public static final String[] f11493x = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: y */
    public static final Property<C3440i, PointF> f11494y = new C3433b(PointF.class, "topLeft");

    /* renamed from: z */
    public static final Property<C3440i, PointF> f11495z = new C3434c(PointF.class, "bottomRight");

    /* renamed from: A */
    public static final Property<View, PointF> f11490A = new C3435d(PointF.class, "bottomRight");

    /* renamed from: B */
    public static final Property<View, PointF> f11491B = new C3436e(PointF.class, "topLeft");

    /* renamed from: C */
    public static final Property<View, PointF> f11492C = new C3437f(PointF.class, "position");

    /* renamed from: l1.b$a */
    /* loaded from: classes-dex2jar.jar:l1/b$a.class */
    public static final class C3432a extends Property<Drawable, PointF> {

        /* renamed from: a */
        public Rect f11496a = new Rect();

        public C3432a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f11496a);
            Rect rect = this.f11496a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        public void set(Drawable drawable, PointF pointF) {
            Drawable drawable2 = drawable;
            PointF pointF2 = pointF;
            drawable2.copyBounds(this.f11496a);
            this.f11496a.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
            drawable2.setBounds(this.f11496a);
        }
    }

    /* renamed from: l1.b$b */
    /* loaded from: classes-dex2jar.jar:l1/b$b.class */
    public static final class C3433b extends Property<C3440i, PointF> {
        public C3433b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(C3440i c3440i) {
            return null;
        }

        @Override // android.util.Property
        public void set(C3440i c3440i, PointF pointF) {
            C3440i c3440i2 = c3440i;
            PointF pointF2 = pointF;
            Objects.requireNonNull(c3440i2);
            c3440i2.f11499a = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            c3440i2.f11500b = round;
            int i = c3440i2.f11504f + 1;
            c3440i2.f11504f = i;
            if (i == c3440i2.f11505g) {
                C3469q.m2244b(c3440i2.f11503e, c3440i2.f11499a, round, c3440i2.f11501c, c3440i2.f11502d);
                c3440i2.f11504f = 0;
                c3440i2.f11505g = 0;
            }
        }
    }

    /* renamed from: l1.b$c */
    /* loaded from: classes-dex2jar.jar:l1/b$c.class */
    public static final class C3434c extends Property<C3440i, PointF> {
        public C3434c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(C3440i c3440i) {
            return null;
        }

        @Override // android.util.Property
        public void set(C3440i c3440i, PointF pointF) {
            C3440i c3440i2 = c3440i;
            PointF pointF2 = pointF;
            Objects.requireNonNull(c3440i2);
            c3440i2.f11501c = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            c3440i2.f11502d = round;
            int i = c3440i2.f11505g + 1;
            c3440i2.f11505g = i;
            if (c3440i2.f11504f == i) {
                C3469q.m2244b(c3440i2.f11503e, c3440i2.f11499a, c3440i2.f11500b, c3440i2.f11501c, round);
                c3440i2.f11504f = 0;
                c3440i2.f11505g = 0;
            }
        }
    }

    /* renamed from: l1.b$d */
    /* loaded from: classes-dex2jar.jar:l1/b$d.class */
    public static final class C3435d extends Property<View, PointF> {
        public C3435d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            C3469q.m2244b(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    }

    /* renamed from: l1.b$e */
    /* loaded from: classes-dex2jar.jar:l1/b$e.class */
    public static final class C3436e extends Property<View, PointF> {
        public C3436e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            C3469q.m2244b(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    /* renamed from: l1.b$f */
    /* loaded from: classes-dex2jar.jar:l1/b$f.class */
    public static final class C3437f extends Property<View, PointF> {
        public C3437f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int round = Math.round(pointF2.x);
            int round2 = Math.round(pointF2.y);
            C3469q.m2244b(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
        }
    }

    /* renamed from: l1.b$g */
    /* loaded from: classes-dex2jar.jar:l1/b$g.class */
    public class C3438g extends AnimatorListenerAdapter {
        private C3440i mViewBounds;

        public C3438g(C3431b c3431b, C3440i c3440i) {
            this.mViewBounds = c3440i;
        }
    }

    /* renamed from: l1.b$h */
    /* loaded from: classes-dex2jar.jar:l1/b$h.class */
    public class C3439h extends C3458j {

        /* renamed from: a */
        public boolean f11497a = false;

        /* renamed from: b */
        public final /* synthetic */ ViewGroup f11498b;

        public C3439h(C3431b c3431b, ViewGroup viewGroup) {
            this.f11498b = viewGroup;
        }

        @Override // p153l1.C3458j, p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: a */
        public void mo2236a(AbstractC3451g abstractC3451g) {
            C3467o.m2246a(this.f11498b, false);
            this.f11497a = true;
        }

        @Override // p153l1.C3458j, p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: c */
        public void mo2234c(AbstractC3451g abstractC3451g) {
            C3467o.m2246a(this.f11498b, false);
        }

        @Override // p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: d */
        public void mo2233d(AbstractC3451g abstractC3451g) {
            if (!this.f11497a) {
                C3467o.m2246a(this.f11498b, false);
            }
            abstractC3451g.mo2251v(this);
        }

        @Override // p153l1.C3458j, p153l1.AbstractC3451g.AbstractC3455d
        /* renamed from: e */
        public void mo2232e(AbstractC3451g abstractC3451g) {
            C3467o.m2246a(this.f11498b, true);
        }
    }

    /* renamed from: l1.b$i */
    /* loaded from: classes-dex2jar.jar:l1/b$i.class */
    public static class C3440i {

        /* renamed from: a */
        public int f11499a;

        /* renamed from: b */
        public int f11500b;

        /* renamed from: c */
        public int f11501c;

        /* renamed from: d */
        public int f11502d;

        /* renamed from: e */
        public View f11503e;

        /* renamed from: f */
        public int f11504f;

        /* renamed from: g */
        public int f11505g;

        public C3440i(View view) {
            this.f11503e = view;
        }
    }

    static {
        new C3432a(PointF.class, "boundsOrigin");
    }

    /* renamed from: H */
    public final void m2301H(C3466n c3466n) {
        View view = c3466n.f11567b;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        if (!C3589v.C3596g.m2058c(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        c3466n.f11566a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        c3466n.f11566a.put("android:changeBounds:parent", c3466n.f11567b.getParent());
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: d */
    public void mo2240d(C3466n c3466n) {
        m2301H(c3466n);
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: g */
    public void mo2255g(C3466n c3466n) {
        m2301H(c3466n);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x010c, code lost:
        if (r0 != r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0134, code lost:
        if (r0 != null) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0275 A[RETURN] */
    @Override // p153l1.AbstractC3451g
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator mo2239k(android.view.ViewGroup r7, p153l1.C3466n r8, p153l1.C3466n r9) {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p153l1.C3431b.mo2239k(android.view.ViewGroup, l1.n, l1.n):android.animation.Animator");
    }

    @Override // p153l1.AbstractC3451g
    /* renamed from: p */
    public String[] mo2238p() {
        return f11493x;
    }
}
