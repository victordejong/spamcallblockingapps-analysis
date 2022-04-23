package com.google.android.material.internal;

import android.content.Context;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.ac;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.internal.o;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/r.class */
public final class r {

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/r$a.class */
    public interface a {
        ac a(View view, ac acVar, b bVar);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/r$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f30663a;

        /* renamed from: b  reason: collision with root package name */
        public int f30664b;

        /* renamed from: c  reason: collision with root package name */
        public int f30665c;

        /* renamed from: d  reason: collision with root package name */
        public int f30666d;

        public b(int i, int i2, int i3, int i4) {
            this.f30663a = i;
            this.f30664b = i2;
            this.f30665c = i3;
            this.f30666d = i4;
        }

        public b(b bVar) {
            this.f30663a = bVar.f30663a;
            this.f30664b = bVar.f30664b;
            this.f30665c = bVar.f30665c;
            this.f30666d = bVar.f30666d;
        }

        public final void a(View view) {
            v.b(view, this.f30663a, this.f30664b, this.f30665c, this.f30666d);
        }
    }

    private r() {
    }

    public static float a(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static PorterDuff.Mode a(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    public static void a(View view, final a aVar) {
        final b bVar = new b(v.i(view), view.getPaddingTop(), v.j(view), view.getPaddingBottom());
        v.a(view, new androidx.core.view.r() { // from class: com.google.android.material.internal.r.3
            @Override // androidx.core.view.r
            public final ac a(View view2, ac acVar) {
                return a.this.a(view2, acVar, new b(bVar));
            }
        });
        f(view);
    }

    public static boolean a(View view) {
        return v.f(view) == 1;
    }

    public static void b(final View view) {
        view.requestFocus();
        view.post(new Runnable() { // from class: com.google.android.material.internal.r.1
            @Override // java.lang.Runnable
            public final void run() {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
            }
        });
    }

    public static float c(View view) {
        float f = BitmapDescriptorFactory.HUE_RED;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += v.n((View) parent);
        }
        return f;
    }

    public static ViewGroup d(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(16908290);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static q e(View view) {
        ViewGroup d2 = d(view);
        if (d2 == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            return new p(d2);
        }
        ViewGroup d3 = d(d2);
        if (d3 == null) {
            return null;
        }
        int childCount = d3.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = d3.getChildAt(i);
            if (childAt instanceof o.a) {
                return ((o.a) childAt).e;
            }
        }
        return new m(d3.getContext(), d3, d2);
    }

    private static void f(View view) {
        if (v.E(view)) {
            v.r(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.internal.r.4
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view2) {
                    view2.removeOnAttachStateChangeListener(this);
                    v.r(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }
}
