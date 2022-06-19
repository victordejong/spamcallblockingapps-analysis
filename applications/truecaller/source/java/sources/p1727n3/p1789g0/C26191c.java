package p1727n3.p1789g0;

import android.animation.AnimatorListenerAdapter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.g0.c */
/* loaded from: classes-dex2jar.jar:n3/g0/c.class */
public class C26191c extends AbstractC26214m {

    /* renamed from: y */
    public int[] f73044y = new int[2];

    /* renamed from: z */
    public static final String[] f73043z = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: A */
    public static final Property<Drawable, PointF> f73036A = new C26192a(PointF.class, "boundsOrigin");

    /* renamed from: B */
    public static final Property<C26199i, PointF> f73037B = new C26193b(PointF.class, "topLeft");

    /* renamed from: C */
    public static final Property<C26199i, PointF> f73038C = new C26194c(PointF.class, "bottomRight");

    /* renamed from: D */
    public static final Property<View, PointF> f73039D = new C26195d(PointF.class, "bottomRight");

    /* renamed from: E */
    public static final Property<View, PointF> f73040E = new C26196e(PointF.class, "topLeft");

    /* renamed from: J */
    public static final Property<View, PointF> f73041J = new C26197f(PointF.class, "position");

    /* renamed from: K */
    public static C26209i f73042K = new C26209i();

    /* renamed from: n3.g0.c$a */
    /* loaded from: classes-dex2jar.jar:n3/g0/c$a.class */
    public static final class C26192a extends Property<Drawable, PointF> {

        /* renamed from: a */
        public Rect f73045a = new Rect();

        public C26192a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f73045a);
            Rect rect = this.f73045a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        public void set(Drawable drawable, PointF pointF) {
            Drawable drawable2 = drawable;
            PointF pointF2 = pointF;
            drawable2.copyBounds(this.f73045a);
            this.f73045a.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
            drawable2.setBounds(this.f73045a);
        }
    }

    /* renamed from: n3.g0.c$b */
    /* loaded from: classes-dex2jar.jar:n3/g0/c$b.class */
    public static final class C26193b extends Property<C26199i, PointF> {
        public C26193b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(C26199i c26199i) {
            return null;
        }

        @Override // android.util.Property
        public void set(C26199i c26199i, PointF pointF) {
            C26199i c26199i2 = c26199i;
            PointF pointF2 = pointF;
            Objects.requireNonNull(c26199i2);
            c26199i2.f73047a = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            c26199i2.f73048b = round;
            int i = c26199i2.f73052f + 1;
            c26199i2.f73052f = i;
            if (i == c26199i2.f73053g) {
                C26233z.m2273b(c26199i2.f73051e, c26199i2.f73047a, round, c26199i2.f73049c, c26199i2.f73050d);
                c26199i2.f73052f = 0;
                c26199i2.f73053g = 0;
            }
        }
    }

    /* renamed from: n3.g0.c$c */
    /* loaded from: classes-dex2jar.jar:n3/g0/c$c.class */
    public static final class C26194c extends Property<C26199i, PointF> {
        public C26194c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public /* bridge */ /* synthetic */ PointF get(C26199i c26199i) {
            return null;
        }

        @Override // android.util.Property
        public void set(C26199i c26199i, PointF pointF) {
            C26199i c26199i2 = c26199i;
            PointF pointF2 = pointF;
            Objects.requireNonNull(c26199i2);
            c26199i2.f73049c = Math.round(pointF2.x);
            int round = Math.round(pointF2.y);
            c26199i2.f73050d = round;
            int i = c26199i2.f73053g + 1;
            c26199i2.f73053g = i;
            if (c26199i2.f73052f == i) {
                C26233z.m2273b(c26199i2.f73051e, c26199i2.f73047a, c26199i2.f73048b, c26199i2.f73049c, round);
                c26199i2.f73052f = 0;
                c26199i2.f73053g = 0;
            }
        }
    }

    /* renamed from: n3.g0.c$d */
    /* loaded from: classes-dex2jar.jar:n3/g0/c$d.class */
    public static final class C26195d extends Property<View, PointF> {
        public C26195d(Class cls, String str) {
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
            C26233z.m2273b(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    }

    /* renamed from: n3.g0.c$e */
    /* loaded from: classes-dex2jar.jar:n3/g0/c$e.class */
    public static final class C26196e extends Property<View, PointF> {
        public C26196e(Class cls, String str) {
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
            C26233z.m2273b(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    }

    /* renamed from: n3.g0.c$f */
    /* loaded from: classes-dex2jar.jar:n3/g0/c$f.class */
    public static final class C26197f extends Property<View, PointF> {
        public C26197f(Class cls, String str) {
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
            C26233z.m2273b(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
        }
    }

    /* renamed from: n3.g0.c$g */
    /* loaded from: classes-dex2jar.jar:n3/g0/c$g.class */
    public class C26198g extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ C26199i f73046a;
        private C26199i mViewBounds;

        public C26198g(C26191c c26191c, C26199i c26199i) {
            this.f73046a = c26199i;
            this.mViewBounds = c26199i;
        }
    }

    /* renamed from: n3.g0.c$i */
    /* loaded from: classes-dex2jar.jar:n3/g0/c$i.class */
    public static class C26199i {

        /* renamed from: a */
        public int f73047a;

        /* renamed from: b */
        public int f73048b;

        /* renamed from: c */
        public int f73049c;

        /* renamed from: d */
        public int f73050d;

        /* renamed from: e */
        public View f73051e;

        /* renamed from: f */
        public int f73052f;

        /* renamed from: g */
        public int f73053g;

        public C26199i(View view) {
            this.f73051e = view;
        }
    }

    /* renamed from: L */
    public final void m2560L(C26227u c26227u) {
        View view = c26227u.f73124b;
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        c26227u.f73123a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        c26227u.f73123a.put("android:changeBounds:parent", c26227u.f73124b.getParent());
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: f */
    public void mo2503f(C26227u c26227u) {
        m2560L(c26227u);
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: i */
    public void mo2501i(C26227u c26227u) {
        m2560L(c26227u);
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
    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator mo2535m(android.view.ViewGroup r7, p1727n3.p1789g0.C26227u r8, p1727n3.p1789g0.C26227u r9) {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26191c.mo2535m(android.view.ViewGroup, n3.g0.u, n3.g0.u):android.animation.Animator");
    }

    @Override // p1727n3.p1789g0.AbstractC26214m
    /* renamed from: s */
    public String[] mo2530s() {
        return f73043z;
    }
}
