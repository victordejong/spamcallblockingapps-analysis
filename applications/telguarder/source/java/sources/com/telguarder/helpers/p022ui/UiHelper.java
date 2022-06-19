package com.telguarder.helpers.p022ui;

import android.animation.Animator;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.core.app.ActivityCompat;
import androidx.core.app.ActivityOptionsCompat;
import com.facebook.appevents.codeless.internal.Constants;
import com.telguarder.C2083R;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
/* renamed from: com.telguarder.helpers.ui.UiHelper */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/UiHelper.class */
public class UiHelper {
    private static final String CIRCULAR_REVEAL_X = "CIRCULAR_REVEAL_X";
    private static final String CIRCULAR_REVEAL_Y = "CIRCULAR_REVEAL_Y";

    /* renamed from: com.telguarder.helpers.ui.UiHelper$LinkEffectCompletionHandler */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler.class */
    public interface LinkEffectCompletionHandler {
        void actionDown();

        void actionMove();

        void actionUp();
    }

    /* renamed from: com.telguarder.helpers.ui.UiHelper$PageType */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/UiHelper$PageType.class */
    public enum PageType {
        BLOCKED_POSTCALL(10),
        ANALYZE(20),
        BLOCKLIST(30),
        CALLLIST(40),
        SETTINGS(50),
        SPAMCALLS(60),
        TRENDING(70);
        
        private static final Map map = new HashMap();
        private int value;

        static {
            PageType[] values;
            for (PageType pageType : values()) {
                map.put(Integer.valueOf(pageType.value), pageType);
            }
        }

        PageType(int i) {
            this.value = i;
        }

        public static PageType valueOf(int i) {
            return (PageType) map.get(Integer.valueOf(i));
        }

        public int getValue() {
            return this.value;
        }
    }

    public static int dpToPixel(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5d);
    }

    public static Point getAppUsableScreenSize(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    public static int getColorWrapper(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }

    public static int getDefNavBarHeight(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", Constants.PLATFORM);
        return identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
    }

    public static int getDeviceScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getDeviceScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static Drawable getDrawable(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? context.getDrawable(i) : context.getResources().getDrawable(i);
    }

    public static int getNavBarHeight(Context context) {
        int defNavBarHeight = getDefNavBarHeight(context);
        int i = defNavBarHeight;
        if (defNavBarHeight <= 0) {
            i = getRealNavBarHeight(context);
        }
        return i;
    }

    public static int getRealNavBarHeight(Context context) {
        Point appUsableScreenSize = getAppUsableScreenSize(context);
        Point realScreenSize = getRealScreenSize(context);
        int abs = Math.abs(realScreenSize.y - appUsableScreenSize.y);
        int i = abs;
        if (abs == 0) {
            i = Math.abs(realScreenSize.x - appUsableScreenSize.x);
        }
        return i;
    }

    public static Point getRealScreenSize(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return point;
    }

    public static int getStatusBarHeight(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", Constants.PLATFORM);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int getVisibilityPrcnt(@Nullable View view) {
        if (view != null) {
            try {
                if (view.getVisibility() != 0) {
                    return 0;
                }
                Rect rect = new Rect();
                if (!view.getGlobalVisibleRect(rect)) {
                    return -1;
                }
                long height = rect.height();
                long width = rect.width();
                long height2 = view.getHeight() * view.getWidth();
                if (height2 > 0) {
                    return (int) (((height * width) * 100) / height2);
                }
                return 0;
            } catch (Exception e) {
                return -1;
            }
        }
        return 0;
    }

    public static boolean hasSoftKeys(AppCompatActivity appCompatActivity) {
        if (appCompatActivity == null) {
            return true;
        }
        if (ViewConfiguration.get(appCompatActivity).hasPermanentMenuKey()) {
            return false;
        }
        if (KeyCharacterMap.deviceHasKey(4)) {
            return true;
        }
        int defNavBarHeight = getDefNavBarHeight(appCompatActivity);
        int realNavBarHeight = getRealNavBarHeight(appCompatActivity);
        return defNavBarHeight > 0 && realNavBarHeight > 0 && realNavBarHeight >= defNavBarHeight;
    }

    public static void hideSoftKeyboard(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 1);
        }
    }

    public static void initToolbar(AppCompatActivity appCompatActivity, Toolbar toolbar, int i) {
        toolbar.setTitle(i);
        toolbar.setTitleTextAppearance(appCompatActivity, C2083R.style.Toolbar_TitleText);
        int colorWrapper = getColorWrapper(appCompatActivity, C2083R.C2084color.white);
        toolbar.setTitleTextColor(colorWrapper);
        appCompatActivity.setSupportActionBar(toolbar);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar != null) {
            Drawable drawable = appCompatActivity.getDrawable(2131165211);
            if (drawable != null) {
                drawable.setColorFilter(colorWrapper, PorterDuff.Mode.SRC_ATOP);
                supportActionBar.setHomeAsUpIndicator(drawable);
            }
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(true);
        }
    }

    public static boolean isVisibleOnCardView(View view) {
        View view2 = view;
        if (view == null) {
            return false;
        }
        while (view2.getVisibility() == 0) {
            ViewParent parent = view2.getParent();
            if (parent == null) {
                return view2 instanceof CardView;
            } else if (!(parent instanceof View)) {
                return true;
            } else {
                View view3 = (View) parent;
                view2 = view3;
                if (view3 == null) {
                    return false;
                }
            }
        }
        return false;
    }

    public static void longPressHapticFeedback(View view) {
        view.performHapticFeedback(0);
    }

    public static void openMainFeatureActivity(AppCompatActivity appCompatActivity, View view, Class<?> cls, PageType pageType, boolean z) {
        if (appCompatActivity == null) {
            return;
        }
        Intent intent = new Intent(appCompatActivity, cls);
        if (z) {
            intent.setFlags(131072);
        }
        if (view == null) {
            ActivityCompat.startActivityForResult(appCompatActivity, intent, pageType.getValue(), null);
            return;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        intent.putExtra(CIRCULAR_REVEAL_X, iArr[0] + (view.getWidth() / 2));
        intent.putExtra(CIRCULAR_REVEAL_Y, iArr[1] + (view.getHeight() / 2));
        try {
            if (Build.VERSION.SDK_INT > 22) {
                ActivityCompat.startActivityForResult(appCompatActivity, intent, pageType.getValue(), ActivityOptionsCompat.makeSceneTransitionAnimation(appCompatActivity, view, "transition").toBundle());
            } else {
                ActivityCompat.startActivityForResult(appCompatActivity, intent, pageType.getValue(), null);
            }
        } catch (Exception e) {
        }
    }

    public static int pixelToDp(Context context, int i) {
        return (int) ((i / context.getResources().getDisplayMetrics().density) + 0.5d);
    }

    public static void revealActivity(View view, int[] iArr) {
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, iArr[0], iArr[1], 0.0f, (float) (Math.max(view.getWidth(), view.getHeight()) * 1.1d));
        createCircularReveal.setDuration(300L);
        createCircularReveal.setInterpolator(new AccelerateInterpolator());
        view.setVisibility(0);
        createCircularReveal.start();
    }

    public static void setCircularActivityTransition(AppCompatActivity appCompatActivity, Bundle bundle, final View view) {
        final Intent intent = appCompatActivity.getIntent();
        if (bundle != null || !intent.hasExtra(CIRCULAR_REVEAL_X) || !intent.hasExtra(CIRCULAR_REVEAL_Y)) {
            view.setVisibility(0);
            return;
        }
        view.setVisibility(4);
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.telguarder.helpers.ui.UiHelper.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                UiHelper.revealActivity(view, new int[]{intent.getIntExtra(UiHelper.CIRCULAR_REVEAL_X, 0), intent.getIntExtra(UiHelper.CIRCULAR_REVEAL_Y, 0)});
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        });
    }

    public static void setupBarScreenWithBottomNavbarPadding(AppCompatActivity appCompatActivity, View view, View view2, boolean z) {
        setupBarScreenWithBottomNavbarPadding(appCompatActivity, view, view2, z, true);
    }

    public static void setupBarScreenWithBottomNavbarPadding(AppCompatActivity appCompatActivity, View view, View view2, boolean z, boolean z2) {
        setupBarScreenWithBottomNavbarPadding(appCompatActivity, view, view2, z, z2, true);
    }

    public static void setupBarScreenWithBottomNavbarPadding(AppCompatActivity appCompatActivity, View view, View view2, boolean z, boolean z2, boolean z3) {
        Window window = appCompatActivity.getWindow();
        if (z && Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = window.getDecorView().getSystemUiVisibility();
            if (z2 && Build.VERSION.SDK_INT >= 26) {
                window.getDecorView().setSystemUiVisibility(systemUiVisibility | 8192 | 16);
            } else if (Build.VERSION.SDK_INT >= 23) {
                window.getDecorView().setSystemUiVisibility(systemUiVisibility | 8192);
            }
        }
        window.setFlags(512, 512);
        if (z3) {
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) appCompatActivity.findViewById(16908290)).getChildAt(0);
            viewGroup.setPadding(viewGroup.getPaddingStart(), getStatusBarHeight(appCompatActivity), viewGroup.getPaddingEnd(), viewGroup.getPaddingBottom());
        }
        if (!hasSoftKeys(appCompatActivity)) {
            if (view2 == null) {
                return;
            }
            view2.setVisibility(8);
            return;
        }
        int navBarHeight = getNavBarHeight(appCompatActivity);
        if (view != null) {
            view.setPadding(view.getPaddingStart(), view.getPaddingTop(), view.getPaddingEnd(), navBarHeight);
        }
        if (view2 == null) {
            return;
        }
        view2.setVisibility(0);
        view2.getLayoutParams().height = navBarHeight;
        view2.requestLayout();
    }

    public static void showSoftKeyboard(View view) {
        InputMethodManager inputMethodManager;
        if (!view.requestFocus() || (inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.showSoftInput(view, 1);
    }

    public static void simulateLinkEffect(View view, final int i, final int i2, final LinkEffectCompletionHandler linkEffectCompletionHandler) {
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.helpers.ui.UiHelper.2
            boolean cancelClick = false;
            float lastY;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                LinkEffectCompletionHandler linkEffectCompletionHandler2;
                int action = motionEvent.getAction();
                if (action == 0) {
                    ((TextView) view2).setTextColor(i);
                    this.lastY = motionEvent.getY();
                    this.cancelClick = false;
                    LinkEffectCompletionHandler linkEffectCompletionHandler3 = linkEffectCompletionHandler;
                    if (linkEffectCompletionHandler3 == null) {
                        return true;
                    }
                    linkEffectCompletionHandler3.actionDown();
                    return true;
                } else if (action == 1) {
                    ((TextView) view2).setTextColor(i2);
                    if (this.cancelClick || (linkEffectCompletionHandler2 = linkEffectCompletionHandler) == null) {
                        return true;
                    }
                    linkEffectCompletionHandler2.actionUp();
                    view2.performClick();
                    return true;
                } else if (action != 2) {
                    return true;
                } else {
                    if (Math.abs(this.lastY - motionEvent.getY()) > 10.0f) {
                        ((TextView) view2).setTextColor(i2);
                        this.cancelClick = true;
                    }
                    LinkEffectCompletionHandler linkEffectCompletionHandler4 = linkEffectCompletionHandler;
                    if (linkEffectCompletionHandler4 == null) {
                        return true;
                    }
                    linkEffectCompletionHandler4.actionMove();
                    return true;
                }
            }
        });
    }
}
