package com.google.android.gms.common;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.a;
import com.google.android.gms.b.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.zzaf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private int f3924a;

    /* renamed from: b  reason: collision with root package name */
    private int f3925b;
    private Scope[] c;
    private View d;
    private View.OnClickListener e;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = null;
        a(context, attributeSet);
        setStyle(this.f3924a, this.f3925b, this.c);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.d.f3765b, 0, 0);
        try {
            this.f3924a = obtainStyledAttributes.getInt(a.d.c, 0);
            this.f3925b = obtainStyledAttributes.getInt(a.d.d, 2);
            String string = obtainStyledAttributes.getString(a.d.e);
            if (string == null) {
                this.c = null;
            } else {
                String[] split = string.trim().split("\\s+");
                this.c = new Scope[split.length];
                for (int i = 0; i < split.length; i++) {
                    this.c[i] = new Scope(split[i].toString());
                }
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.e != null && view == this.d) {
            this.e.onClick(this);
        }
    }

    public final void setColorScheme(int i) {
        setStyle(this.f3924a, i, this.c);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.d.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.e = onClickListener;
        if (this.d != null) {
            this.d.setOnClickListener(this);
        }
    }

    public final void setScopes(Scope[] scopeArr) {
        setStyle(this.f3924a, this.f3925b, scopeArr);
    }

    public final void setSize(int i) {
        setStyle(i, this.f3925b, this.c);
    }

    public final void setStyle(int i, int i2) {
        setStyle(i, i2, this.c);
    }

    public final void setStyle(int i, int i2, Scope[] scopeArr) {
        this.f3924a = i;
        this.f3925b = i2;
        this.c = scopeArr;
        Context context = getContext();
        if (this.d != null) {
            removeView(this.d);
        }
        try {
            this.d = f.a(context, this.f3924a, this.f3925b, this.c);
        } catch (c.a e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i3 = this.f3924a;
            int i4 = this.f3925b;
            Scope[] scopeArr2 = this.c;
            zzaf zzafVar = new zzaf(context);
            Resources resources = context.getResources();
            boolean a2 = zzaf.a(scopeArr2);
            zzafVar.setTypeface(Typeface.DEFAULT_BOLD);
            zzafVar.setTextSize(14.0f);
            float f = resources.getDisplayMetrics().density;
            zzafVar.setMinHeight((int) ((f * 48.0f) + 0.5f));
            zzafVar.setMinWidth((int) ((f * 48.0f) + 0.5f));
            zzafVar.setBackgroundDrawable(resources.getDrawable(a2 ? zzaf.a(i3, zzaf.a(i4, a.b.g, a.b.h, a.b.g), zzaf.a(i4, a.b.i, a.b.j, a.b.i)) : zzaf.a(i3, zzaf.a(i4, a.b.f3761b, a.b.c, a.b.c), zzaf.a(i4, a.b.d, a.b.e, a.b.e))));
            zzafVar.setTextColor((ColorStateList) b.a(resources.getColorStateList(a2 ? zzaf.a(i4, a.C0104a.c, a.C0104a.d, a.C0104a.c) : zzaf.a(i4, a.C0104a.f3752a, a.C0104a.f3753b, a.C0104a.f3753b))));
            switch (i3) {
                case 0:
                    zzafVar.setText(resources.getString(a.c.D));
                    break;
                case 1:
                    zzafVar.setText(resources.getString(a.c.E));
                    break;
                case 2:
                    zzafVar.setText((CharSequence) null);
                    break;
                default:
                    throw new IllegalStateException(new StringBuilder(32).append("Unknown button size: ").append(i3).toString());
            }
            zzafVar.setTransformationMethod(null);
            this.d = zzafVar;
        }
        addView(this.d);
        this.d.setEnabled(isEnabled());
        this.d.setOnClickListener(this);
    }
}
