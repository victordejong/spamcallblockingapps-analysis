package androidx.transition;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.core.view.v;
import androidx.transition.o;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/transition/i.class */
public final class i extends ViewGroup implements f {

    /* renamed from: a  reason: collision with root package name */
    ViewGroup f5814a;

    /* renamed from: b  reason: collision with root package name */
    View f5815b;

    /* renamed from: c  reason: collision with root package name */
    final View f5816c;

    /* renamed from: d  reason: collision with root package name */
    int f5817d;
    private Matrix e;
    private final ViewTreeObserver.OnPreDrawListener f = new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.transition.i.1
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            v.d(i.this);
            if (i.this.f5814a == null || i.this.f5815b == null) {
                return true;
            }
            i.this.f5814a.endViewTransition(i.this.f5815b);
            v.d(i.this.f5814a);
            i.this.f5814a = null;
            i.this.f5815b = null;
            return true;
        }
    };

    i(View view) {
        super(view.getContext());
        this.f5816c = view;
        setWillNotDraw(false);
        setClipChildren(false);
        setLayerType(2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(View view, ViewGroup viewGroup, Matrix matrix) {
        g gVar;
        if (view.getParent() instanceof ViewGroup) {
            g a2 = g.a(viewGroup);
            i b2 = b(view);
            i iVar = b2;
            int i = 0;
            if (b2 != null) {
                g gVar2 = (g) b2.getParent();
                iVar = b2;
                i = 0;
                if (gVar2 != a2) {
                    i = b2.f5817d;
                    gVar2.removeView(b2);
                    iVar = null;
                }
            }
            if (iVar == null) {
                iVar = new i(view);
                iVar.e = matrix;
                if (a2 == null) {
                    gVar = new g(viewGroup);
                } else if (a2.f5809b) {
                    ad.a(a2.f5808a).b(a2);
                    ad.a(a2.f5808a).a(a2);
                    gVar = a2;
                } else {
                    throw new IllegalStateException("This GhostViewHolder is detached!");
                }
                a((View) viewGroup, (View) gVar);
                a((View) viewGroup, (View) iVar);
                ArrayList<View> arrayList = new ArrayList<>();
                g.a(iVar.f5816c, arrayList);
                int a3 = gVar.a(arrayList);
                if (a3 < 0 || a3 >= gVar.getChildCount()) {
                    gVar.addView(iVar);
                } else {
                    gVar.addView(iVar, a3);
                }
                iVar.f5817d = i;
            } else {
                iVar.e = matrix;
            }
            iVar.f5817d++;
            return iVar;
        }
        throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view) {
        i b2 = b(view);
        if (b2 != null) {
            int i = b2.f5817d - 1;
            b2.f5817d = i;
            if (i <= 0) {
                ((g) b2.getParent()).removeView(b2);
            }
        }
    }

    private static void a(View view, View view2) {
        ai.a(view2, view2.getLeft(), view2.getTop(), view2.getLeft() + view.getWidth(), view2.getTop() + view.getHeight());
    }

    private static void a(View view, i iVar) {
        view.setTag(o.a.ghost_view, iVar);
    }

    private static i b(View view) {
        return (i) view.getTag(o.a.ghost_view);
    }

    @Override // androidx.transition.f
    public final void a(ViewGroup viewGroup, View view) {
        this.f5814a = viewGroup;
        this.f5815b = view;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(this.f5816c, this);
        this.f5816c.getViewTreeObserver().addOnPreDrawListener(this.f);
        ai.a(this.f5816c, 4);
        if (this.f5816c.getParent() != null) {
            ((View) this.f5816c.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        this.f5816c.getViewTreeObserver().removeOnPreDrawListener(this.f);
        ai.a(this.f5816c, 0);
        a(this.f5816c, (i) null);
        if (this.f5816c.getParent() != null) {
            ((View) this.f5816c.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        b.a(canvas, true);
        canvas.setMatrix(this.e);
        ai.a(this.f5816c, 0);
        this.f5816c.invalidate();
        ai.a(this.f5816c, 4);
        drawChild(canvas, this.f5816c, getDrawingTime());
        b.a(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View, androidx.transition.f
    public final void setVisibility(int i) {
        super.setVisibility(i);
        if (b(this.f5816c) == this) {
            ai.a(this.f5816c, i == 0 ? 4 : 0);
        }
    }
}
