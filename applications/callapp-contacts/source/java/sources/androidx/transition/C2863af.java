package androidx.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.C0926v;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* renamed from: androidx.transition.af */
/* loaded from: classes-dex2jar.jar:androidx/transition/af.class */
public class C2863af implements AbstractC2866ah {

    /* renamed from: a */
    protected C2864a f10824a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.af$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/af$a.class */
    public static final class C2864a extends ViewGroup {

        /* renamed from: a */
        static Method f10825a;

        /* renamed from: b */
        ViewGroup f10826b;

        /* renamed from: c */
        View f10827c;

        /* renamed from: d */
        ArrayList<Drawable> f10828d = null;

        /* renamed from: e */
        C2863af f10829e;

        /* renamed from: f */
        private boolean f10830f;

        static {
            try {
                f10825a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        C2864a(Context context, ViewGroup viewGroup, View view, C2863af c2863af) {
            super(context);
            this.f10826b = viewGroup;
            this.f10827c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f10829e = c2863af;
        }

        /* renamed from: a */
        final void m39750a() {
            if (!this.f10830f) {
                return;
            }
            throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
        }

        /* renamed from: a */
        public final void m39749a(View view) {
            m39750a();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f10826b && viewGroup.getParent() != null && C0926v.m44154E(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f10826b.getLocationOnScreen(iArr2);
                    C0926v.m44096f(view, iArr[0] - iArr2[0]);
                    C0926v.m44098e(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        /* renamed from: b */
        final void m39748b() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f10828d;
                if (arrayList != null && arrayList.size() != 0) {
                    return;
                }
                this.f10830f = true;
                this.f10826b.removeView(this);
            }
        }

        /* renamed from: b */
        public final void m39747b(View view) {
            super.removeView(view);
            m39748b();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void dispatchDraw(Canvas canvas) {
            int[] iArr;
            int[] iArr2;
            this.f10826b.getLocationOnScreen(new int[2]);
            this.f10827c.getLocationOnScreen(new int[2]);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f10827c.getWidth(), this.f10827c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f10828d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f10828d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f10826b != null) {
                rect.offset(iArr[0], iArr[1]);
                ViewGroup viewGroup = this.f10826b;
                if (viewGroup == null) {
                    invalidate(rect);
                    return null;
                }
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                int[] iArr3 = new int[2];
                viewGroup.getLocationOnScreen(iArr2);
                this.f10827c.getLocationOnScreen(iArr3);
                int[] iArr4 = {iArr3[0] - iArr2[0], iArr3[1] - iArr2[1]};
                rect.offset(iArr4[0], iArr4[1]);
                return super.invalidateChildInParent(iArr, rect);
            }
            return null;
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        protected final boolean verifyDrawable(Drawable drawable) {
            if (!super.verifyDrawable(drawable)) {
                ArrayList<Drawable> arrayList = this.f10828d;
                return arrayList != null && arrayList.contains(drawable);
            }
            return true;
        }
    }

    public C2863af(Context context, ViewGroup viewGroup, View view) {
        this.f10824a = new C2864a(context, viewGroup, view, this);
    }

    /* renamed from: a */
    private static ViewGroup m39752a(View view) {
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

    /* renamed from: c */
    public static C2863af m39751c(View view) {
        ViewGroup m39752a = m39752a(view);
        if (m39752a != null) {
            int childCount = m39752a.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = m39752a.getChildAt(i);
                if (childAt instanceof C2864a) {
                    return ((C2864a) childAt).f10829e;
                }
            }
            return new C2857aa(m39752a.getContext(), m39752a, view);
        }
        return null;
    }

    @Override // androidx.transition.AbstractC2866ah
    /* renamed from: a */
    public final void mo39746a(Drawable drawable) {
        C2864a c2864a = this.f10824a;
        c2864a.m39750a();
        if (c2864a.f10828d == null) {
            c2864a.f10828d = new ArrayList<>();
        }
        if (!c2864a.f10828d.contains(drawable)) {
            c2864a.f10828d.add(drawable);
            c2864a.invalidate(drawable.getBounds());
            drawable.setCallback(c2864a);
        }
    }

    @Override // androidx.transition.AbstractC2866ah
    /* renamed from: b */
    public final void mo39745b(Drawable drawable) {
        C2864a c2864a = this.f10824a;
        if (c2864a.f10828d != null) {
            c2864a.f10828d.remove(drawable);
            c2864a.invalidate(drawable.getBounds());
            drawable.setCallback(null);
            c2864a.m39748b();
        }
    }
}
