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
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C1236R;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ViewUtils.class */
public class ViewUtils {

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener.class */
    public interface OnApplyWindowInsetsListener {
        WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ViewUtils$RelativePadding.class */
    public static class RelativePadding {
        public int bottom;
        public int end;
        public int start;
        public int top;

        public RelativePadding(int i, int i2, int i3, int i4) {
            this.start = i;
            this.top = i2;
            this.end = i3;
            this.bottom = i4;
        }

        public RelativePadding(RelativePadding relativePadding) {
            this.start = relativePadding.start;
            this.top = relativePadding.top;
            this.end = relativePadding.end;
            this.bottom = relativePadding.bottom;
        }

        public void applyToView(View view) {
            ViewCompat.setPaddingRelative(view, this.start, this.top, this.end, this.bottom);
        }
    }

    private ViewUtils() {
    }

    public static void addOnGlobalLayoutListener(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void doOnApplyWindowInsets(View view, AttributeSet attributeSet, int i, int i2) {
        doOnApplyWindowInsets(view, attributeSet, i, i2, null);
    }

    public static void doOnApplyWindowInsets(View view, AttributeSet attributeSet, int i, int i2, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, C1236R.styleable.Insets, i, i2);
        final boolean z = obtainStyledAttributes.getBoolean(C1236R.styleable.Insets_paddingBottomSystemWindowInsets, false);
        final boolean z2 = obtainStyledAttributes.getBoolean(C1236R.styleable.Insets_paddingLeftSystemWindowInsets, false);
        final boolean z3 = obtainStyledAttributes.getBoolean(C1236R.styleable.Insets_paddingRightSystemWindowInsets, false);
        obtainStyledAttributes.recycle();
        doOnApplyWindowInsets(view, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.2
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding) {
                if (z) {
                    relativePadding.bottom += windowInsetsCompat.getSystemWindowInsetBottom();
                }
                boolean isLayoutRtl = ViewUtils.isLayoutRtl(view2);
                if (z2) {
                    if (isLayoutRtl) {
                        relativePadding.end += windowInsetsCompat.getSystemWindowInsetLeft();
                    } else {
                        relativePadding.start += windowInsetsCompat.getSystemWindowInsetLeft();
                    }
                }
                if (z3) {
                    if (isLayoutRtl) {
                        relativePadding.start += windowInsetsCompat.getSystemWindowInsetRight();
                    } else {
                        relativePadding.end += windowInsetsCompat.getSystemWindowInsetRight();
                    }
                }
                relativePadding.applyToView(view2);
                OnApplyWindowInsetsListener onApplyWindowInsetsListener2 = onApplyWindowInsetsListener;
                WindowInsetsCompat windowInsetsCompat2 = windowInsetsCompat;
                if (onApplyWindowInsetsListener2 != null) {
                    windowInsetsCompat2 = onApplyWindowInsetsListener2.onApplyWindowInsets(view2, windowInsetsCompat, relativePadding);
                }
                return windowInsetsCompat2;
            }
        });
    }

    public static void doOnApplyWindowInsets(View view, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        final RelativePadding relativePadding = new RelativePadding(ViewCompat.getPaddingStart(view), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom());
        ViewCompat.setOnApplyWindowInsetsListener(view, new androidx.core.view.OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.3
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return onApplyWindowInsetsListener.onApplyWindowInsets(view2, windowInsetsCompat, new RelativePadding(relativePadding));
            }
        });
        requestApplyInsetsWhenAttached(view);
    }

    public static float dpToPx(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static ViewGroup getContentView(View view) {
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

    public static ViewOverlayImpl getContentViewOverlay(View view) {
        return getOverlay(getContentView(view));
    }

    public static ViewOverlayImpl getOverlay(View view) {
        if (view == null) {
            return null;
        }
        return Build.VERSION.SDK_INT >= 18 ? new ViewOverlayApi18(view) : ViewOverlayApi14.createFrom(view);
    }

    public static float getParentAbsoluteElevation(View view) {
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += ViewCompat.getElevation((View) parent);
        }
        return f;
    }

    public static boolean isLayoutRtl(View view) {
        boolean z = true;
        if (ViewCompat.getLayoutDirection(view) != 1) {
            z = false;
        }
        return z;
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
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

    public static void removeOnGlobalLayoutListener(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            removeOnGlobalLayoutListener(view.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public static void removeOnGlobalLayoutListener(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void requestApplyInsetsWhenAttached(View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            ViewCompat.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.internal.ViewUtils.4
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    view2.removeOnAttachStateChangeListener(this);
                    ViewCompat.requestApplyInsets(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                }
            });
        }
    }

    public static void requestFocusAndShowKeyboard(final View view) {
        view.requestFocus();
        view.post(new Runnable() { // from class: com.google.android.material.internal.ViewUtils.1
            @Override // java.lang.Runnable
            public void run() {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
            }
        });
    }
}
