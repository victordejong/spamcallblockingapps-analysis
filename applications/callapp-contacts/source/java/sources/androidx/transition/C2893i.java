package androidx.transition;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.C0926v;
import androidx.transition.C2901o;
import java.util.ArrayList;
/* renamed from: androidx.transition.i */
/* loaded from: classes-dex2jar.jar:androidx/transition/i.class */
public final class C2893i extends ViewGroup implements AbstractC2890f {

    /* renamed from: a */
    ViewGroup f10881a;

    /* renamed from: b */
    View f10882b;

    /* renamed from: c */
    final View f10883c;

    /* renamed from: d */
    int f10884d;

    /* renamed from: e */
    private Matrix f10885e;

    /* renamed from: f */
    private final ViewTreeObserver.OnPreDrawListener f10886f = new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.transition.i.1
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            C0926v.m44101d(C2893i.this);
            if (C2893i.this.f10881a == null || C2893i.this.f10882b == null) {
                return true;
            }
            C2893i.this.f10881a.endViewTransition(C2893i.this.f10882b);
            C0926v.m44101d(C2893i.this.f10881a);
            C2893i.this.f10881a = null;
            C2893i.this.f10882b = null;
            return true;
        }
    };

    C2893i(View view) {
        super(view.getContext());
        this.f10883c = view;
        setWillNotDraw(false);
        setClipChildren(false);
        setLayerType(2, null);
    }

    /* renamed from: a */
    public static C2893i m39690a(View view, ViewGroup viewGroup, Matrix matrix) {
        C2891g c2891g;
        if (view.getParent() instanceof ViewGroup) {
            C2891g m39697a = C2891g.m39697a(viewGroup);
            C2893i m39687b = m39687b(view);
            C2893i c2893i = m39687b;
            int i = 0;
            if (m39687b != null) {
                C2891g c2891g2 = (C2891g) m39687b.getParent();
                c2893i = m39687b;
                i = 0;
                if (c2891g2 != m39697a) {
                    i = m39687b.f10884d;
                    c2891g2.removeView(m39687b);
                    c2893i = null;
                }
            }
            if (c2893i == null) {
                c2893i = new C2893i(view);
                c2893i.f10885e = matrix;
                if (m39697a == null) {
                    c2891g = new C2891g(viewGroup);
                } else if (!m39697a.f10873b) {
                    throw new IllegalStateException("This GhostViewHolder is detached!");
                } else {
                    C2860ad.m39755a(m39697a.f10872a).mo39756b(m39697a);
                    C2860ad.m39755a(m39697a.f10872a).mo39757a(m39697a);
                    c2891g = m39697a;
                }
                m39691a((View) viewGroup, (View) c2891g);
                m39691a((View) viewGroup, (View) c2893i);
                ArrayList<View> arrayList = new ArrayList<>();
                C2891g.m39698a(c2893i.f10883c, arrayList);
                int m39696a = c2891g.m39696a(arrayList);
                if (m39696a < 0 || m39696a >= c2891g.getChildCount()) {
                    c2891g.addView(c2893i);
                } else {
                    c2891g.addView(c2893i, m39696a);
                }
                c2893i.f10884d = i;
            } else {
                c2893i.f10885e = matrix;
            }
            c2893i.f10884d++;
            return c2893i;
        }
        throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
    }

    /* renamed from: a */
    public static void m39692a(View view) {
        C2893i m39687b = m39687b(view);
        if (m39687b != null) {
            int i = m39687b.f10884d - 1;
            m39687b.f10884d = i;
            if (i > 0) {
                return;
            }
            ((C2891g) m39687b.getParent()).removeView(m39687b);
        }
    }

    /* renamed from: a */
    private static void m39691a(View view, View view2) {
        C2867ai.m39741a(view2, view2.getLeft(), view2.getTop(), view2.getLeft() + view.getWidth(), view2.getTop() + view.getHeight());
    }

    /* renamed from: a */
    private static void m39689a(View view, C2893i c2893i) {
        view.setTag(C2901o.C2902a.ghost_view, c2893i);
    }

    /* renamed from: b */
    private static C2893i m39687b(View view) {
        return (C2893i) view.getTag(C2901o.C2902a.ghost_view);
    }

    @Override // androidx.transition.AbstractC2890f
    /* renamed from: a */
    public final void mo39688a(ViewGroup viewGroup, View view) {
        this.f10881a = viewGroup;
        this.f10882b = view;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        m39689a(this.f10883c, this);
        this.f10883c.getViewTreeObserver().addOnPreDrawListener(this.f10886f);
        C2867ai.m39742a(this.f10883c, 4);
        if (this.f10883c.getParent() != null) {
            ((View) this.f10883c.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        this.f10883c.getViewTreeObserver().removeOnPreDrawListener(this.f10886f);
        C2867ai.m39742a(this.f10883c, 0);
        m39689a(this.f10883c, (C2893i) null);
        if (this.f10883c.getParent() != null) {
            ((View) this.f10883c.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        C2880b.m39720a(canvas, true);
        canvas.setMatrix(this.f10885e);
        C2867ai.m39742a(this.f10883c, 0);
        this.f10883c.invalidate();
        C2867ai.m39742a(this.f10883c, 4);
        drawChild(canvas, this.f10883c, getDrawingTime());
        C2880b.m39720a(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View, androidx.transition.AbstractC2890f
    public final void setVisibility(int i) {
        super.setVisibility(i);
        if (m39687b(this.f10883c) == this) {
            C2867ai.m39742a(this.f10883c, i == 0 ? 4 : 0);
        }
    }
}
