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
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/o.class */
class o implements q {

    /* renamed from: a  reason: collision with root package name */
    protected a f30650a;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/o$a.class */
    static final class a extends ViewGroup {

        /* renamed from: a  reason: collision with root package name */
        static Method f30651a;

        /* renamed from: b  reason: collision with root package name */
        ViewGroup f30652b;

        /* renamed from: c  reason: collision with root package name */
        View f30653c;

        /* renamed from: d  reason: collision with root package name */
        ArrayList<Drawable> f30654d = null;
        o e;
        boolean f;

        static {
            try {
                f30651a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, o oVar) {
            super(context);
            this.f30652b = viewGroup;
            this.f30653c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.e = oVar;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f30652b.getLocationOnScreen(iArr);
            this.f30653c.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f30653c.getWidth(), this.f30653c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f30654d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f30654d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f30652b == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            ViewGroup viewGroup = this.f30652b;
            if (viewGroup != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                int[] iArr3 = new int[2];
                viewGroup.getLocationOnScreen(iArr2);
                this.f30653c.getLocationOnScreen(iArr3);
                int[] iArr4 = {iArr3[0] - iArr2[0], iArr3[1] - iArr2[1]};
                rect.offset(iArr4[0], iArr4[1]);
                return super.invalidateChildInParent(iArr, rect);
            }
            invalidate(rect);
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
            if (super.verifyDrawable(drawable)) {
                return true;
            }
            ArrayList<Drawable> arrayList = this.f30654d;
            return arrayList != null && arrayList.contains(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context, ViewGroup viewGroup, View view) {
        this.f30650a = new a(context, viewGroup, view, this);
    }

    @Override // com.google.android.material.internal.q
    public final void a(Drawable drawable) {
        a aVar = this.f30650a;
        if (!aVar.f) {
            if (aVar.f30654d == null) {
                aVar.f30654d = new ArrayList<>();
            }
            if (!aVar.f30654d.contains(drawable)) {
                aVar.f30654d.add(drawable);
                aVar.invalidate(drawable.getBounds());
                drawable.setCallback(aVar);
                return;
            }
            return;
        }
        throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
    }

    @Override // com.google.android.material.internal.q
    public final void b(Drawable drawable) {
        a aVar = this.f30650a;
        if (aVar.f30654d != null) {
            aVar.f30654d.remove(drawable);
            aVar.invalidate(drawable.getBounds());
            drawable.setCallback(null);
            if (aVar.getChildCount() != 0) {
                return;
            }
            if (aVar.f30654d == null || aVar.f30654d.size() == 0) {
                aVar.f = true;
                aVar.f30652b.removeView(aVar);
            }
        }
    }
}
