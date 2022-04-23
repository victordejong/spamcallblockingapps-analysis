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
import androidx.core.content.res.g;
import androidx.core.view.v;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds.class */
public class ChangeBounds extends Transition {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5681a = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property<Drawable, PointF> k = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: androidx.transition.ChangeBounds.1

        /* renamed from: a  reason: collision with root package name */
        private Rect f5682a = new Rect();

        @Override // android.util.Property
        public final /* synthetic */ PointF get(Drawable drawable) {
            drawable.copyBounds(this.f5682a);
            return new PointF(this.f5682a.left, this.f5682a.top);
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(Drawable drawable, PointF pointF) {
            Drawable drawable2 = drawable;
            PointF pointF2 = pointF;
            drawable2.copyBounds(this.f5682a);
            this.f5682a.offsetTo(Math.round(pointF2.x), Math.round(pointF2.y));
            drawable2.setBounds(this.f5682a);
        }
    };
    private static final Property<a, PointF> l = new Property<a, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.3
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(a aVar) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(a aVar, PointF pointF) {
            a aVar2 = aVar;
            PointF pointF2 = pointF;
            aVar2.f5696a = Math.round(pointF2.x);
            aVar2.f5697b = Math.round(pointF2.y);
            aVar2.e++;
            if (aVar2.e == aVar2.f) {
                aVar2.a();
            }
        }
    };
    private static final Property<a, PointF> m = new Property<a, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.4
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(a aVar) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(a aVar, PointF pointF) {
            a aVar2 = aVar;
            PointF pointF2 = pointF;
            aVar2.f5698c = Math.round(pointF2.x);
            aVar2.f5699d = Math.round(pointF2.y);
            aVar2.f++;
            if (aVar2.e == aVar2.f) {
                aVar2.a();
            }
        }
    };
    private static final Property<View, PointF> n = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.5
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            ai.a(view2, view2.getLeft(), view2.getTop(), Math.round(pointF2.x), Math.round(pointF2.y));
        }
    };
    private static final Property<View, PointF> o = new Property<View, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.6
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(View view, PointF pointF) {
            View view2 = view;
            PointF pointF2 = pointF;
            ai.a(view2, Math.round(pointF2.x), Math.round(pointF2.y), view2.getRight(), view2.getBottom());
        }
    };
    private static final Property<View, PointF> p = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.transition.ChangeBounds.7
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
            ai.a(view2, round, round2, view2.getWidth() + round, view2.getHeight() + round2);
        }
    };
    private static p t = new p();
    private int[] q;
    private boolean r;
    private boolean s;

    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f5696a;

        /* renamed from: b  reason: collision with root package name */
        int f5697b;

        /* renamed from: c  reason: collision with root package name */
        int f5698c;

        /* renamed from: d  reason: collision with root package name */
        int f5699d;
        int e;
        int f;
        private View g;

        a(View view) {
            this.g = view;
        }

        final void a() {
            ai.a(this.g, this.f5696a, this.f5697b, this.f5698c, this.f5699d);
            this.e = 0;
            this.f = 0;
        }
    }

    public ChangeBounds() {
        this.q = new int[2];
        this.r = false;
        this.s = false;
    }

    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.q = new int[2];
        this.r = false;
        this.s = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.f5837d);
        boolean a2 = g.a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        this.r = a2;
    }

    private void d(x xVar) {
        View view = xVar.f5853b;
        if (v.B(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            xVar.f5852a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            xVar.f5852a.put("android:changeBounds:parent", xVar.f5853b.getParent());
            if (this.s) {
                xVar.f5853b.getLocationInWindow(this.q);
                xVar.f5852a.put("android:changeBounds:windowX", Integer.valueOf(this.q[0]));
                xVar.f5852a.put("android:changeBounds:windowY", Integer.valueOf(this.q[1]));
            }
            if (this.r) {
                xVar.f5852a.put("android:changeBounds:clip", v.D(view));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0148, code lost:
        if (r0 != r0) goto L_0x014b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0172, code lost:
        if (r0 != null) goto L_0x0175;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03da A[ORIG_RETURN, RETURN] */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator a(final android.view.ViewGroup r12, androidx.transition.x r13, androidx.transition.x r14) {
        /*
            Method dump skipped, instructions count: 1149
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeBounds.a(android.view.ViewGroup, androidx.transition.x, androidx.transition.x):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public final void a(x xVar) {
        d(xVar);
    }

    @Override // androidx.transition.Transition
    public final String[] a() {
        return f5681a;
    }

    @Override // androidx.transition.Transition
    public final void b(x xVar) {
        d(xVar);
    }
}
