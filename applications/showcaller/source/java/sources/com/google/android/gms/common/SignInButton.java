package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C6159p0;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.dynamic.RemoteCreator;
import p078c.p084c.p085a.p086a.p087a.C1834d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: d */
    private int f19158d;

    /* renamed from: e */
    private int f19159e;

    /* renamed from: f */
    private View f19160f;

    /* renamed from: g */
    private View.OnClickListener f19161g;

    public SignInButton(@RecentlyNonNull Context context) {
        this(context, null);
    }

    public SignInButton(@RecentlyNonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public SignInButton(@RecentlyNonNull Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19161g = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1834d.SignInButton, 0, 0);
        try {
            this.f19158d = obtainStyledAttributes.getInt(C1834d.SignInButton_buttonSize, 0);
            this.f19159e = obtainStyledAttributes.getInt(C1834d.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            setStyle(this.f19158d, this.f19159e);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    private final void m17497a(Context context) {
        View view = this.f19160f;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f19160f = C6159p0.m17002c(context, this.f19158d, this.f19159e);
        } catch (RemoteCreator.RemoteCreatorException e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i = this.f19158d;
            int i2 = this.f19159e;
            zaaa zaaaVar = new zaaa(context, null);
            zaaaVar.m16900a(context.getResources(), i, i2);
            this.f19160f = zaaaVar;
        }
        addView(this.f19160f);
        this.f19160f.setEnabled(isEnabled());
        this.f19160f.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@RecentlyNonNull View view) {
        View.OnClickListener onClickListener = this.f19161g;
        if (onClickListener == null || view != this.f19160f) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i) {
        setStyle(this.f19158d, i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f19160f.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f19161g = onClickListener;
        View view = this.f19160f;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(@RecentlyNonNull Scope[] scopeArr) {
        setStyle(this.f19158d, this.f19159e);
    }

    public void setSize(int i) {
        setStyle(i, this.f19159e);
    }

    public void setStyle(int i, int i2) {
        this.f19158d = i;
        this.f19159e = i2;
        m17497a(getContext());
    }

    @Deprecated
    public void setStyle(int i, int i2, @RecentlyNonNull Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
