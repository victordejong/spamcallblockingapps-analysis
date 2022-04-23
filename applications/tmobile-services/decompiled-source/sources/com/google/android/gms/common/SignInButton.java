package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.base.C1012R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.SignInButtonCreator;
import com.google.android.gms.common.internal.SignInButtonImpl;
import com.google.android.gms.dynamic.RemoteCreator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: f */
    private int f6991f;

    /* renamed from: g */
    private int f6992g;

    /* renamed from: h */
    private View f6993h;

    /* renamed from: i */
    private View.OnClickListener f6994i;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton$ButtonSize.class */
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton$ColorScheme.class */
    public @interface ColorScheme {
    }

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6994i = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1012R.styleable.SignInButton, 0, 0);
        try {
            this.f6991f = obtainStyledAttributes.getInt(C1012R.styleable.SignInButton_buttonSize, 0);
            this.f6992g = obtainStyledAttributes.getInt(C1012R.styleable.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            setStyle(this.f6991f, this.f6992g);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f6994i;
        if (onClickListener != null && view == this.f6993h) {
            onClickListener.onClick(this);
        }
    }

    public final void setColorScheme(int i) {
        setStyle(this.f6991f, i);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f6993h.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f6994i = onClickListener;
        View view = this.f6993h;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) {
        setStyle(this.f6991f, this.f6992g);
    }

    public final void setSize(int i) {
        setStyle(i, this.f6992g);
    }

    public final void setStyle(int i, int i2) {
        this.f6991f = i;
        this.f6992g = i2;
        Context context = getContext();
        View view = this.f6993h;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f6993h = SignInButtonCreator.m14508c(context, this.f6991f, this.f6992g);
        } catch (RemoteCreator.RemoteCreatorException e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i3 = this.f6991f;
            int i4 = this.f6992g;
            SignInButtonImpl signInButtonImpl = new SignInButtonImpl(context);
            signInButtonImpl.m14505a(context.getResources(), i3, i4);
            this.f6993h = signInButtonImpl;
        }
        addView(this.f6993h);
        this.f6993h.setEnabled(isEnabled());
        this.f6993h.setOnClickListener(this);
    }

    @Deprecated
    public final void setStyle(int i, int i2, Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
