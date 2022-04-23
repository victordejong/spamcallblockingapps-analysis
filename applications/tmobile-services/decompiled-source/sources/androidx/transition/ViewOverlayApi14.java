package androidx.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewOverlayApi14.class */
public class ViewOverlayApi14 implements ViewOverlayImpl {

    /* renamed from: a */
    protected OverlayViewGroup f5296a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ViewOverlayApi14$OverlayViewGroup.class */
    public static class OverlayViewGroup extends ViewGroup {

        /* renamed from: f */
        ViewGroup f5297f;

        /* renamed from: g */
        View f5298g;

        /* renamed from: h */
        ArrayList<Drawable> f5299h = null;

        /* renamed from: i */
        ViewOverlayApi14 f5300i;

        /* renamed from: j */
        private boolean f5301j;

        static {
            try {
                ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        OverlayViewGroup(Context context, ViewGroup viewGroup, View view, ViewOverlayApi14 viewOverlayApi14) {
            super(context);
            this.f5297f = viewGroup;
            this.f5298g = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f5300i = viewOverlayApi14;
        }

        /* renamed from: c */
        private void m16698c() {
            if (this.f5301j) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        /* renamed from: d */
        private void m16697d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f5299h;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f5301j = true;
                    this.f5297f.removeView(this);
                }
            }
        }

        /* renamed from: e */
        private void m16696e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f5297f.getLocationOnScreen(iArr2);
            this.f5298g.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        /* renamed from: a */
        public void m16700a(Drawable drawable) {
            m16698c();
            if (this.f5299h == null) {
                this.f5299h = new ArrayList<>();
            }
            if (!this.f5299h.contains(drawable)) {
                this.f5299h.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        /* renamed from: b */
        public void m16699b(View view) {
            m16698c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (!(viewGroup == this.f5297f || viewGroup.getParent() == null || !ViewCompat.m19219R(viewGroup))) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f5297f.getLocationOnScreen(iArr2);
                    ViewCompat.m19213X(view, iArr[0] - iArr2[0]);
                    ViewCompat.m19212Y(view, iArr[1] - iArr2[1]);
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
            this.f5297f.getLocationOnScreen(iArr);
            this.f5298g.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f5298g.getWidth(), this.f5298g.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f5299h;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f5299h.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: f */
        public void m16695f(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f5299h;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                m16697d();
            }
        }

        /* renamed from: g */
        public void m16694g(View view) {
            super.removeView(view);
            m16697d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f5297f == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f5297f instanceof ViewGroup) {
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                m16696e(iArr2);
                rect.offset(iArr2[0], iArr2[1]);
                return super.invalidateChildInParent(iArr, rect);
            }
            invalidate(rect);
            return null;
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(@NonNull Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f5299h) != null && arrayList.contains(drawable));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewOverlayApi14(Context context, ViewGroup viewGroup, View view) {
        this.f5296a = new OverlayViewGroup(context, viewGroup, view, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static ViewOverlayApi14 m16702e(View view) {
        ViewGroup f = m16701f(view);
        if (f == null) {
            return null;
        }
        int childCount = f.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = f.getChildAt(i);
            if (childAt instanceof OverlayViewGroup) {
                return ((OverlayViewGroup) childAt).f5300i;
            }
        }
        return new ViewGroupOverlayApi14(f.getContext(), f, view);
    }

    /* renamed from: f */
    static ViewGroup m16701f(View view) {
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

    @Override // androidx.transition.ViewOverlayImpl
    /* renamed from: a */
    public void mo16693a(@NonNull Drawable drawable) {
        this.f5296a.m16700a(drawable);
    }

    @Override // androidx.transition.ViewOverlayImpl
    /* renamed from: b */
    public void mo16692b(@NonNull Drawable drawable) {
        this.f5296a.m16695f(drawable);
    }
}
