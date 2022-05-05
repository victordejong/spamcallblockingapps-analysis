package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.gms.base.C1012R;
import com.google.android.gms.common.util.DeviceProperties;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SignInButtonImpl.class */
public final class SignInButtonImpl extends Button {
    public SignInButtonImpl(Context context) {
        this(context, null);
    }

    public SignInButtonImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842824);
    }

    /* renamed from: b */
    private static int m14504b(int i, int i2, int i3, int i4) {
        if (i == 0) {
            return i2;
        }
        if (i == 1) {
            return i3;
        }
        if (i == 2) {
            return i4;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Unknown color scheme: ");
        sb.append(i);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: a */
    public final void m14505a(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int i4 = C1012R.C1014drawable.common_google_signin_btn_icon_dark;
        int i5 = C1012R.C1014drawable.common_google_signin_btn_icon_light;
        int b = m14504b(i2, i4, i5, i5);
        int i6 = C1012R.C1014drawable.common_google_signin_btn_text_dark;
        int i7 = C1012R.C1014drawable.common_google_signin_btn_text_light;
        b = m14504b(i2, i6, i7, i7);
        if (i != 0 && i != 1) {
            if (i != 2) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown button size: ");
                sb.append(i);
                throw new IllegalStateException(sb.toString());
            }
        }
        Drawable r = DrawableCompat.m19495r(resources.getDrawable(b));
        DrawableCompat.m19498o(r, resources.getColorStateList(C1012R.C1013color.common_google_signin_btn_tint));
        DrawableCompat.m19497p(r, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(r);
        int i8 = C1012R.C1013color.common_google_signin_btn_text_dark;
        int i9 = C1012R.C1013color.common_google_signin_btn_text_light;
        ColorStateList colorStateList = resources.getColorStateList(m14504b(i2, i8, i9, i9));
        Preconditions.m14523k(colorStateList);
        setTextColor(colorStateList);
        if (i == 0) {
            setText(resources.getString(C1012R.string.common_signin_button_text));
        } else if (i == 1) {
            setText(resources.getString(C1012R.string.common_signin_button_text_long));
        } else if (i == 2) {
            setText((CharSequence) null);
        } else {
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Unknown button size: ");
            sb2.append(i);
            throw new IllegalStateException(sb2.toString());
        }
        setTransformationMethod(null);
        if (DeviceProperties.m14330c(getContext())) {
            setGravity(19);
        }
    }
}
