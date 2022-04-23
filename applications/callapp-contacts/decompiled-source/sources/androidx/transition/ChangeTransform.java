package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.g;
import androidx.core.view.v;
import androidx.transition.o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform.class */
public class ChangeTransform extends Transition {
    private static final String[] k = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};
    private static final Property<b, float[]> l = new Property<b, float[]>(float[].class, "nonTranslations") { // from class: androidx.transition.ChangeTransform.1
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ float[] get(b bVar) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(b bVar, float[] fArr) {
            b bVar2 = bVar;
            float[] fArr2 = fArr;
            System.arraycopy(fArr2, 0, bVar2.f5714b, 0, fArr2.length);
            bVar2.a();
        }
    };
    private static final Property<b, PointF> m = new Property<b, PointF>(PointF.class, "translations") { // from class: androidx.transition.ChangeTransform.2
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(b bVar) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(b bVar, PointF pointF) {
            b bVar2 = bVar;
            PointF pointF2 = pointF;
            bVar2.f5715c = pointF2.x;
            bVar2.f5716d = pointF2.y;
            bVar2.a();
        }
    };
    private static final boolean n;

    /* renamed from: a  reason: collision with root package name */
    boolean f5706a;
    private boolean o;
    private Matrix p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$a.class */
    public static final class a extends t {

        /* renamed from: a  reason: collision with root package name */
        private View f5711a;

        /* renamed from: b  reason: collision with root package name */
        private f f5712b;

        a(View view, f fVar) {
            this.f5711a = view;
            this.f5712b = fVar;
        }

        @Override // androidx.transition.t, androidx.transition.Transition.c
        public final void a(Transition transition) {
            transition.b(this);
            View view = this.f5711a;
            if (Build.VERSION.SDK_INT == 28) {
                if (!h.f5812c) {
                    try {
                        h.a();
                        Method declaredMethod = h.f5810a.getDeclaredMethod("removeGhost", View.class);
                        h.f5811b = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException e) {
                    }
                    h.f5812c = true;
                }
                if (h.f5811b != null) {
                    try {
                        h.f5811b.invoke(null, view);
                    } catch (IllegalAccessException e2) {
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException(e3.getCause());
                    }
                }
            } else {
                i.a(view);
            }
            this.f5711a.setTag(o.a.transition_transform, null);
            this.f5711a.setTag(o.a.parent_matrix, null);
        }

        @Override // androidx.transition.t, androidx.transition.Transition.c
        public final void b() {
            this.f5712b.setVisibility(4);
        }

        @Override // androidx.transition.t, androidx.transition.Transition.c
        public final void c() {
            this.f5712b.setVisibility(0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final Matrix f5713a = new Matrix();

        /* renamed from: b  reason: collision with root package name */
        final float[] f5714b;

        /* renamed from: c  reason: collision with root package name */
        float f5715c;

        /* renamed from: d  reason: collision with root package name */
        float f5716d;
        private final View e;

        b(View view, float[] fArr) {
            this.e = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.f5714b = fArr2;
            this.f5715c = fArr2[2];
            this.f5716d = fArr2[5];
            a();
        }

        final void a() {
            float[] fArr = this.f5714b;
            fArr[2] = this.f5715c;
            fArr[5] = this.f5716d;
            this.f5713a.setValues(fArr);
            ai.c(this.e, this.f5713a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final float f5717a;

        /* renamed from: b  reason: collision with root package name */
        final float f5718b;

        /* renamed from: c  reason: collision with root package name */
        final float f5719c;

        /* renamed from: d  reason: collision with root package name */
        final float f5720d;
        final float e;
        final float f;
        final float g;
        final float h;

        c(View view) {
            this.f5717a = view.getTranslationX();
            this.f5718b = view.getTranslationY();
            this.f5719c = v.o(view);
            this.f5720d = view.getScaleX();
            this.e = view.getScaleY();
            this.f = view.getRotationX();
            this.g = view.getRotationY();
            this.h = view.getRotation();
        }

        public final void a(View view) {
            ChangeTransform.a(view, this.f5717a, this.f5718b, this.f5719c, this.f5720d, this.e, this.f, this.g, this.h);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.f5717a == this.f5717a && cVar.f5718b == this.f5718b && cVar.f5719c == this.f5719c && cVar.f5720d == this.f5720d && cVar.e == this.e && cVar.f == this.f && cVar.g == this.g && cVar.h == this.h;
        }

        public final int hashCode() {
            float f = this.f5717a;
            int i = 0;
            int floatToIntBits = f != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f) : 0;
            float f2 = this.f5718b;
            int floatToIntBits2 = f2 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f2) : 0;
            float f3 = this.f5719c;
            int floatToIntBits3 = f3 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f3) : 0;
            float f4 = this.f5720d;
            int floatToIntBits4 = f4 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f4) : 0;
            float f5 = this.e;
            int floatToIntBits5 = f5 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f5) : 0;
            float f6 = this.f;
            int floatToIntBits6 = f6 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f6) : 0;
            float f7 = this.g;
            int floatToIntBits7 = f7 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f7) : 0;
            float f8 = this.h;
            if (f8 != BitmapDescriptorFactory.HUE_RED) {
                i = Float.floatToIntBits(f8);
            }
            return (((((((((((((floatToIntBits * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + floatToIntBits6) * 31) + floatToIntBits7) * 31) + i;
        }
    }

    static {
        n = Build.VERSION.SDK_INT >= 21;
    }

    public ChangeTransform() {
        this.f5706a = true;
        this.o = true;
        this.p = new Matrix();
    }

    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5706a = true;
        this.o = true;
        this.p = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.g);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f5706a = g.a(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.o = g.a(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }

    static void a(View view) {
        a(view, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    static void a(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        v.b(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    private void b(ViewGroup viewGroup, x xVar, x xVar2) {
        View view = xVar2.f5853b;
        Matrix matrix = new Matrix((Matrix) xVar2.f5852a.get("android:changeTransform:parentMatrix"));
        ai.b(viewGroup, matrix);
        f a2 = Build.VERSION.SDK_INT == 28 ? h.a(view, viewGroup, matrix) : i.a(view, viewGroup, matrix);
        if (a2 != null) {
            a2.a((ViewGroup) xVar.f5852a.get("android:changeTransform:parent"), xVar.f5853b);
            Transition transition = this;
            while (transition.g != null) {
                transition = transition.g;
            }
            transition.a(new a(view, a2));
            if (n) {
                if (xVar.f5853b != xVar2.f5853b) {
                    ai.a(xVar.f5853b, (float) BitmapDescriptorFactory.HUE_RED);
                }
                ai.a(view, 1.0f);
            }
        }
    }

    private void d(x xVar) {
        View view = xVar.f5853b;
        if (view.getVisibility() != 8) {
            xVar.f5852a.put("android:changeTransform:parent", view.getParent());
            xVar.f5852a.put("android:changeTransform:transforms", new c(view));
            Matrix matrix = view.getMatrix();
            xVar.f5852a.put("android:changeTransform:matrix", (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
            if (this.o) {
                Matrix matrix2 = new Matrix();
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                ai.a(viewGroup, matrix2);
                matrix2.preTranslate(-viewGroup.getScrollX(), -viewGroup.getScrollY());
                xVar.f5852a.put("android:changeTransform:parentMatrix", matrix2);
                xVar.f5852a.put("android:changeTransform:intermediateMatrix", view.getTag(o.a.transition_transform));
                xVar.f5852a.put("android:changeTransform:intermediateParentMatrix", view.getTag(o.a.parent_matrix));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0091, code lost:
        r17 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02ae  */
    /* JADX WARN: Type inference failed for: r2v4, types: [float[], java.lang.Object[]] */
    @Override // androidx.transition.Transition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator a(android.view.ViewGroup r10, androidx.transition.x r11, androidx.transition.x r12) {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.a(android.view.ViewGroup, androidx.transition.x, androidx.transition.x):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    public final void a(x xVar) {
        d(xVar);
        if (!n) {
            ((ViewGroup) xVar.f5853b.getParent()).startViewTransition(xVar.f5853b);
        }
    }

    @Override // androidx.transition.Transition
    public final String[] a() {
        return k;
    }

    @Override // androidx.transition.Transition
    public final void b(x xVar) {
        d(xVar);
    }
}
