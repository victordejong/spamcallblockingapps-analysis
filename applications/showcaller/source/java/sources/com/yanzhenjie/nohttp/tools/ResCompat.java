package com.yanzhenjie.nohttp.tools;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.StrikethroughSpan;
import android.view.View;
import android.widget.TextView;
import com.yanzhenjie.nohttp.NoHttp;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/ResCompat.class */
public class ResCompat {
    public static int getColor(int i) {
        return getColor(i, null);
    }

    public static int getColor(int i, Resources.Theme theme) {
        Resources resources = NoHttp.getContext().getResources();
        return Build.VERSION.SDK_INT >= 23 ? resources.getColor(i, theme) : resources.getColor(i);
    }

    public static ColorStateList getColorStateList(int i) {
        return getColorStateList(i, null);
    }

    public static ColorStateList getColorStateList(int i, Resources.Theme theme) {
        Resources resources = NoHttp.getContext().getResources();
        return Build.VERSION.SDK_INT >= 23 ? resources.getColorStateList(i, theme) : resources.getColorStateList(i);
    }

    public static SpannableString getColorText(CharSequence charSequence, int i, int i2, int i3) {
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        return spannableString;
    }

    public static SpannableString getDeleteText(CharSequence charSequence) {
        return getDeleteText(charSequence, 0, charSequence.length());
    }

    public static SpannableString getDeleteText(CharSequence charSequence, int i, int i2) {
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new StrikethroughSpan(), i, i2, 33);
        return spannableString;
    }

    public static Drawable getDrawable(int i) {
        return getDrawable(i, null);
    }

    public static Drawable getDrawable(int i, Resources.Theme theme) {
        Resources resources = NoHttp.getContext().getResources();
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    public static SpannableString getImageSpanText(CharSequence charSequence, Drawable drawable, int i, int i2) {
        SpannableString spannableString = new SpannableString(charSequence);
        setDrawableBounds(drawable);
        spannableString.setSpan(new ImageSpan(drawable, 1), i, i2, 33);
        return spannableString;
    }

    public static SpannableString getScaleText(CharSequence charSequence, int i, int i2, int i3) {
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new AbsoluteSizeSpan(i3), i, i2, 33);
        return spannableString;
    }

    public static void setBackground(View view, int i) {
        setBackground(view, getDrawable(i));
    }

    public static void setBackground(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static void setBottomDrawable(TextView textView, int i) {
        setBottomDrawable(textView, getDrawable(i));
    }

    public static void setBottomDrawable(TextView textView, Drawable drawable) {
        setDrawableBounds(drawable);
        textView.setCompoundDrawables(textView.getCompoundDrawables()[0], textView.getCompoundDrawables()[1], textView.getCompoundDrawables()[2], drawable);
    }

    public static void setCompoundDrawables(TextView textView, int i, int i2, int i3, int i4) {
        setCompoundDrawables(textView, getDrawable(i), getDrawable(i2), getDrawable(i3), getDrawable(i4));
    }

    public static void setCompoundDrawables(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        setDrawableBounds(drawable);
        setDrawableBounds(drawable2);
        setDrawableBounds(drawable3);
        setDrawableBounds(drawable4);
        textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    public static void setDrawableBounds(Drawable drawable) {
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        }
    }

    public static void setLeftDrawable(TextView textView, int i) {
        setLeftDrawable(textView, getDrawable(i));
    }

    public static void setLeftDrawable(TextView textView, Drawable drawable) {
        setDrawableBounds(drawable);
        textView.setCompoundDrawables(drawable, textView.getCompoundDrawables()[1], textView.getCompoundDrawables()[2], textView.getCompoundDrawables()[3]);
    }

    public static void setRightDrawable(TextView textView, int i) {
        setRightDrawable(textView, getDrawable(i));
    }

    public static void setRightDrawable(TextView textView, Drawable drawable) {
        setDrawableBounds(drawable);
        textView.setCompoundDrawables(textView.getCompoundDrawables()[0], textView.getCompoundDrawables()[1], drawable, textView.getCompoundDrawables()[3]);
    }

    public static void setTopDrawable(TextView textView, int i) {
        setTopDrawable(textView, getDrawable(i));
    }

    public static void setTopDrawable(TextView textView, Drawable drawable) {
        setDrawableBounds(drawable);
        textView.setCompoundDrawables(textView.getCompoundDrawables()[0], drawable, textView.getCompoundDrawables()[2], textView.getCompoundDrawables()[3]);
    }
}
