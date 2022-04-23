package androidx.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import d.h.m.t;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/transition/g0$a.class */
class g0$a extends ViewGroup {

    /* renamed from: b */
    ViewGroup f2730b;

    /* renamed from: c */
    View f2731c;

    /* renamed from: d */
    ArrayList<Drawable> f2732d = null;

    /* renamed from: e */
    g0 f2733e;

    /* renamed from: f */
    private boolean f2734f;

    static {
        try {
            Class cls = Integer.TYPE;
            ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
        } catch (NoSuchMethodException e) {
        }
    }

    g0$a(Context context, ViewGroup viewGroup, View view, g0 g0Var) {
        super(context);
        this.f2730b = viewGroup;
        this.f2731c = view;
        setRight(viewGroup.getWidth());
        setBottom(viewGroup.getHeight());
        viewGroup.addView(this);
        this.f2733e = g0Var;
    }

    /* renamed from: c */
    private void m12032c() {
        if (this.f2734f) {
            throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
        }
    }

    /* renamed from: d */
    private void m12031d() {
        if (getChildCount() == 0) {
            ArrayList<Drawable> arrayList = this.f2732d;
            if (arrayList == null || arrayList.size() == 0) {
                this.f2734f = true;
                this.f2730b.removeView(this);
            }
        }
    }

    /* renamed from: e */
    private void m12030e(int[] iArr) {
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        this.f2730b.getLocationOnScreen(iArr2);
        this.f2731c.getLocationOnScreen(iArr3);
        iArr[0] = iArr3[0] - iArr2[0];
        iArr[1] = iArr3[1] - iArr2[1];
    }

    /* renamed from: a */
    public void m12034a(Drawable drawable) {
        m12032c();
        if (this.f2732d == null) {
            this.f2732d = new ArrayList<>();
        }
        if (!this.f2732d.contains(drawable)) {
            this.f2732d.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }
    }

    /* renamed from: b */
    public void m12033b(View view) {
        m12032c();
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (!(viewGroup == this.f2730b || viewGroup.getParent() == null || !t.R(viewGroup))) {
                int[] iArr = new int[2];
                int[] iArr2 = new int[2];
                viewGroup.getLocationOnScreen(iArr);
                this.f2730b.getLocationOnScreen(iArr2);
                t.X(view, iArr[0] - iArr2[0]);
                t.Y(view, iArr[1] - iArr2[1]);
            }
            viewGroup.removeView(view);
            if (view.getParent() != null) {
                viewGroup.removeView(view);
            }
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        this.f2730b.getLocationOnScreen(iArr);
        this.f2731c.getLocationOnScreen(iArr2);
        canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
        canvas.clipRect(new Rect(0, 0, this.f2731c.getWidth(), this.f2731c.getHeight()));
        super.dispatchDraw(canvas);
        ArrayList<Drawable> arrayList = this.f2732d;
        int size = arrayList == null ? 0 : arrayList.size();
        for (int i = 0; i < size; i++) {
            this.f2732d.get(i).draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: f */
    public void m12029f(Drawable drawable) {
        ArrayList<Drawable> arrayList = this.f2732d;
        if (arrayList != null) {
            arrayList.remove(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(null);
            m12031d();
        }
    }

    /* renamed from: g */
    public void m12028g(View view) {
        super.removeView(view);
        m12031d();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        if (this.f2730b == null) {
            return null;
        }
        rect.offset(iArr[0], iArr[1]);
        if (this.f2730b instanceof ViewGroup) {
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            m12030e(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }
        invalidate(rect);
        return null;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidate(drawable.getBounds());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        ArrayList<Drawable> arrayList;
        return super.verifyDrawable(drawable) || ((arrayList = this.f2732d) != null && arrayList.contains(drawable));
    }
}
