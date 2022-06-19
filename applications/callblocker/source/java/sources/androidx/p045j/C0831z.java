package androidx.p045j;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.p026h.C0595u;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* renamed from: androidx.j.z */
/* loaded from: classes-dex2jar.jar:androidx/j/z.class */
public class C0831z implements AbstractC0761ab {

    /* renamed from: a */
    protected C0832a f2836a;

    /* renamed from: androidx.j.z$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/z$a.class */
    public static class C0832a extends ViewGroup {

        /* renamed from: a */
        static Method f2837a;

        /* renamed from: b */
        ViewGroup f2838b;

        /* renamed from: c */
        View f2839c;

        /* renamed from: d */
        ArrayList<Drawable> f2840d = null;

        /* renamed from: e */
        C0831z f2841e;

        /* renamed from: f */
        private boolean f2842f;

        static {
            try {
                f2837a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        C0832a(Context context, ViewGroup viewGroup, View view, C0831z c0831z) {
            super(context);
            this.f2838b = viewGroup;
            this.f2839c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f2841e = c0831z;
        }

        /* renamed from: a */
        private void m19330a() {
            if (this.f2842f) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        /* renamed from: a */
        private void m19327a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f2838b.getLocationOnScreen(iArr2);
            this.f2839c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        /* renamed from: b */
        private void m19326b() {
            if (getChildCount() == 0) {
                if (this.f2840d != null && this.f2840d.size() != 0) {
                    return;
                }
                this.f2842f = true;
                this.f2838b.removeView(this);
            }
        }

        /* renamed from: a */
        public void m19329a(Drawable drawable) {
            m19330a();
            if (this.f2840d == null) {
                this.f2840d = new ArrayList<>();
            }
            if (!this.f2840d.contains(drawable)) {
                this.f2840d.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        /* renamed from: a */
        public void m19328a(View view) {
            m19330a();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f2838b && viewGroup.getParent() != null && C0595u.m20370B(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f2838b.getLocationOnScreen(iArr2);
                    C0595u.m20321f(view, iArr[0] - iArr2[0]);
                    C0595u.m20323e(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        /* renamed from: b */
        public void m19325b(Drawable drawable) {
            if (this.f2840d != null) {
                this.f2840d.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                m19326b();
            }
        }

        /* renamed from: b */
        public void m19324b(View view) {
            super.removeView(view);
            m19326b();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr;
            int[] iArr2;
            this.f2838b.getLocationOnScreen(new int[2]);
            this.f2839c.getLocationOnScreen(new int[2]);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f2839c.getWidth(), this.f2839c.getHeight()));
            super.dispatchDraw(canvas);
            int size = this.f2840d == null ? 0 : this.f2840d.size();
            for (int i = 0; i < size; i++) {
                this.f2840d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            ViewParent viewParent;
            if (this.f2838b != null) {
                rect.offset(iArr[0], iArr[1]);
                if (this.f2838b instanceof ViewGroup) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    int[] iArr2 = new int[2];
                    m19327a(iArr2);
                    rect.offset(iArr2[0], iArr2[1]);
                    viewParent = super.invalidateChildInParent(iArr, rect);
                    return viewParent;
                }
                invalidate(rect);
            }
            viewParent = null;
            return viewParent;
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
            return super.verifyDrawable(drawable) || (this.f2840d != null && this.f2840d.contains(drawable));
        }
    }

    public C0831z(Context context, ViewGroup viewGroup, View view) {
        this.f2836a = new C0832a(context, viewGroup, view, this);
    }

    /* renamed from: c */
    static ViewGroup m19332c(View view) {
        ViewGroup viewGroup;
        while (true) {
            if (view == null) {
                viewGroup = null;
                break;
            } else if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                viewGroup = (ViewGroup) view;
                break;
            } else if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return viewGroup;
    }

    /* renamed from: d */
    public static C0831z m19331d(View view) {
        C0825u c0825u;
        ViewGroup m19332c = m19332c(view);
        if (m19332c != null) {
            int childCount = m19332c.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    c0825u = new C0825u(m19332c.getContext(), m19332c, view);
                    break;
                }
                View childAt = m19332c.getChildAt(i);
                if (childAt instanceof C0832a) {
                    c0825u = ((C0832a) childAt).f2841e;
                    break;
                }
                i++;
            }
        } else {
            c0825u = null;
        }
        return c0825u;
    }

    @Override // androidx.p045j.AbstractC0761ab
    /* renamed from: a */
    public void mo19334a(Drawable drawable) {
        this.f2836a.m19329a(drawable);
    }

    @Override // androidx.p045j.AbstractC0761ab
    /* renamed from: b */
    public void mo19333b(Drawable drawable) {
        this.f2836a.m19325b(drawable);
    }
}
