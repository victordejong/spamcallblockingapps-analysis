package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ViewOverlayApi14.class */
public class ViewOverlayApi14 implements ViewOverlayImpl {

    /* renamed from: a */
    protected OverlayViewGroup f10946a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"ViewConstructor", "PrivateApi"})
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup.class */
    public static class OverlayViewGroup extends ViewGroup {

        /* renamed from: f */
        ViewGroup f10947f;

        /* renamed from: g */
        View f10948g;

        /* renamed from: h */
        ArrayList<Drawable> f10949h = null;

        /* renamed from: i */
        ViewOverlayApi14 f10950i;

        /* renamed from: j */
        private boolean f10951j;

        static {
            try {
                ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        OverlayViewGroup(Context context, ViewGroup viewGroup, View view, ViewOverlayApi14 viewOverlayApi14) {
            super(context);
            this.f10947f = viewGroup;
            this.f10948g = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f10950i = viewOverlayApi14;
        }

        /* renamed from: b */
        private void m9441b() {
            if (this.f10951j) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        /* renamed from: c */
        private void m9440c() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f10949h;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f10951j = true;
                    this.f10947f.removeView(this);
                }
            }
        }

        /* renamed from: d */
        private void m9439d(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f10947f.getLocationOnScreen(iArr2);
            this.f10948g.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        /* renamed from: a */
        public void m9442a(Drawable drawable) {
            m9441b();
            if (this.f10949h == null) {
                this.f10949h = new ArrayList<>();
            }
            if (!this.f10949h.contains(drawable)) {
                this.f10949h.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f10947f.getLocationOnScreen(iArr);
            this.f10948g.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f10948g.getWidth(), this.f10948g.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f10949h;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f10949h.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: e */
        public void m9438e(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f10949h;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                m9440c();
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f10947f == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f10947f != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                m9439d(iArr2);
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
            return super.verifyDrawable(drawable) || ((arrayList = this.f10949h) != null && arrayList.contains(drawable));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewOverlayApi14(Context context, ViewGroup viewGroup, View view) {
        this.f10946a = new OverlayViewGroup(context, viewGroup, view, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static ViewOverlayApi14 m9443c(View view) {
        ViewGroup d = ViewUtils.m9432d(view);
        if (d == null) {
            return null;
        }
        int childCount = d.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = d.getChildAt(i);
            if (childAt instanceof OverlayViewGroup) {
                return ((OverlayViewGroup) childAt).f10950i;
            }
        }
        return new ViewGroupOverlayApi14(d.getContext(), d, view);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    /* renamed from: a */
    public void mo9437a(@NonNull Drawable drawable) {
        this.f10946a.m9442a(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    /* renamed from: b */
    public void mo9436b(@NonNull Drawable drawable) {
        this.f10946a.m9438e(drawable);
    }
}
