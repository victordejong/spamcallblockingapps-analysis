package com.bytedance.sdk.openadsdk.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Constants;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ag.class */
public class ag {

    /* renamed from: a  reason: collision with root package name */
    private static float f10280a = -1.0f;

    /* renamed from: b  reason: collision with root package name */
    private static int f10281b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static float f10282c = -1.0f;

    /* renamed from: d  reason: collision with root package name */
    private static int f10283d = -1;
    private static int e = -1;
    private static WindowManager f;

    static {
        a(n.a());
    }

    public static float a(Context context, float f2) {
        a(context);
        return (f2 * e(context)) + 0.5f;
    }

    public static void a(Activity activity) {
        if (activity != null) {
            try {
                if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
                    activity.getWindow().getDecorView().setSystemUiVisibility(8);
                } else if (Build.VERSION.SDK_INT >= 19) {
                    activity.getWindow().getDecorView().setSystemUiVisibility(3846);
                    activity.getWindow().addFlags(134217728);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(Context context) {
        Context a2 = context == null ? n.a() : context;
        f = (WindowManager) n.a().getSystemService("window");
        if (a2 != null) {
            if (a()) {
                DisplayMetrics displayMetrics = a2.getResources().getDisplayMetrics();
                f10280a = displayMetrics.density;
                f10281b = displayMetrics.densityDpi;
                f10282c = displayMetrics.scaledDensity;
                f10283d = displayMetrics.widthPixels;
                e = displayMetrics.heightPixels;
            }
            if (context != null && context.getResources() != null && context.getResources().getConfiguration() != null) {
                if (context.getResources().getConfiguration().orientation == 1) {
                    int i = f10283d;
                    int i2 = e;
                    if (i > i2) {
                        f10283d = i2;
                        e = i;
                        return;
                    }
                    return;
                }
                int i3 = f10283d;
                int i4 = e;
                if (i3 < i4) {
                    f10283d = i4;
                    e = i3;
                }
            }
        }
    }

    public static void a(Context context, i iVar, String str, WebView webView) {
    }

    public static void a(View view, float f2) {
        if (view != null) {
            view.setAlpha(f2);
        }
    }

    public static void a(View view, int i) {
        if (view != null && view.getVisibility() != i && a(i)) {
            view.setVisibility(i);
        }
    }

    public static void a(View view, int i, int i2, int i3, int i4) {
        Rect rect = new Rect();
        view.getHitRect(rect);
        rect.top -= i;
        rect.bottom += i2;
        rect.left -= i3;
        rect.right += i4;
        ((View) view.getParent()).setTouchDelegate(new l(rect, view));
    }

    public static void a(View view, View.OnClickListener onClickListener, String str) {
        if (view == null) {
            q.e("OnclickListener ", str + " is null , can not set OnClickListener !!!");
            return;
        }
        view.setOnClickListener(onClickListener);
    }

    public static void a(View view, View.OnTouchListener onTouchListener, String str) {
        if (view == null) {
            q.e("OnTouchListener ", str + " is null , can not set OnTouchListener !!!");
            return;
        }
        view.setOnTouchListener(onTouchListener);
    }

    private static void a(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4) {
        if (view != null && marginLayoutParams != null) {
            if (marginLayoutParams.leftMargin != i || marginLayoutParams.topMargin != i2 || marginLayoutParams.rightMargin != i3 || marginLayoutParams.bottomMargin != i4) {
                if (i != -3) {
                    marginLayoutParams.leftMargin = i;
                }
                if (i2 != -3) {
                    marginLayoutParams.topMargin = i2;
                }
                if (i3 != -3) {
                    marginLayoutParams.rightMargin = i3;
                }
                if (i4 != -3) {
                    marginLayoutParams.bottomMargin = i4;
                }
                view.setLayoutParams(marginLayoutParams);
            }
        }
    }

    public static void a(TextView textView, CharSequence charSequence) {
        if (textView != null && !TextUtils.isEmpty(charSequence)) {
            textView.setText(charSequence);
        }
    }

    private static boolean a() {
        return f10280a < BitmapDescriptorFactory.HUE_RED || f10281b < 0 || f10282c < BitmapDescriptorFactory.HUE_RED || f10283d < 0 || e < 0;
    }

    private static boolean a(int i) {
        return i == 0 || i == 8 || i == 4;
    }

    public static int[] a(View view) {
        int[] iArr;
        if (view == null || view.getVisibility() != 0) {
            iArr = null;
        } else {
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr2);
            iArr = iArr2;
        }
        return iArr;
    }

    public static int b(Context context, float f2) {
        a(context);
        float e2 = e(context);
        float f3 = e2;
        if (e2 <= BitmapDescriptorFactory.HUE_RED) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    public static void b(View view, int i, int i2, int i3, int i4) {
        ViewGroup.LayoutParams layoutParams;
        if (view != null && (layoutParams = view.getLayoutParams()) != null && (layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            a(view, (ViewGroup.MarginLayoutParams) layoutParams, i, i2, i3, i4);
        }
    }

    public static int[] b(Context context) {
        if (context == null) {
            return null;
        }
        if (f == null) {
            f = (WindowManager) n.a().getSystemService("window");
        }
        int[] iArr = new int[2];
        WindowManager windowManager = f;
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            int i3 = i2;
            int i4 = i;
            if (Build.VERSION.SDK_INT >= 14) {
                i3 = i2;
                i4 = i;
                if (Build.VERSION.SDK_INT < 17) {
                    i4 = i;
                    try {
                        int intValue = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                        i4 = intValue;
                        i3 = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                        i4 = intValue;
                    } catch (Exception e2) {
                        i3 = i2;
                    }
                }
            }
            int i5 = i3;
            int i6 = i4;
            if (Build.VERSION.SDK_INT >= 17) {
                i6 = i4;
                try {
                    Point point = new Point();
                    Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
                    int i7 = point.x;
                    i6 = i7;
                    i5 = point.y;
                    i6 = i7;
                } catch (Exception e3) {
                    i5 = i3;
                }
            }
            iArr[0] = i6;
            iArr[1] = i5;
        }
        if (iArr[0] <= 0 || iArr[1] <= 0) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            iArr[0] = displayMetrics2.widthPixels;
            iArr[1] = displayMetrics2.heightPixels;
        }
        return iArr;
    }

    public static int[] b(View view) {
        int[] iArr;
        if (view != null) {
            int[] iArr2 = new int[2];
            view.getLocationOnScreen(iArr2);
            iArr = iArr2;
        } else {
            iArr = null;
        }
        return iArr;
    }

    public static int c(Context context) {
        a(context);
        return f10283d;
    }

    public static int c(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int[] c(View view) {
        return view != null ? new int[]{view.getWidth(), view.getHeight()} : null;
    }

    public static int d(Context context) {
        a(context);
        return e;
    }

    public static boolean d(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public static float e(Context context) {
        a(context);
        return f10280a;
    }

    public static boolean e(View view) {
        return view != null && view.getVisibility() == 0 && view.getAlpha() == 1.0f;
    }

    public static int f(Context context) {
        a(context);
        return f10281b;
    }

    public static void f(final View view) {
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, BitmapDescriptorFactory.HUE_RED);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.ag.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    ag.a(view, 8);
                    ObjectAnimator.ofFloat(view, "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(0L).start();
                }
            });
            ofFloat.setDuration(800L);
            ofFloat.start();
        }
    }

    public static int g(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        Display defaultDisplay = ((WindowManager) context2.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return displayMetrics.heightPixels;
    }

    public static void g(View view) {
        if (view != null) {
            a(view, 0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.ag.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    super.onAnimationEnd(animator);
                }
            });
            ofFloat.setDuration(300L);
            ofFloat.start();
        }
    }

    public static int h(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        Display defaultDisplay = ((WindowManager) context2.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        } else {
            defaultDisplay.getMetrics(displayMetrics);
        }
        return displayMetrics.widthPixels;
    }

    public static float i(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        float f2 = BitmapDescriptorFactory.HUE_RED;
        int identifier = context2.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        if (identifier > 0) {
            f2 = context2.getApplicationContext().getResources().getDimensionPixelSize(identifier);
        }
        return f2;
    }
}
