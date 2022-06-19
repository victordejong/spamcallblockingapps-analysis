package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.base.C1671R;
import com.google.android.gms.common.util.DeviceProperties;
import p098g0.C2789a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zaaa.class */
public final class zaaa extends Button {
    public zaaa(Context context, AttributeSet attributeSet) {
        super(context, null, 16842824);
    }

    private static final int zab(int i, int i2, int i3, int i4) {
        if (i != 0) {
            if (i == 1) {
                return i3;
            }
            if (i != 2) {
                throw new IllegalStateException(C0082b.m8758d(33, "Unknown color scheme: ", i));
            }
            return i4;
        }
        return i2;
    }

    public final void zaa(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int i4 = C1671R.C1673drawable.common_google_signin_btn_icon_dark;
        int i5 = C1671R.C1673drawable.common_google_signin_btn_icon_light;
        int zab = zab(i2, i4, i5, i5);
        int i6 = C1671R.C1673drawable.common_google_signin_btn_text_dark;
        int i7 = C1671R.C1673drawable.common_google_signin_btn_text_light;
        int zab2 = zab(i2, i6, i7, i7);
        if (i == 0 || i == 1) {
            zab = zab2;
        } else if (i != 2) {
            throw new IllegalStateException(C0082b.m8758d(32, "Unknown button size: ", i));
        }
        Drawable m3007h = C2789a.m3007h(resources.getDrawable(zab));
        m3007h.setTintList(resources.getColorStateList(C1671R.C1672color.common_google_signin_btn_tint));
        m3007h.setTintMode(PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(m3007h);
        int i8 = C1671R.C1672color.common_google_signin_btn_text_dark;
        int i9 = C1671R.C1672color.common_google_signin_btn_text_light;
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(zab(i2, i8, i9, i9))));
        if (i == 0) {
            setText(resources.getString(C1671R.string.common_signin_button_text));
        } else if (i == 1) {
            setText(resources.getString(C1671R.string.common_signin_button_text_long));
        } else if (i != 2) {
            throw new IllegalStateException(C0082b.m8758d(32, "Unknown button size: ", i));
        } else {
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }
}
