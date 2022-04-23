package androidx.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.v;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/transition/af.class */
public class af implements ah {

    /* renamed from: a  reason: collision with root package name */
    protected a f5766a;

    /* loaded from: classes-dex2jar.jar:androidx/transition/af$a.class */
    static final class a extends ViewGroup {

        /* renamed from: a  reason: collision with root package name */
        static Method f5767a;

        /* renamed from: b  reason: collision with root package name */
        ViewGroup f5768b;

        /* renamed from: c  reason: collision with root package name */
        View f5769c;

        /* renamed from: d  reason: collision with root package name */
        ArrayList<Drawable> f5770d = null;
        af e;
        private boolean f;

        static {
            try {
                f5767a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, af afVar) {
            super(context);
            this.f5768b = viewGroup;
            this.f5769c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.e = afVar;
        }

        final void a() {
            if (this.f) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        public final void a(View view) {
            a();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (!(viewGroup == this.f5768b || viewGroup.getParent() == null || !v.E(viewGroup))) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f5768b.getLocationOnScreen(iArr2);
                    v.f(view, iArr[0] - iArr2[0]);
                    v.e(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        final void b() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f5770d;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f = true;
                    this.f5768b.removeView(this);
                }
            }
        }

        public final void b(View view) {
            super.removeView(view);
            b();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f5768b.getLocationOnScreen(iArr);
            this.f5769c.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f5769c.getWidth(), this.f5769c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f5770d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f5770d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f5768b == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            ViewGroup viewGroup = this.f5768b;
            if (viewGroup != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                int[] iArr3 = new int[2];
                viewGroup.getLocationOnScreen(iArr2);
                this.f5769c.getLocationOnScreen(iArr3);
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
            ArrayList<Drawable> arrayList = this.f5770d;
            return arrayList != null && arrayList.contains(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(Context context, ViewGroup viewGroup, View view) {
        this.f5766a = new a(context, viewGroup, view, this);
    }

    private static ViewGroup a(View view) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static af c(View view) {
        ViewGroup a2 = a(view);
        if (a2 == null) {
            return null;
        }
        int childCount = a2.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = a2.getChildAt(i);
            if (childAt instanceof a) {
                return ((a) childAt).e;
            }
        }
        return new aa(a2.getContext(), a2, view);
    }

    @Override // androidx.transition.ah
    public final void a(Drawable drawable) {
        a aVar = this.f5766a;
        aVar.a();
        if (aVar.f5770d == null) {
            aVar.f5770d = new ArrayList<>();
        }
        if (!aVar.f5770d.contains(drawable)) {
            aVar.f5770d.add(drawable);
            aVar.invalidate(drawable.getBounds());
            drawable.setCallback(aVar);
        }
    }

    @Override // androidx.transition.ah
    public final void b(Drawable drawable) {
        a aVar = this.f5766a;
        if (aVar.f5770d != null) {
            aVar.f5770d.remove(drawable);
            aVar.invalidate(drawable.getBounds());
            drawable.setCallback(null);
            aVar.b();
        }
    }
}
