package p000;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
/* renamed from: f30$a */
/* loaded from: classes-dex2jar.jar:f30$a.class */
public class f30$a extends ViewGroup {

    /* renamed from: a */
    public ViewGroup f6514a;

    /* renamed from: b */
    public View f6515b;

    /* renamed from: c */
    public ArrayList<Drawable> f6516c = null;

    /* renamed from: d */
    public f30 f6517d;

    /* renamed from: f */
    public boolean f6518f;

    static {
        try {
            Class cls = Integer.TYPE;
            ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
        } catch (NoSuchMethodException e) {
        }
    }

    public f30$a(Context context, ViewGroup viewGroup, View view, f30 f30Var) {
        super(context);
        this.f6514a = viewGroup;
        this.f6515b = view;
        setRight(viewGroup.getWidth());
        setBottom(viewGroup.getHeight());
        viewGroup.addView(this);
        this.f6517d = f30Var;
    }

    /* renamed from: a */
    public void m1996a(Drawable drawable) {
        m1994c();
        if (this.f6516c == null) {
            this.f6516c = new ArrayList<>();
        }
        if (!this.f6516c.contains(drawable)) {
            this.f6516c.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }
    }

    /* renamed from: b */
    public void m1995b(View view) {
        m1994c();
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != this.f6514a && viewGroup.getParent() != null && jb.R(viewGroup)) {
                int[] iArr = new int[2];
                int[] iArr2 = new int[2];
                viewGroup.getLocationOnScreen(iArr);
                this.f6514a.getLocationOnScreen(iArr2);
                jb.X(view, iArr[0] - iArr2[0]);
                jb.Y(view, iArr[1] - iArr2[1]);
            }
            viewGroup.removeView(view);
            if (view.getParent() != null) {
                viewGroup.removeView(view);
            }
        }
        super.addView(view);
    }

    /* renamed from: c */
    public final void m1994c() {
        if (!this.f6518f) {
            return;
        }
        throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
    }

    /* renamed from: d */
    public final void m1993d() {
        if (getChildCount() == 0) {
            ArrayList<Drawable> arrayList = this.f6516c;
            if (arrayList != null && arrayList.size() != 0) {
                return;
            }
            this.f6518f = true;
            this.f6514a.removeView(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int[] iArr;
        int[] iArr2;
        this.f6514a.getLocationOnScreen(new int[2]);
        this.f6515b.getLocationOnScreen(new int[2]);
        canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
        canvas.clipRect(new Rect(0, 0, this.f6515b.getWidth(), this.f6515b.getHeight()));
        super.dispatchDraw(canvas);
        ArrayList<Drawable> arrayList = this.f6516c;
        int size = arrayList == null ? 0 : arrayList.size();
        for (int i = 0; i < size; i++) {
            this.f6516c.get(i).draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: e */
    public final void m1992e(int[] iArr) {
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        this.f6514a.getLocationOnScreen(iArr2);
        this.f6515b.getLocationOnScreen(iArr3);
        iArr[0] = iArr3[0] - iArr2[0];
        iArr[1] = iArr3[1] - iArr2[1];
    }

    /* renamed from: f */
    public void m1991f(Drawable drawable) {
        ArrayList<Drawable> arrayList = this.f6516c;
        if (arrayList != null) {
            arrayList.remove(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(null);
            m1993d();
        }
    }

    /* renamed from: g */
    public void m1990g(View view) {
        super.removeView(view);
        m1993d();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        if (this.f6514a != null) {
            rect.offset(iArr[0], iArr[1]);
            if (!(this.f6514a instanceof ViewGroup)) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            m1992e(iArr2);
            rect.offset(iArr2[0], iArr2[1]);
            return super.invalidateChildInParent(iArr, rect);
        }
        return null;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidate(drawable.getBounds());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        ArrayList<Drawable> arrayList;
        return super.verifyDrawable(drawable) || ((arrayList = this.f6516c) != null && arrayList.contains(drawable));
    }
}
