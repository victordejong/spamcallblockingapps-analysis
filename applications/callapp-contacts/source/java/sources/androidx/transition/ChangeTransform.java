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
import androidx.core.content.res.C0810g;
import androidx.core.view.C0926v;
import androidx.transition.C2901o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform.class */
public class ChangeTransform extends Transition {

    /* renamed from: k */
    private static final String[] f10696k = {"android:changeTransform:matrix", "android:changeTransform:transforms", "android:changeTransform:parentMatrix"};

    /* renamed from: l */
    private static final Property<C2831b, float[]> f10697l = new Property<C2831b, float[]>(float[].class, "nonTranslations") { // from class: androidx.transition.ChangeTransform.1
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ float[] get(C2831b c2831b) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(C2831b c2831b, float[] fArr) {
            C2831b c2831b2 = c2831b;
            float[] fArr2 = fArr;
            System.arraycopy(fArr2, 0, c2831b2.f10714b, 0, fArr2.length);
            c2831b2.m39828a();
        }
    };

    /* renamed from: m */
    private static final Property<C2831b, PointF> f10698m = new Property<C2831b, PointF>(PointF.class, "translations") { // from class: androidx.transition.ChangeTransform.2
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ PointF get(C2831b c2831b) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(C2831b c2831b, PointF pointF) {
            C2831b c2831b2 = c2831b;
            PointF pointF2 = pointF;
            c2831b2.f10715c = pointF2.x;
            c2831b2.f10716d = pointF2.y;
            c2831b2.m39828a();
        }
    };

    /* renamed from: n */
    private static final boolean f10699n;

    /* renamed from: a */
    boolean f10700a;

    /* renamed from: o */
    private boolean f10701o;

    /* renamed from: p */
    private Matrix f10702p;

    /* renamed from: androidx.transition.ChangeTransform$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$a.class */
    public static final class C2830a extends C2907t {

        /* renamed from: a */
        private View f10711a;

        /* renamed from: b */
        private AbstractC2890f f10712b;

        C2830a(View view, AbstractC2890f abstractC2890f) {
            this.f10711a = view;
            this.f10712b = abstractC2890f;
        }

        @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
        /* renamed from: a */
        public final void mo39671a(Transition transition) {
            transition.mo39779b(this);
            View view = this.f10711a;
            if (Build.VERSION.SDK_INT == 28) {
                if (!C2892h.f10876c) {
                    try {
                        C2892h.m39694a();
                        Method declaredMethod = C2892h.f10874a.getDeclaredMethod("removeGhost", View.class);
                        C2892h.f10875b = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException e) {
                    }
                    C2892h.f10876c = true;
                }
                if (C2892h.f10875b != null) {
                    try {
                        C2892h.f10875b.invoke(null, view);
                    } catch (IllegalAccessException e2) {
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException(e3.getCause());
                    }
                }
            } else {
                C2893i.m39692a(view);
            }
            this.f10711a.setTag(C2901o.C2902a.transition_transform, null);
            this.f10711a.setTag(C2901o.C2902a.parent_matrix, null);
        }

        @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
        /* renamed from: b */
        public final void mo39670b() {
            this.f10712b.setVisibility(4);
        }

        @Override // androidx.transition.C2907t, androidx.transition.Transition.AbstractC2849c
        /* renamed from: c */
        public final void mo39668c() {
            this.f10712b.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.ChangeTransform$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$b.class */
    public static final class C2831b {

        /* renamed from: a */
        final Matrix f10713a = new Matrix();

        /* renamed from: b */
        final float[] f10714b;

        /* renamed from: c */
        float f10715c;

        /* renamed from: d */
        float f10716d;

        /* renamed from: e */
        private final View f10717e;

        C2831b(View view, float[] fArr) {
            this.f10717e = view;
            float[] fArr2 = (float[]) fArr.clone();
            this.f10714b = fArr2;
            this.f10715c = fArr2[2];
            this.f10716d = fArr2[5];
            m39828a();
        }

        /* renamed from: a */
        final void m39828a() {
            float[] fArr = this.f10714b;
            fArr[2] = this.f10715c;
            fArr[5] = this.f10716d;
            this.f10713a.setValues(fArr);
            C2867ai.m39736c(this.f10717e, this.f10713a);
        }
    }

    /* renamed from: androidx.transition.ChangeTransform$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$c.class */
    public static final class C2832c {

        /* renamed from: a */
        final float f10718a;

        /* renamed from: b */
        final float f10719b;

        /* renamed from: c */
        final float f10720c;

        /* renamed from: d */
        final float f10721d;

        /* renamed from: e */
        final float f10722e;

        /* renamed from: f */
        final float f10723f;

        /* renamed from: g */
        final float f10724g;

        /* renamed from: h */
        final float f10725h;

        C2832c(View view) {
            this.f10718a = view.getTranslationX();
            this.f10719b = view.getTranslationY();
            this.f10720c = C0926v.m44084o(view);
            this.f10721d = view.getScaleX();
            this.f10722e = view.getScaleY();
            this.f10723f = view.getRotationX();
            this.f10724g = view.getRotationY();
            this.f10725h = view.getRotation();
        }

        /* renamed from: a */
        public final void m39827a(View view) {
            ChangeTransform.m39832a(view, this.f10718a, this.f10719b, this.f10720c, this.f10721d, this.f10722e, this.f10723f, this.f10724g, this.f10725h);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C2832c)) {
                return false;
            }
            C2832c c2832c = (C2832c) obj;
            return c2832c.f10718a == this.f10718a && c2832c.f10719b == this.f10719b && c2832c.f10720c == this.f10720c && c2832c.f10721d == this.f10721d && c2832c.f10722e == this.f10722e && c2832c.f10723f == this.f10723f && c2832c.f10724g == this.f10724g && c2832c.f10725h == this.f10725h;
        }

        public final int hashCode() {
            float f = this.f10718a;
            int i = 0;
            int floatToIntBits = f != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f) : 0;
            float f2 = this.f10719b;
            int floatToIntBits2 = f2 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f2) : 0;
            float f3 = this.f10720c;
            int floatToIntBits3 = f3 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f3) : 0;
            float f4 = this.f10721d;
            int floatToIntBits4 = f4 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f4) : 0;
            float f5 = this.f10722e;
            int floatToIntBits5 = f5 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f5) : 0;
            float f6 = this.f10723f;
            int floatToIntBits6 = f6 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f6) : 0;
            float f7 = this.f10724g;
            int floatToIntBits7 = f7 != BitmapDescriptorFactory.HUE_RED ? Float.floatToIntBits(f7) : 0;
            float f8 = this.f10725h;
            if (f8 != BitmapDescriptorFactory.HUE_RED) {
                i = Float.floatToIntBits(f8);
            }
            return (((((((((((((floatToIntBits * 31) + floatToIntBits2) * 31) + floatToIntBits3) * 31) + floatToIntBits4) * 31) + floatToIntBits5) * 31) + floatToIntBits6) * 31) + floatToIntBits7) * 31) + i;
        }
    }

    static {
        f10699n = Build.VERSION.SDK_INT >= 21;
    }

    public ChangeTransform() {
        this.f10700a = true;
        this.f10701o = true;
        this.f10702p = new Matrix();
    }

    public ChangeTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10700a = true;
        this.f10701o = true;
        this.f10702p = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10913g);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        this.f10700a = C0810g.m44453a(obtainStyledAttributes, xmlPullParser, "reparentWithOverlay", 1, true);
        this.f10701o = C0810g.m44453a(obtainStyledAttributes, xmlPullParser, "reparent", 0, true);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    static void m39833a(View view) {
        m39832a(view, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
    }

    /* renamed from: a */
    static void m39832a(View view, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        view.setTranslationX(f);
        view.setTranslationY(f2);
        C0926v.m44111b(view, f3);
        view.setScaleX(f4);
        view.setScaleY(f5);
        view.setRotationX(f6);
        view.setRotationY(f7);
        view.setRotation(f8);
    }

    /* renamed from: b */
    private void m39831b(ViewGroup viewGroup, C2914x c2914x, C2914x c2914x2) {
        Transition transition;
        View view = c2914x2.f10934b;
        Matrix matrix = new Matrix((Matrix) c2914x2.f10933a.get("android:changeTransform:parentMatrix"));
        C2867ai.m39738b(viewGroup, matrix);
        C2893i m39693a = Build.VERSION.SDK_INT == 28 ? C2892h.m39693a(view, viewGroup, matrix) : C2893i.m39690a(view, viewGroup, matrix);
        if (m39693a == null) {
            return;
        }
        m39693a.mo39688a((ViewGroup) c2914x.f10933a.get("android:changeTransform:parent"), c2914x.f10934b);
        Transition transition2 = this;
        while (true) {
            transition = transition2;
            if (transition.f10762g == null) {
                break;
            }
            transition2 = transition.f10762g;
        }
        transition.mo39786a(new C2830a(view, m39693a));
        if (!f10699n) {
            return;
        }
        if (c2914x.f10934b != c2914x2.f10934b) {
            C2867ai.m39743a(c2914x.f10934b, (float) BitmapDescriptorFactory.HUE_RED);
        }
        C2867ai.m39743a(view, 1.0f);
    }

    /* renamed from: d */
    private void m39830d(C2914x c2914x) {
        View view = c2914x.f10934b;
        if (view.getVisibility() == 8) {
            return;
        }
        c2914x.f10933a.put("android:changeTransform:parent", view.getParent());
        c2914x.f10933a.put("android:changeTransform:transforms", new C2832c(view));
        Matrix matrix = view.getMatrix();
        c2914x.f10933a.put("android:changeTransform:matrix", (matrix == null || matrix.isIdentity()) ? null : new Matrix(matrix));
        if (!this.f10701o) {
            return;
        }
        Matrix matrix2 = new Matrix();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        C2867ai.m39740a(viewGroup, matrix2);
        matrix2.preTranslate(-viewGroup.getScrollX(), -viewGroup.getScrollY());
        c2914x.f10933a.put("android:changeTransform:parentMatrix", matrix2);
        c2914x.f10933a.put("android:changeTransform:intermediateMatrix", view.getTag(C2901o.C2902a.transition_transform));
        c2914x.f10933a.put("android:changeTransform:intermediateParentMatrix", view.getTag(C2901o.C2902a.parent_matrix));
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
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object[], float[]] */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo10514a(android.view.ViewGroup r10, androidx.transition.C2914x r11, androidx.transition.C2914x r12) {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeTransform.mo10514a(android.view.ViewGroup, androidx.transition.x, androidx.transition.x):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        m39830d(c2914x);
        if (!f10699n) {
            ((ViewGroup) c2914x.f10934b.getParent()).startViewTransition(c2914x.f10934b);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo39768a() {
        return f10696k;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        m39830d(c2914x);
    }
}
