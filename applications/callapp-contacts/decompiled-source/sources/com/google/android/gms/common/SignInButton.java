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
import com.google.android.gms.a.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.common.util.j;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private int f22591a;

    /* renamed from: b  reason: collision with root package name */
    private int f22592b;

    /* renamed from: c  reason: collision with root package name */
    private View f22593c;

    /* renamed from: d  reason: collision with root package name */
    private View.OnClickListener f22594d;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f22594d = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.d.SignInButton, 0, 0);
        try {
            this.f22591a = obtainStyledAttributes.getInt(a.d.SignInButton_buttonSize, 0);
            this.f22592b = obtainStyledAttributes.getInt(a.d.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            setStyle(this.f22591a, this.f22592b);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f22594d;
        if (onClickListener != null && view == this.f22593c) {
            onClickListener.onClick(this);
        }
    }

    public final void setColorScheme(int i) {
        setStyle(this.f22591a, i);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f22593c.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f22594d = onClickListener;
        View view = this.f22593c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) {
        setStyle(this.f22591a, this.f22592b);
    }

    public final void setSize(int i) {
        setStyle(i, this.f22592b);
    }

    public final void setStyle(int i, int i2) {
        this.f22591a = i;
        this.f22592b = i2;
        Context context = getContext();
        View view = this.f22593c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f22593c = ap.a(context, this.f22591a, this.f22592b);
        } catch (RemoteCreator.RemoteCreatorException e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i3 = this.f22591a;
            int i4 = this.f22592b;
            zaaa zaaaVar = new zaaa(context, null);
            Resources resources = context.getResources();
            zaaaVar.setTypeface(Typeface.DEFAULT_BOLD);
            zaaaVar.setTextSize(14.0f);
            int i5 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
            zaaaVar.setMinHeight(i5);
            zaaaVar.setMinWidth(i5);
            int i6 = a.b.common_google_signin_btn_icon_dark;
            int i7 = a.b.common_google_signin_btn_icon_light;
            int a2 = zaaa.a(i4, i6, i7, i7);
            int i8 = a.b.common_google_signin_btn_text_dark;
            int i9 = a.b.common_google_signin_btn_text_light;
            a2 = zaaa.a(i4, i8, i9, i9);
            if (i3 != 0 && i3 != 1) {
                if (i3 != 2) {
                    StringBuilder sb = new StringBuilder(32);
                    sb.append("Unknown button size: ");
                    sb.append(i3);
                    throw new IllegalStateException(sb.toString());
                }
            }
            Drawable f = androidx.core.graphics.drawable.a.f(resources.getDrawable(a2));
            androidx.core.graphics.drawable.a.a(f, resources.getColorStateList(a.C0449a.common_google_signin_btn_tint));
            androidx.core.graphics.drawable.a.a(f, PorterDuff.Mode.SRC_ATOP);
            zaaaVar.setBackgroundDrawable(f);
            int i10 = a.C0449a.common_google_signin_btn_text_dark;
            int i11 = a.C0449a.common_google_signin_btn_text_light;
            zaaaVar.setTextColor((ColorStateList) o.a(resources.getColorStateList(zaaa.a(i4, i10, i11, i11))));
            if (i3 == 0) {
                zaaaVar.setText(resources.getString(a.c.common_signin_button_text));
            } else if (i3 == 1) {
                zaaaVar.setText(resources.getString(a.c.common_signin_button_text_long));
            } else if (i3 == 2) {
                zaaaVar.setText((CharSequence) null);
            } else {
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Unknown button size: ");
                sb2.append(i3);
                throw new IllegalStateException(sb2.toString());
            }
            zaaaVar.setTransformationMethod(null);
            if (j.a(zaaaVar.getContext().getPackageManager())) {
                zaaaVar.setGravity(19);
            }
            this.f22593c = zaaaVar;
        }
        addView(this.f22593c);
        this.f22593c.setEnabled(isEnabled());
        this.f22593c.setOnClickListener(this);
    }

    @Deprecated
    public final void setStyle(int i, int i2, Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
