package com.callapp.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.Switch;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.e.b;
import androidx.core.graphics.drawable.a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.framework.util.StringUtils;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ViewUtils.class */
public class ViewUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f15974a = new float[9];

    private ViewUtils() {
    }

    public static float a(Context context, float f) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static float a(Paint paint, String str) {
        return paint.measureText(str);
    }

    public static int a() {
        return View.generateViewId();
    }

    public static int a(Context context, int i, Typeface typeface, CharSequence charSequence) {
        if (StringUtils.a(charSequence)) {
            return 0;
        }
        TextView textView = new TextView(context);
        textView.setPadding(0, 0, 0, 0);
        if (typeface != null) {
            textView.setTypeface(typeface);
        }
        textView.setTextSize(1, 16.0f);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        textView.setText(charSequence, TextView.BufferType.SPANNABLE);
        textView.measure(makeMeasureSpec, makeMeasureSpec2);
        return textView.getMeasuredHeight();
    }

    private static int a(String str, char c2) {
        int i = 0;
        if (StringUtils.b((CharSequence) str)) {
            i = 0;
            for (char c3 : str.toCharArray()) {
                i = i;
                if (c3 == c2) {
                    i++;
                }
            }
        }
        return i;
    }

    public static int a(int... iArr) {
        Resources resources = CallAppApplication.get().getResources();
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            i += resources.getDimensionPixelSize(iArr[i2]);
        }
        return i;
    }

    public static SpannableString a(String str, SparseIntArray sparseIntArray, int i) {
        return a(str, sparseIntArray, 0, i, (Character) null);
    }

    public static SpannableString a(String str, SparseIntArray sparseIntArray, int i, int i2) {
        return a(str, sparseIntArray, i, i2, (Character) null);
    }

    private static SpannableString a(String str, SparseIntArray sparseIntArray, int i, int i2, Character ch) {
        SpannableString spannableString = new SpannableString(StringUtils.j(str));
        if (sparseIntArray != null) {
            for (int i3 = 0; i3 < sparseIntArray.size(); i3++) {
                int keyAt = sparseIntArray.keyAt(i3);
                int i4 = sparseIntArray.get(keyAt);
                if (i4 >= keyAt && keyAt >= 0) {
                    int i5 = keyAt + i;
                    int i6 = i4 + i;
                    int i7 = i6;
                    if (ch != null) {
                        i7 = i6;
                        if (i6 <= spannableString.length()) {
                            i7 = i6 + a(spannableString.toString().substring(i5, i6), ch.charValue());
                        }
                    }
                    if (i7 <= spannableString.length()) {
                        spannableString.setSpan(new ForegroundColorSpan(i2), i5, i7, 18);
                    }
                }
            }
        }
        return spannableString;
    }

    public static SpannableString a(String str, SparseIntArray sparseIntArray, int i, Character ch) {
        return a(str, sparseIntArray, 0, i, ch);
    }

    public static ViewGroup.MarginLayoutParams a(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = i;
        if (i == Integer.MIN_VALUE) {
            i5 = marginLayoutParams.leftMargin;
        }
        int i6 = i2;
        if (i2 == Integer.MIN_VALUE) {
            i6 = marginLayoutParams.topMargin;
        }
        int i7 = i3;
        if (i3 == Integer.MIN_VALUE) {
            i7 = marginLayoutParams.rightMargin;
        }
        int i8 = i4;
        if (i4 == Integer.MIN_VALUE) {
            i8 = marginLayoutParams.bottomMargin;
        }
        marginLayoutParams.setMargins(i5, i6, i7, i8);
        view.setLayoutParams(marginLayoutParams);
        return marginLayoutParams;
    }

    public static String a(TextView textView, float f, float f2) {
        int measureText = (int) textView.getPaint().measureText(":");
        StringBuilder sb = new StringBuilder(":");
        for (int i = measureText; i <= f * f2; i += measureText) {
            sb.append(":");
        }
        return sb.toString();
    }

    public static void a(Activity activity, View view) {
        int id = view.getId();
        if (id == 2131362775) {
            ((Switch) activity.findViewById(2131362773)).toggle();
        } else if (id == 2131362905) {
            ((Switch) activity.findViewById(2131362902)).toggle();
        } else if (id == 2131364450) {
            ((Switch) activity.findViewById(2131364447)).toggle();
        }
    }

    public static void a(Drawable drawable, int i) {
        a.a(a.f(drawable).mutate(), i);
    }

    public static void a(View view, int i) {
        if (Build.VERSION.SDK_INT <= 22) {
            ((TextView) view).setTextAppearance(view.getContext(), i);
        } else {
            ((TextView) view).setTextAppearance(i);
        }
    }

    public static void a(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i != Integer.MIN_VALUE) {
            layoutParams.width = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            layoutParams.height = i2;
        }
        view.setLayoutParams(layoutParams);
    }

    public static void a(View view, int i, int i2, int i3) {
        if (view != null && i != 0) {
            view.setBackgroundResource(i);
            Drawable background = view.getBackground();
            if (background instanceof GradientDrawable) {
                ((GradientDrawable) background).setStroke(i3, i2);
            }
        }
    }

    public static void a(View view, int i, int i2, int i3, int i4, SpannableString spannableString, View.OnClickListener onClickListener, boolean z) {
        if (view != null) {
            a(view, Integer.valueOf(i), Integer.valueOf(i2));
            TextView textView = (TextView) view.findViewById(i3);
            if (textView != null) {
                if (StringUtils.b(spannableString)) {
                    textView.setText(spannableString);
                    if (z) {
                        textView.setAllCaps(false);
                    }
                }
                if (i4 != 0) {
                    textView.setTextColor(i4);
                }
                textView.setOnClickListener(onClickListener);
            }
        }
    }

    public static void a(View view, int i, int i2, int i3, String str, View.OnClickListener onClickListener) {
        a(view, i, i2, 2131363176, i3, new SpannableString(str), onClickListener, false);
    }

    public static void a(View view, int i, int i2, String str, String str2) {
        Integer valueOf = Integer.valueOf(ThemeUtils.getColor(2131099786));
        if (view != null) {
            View findViewById = view.findViewById(2131362695);
            if (findViewById instanceof ImageView) {
                if (i == 0) {
                    findViewById.setVisibility(8);
                } else {
                    ImageUtils.a((ImageView) findViewById, i, (ColorFilter) null);
                    findViewById.setVisibility(0);
                }
                if (valueOf == null) {
                    ImageView imageView = (ImageView) findViewById;
                    imageView.clearColorFilter();
                    if (Build.VERSION.SDK_INT >= 21) {
                        imageView.setImageTintList(null);
                    }
                    findViewById.invalidate();
                } else if (valueOf.intValue() != 0) {
                    ((ImageView) findViewById).setColorFilter(new PorterDuffColorFilter(valueOf.intValue(), PorterDuff.Mode.SRC_IN));
                }
            }
            View findViewById2 = view.findViewById(2131362696);
            if (findViewById2 instanceof ImageView) {
                if (i2 == 0) {
                    findViewById2.setVisibility(8);
                } else {
                    ImageUtils.a((ImageView) findViewById2, i2, new PorterDuffColorFilter(ThemeUtils.getColor(2131099785), PorterDuff.Mode.SRC_IN));
                    findViewById2.setVisibility(0);
                }
            }
            a(view.findViewById(2131362698), str);
            a(view.findViewById(2131362697), str2);
        }
    }

    public static void a(final View view, final Drawable drawable) {
        if (view != null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.8
                @Override // java.lang.Runnable
                public final void run() {
                    view.setBackground(drawable);
                }
            });
        }
    }

    public static void a(final View view, final ViewGroup.LayoutParams layoutParams) {
        if (view != null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.3
                @Override // java.lang.Runnable
                public final void run() {
                    view.setLayoutParams(layoutParams);
                }
            });
        }
    }

    public static void a(final View view, final ContextRunnable<View> contextRunnable) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.util.ViewUtils.11
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                contextRunnable.run(view);
            }
        });
    }

    public static void a(View view, Integer num, Integer num2) {
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) background;
            if (num.intValue() != 0) {
                gradientDrawable.setColor(num.intValue());
            }
            if (num2.intValue() != 0) {
                gradientDrawable.setStroke((int) CallAppApplication.get().getResources().getDimension(2131166052), num2.intValue());
            }
        }
    }

    private static void a(View view, String str) {
        if (!(view instanceof TextView)) {
            return;
        }
        if (StringUtils.b((CharSequence) str)) {
            TextView textView = (TextView) view;
            textView.setText(str);
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            view.setVisibility(0);
            return;
        }
        view.setVisibility(8);
    }

    public static void a(final View view, final boolean z) {
        if (a(view)) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (z) {
                        view.setVisibility(0);
                    } else {
                        view.setVisibility(8);
                    }
                }
            });
        }
    }

    public static void a(TextView textView, int i, int i2) {
        a(textView, textView.getText().toString(), i, i2);
    }

    public static void a(final TextView textView, final String str) {
        if (a(textView)) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.5
                @Override // java.lang.Runnable
                public final void run() {
                    textView.setText(str);
                }
            });
        }
    }

    private static void a(TextView textView, String str, int i, int i2) {
        TextPaint paint = textView.getPaint();
        int width = textView.getWidth();
        if (width != 0) {
            float f = i;
            textView.setTextSize(0, f);
            float measureText = width / paint.measureText(str);
            if (measureText <= 1.0f) {
                textView.setTextSize(0, Math.max(i2, f * measureText));
            }
        }
    }

    public static void a(AppBarLayout appBarLayout, boolean z) {
        appBarLayout.setExpanded(true, z);
    }

    public static boolean a(View view) {
        return view != null && !(view instanceof ViewStub);
    }

    public static boolean a(View view, float f, float f2) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = (int) (f - iArr[0]);
        int i2 = (int) (f2 - iArr[1]);
        return (i2 >= 0 && i2 <= view.getHeight()) && (i >= 0 && i <= view.getWidth());
    }

    public static boolean a(View view, View view2) {
        Rect rect = new Rect();
        if (view2 == null || view2.getVisibility() != 0 || view == null || view.getParent() == null || !view2.getGlobalVisibleRect(rect)) {
            return false;
        }
        long height = rect.height();
        long width = rect.width();
        long height2 = view2.getHeight() * view2.getWidth();
        return height2 > 0 && (height * width) * 100 >= height2 * 1;
    }

    public static View b(View view) {
        View view2 = view;
        if (!a(view)) {
            view2 = ((ViewStub) view).inflate();
        }
        return view2;
    }

    public static void b(final View view, final int i) {
        if (view != null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.9
                @Override // java.lang.Runnable
                public final void run() {
                    view.setBackgroundColor(i);
                }
            });
        }
    }

    public static void b(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams.width != i) {
            layoutParams.width = i;
            view.setLayoutParams(layoutParams);
        }
        if (layoutParams.height != i2) {
            layoutParams.height = i2;
            view.setLayoutParams(layoutParams);
        }
    }

    public static void b(View view, int i, int i2, int i3, int i4) {
        if (view != null && i != 0) {
            view.setBackgroundResource(i);
            Drawable background = view.getBackground();
            if (background instanceof GradientDrawable) {
                GradientDrawable gradientDrawable = (GradientDrawable) background;
                gradientDrawable.setColor(i2);
                gradientDrawable.setStroke(i4, i3);
            }
        }
    }

    public static void b(final View view, final boolean z) {
        if (a(view)) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (z) {
                        view.setVisibility(0);
                    } else {
                        view.setVisibility(4);
                    }
                }
            });
        }
    }

    public static void b(TextView textView, int i, int i2) {
        CharSequence hint = textView.getHint();
        if (hint != null) {
            a(textView, hint.toString(), i, i2);
        }
    }

    public static b<Boolean, View> c(View view) {
        Boolean bool = Boolean.TRUE;
        View view2 = view;
        if (!a(view)) {
            bool = Boolean.FALSE;
            view2 = ((ViewStub) view).inflate();
        }
        return b.a(bool, view2);
    }

    public static void c(View view, int i) {
        a(view, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i);
    }

    public static void c(View view, int i, int i2) {
        if (view != null && i != 0) {
            view.setBackgroundResource(i);
            Drawable background = view.getBackground();
            if (background instanceof ShapeDrawable) {
                ((ShapeDrawable) background).getPaint().setColor(i2);
            } else if (background instanceof GradientDrawable) {
                ((GradientDrawable) background).setColor(i2);
            } else if (background instanceof ColorDrawable) {
                ((ColorDrawable) background).setColor(i2);
            }
        }
    }

    public static void c(final View view, final boolean z) {
        if (a(view)) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.4
                @Override // java.lang.Runnable
                public final void run() {
                    view.setEnabled(z);
                }
            });
        }
    }

    public static void d(View view) {
        boolean z;
        ViewParent parent = view.getParent();
        while (true) {
            z = parent instanceof CoordinatorLayout;
            if (z) {
                break;
            }
            parent = parent.getParent();
        }
        ViewGroup viewGroup = z ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.requestDisallowInterceptTouchEvent(true);
        }
    }

    public static void d(View view, int i) {
        a(view, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    private static void d(View view, int i, int i2) {
        int paddingLeft = view.getPaddingLeft();
        int paddingTop = view.getPaddingTop();
        int i3 = i;
        if (i == Integer.MIN_VALUE) {
            i3 = view.getPaddingRight();
        }
        int i4 = i2;
        if (i2 == Integer.MIN_VALUE) {
            i4 = view.getPaddingBottom();
        }
        view.setPadding(paddingLeft, paddingTop, i3, i4);
    }

    public static void e(View view, int i) {
        d(view, i, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    public static void f(View view, int i) {
        d(view, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i);
    }

    public static void g(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null && layoutParams.height != i) {
            layoutParams.height = i;
            view.setLayoutParams(layoutParams);
        }
    }

    public static float getDimension(int i) {
        return CallAppApplication.get().getResources().getDimension(i);
    }

    public static Drawable getDrawable(int i) {
        if (i == 0) {
            return null;
        }
        return androidx.appcompat.a.a.a.b(CallAppApplication.get(), i);
    }

    public static void h(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams.width != i) {
            layoutParams.width = i;
            view.setLayoutParams(layoutParams);
        }
    }

    public static boolean isLocaleLTR() {
        Locale locale = Locale.getDefault();
        return Character.getDirectionality(locale.getDisplayName(locale).charAt(0)) == 0;
    }
}
