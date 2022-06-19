package com.google.android.gms.common;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.graphics.drawable.C0840a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C11990ap;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.common.util.C12106j;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.p348a.C11673a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a */
    private int f39156a;

    /* renamed from: b */
    private int f39157b;

    /* renamed from: c */
    private View f39158c;

    /* renamed from: d */
    private View.OnClickListener f39159d;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f39159d = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C11673a.C11677d.SignInButton, 0, 0);
        try {
            this.f39156a = obtainStyledAttributes.getInt(C11673a.C11677d.SignInButton_buttonSize, 0);
            this.f39157b = obtainStyledAttributes.getInt(C11673a.C11677d.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            setStyle(this.f39156a, this.f39157b);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f39159d;
        if (onClickListener == null || view != this.f39158c) {
            return;
        }
        onClickListener.onClick(this);
    }

    public final void setColorScheme(int i) {
        setStyle(this.f39156a, i);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f39158c.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f39159d = onClickListener;
        View view = this.f39158c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) {
        setStyle(this.f39156a, this.f39157b);
    }

    public final void setSize(int i) {
        setStyle(i, this.f39157b);
    }

    public final void setStyle(int i, int i2) {
        this.f39156a = i;
        this.f39157b = i2;
        Context context = getContext();
        View view = this.f39158c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f39158c = C11990ap.m19221a(context, this.f39156a, this.f39157b);
        } catch (RemoteCreator.RemoteCreatorException e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i3 = this.f39156a;
            int i4 = this.f39157b;
            zaaa zaaaVar = new zaaa(context, null);
            Resources resources = context.getResources();
            zaaaVar.setTypeface(Typeface.DEFAULT_BOLD);
            zaaaVar.setTextSize(14.0f);
            int i5 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
            zaaaVar.setMinHeight(i5);
            zaaaVar.setMinWidth(i5);
            int i6 = C11673a.C11675b.common_google_signin_btn_icon_dark;
            int i7 = C11673a.C11675b.common_google_signin_btn_icon_light;
            int m19078a = zaaa.m19078a(i4, i6, i7, i7);
            int i8 = C11673a.C11675b.common_google_signin_btn_text_dark;
            int i9 = C11673a.C11675b.common_google_signin_btn_text_light;
            int m19078a2 = zaaa.m19078a(i4, i8, i9, i9);
            if (i3 == 0 || i3 == 1) {
                m19078a = m19078a2;
            } else if (i3 != 2) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Unknown button size: ");
                sb.append(i3);
                throw new IllegalStateException(sb.toString());
            }
            Drawable m44345f = C0840a.m44345f(resources.getDrawable(m19078a));
            C0840a.m44355a(m44345f, resources.getColorStateList(C11673a.C11674a.common_google_signin_btn_tint));
            C0840a.m44352a(m44345f, PorterDuff.Mode.SRC_ATOP);
            zaaaVar.setBackgroundDrawable(m44345f);
            int i10 = C11673a.C11674a.common_google_signin_btn_text_dark;
            int i11 = C11673a.C11674a.common_google_signin_btn_text_light;
            zaaaVar.setTextColor((ColorStateList) C12045o.m19162a(resources.getColorStateList(zaaa.m19078a(i4, i10, i11, i11))));
            if (i3 == 0) {
                zaaaVar.setText(resources.getString(C11673a.C11676c.common_signin_button_text));
            } else if (i3 == 1) {
                zaaaVar.setText(resources.getString(C11673a.C11676c.common_signin_button_text_long));
            } else if (i3 != 2) {
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Unknown button size: ");
                sb2.append(i3);
                throw new IllegalStateException(sb2.toString());
            } else {
                zaaaVar.setText((CharSequence) null);
            }
            zaaaVar.setTransformationMethod(null);
            if (C12106j.m19034a(zaaaVar.getContext().getPackageManager())) {
                zaaaVar.setGravity(19);
            }
            this.f39158c = zaaaVar;
        }
        addView(this.f39158c);
        this.f39158c.setEnabled(isEnabled());
        this.f39158c.setOnClickListener(this);
    }

    @Deprecated
    public final void setStyle(int i, int i2, Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
