package androidx.p045j;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.p023g.C0552u;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* renamed from: androidx.j.ab */
/* loaded from: classes-dex2jar.jar:androidx/j/ab.class */
public class C0790ab implements AbstractC0793ad {

    /* renamed from: a */
    protected C0791a f2555a;

    /* renamed from: androidx.j.ab$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/ab$a.class */
    public static class C0791a extends ViewGroup {

        /* renamed from: a */
        static Method f2556a;

        /* renamed from: b */
        ViewGroup f2557b;

        /* renamed from: c */
        View f2558c;

        /* renamed from: d */
        ArrayList<Drawable> f2559d = null;

        /* renamed from: e */
        C0790ab f2560e;

        static {
            try {
                f2556a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        C0791a(Context context, ViewGroup viewGroup, View view, C0790ab c0790ab) {
            super(context);
            this.f2557b = viewGroup;
            this.f2558c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f2560e = c0790ab;
        }

        /* renamed from: a */
        private void m5342a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f2557b.getLocationOnScreen(iArr2);
            this.f2558c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        /* renamed from: a */
        public void m5344a(Drawable drawable) {
            if (this.f2559d == null) {
                this.f2559d = new ArrayList<>();
            }
            if (!this.f2559d.contains(drawable)) {
                this.f2559d.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        /* renamed from: a */
        public void m5343a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f2557b && viewGroup.getParent() != null && C0552u.m6292D(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f2557b.getLocationOnScreen(iArr2);
                    C0552u.m6244f(view, iArr[0] - iArr2[0]);
                    C0552u.m6246e(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        /* renamed from: a */
        boolean m5345a() {
            ArrayList<Drawable> arrayList;
            return getChildCount() == 0 && ((arrayList = this.f2559d) == null || arrayList.size() == 0);
        }

        /* renamed from: b */
        public void m5341b(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f2559d;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        /* renamed from: b */
        public void m5340b(View view) {
            super.removeView(view);
            if (m5345a()) {
                this.f2557b.removeView(this);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr;
            int[] iArr2;
            this.f2557b.getLocationOnScreen(new int[2]);
            this.f2558c.getLocationOnScreen(new int[2]);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f2558c.getWidth(), this.f2558c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f2559d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f2559d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f2557b != null) {
                rect.offset(iArr[0], iArr[1]);
                if (!(this.f2557b instanceof ViewGroup)) {
                    invalidate(rect);
                    return null;
                }
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                m5342a(iArr2);
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
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f2559d) != null && arrayList.contains(drawable));
        }
    }

    public C0790ab(Context context, ViewGroup viewGroup, View view) {
        this.f2555a = new C0791a(context, viewGroup, view, this);
    }

    /* renamed from: c */
    static ViewGroup m5347c(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    /* renamed from: d */
    public static C0790ab m5346d(View view) {
        ViewGroup m5347c = m5347c(view);
        if (m5347c != null) {
            int childCount = m5347c.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = m5347c.getChildAt(i);
                if (childAt instanceof C0791a) {
                    return ((C0791a) childAt).f2560e;
                }
            }
            return new C0857v(m5347c.getContext(), m5347c, view);
        }
        return null;
    }

    @Override // androidx.p045j.AbstractC0793ad
    /* renamed from: a */
    public void mo5218a(Drawable drawable) {
        this.f2555a.m5344a(drawable);
    }

    @Override // androidx.p045j.AbstractC0793ad
    /* renamed from: b */
    public void mo5217b(Drawable drawable) {
        this.f2555a.m5341b(drawable);
    }
}
