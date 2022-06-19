package com.afollestad.materialdialogs.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import p078e2.EnumC2526d;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes-dex2jar.jar:com/afollestad/materialdialogs/internal/MDButton.class */
public class MDButton extends TextView {

    /* renamed from: a */
    public boolean f3162a = false;

    /* renamed from: b */
    public EnumC2526d f3163b = EnumC2526d.END;

    /* renamed from: c */
    public int f3164c;

    /* renamed from: d */
    public Drawable f3165d;

    /* renamed from: e */
    public Drawable f3166e;

    public MDButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3164c = context.getResources().getDimensionPixelSize(2131165593);
    }

    /* renamed from: a */
    public void m7240a(boolean z, boolean z2) {
        if (this.f3162a != z || z2) {
            setGravity(z ? this.f3163b.m3483a() | 16 : 17);
            setTextAlignment(z ? this.f3163b.m3482b() : 4);
            setBackground(z ? this.f3165d : this.f3166e);
            if (z) {
                setPadding(this.f3164c, getPaddingTop(), this.f3164c, getPaddingBottom());
            }
            this.f3162a = z;
        }
    }

    public void setAllCapsCompat(boolean z) {
        setAllCaps(z);
    }

    public void setDefaultSelector(Drawable drawable) {
        this.f3166e = drawable;
        if (!this.f3162a) {
            m7240a(false, true);
        }
    }

    public void setStackedGravity(EnumC2526d enumC2526d) {
        this.f3163b = enumC2526d;
    }

    public void setStackedSelector(Drawable drawable) {
        this.f3165d = drawable;
        if (this.f3162a) {
            m7240a(true, true);
        }
    }
}
