package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.widget.C0622c;
/* renamed from: androidx.appcompat.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
class C0349h {

    /* renamed from: a */
    private final CompoundButton f1451a;

    /* renamed from: b */
    private ColorStateList f1452b = null;

    /* renamed from: c */
    private PorterDuff.Mode f1453c = null;

    /* renamed from: d */
    private boolean f1454d = false;

    /* renamed from: e */
    private boolean f1455e = false;

    /* renamed from: f */
    private boolean f1456f;

    public C0349h(CompoundButton compoundButton) {
        this.f1451a = compoundButton;
    }

    /* renamed from: a */
    public int m21320a(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable m20160b = C0622c.m20160b(this.f1451a);
            i2 = i;
            if (m20160b != null) {
                i2 = i + m20160b.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* renamed from: a */
    public ColorStateList m21321a() {
        return this.f1452b;
    }

    /* renamed from: a */
    public void m21319a(ColorStateList colorStateList) {
        this.f1452b = colorStateList;
        this.f1454d = true;
        m21314d();
    }

    /* renamed from: a */
    public void m21318a(PorterDuff.Mode mode) {
        this.f1453c = mode;
        this.f1455e = true;
        m21314d();
    }

    /* renamed from: a */
    public void m21317a(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray obtainStyledAttributes = this.f1451a.getContext().obtainStyledAttributes(attributeSet, C0083a.C0093j.CompoundButton, i, 0);
        boolean z = false;
        try {
            if (obtainStyledAttributes.hasValue(C0083a.C0093j.CompoundButton_buttonCompat)) {
                int resourceId2 = obtainStyledAttributes.getResourceId(C0083a.C0093j.CompoundButton_buttonCompat, 0);
                z = false;
                if (resourceId2 != 0) {
                    try {
                        this.f1451a.setButtonDrawable(C0094a.m22275b(this.f1451a.getContext(), resourceId2));
                        z = true;
                    } catch (Resources.NotFoundException e) {
                        z = false;
                    }
                }
            }
            if (!z && obtainStyledAttributes.hasValue(C0083a.C0093j.CompoundButton_android_button) && (resourceId = obtainStyledAttributes.getResourceId(C0083a.C0093j.CompoundButton_android_button, 0)) != 0) {
                this.f1451a.setButtonDrawable(C0094a.m22275b(this.f1451a.getContext(), resourceId));
            }
            if (obtainStyledAttributes.hasValue(C0083a.C0093j.CompoundButton_buttonTint)) {
                C0622c.m20162a(this.f1451a, obtainStyledAttributes.getColorStateList(C0083a.C0093j.CompoundButton_buttonTint));
            }
            if (obtainStyledAttributes.hasValue(C0083a.C0093j.CompoundButton_buttonTintMode)) {
                C0622c.m20161a(this.f1451a, C0369y.m21168a(obtainStyledAttributes.getInt(C0083a.C0093j.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public PorterDuff.Mode m21316b() {
        return this.f1453c;
    }

    /* renamed from: c */
    public void m21315c() {
        if (this.f1456f) {
            this.f1456f = false;
            return;
        }
        this.f1456f = true;
        m21314d();
    }

    /* renamed from: d */
    void m21314d() {
        Drawable m20160b = C0622c.m20160b(this.f1451a);
        if (m20160b != null) {
            if (!this.f1454d && !this.f1455e) {
                return;
            }
            Drawable mutate = C0535a.m20584g(m20160b).mutate();
            if (this.f1454d) {
                C0535a.m20595a(mutate, this.f1452b);
            }
            if (this.f1455e) {
                C0535a.m20592a(mutate, this.f1453c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f1451a.getDrawableState());
            }
            this.f1451a.setButtonDrawable(mutate);
        }
    }
}
