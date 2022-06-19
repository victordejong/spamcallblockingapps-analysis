package com.verizon.ads.support.utils;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import com.verizon.ads.EnvironmentInfo;
import com.verizon.ads.Logger;
import java.util.Locale;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/utils/ViewUtils.class */
public class ViewUtils {

    /* renamed from: a */
    private static final Logger f61722a = Logger.getInstance(ViewUtils.class);

    /* renamed from: b */
    private static volatile float f61723b = -1.0f;

    public static void attachView(ViewGroup viewGroup, View view) {
        attachView(viewGroup, view, null);
    }

    public static void attachView(ViewGroup viewGroup, View view, ViewGroup.LayoutParams layoutParams) {
        Context context;
        if (view.getParent() != null) {
            removeFromParent(view);
        }
        Context context2 = view.getContext();
        if ((context2 instanceof MutableContextWrapper) && context2 != (context = viewGroup.getContext())) {
            f61722a.m5567d("Changing view context to match parent context");
            ((MutableContextWrapper) context2).setBaseContext(context);
        }
        if (layoutParams != null) {
            viewGroup.addView(view, layoutParams);
        } else {
            viewGroup.addView(view);
        }
    }

    public static int convertDipsToPixels(Context context, int i) {
        return (int) Math.ceil(TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics()));
    }

    public static int convertPixelsToDips(Context context, int i) {
        if (f61723b == -1.0f) {
            f61723b = new EnvironmentInfo(context).getDeviceInfo().getScreenInfo().getDensity();
        }
        return (int) (i / f61723b);
    }

    public static void convertPixelsToDips(Context context, Rect rect) {
        if (rect == null) {
            f61722a.m5565e("Unable to convert for null dimensions");
            return;
        }
        if (f61723b == -1.0f) {
            f61723b = new EnvironmentInfo(context).getDeviceInfo().getScreenInfo().getDensity();
        }
        int i = (int) ((rect.right - rect.left) / f61723b);
        rect.left = (int) (rect.left / f61723b);
        rect.top = (int) (rect.top / f61723b);
        rect.right = rect.left + i;
        rect.bottom = rect.top + ((int) ((rect.bottom - rect.top) / f61723b));
        if (!Logger.isLogLevelEnabled(3)) {
            return;
        }
        f61722a.m5567d(String.format("Converted dimensions from pixels to dips: %s", rect.flattenToString()));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.app.Activity getActivityForView(android.view.View r7) {
        /*
            r0 = r7
            if (r0 == 0) goto L30
            r0 = r7
            android.content.Context r0 = r0.getContext()
            r8 = r0
        L9:
            r0 = r8
            boolean r0 = r0 instanceof android.app.Activity
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L24
            r0 = r8
            boolean r0 = r0 instanceof android.content.ContextWrapper
            if (r0 == 0) goto L24
            r0 = r8
            android.content.ContextWrapper r0 = (android.content.ContextWrapper) r0
            android.content.Context r0 = r0.getBaseContext()
            r8 = r0
            goto L9
        L24:
            r0 = r9
            if (r0 == 0) goto L30
            r0 = r8
            android.app.Activity r0 = (android.app.Activity) r0
            r8 = r0
            goto L32
        L30:
            r0 = 0
            r8 = r0
        L32:
            r0 = 3
            boolean r0 = com.verizon.ads.Logger.isLogLevelEnabled(r0)
            if (r0 == 0) goto L50
            com.verizon.ads.Logger r0 = com.verizon.ads.support.utils.ViewUtils.f61722a
            java.lang.String r1 = "Found activity <%s> for view <%s>"
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = r2
            r4 = 0
            r5 = r8
            r3[r4] = r5
            r3 = r2
            r4 = 1
            r5 = r7
            r3[r4] = r5
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r0.m5567d(r1)
        L50:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.support.utils.ViewUtils.getActivityForView(android.view.View):android.app.Activity");
    }

    public static int getActivityHashForView(View view) {
        int i;
        Activity activityForView = getActivityForView(view);
        if (activityForView == null) {
            f61722a.m5565e("Unable to get activity hash");
            i = -1;
        } else {
            i = activityForView.hashCode();
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61722a.m5567d(String.format(Locale.getDefault(), "Found activity hash code <%d> for view <%s>", Integer.valueOf(i), view.toString()));
        }
        return i;
    }

    public static Rect getContentDimensions(View view, Rect rect) {
        if (view == null) {
            f61722a.m5565e("Unable to calculate content dimensions for null view");
            return null;
        }
        ViewGroup decorView = getDecorView(view);
        if (decorView == null) {
            f61722a.m5565e("Unable to calculate content for null root view");
            return null;
        }
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        decorView.getWindowVisibleDisplayFrame(rect2);
        if (Logger.isLogLevelEnabled(3)) {
            f61722a.m5567d(String.format("Content dimensions for View <%s>: %s", view, rect2.flattenToString()));
        }
        return rect2;
    }

    public static ViewGroup getDecorView(View view) {
        Activity activityForView = getActivityForView(view);
        ViewGroup viewGroup = null;
        Window window = activityForView != null ? activityForView.getWindow() : null;
        ViewGroup decorView = window != null ? window.getDecorView() : view != null ? view.getRootView() : null;
        if (decorView instanceof ViewGroup) {
            viewGroup = decorView;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61722a.m5567d(String.format("Found decor view <%s> for view <%s>", viewGroup, view));
        }
        return viewGroup;
    }

    public static Rect getViewDimensionsOnScreen(View view, Rect rect) {
        if (view == null) {
            f61722a.m5565e("Unable to calculate view dimensions for null view");
            return null;
        }
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect2.left = iArr[0];
        rect2.top = iArr[1];
        rect2.right = rect2.left + view.getWidth();
        rect2.bottom = rect2.top + view.getHeight();
        if (Logger.isLogLevelEnabled(3)) {
            f61722a.m5567d(String.format("On screen dimensions for View <%s>: %s", view, rect2.flattenToString()));
        }
        return rect2;
    }

    public static Rect getViewDimensionsRelativeToContent(View view, Rect rect) {
        Rect viewDimensionsOnScreen = getViewDimensionsOnScreen(view, rect);
        if (viewDimensionsOnScreen != null) {
            ViewGroup decorView = getDecorView(view);
            if (decorView == null) {
                f61722a.m5565e("Unable to calculate dimensions for null root view");
                return null;
            }
            Rect rect2 = new Rect();
            decorView.getWindowVisibleDisplayFrame(rect2);
            viewDimensionsOnScreen.top -= rect2.top;
            viewDimensionsOnScreen.bottom -= rect2.top;
        }
        if (Logger.isLogLevelEnabled(3)) {
            f61722a.m5567d(String.format("Dimensions relative to content for View <%s>: %s", view, viewDimensionsOnScreen != null ? viewDimensionsOnScreen.flattenToString() : JsonReaderKt.NULL));
        }
        return viewDimensionsOnScreen;
    }

    public static void removeFromParent(View view) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            f61722a.m5567d("Unable to remove view from parent, no valid parent view found");
        } else {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static void setRequestedOrientationSafe(Activity activity, int i) {
        try {
            activity.setRequestedOrientation(i);
        } catch (IllegalStateException e) {
            f61722a.m5558w("Orientation not changed due to android issue: https://issuetracker.google.com/issues/68454482", e);
        }
    }
}
