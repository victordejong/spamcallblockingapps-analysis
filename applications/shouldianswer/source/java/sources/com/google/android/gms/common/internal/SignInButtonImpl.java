package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.core.graphics.drawable.C0575a;
import com.google.android.gms.base.C1270R;
import com.google.android.gms.common.util.DeviceProperties;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SignInButtonImpl.class */
public final class SignInButtonImpl extends Button {
    public SignInButtonImpl(Context context) {
        this(context, null);
    }

    public SignInButtonImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842824);
    }

    private static int zaa(int i, int i2, int i3, int i4) {
        if (i != 0) {
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
        return i2;
    }

    public final void configure(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int zaa = zaa(i2, C1270R.C1271drawable.common_google_signin_btn_icon_dark, C1270R.C1271drawable.common_google_signin_btn_icon_light, C1270R.C1271drawable.common_google_signin_btn_icon_light);
        int zaa2 = zaa(i2, C1270R.C1271drawable.common_google_signin_btn_text_dark, C1270R.C1271drawable.common_google_signin_btn_text_light, C1270R.C1271drawable.common_google_signin_btn_text_light);
        if (i != 0 && i != 1) {
            if (i != 2) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown button size: ");
                sb.append(i);
                throw new IllegalStateException(sb.toString());
            }
            zaa2 = zaa;
        }
        Drawable m6122g = C0575a.m6122g(resources.getDrawable(zaa2));
        C0575a.m6133a(m6122g, resources.getColorStateList(C1270R.color.common_google_signin_btn_tint));
        C0575a.m6130a(m6122g, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(m6122g);
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(zaa(i2, C1270R.color.common_google_signin_btn_text_dark, C1270R.color.common_google_signin_btn_text_light, C1270R.color.common_google_signin_btn_text_light))));
        if (i == 0) {
            setText(resources.getString(C1270R.string.common_signin_button_text));
        } else if (i == 1) {
            setText(resources.getString(C1270R.string.common_signin_button_text_long));
        } else if (i != 2) {
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Unknown button size: ");
            sb2.append(i);
            throw new IllegalStateException(sb2.toString());
        } else {
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }

    public final void configure(Resources resources, SignInButtonConfig signInButtonConfig) {
        configure(resources, signInButtonConfig.getButtonSize(), signInButtonConfig.getColorScheme());
    }
}
