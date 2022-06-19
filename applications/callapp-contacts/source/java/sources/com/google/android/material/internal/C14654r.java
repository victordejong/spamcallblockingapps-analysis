package com.google.android.material.internal;

import android.content.Context;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.AbstractC0922r;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import com.google.android.material.internal.C14650o;
/* renamed from: com.google.android.material.internal.r */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/r.class */
public final class C14654r {

    /* renamed from: com.google.android.material.internal.r$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/r$a.class */
    public interface AbstractC14659a {
        /* renamed from: a */
        C0889ac mo10490a(View view, C0889ac c0889ac, C14660b c14660b);
    }

    /* renamed from: com.google.android.material.internal.r$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/r$b.class */
    public static final class C14660b {

        /* renamed from: a */
        public int f53452a;

        /* renamed from: b */
        public int f53453b;

        /* renamed from: c */
        public int f53454c;

        /* renamed from: d */
        public int f53455d;

        public C14660b(int i, int i2, int i3, int i4) {
            this.f53452a = i;
            this.f53453b = i2;
            this.f53454c = i3;
            this.f53455d = i4;
        }

        public C14660b(C14660b c14660b) {
            this.f53452a = c14660b.f53452a;
            this.f53453b = c14660b.f53453b;
            this.f53454c = c14660b.f53454c;
            this.f53455d = c14660b.f53455d;
        }

        /* renamed from: a */
        public final void m10489a(View view) {
            C0926v.m44109b(view, this.f53452a, this.f53453b, this.f53454c, this.f53455d);
        }
    }

    private C14654r() {
    }

    /* renamed from: a */
    public static float m10498a(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    public static PorterDuff.Mode m10499a(int i, PorterDuff.Mode mode) {
        if (i != 3) {
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
        return PorterDuff.Mode.SRC_OVER;
    }

    /* renamed from: a */
    public static void m10496a(View view, final AbstractC14659a abstractC14659a) {
        final C14660b c14660b = new C14660b(C0926v.m44091i(view), view.getPaddingTop(), C0926v.m44089j(view), view.getPaddingBottom());
        C0926v.m44120a(view, new AbstractC0922r() { // from class: com.google.android.material.internal.r.3
            @Override // androidx.core.view.AbstractC0922r
            /* renamed from: a */
            public final C0889ac mo10180a(View view2, C0889ac c0889ac) {
                return abstractC14659a.mo10490a(view2, c0889ac, new C14660b(c14660b));
            }
        });
        m10491f(view);
    }

    /* renamed from: a */
    public static boolean m10497a(View view) {
        return C0926v.m44097f(view) == 1;
    }

    /* renamed from: b */
    public static void m10495b(final View view) {
        view.requestFocus();
        view.post(new Runnable() { // from class: com.google.android.material.internal.r.1
            @Override // java.lang.Runnable
            public final void run() {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
            }
        });
    }

    /* renamed from: c */
    public static float m10494c(View view) {
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += C0926v.m44085n((View) parent);
        }
        return f;
    }

    /* renamed from: d */
    public static ViewGroup m10493d(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(16908290);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView != view && (rootView instanceof ViewGroup)) {
            return (ViewGroup) rootView;
        }
        return null;
    }

    /* renamed from: e */
    public static AbstractC14653q m10492e(View view) {
        ViewGroup m10493d = m10493d(view);
        if (m10493d != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                return new C14652p(m10493d);
            }
            ViewGroup m10493d2 = m10493d(m10493d);
            if (m10493d2 == null) {
                return null;
            }
            int childCount = m10493d2.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = m10493d2.getChildAt(i);
                if (childAt instanceof C14650o.C14651a) {
                    return ((C14650o.C14651a) childAt).f53442e;
                }
            }
            return new C14648m(m10493d2.getContext(), m10493d2, m10493d);
        }
        return null;
    }

    /* renamed from: f */
    private static void m10491f(View view) {
        if (C0926v.m44154E(view)) {
            C0926v.m44081r(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.internal.r.4
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view2) {
                    view2.removeOnAttachStateChangeListener(this);
                    C0926v.m44081r(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }
}
