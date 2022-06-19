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
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.p036e.C0828b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.framework.util.StringUtils;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ViewUtils.class */
public class ViewUtils {

    /* renamed from: a */
    private static final float[] f27879a = new float[9];

    private ViewUtils() {
    }

    /* renamed from: a */
    public static float m27333a(Context context, float f) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    public static float m27331a(Paint paint, String str) {
        return paint.measureText(str);
    }

    /* renamed from: a */
    public static int m27335a() {
        return View.generateViewId();
    }

    /* renamed from: a */
    public static int m27332a(Context context, int i, Typeface typeface, CharSequence charSequence) {
        if (StringUtils.m26059a(charSequence)) {
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

    /* renamed from: a */
    private static int m27308a(String str, char c) {
        int i = 0;
        int i2 = 0;
        if (StringUtils.m26045b((CharSequence) str)) {
            char[] charArray = str.toCharArray();
            int length = charArray.length;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= length) {
                    break;
                }
                int i4 = i;
                if (charArray[i2] == c) {
                    i4 = i + 1;
                }
                i2++;
                i3 = i4;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static int m27303a(int... iArr) {
        Resources resources = CallAppApplication.get().getResources();
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            i += resources.getDimensionPixelSize(iArr[i2]);
        }
        return i;
    }

    /* renamed from: a */
    public static SpannableString m27307a(String str, SparseIntArray sparseIntArray, int i) {
        return m27305a(str, sparseIntArray, 0, i, (Character) null);
    }

    /* renamed from: a */
    public static SpannableString m27306a(String str, SparseIntArray sparseIntArray, int i, int i2) {
        return m27305a(str, sparseIntArray, i, i2, (Character) null);
    }

    /* renamed from: a */
    private static SpannableString m27305a(String str, SparseIntArray sparseIntArray, int i, int i2, Character ch) {
        SpannableString spannableString = new SpannableString(StringUtils.m26020j(str));
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
                            i7 = i6 + m27308a(spannableString.toString().substring(i5, i6), ch.charValue());
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

    /* renamed from: a */
    public static SpannableString m27304a(String str, SparseIntArray sparseIntArray, int i, Character ch) {
        return m27305a(str, sparseIntArray, 0, i, ch);
    }

    /* renamed from: a */
    public static ViewGroup.MarginLayoutParams m27324a(View view, int i, int i2, int i3, int i4) {
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

    /* renamed from: a */
    public static String m27313a(TextView textView, float f, float f2) {
        int measureText = (int) textView.getPaint().measureText(":");
        StringBuilder sb = new StringBuilder(":");
        int i = measureText;
        while (true) {
            int i2 = i;
            if (i2 <= f * f2) {
                sb.append(":");
                i = i2 + measureText;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: a */
    public static void m27334a(Activity activity, View view) {
        int id = view.getId();
        if (id == 2131362775) {
            ((Switch) activity.findViewById(2131362773)).toggle();
        } else if (id == 2131362905) {
            ((Switch) activity.findViewById(2131362902)).toggle();
        } else if (id != 2131364450) {
        } else {
            ((Switch) activity.findViewById(2131364447)).toggle();
        }
    }

    /* renamed from: a */
    public static void m27330a(Drawable drawable, int i) {
        C0840a.m44357a(C0840a.m44345f(drawable).mutate(), i);
    }

    /* renamed from: a */
    public static void m27327a(View view, int i) {
        if (Build.VERSION.SDK_INT <= 22) {
            ((TextView) view).setTextAppearance(view.getContext(), i);
        } else {
            ((TextView) view).setTextAppearance(i);
        }
    }

    /* renamed from: a */
    public static void m27326a(View view, int i, int i2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (i != Integer.MIN_VALUE) {
            layoutParams.width = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            layoutParams.height = i2;
        }
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public static void m27325a(View view, int i, int i2, int i3) {
        if (view == null || i == 0) {
            return;
        }
        view.setBackgroundResource(i);
        Drawable background = view.getBackground();
        if (!(background instanceof GradientDrawable)) {
            return;
        }
        ((GradientDrawable) background).setStroke(i3, i2);
    }

    /* renamed from: a */
    public static void m27323a(View view, int i, int i2, int i3, int i4, SpannableString spannableString, View.OnClickListener onClickListener, boolean z) {
        if (view != null) {
            m27316a(view, Integer.valueOf(i), Integer.valueOf(i2));
            TextView textView = (TextView) view.findViewById(i3);
            if (textView == null) {
                return;
            }
            if (StringUtils.m26045b(spannableString)) {
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

    /* renamed from: a */
    public static void m27322a(View view, int i, int i2, int i3, String str, View.OnClickListener onClickListener) {
        m27323a(view, i, i2, 2131363176, i3, new SpannableString(str), onClickListener, false);
    }

    /* renamed from: a */
    public static void m27321a(View view, int i, int i2, String str, String str2) {
        Integer valueOf = Integer.valueOf(ThemeUtils.getColor(2131099786));
        if (view != null) {
            View findViewById = view.findViewById(2131362695);
            if (findViewById instanceof ImageView) {
                if (i == 0) {
                    findViewById.setVisibility(8);
                } else {
                    ImageUtils.m27529a((ImageView) findViewById, i, (ColorFilter) null);
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
                    ImageUtils.m27529a((ImageView) findViewById2, i2, new PorterDuffColorFilter(ThemeUtils.getColor(2131099785), PorterDuff.Mode.SRC_IN));
                    findViewById2.setVisibility(0);
                }
            }
            m27315a(view.findViewById(2131362698), str);
            m27315a(view.findViewById(2131362697), str2);
        }
    }

    /* renamed from: a */
    public static void m27320a(final View view, final Drawable drawable) {
        if (view != null) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.8
                @Override // java.lang.Runnable
                public final void run() {
                    view.setBackground(drawable);
                }
            });
        }
    }

    /* renamed from: a */
    public static void m27318a(final View view, final ViewGroup.LayoutParams layoutParams) {
        if (view != null) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.3
                @Override // java.lang.Runnable
                public final void run() {
                    view.setLayoutParams(layoutParams);
                }
            });
        }
    }

    /* renamed from: a */
    public static void m27317a(final View view, final ContextRunnable<View> contextRunnable) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.util.ViewUtils.11
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                contextRunnable.run(view);
            }
        });
    }

    /* renamed from: a */
    public static void m27316a(View view, Integer num, Integer num2) {
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) background;
            if (num.intValue() != 0) {
                gradientDrawable.setColor(num.intValue());
            }
            if (num2.intValue() == 0) {
                return;
            }
            gradientDrawable.setStroke((int) CallAppApplication.get().getResources().getDimension(2131166052), num2.intValue());
        }
    }

    /* renamed from: a */
    private static void m27315a(View view, String str) {
        if (view instanceof TextView) {
            if (!StringUtils.m26045b((CharSequence) str)) {
                view.setVisibility(8);
                return;
            }
            TextView textView = (TextView) view;
            textView.setText(str);
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            view.setVisibility(0);
        }
    }

    /* renamed from: a */
    public static void m27314a(final View view, final boolean z) {
        if (!m27329a(view)) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.1
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

    /* renamed from: a */
    public static void m27312a(TextView textView, int i, int i2) {
        m27310a(textView, textView.getText().toString(), i, i2);
    }

    /* renamed from: a */
    public static void m27311a(final TextView textView, final String str) {
        if (!m27329a(textView)) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.5
            @Override // java.lang.Runnable
            public final void run() {
                textView.setText(str);
            }
        });
    }

    /* renamed from: a */
    private static void m27310a(TextView textView, String str, int i, int i2) {
        TextPaint paint = textView.getPaint();
        int width = textView.getWidth();
        if (width == 0) {
            return;
        }
        float f = i;
        textView.setTextSize(0, f);
        float measureText = width / paint.measureText(str);
        if (measureText > 1.0f) {
            return;
        }
        textView.setTextSize(0, Math.max(i2, f * measureText));
    }

    /* renamed from: a */
    public static void m27309a(AppBarLayout appBarLayout, boolean z) {
        appBarLayout.setExpanded(true, z);
    }

    /* renamed from: a */
    public static boolean m27329a(View view) {
        return view != null && !(view instanceof ViewStub);
    }

    /* renamed from: a */
    public static boolean m27328a(View view, float f, float f2) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = (int) (f - iArr[0]);
        int i2 = (int) (f2 - iArr[1]);
        return (i2 >= 0 && i2 <= view.getHeight()) && (i >= 0 && i <= view.getWidth());
    }

    /* renamed from: a */
    public static boolean m27319a(View view, View view2) {
        Rect rect = new Rect();
        if (view2 == null || view2.getVisibility() != 0 || view == null || view.getParent() == null || !view2.getGlobalVisibleRect(rect)) {
            return false;
        }
        long height = rect.height();
        long width = rect.width();
        long height2 = view2.getHeight() * view2.getWidth();
        return height2 > 0 && (height * width) * 100 >= height2 * 1;
    }

    /* renamed from: b */
    public static View m27302b(View view) {
        View view2 = view;
        if (!m27329a(view)) {
            view2 = ((ViewStub) view).inflate();
        }
        return view2;
    }

    /* renamed from: b */
    public static void m27301b(final View view, final int i) {
        if (view != null) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.9
                @Override // java.lang.Runnable
                public final void run() {
                    view.setBackgroundColor(i);
                }
            });
        }
    }

    /* renamed from: b */
    public static void m27300b(View view, int i, int i2) {
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

    /* renamed from: b */
    public static void m27299b(View view, int i, int i2, int i3, int i4) {
        if (view == null || i == 0) {
            return;
        }
        view.setBackgroundResource(i);
        Drawable background = view.getBackground();
        if (!(background instanceof GradientDrawable)) {
            return;
        }
        GradientDrawable gradientDrawable = (GradientDrawable) background;
        gradientDrawable.setColor(i2);
        gradientDrawable.setStroke(i4, i3);
    }

    /* renamed from: b */
    public static void m27298b(final View view, final boolean z) {
        if (!m27329a(view)) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.2
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

    /* renamed from: b */
    public static void m27297b(TextView textView, int i, int i2) {
        CharSequence hint = textView.getHint();
        if (hint != null) {
            m27310a(textView, hint.toString(), i, i2);
        }
    }

    /* renamed from: c */
    public static C0828b<Boolean, View> m27296c(View view) {
        Boolean bool = Boolean.TRUE;
        View view2 = view;
        if (!m27329a(view)) {
            bool = Boolean.FALSE;
            view2 = ((ViewStub) view).inflate();
        }
        return C0828b.m44412a(bool, view2);
    }

    /* renamed from: c */
    public static void m27295c(View view, int i) {
        m27324a(view, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i);
    }

    /* renamed from: c */
    public static void m27294c(View view, int i, int i2) {
        if (view == null || i == 0) {
            return;
        }
        view.setBackgroundResource(i);
        Drawable background = view.getBackground();
        if (background instanceof ShapeDrawable) {
            ((ShapeDrawable) background).getPaint().setColor(i2);
        } else if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setColor(i2);
        } else if (!(background instanceof ColorDrawable)) {
        } else {
            ((ColorDrawable) background).setColor(i2);
        }
    }

    /* renamed from: c */
    public static void m27293c(final View view, final boolean z) {
        if (!m27329a(view)) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ViewUtils.4
            @Override // java.lang.Runnable
            public final void run() {
                view.setEnabled(z);
            }
        });
    }

    /* renamed from: d */
    public static void m27292d(View view) {
        ViewParent viewParent;
        boolean z;
        ViewParent parent = view.getParent();
        while (true) {
            viewParent = parent;
            z = viewParent instanceof CoordinatorLayout;
            if (z) {
                break;
            }
            parent = viewParent.getParent();
        }
        ViewGroup viewGroup = z ? (ViewGroup) viewParent : null;
        if (viewGroup != null) {
            viewGroup.requestDisallowInterceptTouchEvent(true);
        }
    }

    /* renamed from: d */
    public static void m27291d(View view, int i) {
        m27324a(view, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    /* renamed from: d */
    private static void m27290d(View view, int i, int i2) {
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

    /* renamed from: e */
    public static void m27289e(View view, int i) {
        m27290d(view, i, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    /* renamed from: f */
    public static void m27288f(View view, int i) {
        m27290d(view, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, i);
    }

    /* renamed from: g */
    public static void m27287g(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null || layoutParams.height == i) {
            return;
        }
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    public static float getDimension(int i) {
        return CallAppApplication.get().getResources().getDimension(i);
    }

    public static Drawable getDrawable(int i) {
        if (i == 0) {
            return null;
        }
        return C0153a.m46374b(CallAppApplication.get(), i);
    }

    /* renamed from: h */
    public static void m27286h(View view, int i) {
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
