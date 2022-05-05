package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C1027R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ViewUtils.class */
public class ViewUtils {

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener.class */
    public interface OnApplyWindowInsetsListener {
        /* renamed from: a */
        WindowInsetsCompat mo9424a(View view, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ViewUtils$RelativePadding.class */
    public static class RelativePadding {

        /* renamed from: a */
        public int f10960a;

        /* renamed from: b */
        public int f10961b;

        /* renamed from: c */
        public int f10962c;

        /* renamed from: d */
        public int f10963d;

        public RelativePadding(int i, int i2, int i3, int i4) {
            this.f10960a = i;
            this.f10961b = i2;
            this.f10962c = i3;
            this.f10963d = i4;
        }

        public RelativePadding(@NonNull RelativePadding relativePadding) {
            this.f10960a = relativePadding.f10960a;
            this.f10961b = relativePadding.f10961b;
            this.f10962c = relativePadding.f10962c;
            this.f10963d = relativePadding.f10963d;
        }

        /* renamed from: a */
        public void m9423a(View view) {
            ViewCompat.m19241B0(view, this.f10960a, this.f10961b, this.f10962c, this.f10963d);
        }
    }

    private ViewUtils() {
    }

    /* renamed from: a */
    public static void m9435a(@NonNull View view, @Nullable AttributeSet attributeSet, int i, int i2, @Nullable final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, C1027R.styleable.Insets, i, i2);
        final boolean z = obtainStyledAttributes.getBoolean(C1027R.styleable.Insets_paddingBottomSystemWindowInsets, false);
        final boolean z2 = obtainStyledAttributes.getBoolean(C1027R.styleable.Insets_paddingLeftSystemWindowInsets, false);
        final boolean z3 = obtainStyledAttributes.getBoolean(C1027R.styleable.Insets_paddingRightSystemWindowInsets, false);
        obtainStyledAttributes.recycle();
        m9434b(view, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.2
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            @NonNull
            /* renamed from: a */
            public WindowInsetsCompat mo9424a(View view2, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull RelativePadding relativePadding) {
                if (z) {
                    relativePadding.f10963d += windowInsetsCompat.m19096e();
                }
                boolean h = ViewUtils.m9428h(view2);
                if (z2) {
                    if (h) {
                        relativePadding.f10962c += windowInsetsCompat.m19095f();
                    } else {
                        relativePadding.f10960a += windowInsetsCompat.m19095f();
                    }
                }
                if (z3) {
                    if (h) {
                        relativePadding.f10960a += windowInsetsCompat.m19094g();
                    } else {
                        relativePadding.f10962c += windowInsetsCompat.m19094g();
                    }
                }
                relativePadding.m9423a(view2);
                OnApplyWindowInsetsListener onApplyWindowInsetsListener2 = onApplyWindowInsetsListener;
                WindowInsetsCompat windowInsetsCompat2 = windowInsetsCompat;
                if (onApplyWindowInsetsListener2 != null) {
                    windowInsetsCompat2 = onApplyWindowInsetsListener2.mo9424a(view2, windowInsetsCompat, relativePadding);
                }
                return windowInsetsCompat2;
            }
        });
    }

    /* renamed from: b */
    public static void m9434b(@NonNull View view, @NonNull final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        final RelativePadding relativePadding = new RelativePadding(ViewCompat.m19232G(view), view.getPaddingTop(), ViewCompat.m19234F(view), view.getPaddingBottom());
        ViewCompat.m19243A0(view, new androidx.core.view.OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.3
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            /* renamed from: a */
            public WindowInsetsCompat mo9036a(View view2, WindowInsetsCompat windowInsetsCompat) {
                return OnApplyWindowInsetsListener.this.mo9424a(view2, windowInsetsCompat, new RelativePadding(relativePadding));
            }
        });
        m9426j(view);
    }

    /* renamed from: c */
    public static float m9433c(@NonNull Context context, @Dimension(unit = 0) int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    @Nullable
    /* renamed from: d */
    public static ViewGroup m9432d(@Nullable View view) {
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

    @Nullable
    /* renamed from: e */
    public static ViewOverlayImpl m9431e(@NonNull View view) {
        return m9430f(m9432d(view));
    }

    @Nullable
    /* renamed from: f */
    public static ViewOverlayImpl m9430f(@Nullable View view) {
        if (view == null) {
            return null;
        }
        return Build.VERSION.SDK_INT >= 18 ? new ViewOverlayApi18(view) : ViewOverlayApi14.m9443c(view);
    }

    /* renamed from: g */
    public static float m9429g(@NonNull View view) {
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += ViewCompat.m19168v((View) parent);
        }
        return f;
    }

    /* renamed from: h */
    public static boolean m9428h(View view) {
        boolean z = true;
        if (ViewCompat.m19244A(view) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: i */
    public static PorterDuff.Mode m9427i(int i, PorterDuff.Mode mode) {
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

    /* renamed from: j */
    public static void m9426j(@NonNull View view) {
        if (ViewCompat.m19219R(view)) {
            ViewCompat.m19189k0(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.internal.ViewUtils.4
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NonNull View view2) {
                    view2.removeOnAttachStateChangeListener(this);
                    ViewCompat.m19189k0(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }

    /* renamed from: k */
    public static void m9425k(@NonNull final View view) {
        view.requestFocus();
        view.post(new Runnable() { // from class: com.google.android.material.internal.ViewUtils.1
            @Override // java.lang.Runnable
            public void run() {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
            }
        });
    }
}
