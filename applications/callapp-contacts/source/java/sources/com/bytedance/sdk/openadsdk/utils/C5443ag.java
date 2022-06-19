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
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Constants;
/* renamed from: com.bytedance.sdk.openadsdk.utils.ag */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ag.class */
public class C5443ag {

    /* renamed from: a */
    private static float f18984a = -1.0f;

    /* renamed from: b */
    private static int f18985b = -1;

    /* renamed from: c */
    private static float f18986c = -1.0f;

    /* renamed from: d */
    private static int f18987d = -1;

    /* renamed from: e */
    private static int f18988e = -1;

    /* renamed from: f */
    private static WindowManager f18989f;

    static {
        m32233a(C4600n.m34815a());
    }

    /* renamed from: a */
    public static float m32232a(Context context, float f) {
        m32233a(context);
        return (f * m32213e(context)) + 0.5f;
    }

    /* renamed from: a */
    public static void m32234a(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT > 11 && Build.VERSION.SDK_INT < 19) {
                activity.getWindow().getDecorView().setSystemUiVisibility(8);
            } else if (Build.VERSION.SDK_INT < 19) {
            } else {
                activity.getWindow().getDecorView().setSystemUiVisibility(3846);
                activity.getWindow().addFlags(134217728);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m32233a(Context context) {
        Context m34815a = context == null ? C4600n.m34815a() : context;
        f18989f = (WindowManager) C4600n.m34815a().getSystemService("window");
        if (m34815a == null) {
            return;
        }
        if (m32236a()) {
            DisplayMetrics displayMetrics = m34815a.getResources().getDisplayMetrics();
            f18984a = displayMetrics.density;
            f18985b = displayMetrics.densityDpi;
            f18986c = displayMetrics.scaledDensity;
            f18987d = displayMetrics.widthPixels;
            f18988e = displayMetrics.heightPixels;
        }
        if (context == null || context.getResources() == null || context.getResources().getConfiguration() == null) {
            return;
        }
        if (context.getResources().getConfiguration().orientation == 1) {
            int i = f18987d;
            int i2 = f18988e;
            if (i <= i2) {
                return;
            }
            f18987d = i2;
            f18988e = i;
            return;
        }
        int i3 = f18987d;
        int i4 = f18988e;
        if (i3 >= i4) {
            return;
        }
        f18987d = i4;
        f18988e = i3;
    }

    /* renamed from: a */
    public static void m32231a(Context context, C4557i c4557i, String str, WebView webView) {
    }

    /* renamed from: a */
    public static void m32229a(View view, float f) {
        if (view == null) {
            return;
        }
        view.setAlpha(f);
    }

    /* renamed from: a */
    public static void m32228a(View view, int i) {
        if (view == null || view.getVisibility() == i || !m32235a(i)) {
            return;
        }
        view.setVisibility(i);
    }

    /* renamed from: a */
    public static void m32227a(View view, int i, int i2, int i3, int i4) {
        Rect rect = new Rect();
        view.getHitRect(rect);
        rect.top -= i;
        rect.bottom += i2;
        rect.left -= i3;
        rect.right += i4;
        ((View) view.getParent()).setTouchDelegate(new C5470l(rect, view));
    }

    /* renamed from: a */
    public static void m32226a(View view, View.OnClickListener onClickListener, String str) {
        if (view != null) {
            view.setOnClickListener(onClickListener);
            return;
        }
        C5478q.m32106e("OnclickListener ", str + " is null , can not set OnClickListener !!!");
    }

    /* renamed from: a */
    public static void m32225a(View view, View.OnTouchListener onTouchListener, String str) {
        if (view != null) {
            view.setOnTouchListener(onTouchListener);
            return;
        }
        C5478q.m32106e("OnTouchListener ", str + " is null , can not set OnTouchListener !!!");
    }

    /* renamed from: a */
    private static void m32224a(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4) {
        if (view == null || marginLayoutParams == null) {
            return;
        }
        if (marginLayoutParams.leftMargin == i && marginLayoutParams.topMargin == i2 && marginLayoutParams.rightMargin == i3 && marginLayoutParams.bottomMargin == i4) {
            return;
        }
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

    /* renamed from: a */
    public static void m32223a(TextView textView, CharSequence charSequence) {
        if (textView == null || TextUtils.isEmpty(charSequence)) {
            return;
        }
        textView.setText(charSequence);
    }

    /* renamed from: a */
    private static boolean m32236a() {
        return f18984a < BitmapDescriptorFactory.HUE_RED || f18985b < 0 || f18986c < BitmapDescriptorFactory.HUE_RED || f18987d < 0 || f18988e < 0;
    }

    /* renamed from: a */
    private static boolean m32235a(int i) {
        return i == 0 || i == 8 || i == 4;
    }

    /* renamed from: a */
    public static int[] m32230a(View view) {
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

    /* renamed from: b */
    public static int m32221b(Context context, float f) {
        m32233a(context);
        float m32213e = m32213e(context);
        float f2 = m32213e;
        if (m32213e <= BitmapDescriptorFactory.HUE_RED) {
            f2 = 1.0f;
        }
        return (int) ((f / f2) + 0.5f);
    }

    /* renamed from: b */
    public static void m32219b(View view, int i, int i2, int i3, int i4) {
        ViewGroup.LayoutParams layoutParams;
        if (view == null || (layoutParams = view.getLayoutParams()) == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        m32224a(view, (ViewGroup.MarginLayoutParams) layoutParams, i, i2, i3, i4);
    }

    /* renamed from: b */
    public static int[] m32222b(Context context) {
        if (context == null) {
            return null;
        }
        if (f18989f == null) {
            f18989f = (WindowManager) C4600n.m34815a().getSystemService("window");
        }
        int[] iArr = new int[2];
        WindowManager windowManager = f18989f;
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
                    } catch (Exception e) {
                        i3 = i2;
                    }
                }
            }
            int i5 = i3;
            int i6 = i4;
            if (Build.VERSION.SDK_INT >= 17) {
                i6 = i4;
                try {
                    int i7 = i4;
                    Point point = new Point();
                    int i8 = i4;
                    Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
                    int i9 = i4;
                    int i10 = point.x;
                    i6 = i10;
                    i5 = point.y;
                    i6 = i10;
                } catch (Exception e2) {
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

    /* renamed from: b */
    public static int[] m32220b(View view) {
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

    /* renamed from: c */
    public static int m32218c(Context context) {
        m32233a(context);
        return f18987d;
    }

    /* renamed from: c */
    public static int m32217c(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: c */
    public static int[] m32216c(View view) {
        return view != null ? new int[]{view.getWidth(), view.getHeight()} : null;
    }

    /* renamed from: d */
    public static int m32215d(Context context) {
        m32233a(context);
        return f18988e;
    }

    /* renamed from: d */
    public static boolean m32214d(View view) {
        return view != null && view.getVisibility() == 0;
    }

    /* renamed from: e */
    public static float m32213e(Context context) {
        m32233a(context);
        return f18984a;
    }

    /* renamed from: e */
    public static boolean m32212e(View view) {
        return view != null && view.getVisibility() == 0 && view.getAlpha() == 1.0f;
    }

    /* renamed from: f */
    public static int m32211f(Context context) {
        m32233a(context);
        return f18985b;
    }

    /* renamed from: f */
    public static void m32210f(final View view) {
        if (view == null) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, BitmapDescriptorFactory.HUE_RED);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.openadsdk.utils.ag.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                C5443ag.m32228a(view, 8);
                ObjectAnimator.ofFloat(view, "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(0L).start();
            }
        });
        ofFloat.setDuration(800L);
        ofFloat.start();
    }

    /* renamed from: g */
    public static int m32209g(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
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

    /* renamed from: g */
    public static void m32208g(View view) {
        if (view == null) {
            return;
        }
        m32228a(view, 0);
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

    /* renamed from: h */
    public static int m32207h(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
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

    /* renamed from: i */
    public static float m32206i(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        float f = 0.0f;
        int identifier = context2.getApplicationContext().getResources().getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        if (identifier > 0) {
            f = context2.getApplicationContext().getResources().getDimensionPixelSize(identifier);
        }
        return f;
    }
}
