package io.github.douglasjunior.androidSimpleTooltip;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.StyleRes;
/* loaded from: classes-dex2jar.jar:io/github/douglasjunior/androidSimpleTooltip/SimpleTooltipUtils.class */
public final class SimpleTooltipUtils {
    private SimpleTooltipUtils() {
    }

    /* renamed from: a */
    public static RectF m4532a(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new RectF(iArr[0], iArr[1], iArr[0] + view.getMeasuredWidth(), iArr[1] + view.getMeasuredHeight());
    }

    /* renamed from: b */
    public static RectF m4531b(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], iArr[0] + view.getMeasuredWidth(), iArr[1] + view.getMeasuredHeight());
    }

    /* renamed from: c */
    public static ViewGroup m4530c(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getRootView();
        ViewGroup viewGroup2 = viewGroup;
        if (viewGroup.getChildCount() == 1) {
            viewGroup2 = viewGroup;
            if (viewGroup.getChildAt(0) instanceof FrameLayout) {
                viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
            }
        }
        return viewGroup2;
    }

    /* renamed from: d */
    public static int m4529d(Context context, @ColorRes int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }

    /* renamed from: e */
    private static ViewGroup.MarginLayoutParams m4528e(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams != null ? layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : new ViewGroup.MarginLayoutParams(layoutParams) : new ViewGroup.MarginLayoutParams(view.getWidth(), view.getHeight());
    }

    /* renamed from: f */
    public static float m4527f(float f) {
        return f * Resources.getSystem().getDisplayMetrics().density;
    }

    /* renamed from: g */
    public static void m4526g(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
        } else {
            view.getViewTreeObserver().removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }

    /* renamed from: h */
    public static void m4525h(TextView textView, @StyleRes int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: i */
    public static void m4524i(View view, float f) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams((int) f, view.getHeight());
        } else {
            layoutParams.width = (int) f;
        }
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: j */
    public static void m4523j(View view, int i) {
        if (Build.VERSION.SDK_INT >= 11) {
            view.setX(i);
            return;
        }
        ViewGroup.MarginLayoutParams e = m4528e(view);
        e.leftMargin = i - view.getLeft();
        view.setLayoutParams(e);
    }

    /* renamed from: k */
    public static void m4522k(View view, int i) {
        if (Build.VERSION.SDK_INT >= 11) {
            view.setY(i);
            return;
        }
        ViewGroup.MarginLayoutParams e = m4528e(view);
        e.topMargin = i - view.getTop();
        view.setLayoutParams(e);
    }

    /* renamed from: l */
    public static int m4521l(int i) {
        if (i == 17) {
            return 1;
        }
        if (i == 48) {
            return 3;
        }
        if (i == 80) {
            return 1;
        }
        if (i == 8388611) {
            return 2;
        }
        if (i == 8388613) {
            return 0;
        }
        throw new IllegalArgumentException("Gravity must have be CENTER, START, END, TOP or BOTTOM.");
    }
}
