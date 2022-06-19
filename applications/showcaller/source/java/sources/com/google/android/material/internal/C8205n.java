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
import java.lang.reflect.Method;
import java.util.ArrayList;
/* renamed from: com.google.android.material.internal.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/n.class */
public class C8205n implements AbstractC8208p {

    /* renamed from: a */
    protected C8206a f37028a;

    @SuppressLint({"ViewConstructor", "PrivateApi"})
    /* renamed from: com.google.android.material.internal.n$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/n$a.class */
    public static class C8206a extends ViewGroup {

        /* renamed from: d */
        static Method f37029d;

        /* renamed from: e */
        ViewGroup f37030e;

        /* renamed from: f */
        View f37031f;

        /* renamed from: g */
        ArrayList<Drawable> f37032g = null;

        /* renamed from: h */
        C8205n f37033h;

        /* renamed from: i */
        private boolean f37034i;

        static {
            try {
                Class cls = Integer.TYPE;
                f37029d = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        C8206a(Context context, ViewGroup viewGroup, View view, C8205n c8205n) {
            super(context);
            this.f37030e = viewGroup;
            this.f37031f = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f37033h = c8205n;
        }

        /* renamed from: b */
        private void m4458b() {
            if (!this.f37034i) {
                return;
            }
            throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
        }

        /* renamed from: c */
        private void m4457c() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f37032g;
                if (arrayList != null && arrayList.size() != 0) {
                    return;
                }
                this.f37034i = true;
                this.f37030e.removeView(this);
            }
        }

        /* renamed from: d */
        private void m4456d(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f37030e.getLocationOnScreen(iArr2);
            this.f37031f.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        /* renamed from: a */
        public void m4459a(Drawable drawable) {
            m4458b();
            if (this.f37032g == null) {
                this.f37032g = new ArrayList<>();
            }
            if (!this.f37032g.contains(drawable)) {
                this.f37032g.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr;
            int[] iArr2;
            this.f37030e.getLocationOnScreen(new int[2]);
            this.f37031f.getLocationOnScreen(new int[2]);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f37031f.getWidth(), this.f37031f.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f37032g;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f37032g.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: e */
        public void m4455e(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f37032g;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                m4457c();
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f37030e != null) {
                rect.offset(iArr[0], iArr[1]);
                if (this.f37030e == null) {
                    invalidate(rect);
                    return null;
                }
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                m4456d(iArr2);
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
            return super.verifyDrawable(drawable) || ((arrayList = this.f37032g) != null && arrayList.contains(drawable));
        }
    }

    public C8205n(Context context, ViewGroup viewGroup, View view) {
        this.f37028a = new C8206a(context, viewGroup, view, this);
    }

    /* renamed from: c */
    public static C8205n m4460c(View view) {
        ViewGroup m4449d = C8209q.m4449d(view);
        if (m4449d != null) {
            int childCount = m4449d.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = m4449d.getChildAt(i);
                if (childAt instanceof C8206a) {
                    return ((C8206a) childAt).f37033h;
                }
            }
            return new C8204m(m4449d.getContext(), m4449d, view);
        }
        return null;
    }

    @Override // com.google.android.material.internal.AbstractC8208p
    /* renamed from: a */
    public void mo4454a(Drawable drawable) {
        this.f37028a.m4459a(drawable);
    }

    @Override // com.google.android.material.internal.AbstractC8208p
    /* renamed from: b */
    public void mo4453b(Drawable drawable) {
        this.f37028a.m4455e(drawable);
    }
}
