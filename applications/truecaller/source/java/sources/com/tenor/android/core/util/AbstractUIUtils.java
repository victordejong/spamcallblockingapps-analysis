package com.tenor.android.core.util;

import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.mopub.common.Constants;
import com.tenor.android.core.C2746R;
import com.tenor.android.core.checker.ScriptDirectionChecker;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractUIUtils.class */
public abstract class AbstractUIUtils {
    public static int dpToPx(Context context, float f) {
        return Math.round(TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics()));
    }

    public static int getDimension(Context context, int i) {
        return Math.round(context.getResources().getDimension(i));
    }

    public static int getScreenHeight(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getScreenWidth(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int getStatusBarHeight(Context context) {
        return getStatusBarHeight(context, 0);
    }

    public static int getStatusBarHeight(Context context, int i) {
        try {
            int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
            if (identifier > 0) {
                return context.getResources().getDimensionPixelSize(identifier);
            }
        } catch (Throwable th) {
        }
        return i;
    }

    public static int getStatusBarHeight(View view) {
        View findViewById = view.getRootView().findViewById(16908335);
        return findViewById != null ? findViewById.getHeight() : dpToPx(view.getContext(), 24.0f);
    }

    public static boolean hasOnScreenSystemBar(Context context) {
        int i;
        boolean z = false;
        try {
            i = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(((WindowManager) context.getSystemService("window")).getDefaultDisplay(), new Object[0])).intValue();
        } catch (Exception e) {
            i = 0;
        }
        if (i - getScreenHeight(context) > 0) {
            z = true;
        }
        return z;
    }

    public static void hideInputMethod(Activity activity) {
        hideInputMethod(activity, 0);
    }

    public static void hideInputMethod(Activity activity, int i) {
        if (activity == null || activity.getCurrentFocus() == null) {
            return;
        }
        View currentFocus = activity.getCurrentFocus();
        currentFocus.clearFocus();
        hideInputMethod(currentFocus, i);
    }

    public static void hideInputMethod(View view) {
        hideInputMethod(view, 0);
    }

    public static void hideInputMethod(View view, int i) {
        InputMethodManager inputMethodManager;
        if (view == null || view.getContext() == null || (inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), i);
    }

    public static boolean isActivityDestroyed(Activity activity) {
        return activity != null && activity.isDestroyed();
    }

    public static boolean isLandscape(Context context) {
        return context != null && context.getResources().getBoolean(C2746R.bool.landscape);
    }

    public static boolean isRightToLeft(Context context) {
        boolean z = true;
        if (ScriptDirectionChecker.checkSelfScriptDirection(context) != 1) {
            z = false;
        }
        return z;
    }

    public static void showInputMethod(Activity activity, int i) {
        if (activity == null || activity.getCurrentFocus() == null) {
            return;
        }
        View currentFocus = activity.getCurrentFocus();
        currentFocus.clearFocus();
        showInputMethod(currentFocus, i);
    }

    public static void showInputMethod(View view) {
        showInputMethod(view, 0);
    }

    public static void showInputMethod(View view, int i) {
        InputMethodManager inputMethodManager;
        if (view == null || view.getContext() == null || (inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.showSoftInput(view, i);
    }

    public static int spToPx(Context context, float f) {
        return Math.round(TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics()));
    }
}
