package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import androidx.core.content.res.C0810g;
import androidx.core.view.C0926v;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds.class */
public class ChangeBounds extends Transition {

    /* renamed from: a */
    private static final String[] f10651a = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: k */
    private static final Property<Drawable, PointF> f10652k = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: androidx.transition.ChangeBounds.1

        /* renamed from: a */
        private Rect f10662a = new Rect();

        @Override // android.util.Property
        public final /* synthetic */ PointF get(Drawable drawable) {
            drawable.copyBounds(this.f10662a);
            return new PointF(this.f10662a.left, this.f10662a.top);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(Drawable drawable, PointF pointF) {
            Drawable drawable2 = drawable;
            PointF pointF2 = pointF;
            drawable2.copyBounds(this.f10662a);
            this.f10662a.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
            drawable2.setBounds(this.f10662a);
        }
    };

    /* renamed from: l */
    private static final Property<C2822a, PointF> f10653l = new Property<C2822a, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.3
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(C2822a c2822a) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(C2822a c2822a, PointF pointF) {
            C2822a c2822a2 = c2822a;
            PointF pointF2 = pointF;
            c2822a2.f10681a = Math.round(pointF2.x);
            c2822a2.f10682b = Math.round(pointF2.y);
            c2822a2.f10685e++;
            if (c2822a2.f10685e == c2822a2.f10686f) {
                c2822a2.m39837a();
            }
        }
    };

    /* renamed from: m */
    private static final Property<C2822a, PointF> f10654m = new Property<C2822a, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.4
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(C2822a c2822a) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(C2822a c2822a, PointF pointF) {
            C2822a c2822a2 = c2822a;
            PointF pointF2 = pointF;
            c2822a2.f10683c = Math.round(pointF2.x);
            c2822a2.f10684d = Math.round(pointF2.y);
            c2822a2.f10686f++;
            if (c2822a2.f10685e == c2822a2.f10686f) {
                c2822a2.m39837a();
            }
        }
    };

    /* renamed from: n */
    private static final Property<View, PointF> f10655n = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.5
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            C2867ai.m39741a(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    };

    /* renamed from: o */
    private static final Property<View, PointF> f10656o = new Property<View, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.6
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            C2867ai.m39741a(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    };

    /* renamed from: p */
    private static final Property<View, PointF> f10657p = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.transition.ChangeBounds.7
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            int round = Math.round(pointF2.x);
            int round2 = Math.round(pointF2.y);
            C2867ai.m39741a(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
        }
    };

    /* renamed from: t */
    private static C2903p f10658t = new C2903p();

    /* renamed from: q */
    private int[] f10659q;

    /* renamed from: r */
    private boolean f10660r;

    /* renamed from: s */
    private boolean f10661s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.ChangeBounds$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$a.class */
    public static final class C2822a {

        /* renamed from: a */
        int f10681a;

        /* renamed from: b */
        int f10682b;

        /* renamed from: c */
        int f10683c;

        /* renamed from: d */
        int f10684d;

        /* renamed from: e */
        int f10685e;

        /* renamed from: f */
        int f10686f;

        /* renamed from: g */
        private View f10687g;

        C2822a(View view) {
            this.f10687g = view;
        }

        /* renamed from: a */
        final void m39837a() {
            C2867ai.m39741a(this.f10687g, this.f10681a, this.f10682b, this.f10683c, this.f10684d);
            this.f10685e = 0;
            this.f10686f = 0;
        }
    }

    public ChangeBounds() {
        this.f10659q = new int[2];
        this.f10660r = false;
        this.f10661s = false;
    }

    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10659q = new int[2];
        this.f10660r = false;
        this.f10661s = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10910d);
        boolean m44453a = C0810g.m44453a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        this.f10660r = m44453a;
    }

    /* renamed from: d */
    private void m39838d(C2914x c2914x) {
        View view = c2914x.f10934b;
        if (!C0926v.m44157B(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        c2914x.f10933a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        c2914x.f10933a.put("android:changeBounds:parent", c2914x.f10934b.getParent());
        if (this.f10661s) {
            c2914x.f10934b.getLocationInWindow(this.f10659q);
            c2914x.f10933a.put("android:changeBounds:windowX", Integer.valueOf(this.f10659q[0]));
            c2914x.f10933a.put("android:changeBounds:windowY", Integer.valueOf(this.f10659q[1]));
        }
        if (!this.f10660r) {
            return;
        }
        c2914x.f10933a.put("android:changeBounds:clip", C0926v.m44155D(view));
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0148, code lost:
        if (r0 != r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0172, code lost:
        if (r0 != null) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03da A[ORIG_RETURN, RETURN] */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo10514a(final android.view.ViewGroup r12, androidx.transition.C2914x r13, androidx.transition.C2914x r14) {
        /*
            Method dump skipped, instructions count: 1149
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeBounds.mo10514a(android.view.ViewGroup, androidx.transition.x, androidx.transition.x):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        m39838d(c2914x);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo39768a() {
        return f10651a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        m39838d(c2914x);
    }
}
