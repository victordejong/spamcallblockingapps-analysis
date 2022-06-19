package androidx.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Method;
import java.util.ArrayList;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.transition.g0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/g0.class */
public class C1136g0 implements AbstractC1142i0 {

    /* renamed from: a */
    protected C1137a f4917a;

    /* renamed from: androidx.transition.g0$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/g0$a.class */
    public static class C1137a extends ViewGroup {

        /* renamed from: d */
        static Method f4918d;

        /* renamed from: e */
        ViewGroup f4919e;

        /* renamed from: f */
        View f4920f;

        /* renamed from: g */
        ArrayList<Drawable> f4921g = null;

        /* renamed from: h */
        C1136g0 f4922h;

        /* renamed from: i */
        private boolean f4923i;

        static {
            try {
                Class cls = Integer.TYPE;
                f4918d = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        C1137a(Context context, ViewGroup viewGroup, View view, C1136g0 c1136g0) {
            super(context);
            this.f4919e = viewGroup;
            this.f4920f = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f4922h = c1136g0;
        }

        /* renamed from: c */
        private void m30896c() {
            if (!this.f4923i) {
                return;
            }
            throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
        }

        /* renamed from: d */
        private void m30895d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f4921g;
                if (arrayList != null && arrayList.size() != 0) {
                    return;
                }
                this.f4923i = true;
                this.f4919e.removeView(this);
            }
        }

        /* renamed from: e */
        private void m30894e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f4919e.getLocationOnScreen(iArr2);
            this.f4920f.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        /* renamed from: a */
        public void m30898a(Drawable drawable) {
            m30896c();
            if (this.f4921g == null) {
                this.f4921g = new ArrayList<>();
            }
            if (!this.f4921g.contains(drawable)) {
                this.f4921g.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        /* renamed from: b */
        public void m30897b(View view) {
            m30896c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f4919e && viewGroup.getParent() != null && C1679w.m29314U(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f4919e.getLocationOnScreen(iArr2);
                    C1679w.m29307a0(view, iArr[0] - iArr2[0]);
                    C1679w.m29305b0(view, iArr[1] - iArr2[1]);
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
            int[] iArr;
            int[] iArr2;
            this.f4919e.getLocationOnScreen(new int[2]);
            this.f4920f.getLocationOnScreen(new int[2]);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f4920f.getWidth(), this.f4920f.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f4921g;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f4921g.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: f */
        public void m30893f(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f4921g;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                m30895d();
            }
        }

        /* renamed from: g */
        public void m30892g(View view) {
            super.removeView(view);
            m30895d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f4919e != null) {
                rect.offset(iArr[0], iArr[1]);
                if (!(this.f4919e instanceof ViewGroup)) {
                    invalidate(rect);
                    return null;
                }
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                m30894e(iArr2);
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
            return super.verifyDrawable(drawable) || ((arrayList = this.f4921g) != null && arrayList.contains(drawable));
        }
    }

    public C1136g0(Context context, ViewGroup viewGroup, View view) {
        this.f4917a = new C1137a(context, viewGroup, view, this);
    }

    /* renamed from: e */
    public static C1136g0 m30900e(View view) {
        ViewGroup m30899f = m30899f(view);
        if (m30899f != null) {
            int childCount = m30899f.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = m30899f.getChildAt(i);
                if (childAt instanceof C1137a) {
                    return ((C1137a) childAt).f4922h;
                }
            }
            return new C1121b0(m30899f.getContext(), m30899f, view);
        }
        return null;
    }

    /* renamed from: f */
    static ViewGroup m30899f(View view) {
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

    @Override // androidx.transition.AbstractC1142i0
    /* renamed from: a */
    public void mo30878a(Drawable drawable) {
        this.f4917a.m30898a(drawable);
    }

    @Override // androidx.transition.AbstractC1142i0
    /* renamed from: b */
    public void mo30877b(Drawable drawable) {
        this.f4917a.m30893f(drawable);
    }
}
