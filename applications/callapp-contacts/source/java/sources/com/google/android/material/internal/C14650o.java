package com.google.android.material.internal;

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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.internal.o */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/o.class */
public class C14650o implements AbstractC14653q {

    /* renamed from: a */
    protected C14651a f53437a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.o$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/o$a.class */
    public static final class C14651a extends ViewGroup {

        /* renamed from: a */
        static Method f53438a;

        /* renamed from: b */
        ViewGroup f53439b;

        /* renamed from: c */
        View f53440c;

        /* renamed from: d */
        ArrayList<Drawable> f53441d = null;

        /* renamed from: e */
        C14650o f53442e;

        /* renamed from: f */
        boolean f53443f;

        static {
            try {
                f53438a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        C14651a(Context context, ViewGroup viewGroup, View view, C14650o c14650o) {
            super(context);
            this.f53439b = viewGroup;
            this.f53440c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f53442e = c14650o;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void dispatchDraw(Canvas canvas) {
            int[] iArr;
            int[] iArr2;
            this.f53439b.getLocationOnScreen(new int[2]);
            this.f53440c.getLocationOnScreen(new int[2]);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f53440c.getWidth(), this.f53440c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f53441d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f53441d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f53439b != null) {
                rect.offset(iArr[0], iArr[1]);
                ViewGroup viewGroup = this.f53439b;
                if (viewGroup == null) {
                    invalidate(rect);
                    return null;
                }
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                int[] iArr3 = new int[2];
                viewGroup.getLocationOnScreen(iArr2);
                this.f53440c.getLocationOnScreen(iArr3);
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
                ArrayList<Drawable> arrayList = this.f53441d;
                return arrayList != null && arrayList.contains(drawable);
            }
            return true;
        }
    }

    public C14650o(Context context, ViewGroup viewGroup, View view) {
        this.f53437a = new C14651a(context, viewGroup, view, this);
    }

    @Override // com.google.android.material.internal.AbstractC14653q
    /* renamed from: a */
    public final void mo10501a(Drawable drawable) {
        C14651a c14651a = this.f53437a;
        if (!c14651a.f53443f) {
            if (c14651a.f53441d == null) {
                c14651a.f53441d = new ArrayList<>();
            }
            if (c14651a.f53441d.contains(drawable)) {
                return;
            }
            c14651a.f53441d.add(drawable);
            c14651a.invalidate(drawable.getBounds());
            drawable.setCallback(c14651a);
            return;
        }
        throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
    }

    @Override // com.google.android.material.internal.AbstractC14653q
    /* renamed from: b */
    public final void mo10500b(Drawable drawable) {
        C14651a c14651a = this.f53437a;
        if (c14651a.f53441d != null) {
            c14651a.f53441d.remove(drawable);
            c14651a.invalidate(drawable.getBounds());
            drawable.setCallback(null);
            if (c14651a.getChildCount() != 0) {
                return;
            }
            if (c14651a.f53441d != null && c14651a.f53441d.size() != 0) {
                return;
            }
            c14651a.f53443f = true;
            c14651a.f53439b.removeView(c14651a);
        }
    }
}
