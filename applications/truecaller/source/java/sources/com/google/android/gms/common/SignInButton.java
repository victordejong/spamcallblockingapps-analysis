package com.google.android.gms.common;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.base.C2047R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.common.internal.zaz;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.dynamic.RemoteCreator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a */
    public int f5681a;

    /* renamed from: b */
    public int f5682b;

    /* renamed from: c */
    public View f5683c;

    /* renamed from: d */
    public View.OnClickListener f5684d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/SignInButton$ButtonSize.class */
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/SignInButton$ColorScheme.class */
    public @interface ColorScheme {
    }

    /* renamed from: a */
    public void m39057a(int i, int i2) {
        this.f5681a = i;
        this.f5682b = i2;
        Context context = getContext();
        View view = this.f5683c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f5683c = zaz.m38823a(context, this.f5681a, this.f5682b);
        } catch (RemoteCreator.RemoteCreatorException e) {
            int i3 = this.f5681a;
            int i4 = this.f5682b;
            zaaa zaaaVar = new zaaa(context);
            Resources resources = context.getResources();
            zaaaVar.setTypeface(Typeface.DEFAULT_BOLD);
            zaaaVar.setTextSize(14.0f);
            int i5 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
            zaaaVar.setMinHeight(i5);
            zaaaVar.setMinWidth(i5);
            int i6 = C2047R.C2048drawable.common_google_signin_btn_icon_dark;
            int i7 = C2047R.C2048drawable.common_google_signin_btn_icon_light;
            int m38835a = zaaa.m38835a(i4, i6, i7, i7);
            int i8 = C2047R.C2048drawable.common_google_signin_btn_text_dark;
            int i9 = C2047R.C2048drawable.common_google_signin_btn_text_light;
            int m38835a2 = zaaa.m38835a(i4, i8, i9, i9);
            if (i3 == 0 || i3 == 1) {
                m38835a = m38835a2;
            } else if (i3 != 2) {
                throw new IllegalStateException(C22128a.m8690L1(32, "Unknown button size: ", i3));
            }
            Drawable drawable = resources.getDrawable(m38835a);
            drawable.setTintList(resources.getColorStateList(C2047R.color.common_google_signin_btn_tint));
            drawable.setTintMode(PorterDuff.Mode.SRC_ATOP);
            zaaaVar.setBackgroundDrawable(drawable);
            int i10 = C2047R.color.common_google_signin_btn_text_dark;
            int i11 = C2047R.color.common_google_signin_btn_text_light;
            ColorStateList colorStateList = resources.getColorStateList(zaaa.m38835a(i4, i10, i11, i11));
            Objects.requireNonNull(colorStateList, "null reference");
            zaaaVar.setTextColor(colorStateList);
            if (i3 == 0) {
                zaaaVar.setText(resources.getString(C2047R.string.common_signin_button_text));
            } else if (i3 == 1) {
                zaaaVar.setText(resources.getString(C2047R.string.common_signin_button_text_long));
            } else if (i3 != 2) {
                throw new IllegalStateException(C22128a.m8690L1(32, "Unknown button size: ", i3));
            } else {
                zaaaVar.setText((CharSequence) null);
            }
            zaaaVar.setTransformationMethod(null);
            if (DeviceProperties.m38785b(zaaaVar.getContext())) {
                zaaaVar.setGravity(19);
            }
            this.f5683c = zaaaVar;
        }
        addView(this.f5683c);
        this.f5683c.setEnabled(isEnabled());
        this.f5683c.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@RecentlyNonNull View view) {
        View.OnClickListener onClickListener = this.f5684d;
        if (onClickListener == null || view != this.f5683c) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i) {
        m39057a(this.f5681a, i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f5683c.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f5684d = onClickListener;
        View view = this.f5683c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(@RecentlyNonNull Scope[] scopeArr) {
        m39057a(this.f5681a, this.f5682b);
    }

    public void setSize(int i) {
        m39057a(i, this.f5682b);
    }
}
