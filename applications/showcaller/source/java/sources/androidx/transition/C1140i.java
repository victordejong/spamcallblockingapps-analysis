package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import p020b.p041h.p050l.C1679w;
@SuppressLint({"ViewConstructor"})
/* renamed from: androidx.transition.i */
/* loaded from: classes-dex2jar.jar:androidx/transition/i.class */
public class C1140i extends ViewGroup implements AbstractC1132f {

    /* renamed from: d */
    ViewGroup f4932d;

    /* renamed from: e */
    View f4933e;

    /* renamed from: f */
    final View f4934f;

    /* renamed from: g */
    int f4935g;

    /* renamed from: h */
    private Matrix f4936h;

    /* renamed from: i */
    private final ViewTreeObserver.OnPreDrawListener f4937i = new ViewTreeObserver$OnPreDrawListenerC1141a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/i$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC1141a implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC1141a() {
            C1140i.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            View view;
            C1679w.m29293h0(C1140i.this);
            C1140i c1140i = C1140i.this;
            ViewGroup viewGroup = c1140i.f4932d;
            if (viewGroup == null || (view = c1140i.f4933e) == null) {
                return true;
            }
            viewGroup.endViewTransition(view);
            C1679w.m29293h0(C1140i.this.f4932d);
            C1140i c1140i2 = C1140i.this;
            c1140i2.f4932d = null;
            c1140i2.f4933e = null;
            return true;
        }
    }

    C1140i(View view) {
        super(view.getContext());
        this.f4934f = view;
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    /* renamed from: b */
    public static C1140i m30885b(View view, ViewGroup viewGroup, Matrix matrix) {
        C1140i c1140i;
        C1135g c1135g;
        if (view.getParent() instanceof ViewGroup) {
            C1135g m30906b = C1135g.m30906b(viewGroup);
            C1140i m30882e = m30882e(view);
            C1140i c1140i2 = m30882e;
            int i = 0;
            if (m30882e != null) {
                C1135g c1135g2 = (C1135g) m30882e.getParent();
                c1140i2 = m30882e;
                i = 0;
                if (c1135g2 != m30906b) {
                    i = m30882e.f4935g;
                    c1135g2.removeView(m30882e);
                    c1140i2 = null;
                }
            }
            if (c1140i2 == null) {
                Matrix matrix2 = matrix;
                if (matrix == null) {
                    matrix2 = new Matrix();
                    m30884c(view, viewGroup, matrix2);
                }
                C1140i c1140i3 = new C1140i(view);
                c1140i3.m30879h(matrix2);
                if (m30906b == null) {
                    c1135g = new C1135g(viewGroup);
                } else {
                    m30906b.m30901g();
                    c1135g = m30906b;
                }
                m30883d(viewGroup, c1135g);
                m30883d(viewGroup, c1140i3);
                c1135g.m30907a(c1140i3);
                c1140i3.f4935g = i;
                c1140i = c1140i3;
            } else {
                c1140i = c1140i2;
                if (matrix != null) {
                    c1140i2.m30879h(matrix);
                    c1140i = c1140i2;
                }
            }
            c1140i.f4935g++;
            return c1140i;
        }
        throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
    }

    /* renamed from: c */
    static void m30884c(View view, ViewGroup viewGroup, Matrix matrix) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        matrix.reset();
        C1144j0.m30865j(viewGroup2, matrix);
        matrix.preTranslate(-viewGroup2.getScrollX(), -viewGroup2.getScrollY());
        C1144j0.m30864k(viewGroup, matrix);
    }

    /* renamed from: d */
    static void m30883d(View view, View view2) {
        C1144j0.m30868g(view2, view2.getLeft(), view2.getTop(), view2.getLeft() + view.getWidth(), view2.getTop() + view.getHeight());
    }

    /* renamed from: e */
    static C1140i m30882e(View view) {
        return (C1140i) view.getTag(C1158p.ghost_view);
    }

    /* renamed from: f */
    public static void m30881f(View view) {
        C1140i m30882e = m30882e(view);
        if (m30882e != null) {
            int i = m30882e.f4935g - 1;
            m30882e.f4935g = i;
            if (i > 0) {
                return;
            }
            ((C1135g) m30882e.getParent()).removeView(m30882e);
        }
    }

    /* renamed from: g */
    static void m30880g(View view, C1140i c1140i) {
        view.setTag(C1158p.ghost_view, c1140i);
    }

    @Override // androidx.transition.AbstractC1132f
    /* renamed from: a */
    public void mo30886a(ViewGroup viewGroup, View view) {
        this.f4932d = viewGroup;
        this.f4933e = view;
    }

    /* renamed from: h */
    void m30879h(Matrix matrix) {
        this.f4936h = matrix;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m30880g(this.f4934f, this);
        this.f4934f.getViewTreeObserver().addOnPreDrawListener(this.f4937i);
        C1144j0.m30866i(this.f4934f, 4);
        if (this.f4934f.getParent() != null) {
            ((View) this.f4934f.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f4934f.getViewTreeObserver().removeOnPreDrawListener(this.f4937i);
        C1144j0.m30866i(this.f4934f, 0);
        m30880g(this.f4934f, null);
        if (this.f4934f.getParent() != null) {
            ((View) this.f4934f.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        C1120b.m30937a(canvas, true);
        canvas.setMatrix(this.f4936h);
        C1144j0.m30866i(this.f4934f, 0);
        this.f4934f.invalidate();
        C1144j0.m30866i(this.f4934f, 4);
        drawChild(canvas, this.f4934f, getDrawingTime());
        C1120b.m30937a(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View, androidx.transition.AbstractC1132f
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (m30882e(this.f4934f) == this) {
            C1144j0.m30866i(this.f4934f, i == 0 ? 4 : 0);
        }
    }
}
