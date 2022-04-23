package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes-dex2jar.jar:androidx/transition/GhostViewPort.class */
public class GhostViewPort extends ViewGroup implements GhostView {

    /* renamed from: f */
    ViewGroup f5166f;

    /* renamed from: g */
    View f5167g;

    /* renamed from: h */
    final View f5168h;

    /* renamed from: i */
    int f5169i;
    @Nullable

    /* renamed from: j */
    private Matrix f5170j;

    /* renamed from: k */
    private final ViewTreeObserver.OnPreDrawListener f5171k = new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.transition.GhostViewPort.1
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            View view;
            ViewCompat.m19203d0(GhostViewPort.this);
            GhostViewPort ghostViewPort = GhostViewPort.this;
            ViewGroup viewGroup = ghostViewPort.f5166f;
            if (viewGroup == null || (view = ghostViewPort.f5167g) == null) {
                return true;
            }
            viewGroup.endViewTransition(view);
            ViewCompat.m19203d0(GhostViewPort.this.f5166f);
            GhostViewPort ghostViewPort2 = GhostViewPort.this;
            ghostViewPort2.f5166f = null;
            ghostViewPort2.f5167g = null;
            return true;
        }
    };

    GhostViewPort(View view) {
        super(view.getContext());
        this.f5168h = view;
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static GhostViewPort m16819b(View view, ViewGroup viewGroup, Matrix matrix) {
        GhostViewPort ghostViewPort;
        GhostViewHolder ghostViewHolder;
        if (view.getParent() instanceof ViewGroup) {
            GhostViewHolder b = GhostViewHolder.m16831b(viewGroup);
            GhostViewPort e = m16816e(view);
            GhostViewPort ghostViewPort2 = e;
            int i = 0;
            if (e != null) {
                GhostViewHolder ghostViewHolder2 = (GhostViewHolder) e.getParent();
                ghostViewPort2 = e;
                i = 0;
                if (ghostViewHolder2 != b) {
                    i = e.f5169i;
                    ghostViewHolder2.removeView(e);
                    ghostViewPort2 = null;
                }
            }
            if (ghostViewPort2 == null) {
                Matrix matrix2 = matrix;
                if (matrix == null) {
                    matrix2 = new Matrix();
                    m16818c(view, viewGroup, matrix2);
                }
                GhostViewPort ghostViewPort3 = new GhostViewPort(view);
                ghostViewPort3.m16813h(matrix2);
                if (b == null) {
                    ghostViewHolder = new GhostViewHolder(viewGroup);
                } else {
                    b.m16826g();
                    ghostViewHolder = b;
                }
                m16817d(viewGroup, ghostViewHolder);
                m16817d(viewGroup, ghostViewPort3);
                ghostViewHolder.m16832a(ghostViewPort3);
                ghostViewPort3.f5169i = i;
                ghostViewPort = ghostViewPort3;
            } else {
                ghostViewPort = ghostViewPort2;
                if (matrix != null) {
                    ghostViewPort2.m16813h(matrix);
                    ghostViewPort = ghostViewPort2;
                }
            }
            ghostViewPort.f5169i++;
            return ghostViewPort;
        }
        throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
    }

    /* renamed from: c */
    static void m16818c(View view, ViewGroup viewGroup, Matrix matrix) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        matrix.reset();
        ViewUtils.m16682j(viewGroup2, matrix);
        matrix.preTranslate(-viewGroup2.getScrollX(), -viewGroup2.getScrollY());
        ViewUtils.m16681k(viewGroup, matrix);
    }

    /* renamed from: d */
    static void m16817d(View view, View view2) {
        ViewUtils.m16685g(view2, view2.getLeft(), view2.getTop(), view2.getLeft() + view.getWidth(), view2.getTop() + view.getHeight());
    }

    /* renamed from: e */
    static GhostViewPort m16816e(View view) {
        return (GhostViewPort) view.getTag(C0542R.C0545id.ghost_view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m16815f(View view) {
        GhostViewPort e = m16816e(view);
        if (e != null) {
            int i = e.f5169i - 1;
            e.f5169i = i;
            if (i <= 0) {
                ((GhostViewHolder) e.getParent()).removeView(e);
            }
        }
    }

    /* renamed from: g */
    static void m16814g(@NonNull View view, @Nullable GhostViewPort ghostViewPort) {
        view.setTag(C0542R.C0545id.ghost_view, ghostViewPort);
    }

    @Override // androidx.transition.GhostView
    /* renamed from: a */
    public void mo16820a(ViewGroup viewGroup, View view) {
        this.f5166f = viewGroup;
        this.f5167g = view;
    }

    /* renamed from: h */
    void m16813h(@NonNull Matrix matrix) {
        this.f5170j = matrix;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m16814g(this.f5168h, this);
        this.f5168h.getViewTreeObserver().addOnPreDrawListener(this.f5171k);
        ViewUtils.m16683i(this.f5168h, 4);
        if (this.f5168h.getParent() != null) {
            ((View) this.f5168h.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f5168h.getViewTreeObserver().removeOnPreDrawListener(this.f5171k);
        ViewUtils.m16683i(this.f5168h, 0);
        m16814g(this.f5168h, null);
        if (this.f5168h.getParent() != null) {
            ((View) this.f5168h.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        CanvasUtils.m16904a(canvas, true);
        canvas.setMatrix(this.f5170j);
        ViewUtils.m16683i(this.f5168h, 0);
        this.f5168h.invalidate();
        ViewUtils.m16683i(this.f5168h, 4);
        drawChild(canvas, this.f5168h, getDrawingTime());
        CanvasUtils.m16904a(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View, androidx.transition.GhostView
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (m16816e(this.f5168h) == this) {
            ViewUtils.m16683i(this.f5168h, i == 0 ? 4 : 0);
        }
    }
}
