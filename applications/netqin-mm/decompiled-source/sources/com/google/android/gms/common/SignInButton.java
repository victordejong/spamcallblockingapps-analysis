package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.base.C7223R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zax;
import com.google.android.gms.common.internal.zay;
import com.google.android.gms.dynamic.RemoteCreator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a */
    public int f23025a;

    /* renamed from: b */
    public int f23026b;

    /* renamed from: c */
    public View f23027c;

    /* renamed from: d */
    public View.OnClickListener f23028d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton$ButtonSize.class */
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton$ColorScheme.class */
    public @interface ColorScheme {
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f23028d = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C7223R.styleable.SignInButton, 0, 0);
        try {
            this.f23025a = obtainStyledAttributes.getInt(C7223R.styleable.SignInButton_buttonSize, 0);
            this.f23026b = obtainStyledAttributes.getInt(C7223R.styleable.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            m17791a(this.f23025a, this.f23026b);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public final void m17791a(int i, int i2) {
        this.f23025a = i;
        this.f23026b = i2;
        Context context = getContext();
        View view = this.f23027c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f23027c = zay.m17172b(context, this.f23025a, this.f23026b);
        } catch (RemoteCreator.RemoteCreatorException e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i3 = this.f23025a;
            int i4 = this.f23026b;
            zax zaxVar = new zax(context);
            zaxVar.m17174a(context.getResources(), i3, i4);
            this.f23027c = zaxVar;
        }
        addView(this.f23027c);
        this.f23027c.setEnabled(isEnabled());
        this.f23027c.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f23028d;
        if (onClickListener != null && view == this.f23027c) {
            onClickListener.onClick(this);
        }
    }

    public final void setColorScheme(int i) {
        m17791a(this.f23025a, i);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f23027c.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f23028d = onClickListener;
        View view = this.f23027c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) {
        m17791a(this.f23025a, this.f23026b);
    }

    public final void setSize(int i) {
        m17791a(i, this.f23026b);
    }
}
