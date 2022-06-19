package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.core.graphics.drawable.C0615a;
import com.google.android.gms.common.util.C6231i;
import p078c.p084c.p085a.p086a.p087a.C1831a;
import p078c.p084c.p085a.p086a.p087a.C1832b;
import p078c.p084c.p085a.p086a.p087a.C1833c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zaaa.class */
public final class zaaa extends Button {
    public zaaa(Context context, AttributeSet attributeSet) {
        super(context, null, 16842824);
    }

    /* renamed from: b */
    private static final int m16899b(int i, int i2, int i3, int i4) {
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

    /* renamed from: a */
    public final void m16900a(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int i4 = C1832b.common_google_signin_btn_icon_dark;
        int i5 = C1832b.common_google_signin_btn_icon_light;
        int m16899b = m16899b(i2, i4, i5, i5);
        int i6 = C1832b.common_google_signin_btn_text_dark;
        int i7 = C1832b.common_google_signin_btn_text_light;
        int m16899b2 = m16899b(i2, i6, i7, i7);
        if (i == 0 || i == 1) {
            m16899b = m16899b2;
        } else if (i != 2) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Unknown button size: ");
            sb.append(i);
            throw new IllegalStateException(sb.toString());
        }
        Drawable m33212r = C0615a.m33212r(resources.getDrawable(m16899b));
        C0615a.m33215o(m33212r, resources.getColorStateList(C1831a.common_google_signin_btn_tint));
        C0615a.m33214p(m33212r, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(m33212r);
        int i8 = C1831a.common_google_signin_btn_text_dark;
        int i9 = C1831a.common_google_signin_btn_text_light;
        setTextColor((ColorStateList) C6155o.m17018j(resources.getColorStateList(m16899b(i2, i8, i9, i9))));
        if (i == 0) {
            setText(resources.getString(C1833c.common_signin_button_text));
        } else if (i == 1) {
            setText(resources.getString(C1833c.common_signin_button_text_long));
        } else if (i != 2) {
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Unknown button size: ");
            sb2.append(i);
            throw new IllegalStateException(sb2.toString());
        } else {
            setText((CharSequence) null);
        }
        setTransformationMethod(null);
        if (C6231i.m16798f(getContext())) {
            setGravity(19);
        }
    }
}
