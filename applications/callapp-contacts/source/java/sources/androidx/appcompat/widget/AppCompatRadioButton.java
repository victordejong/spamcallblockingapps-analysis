package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.appcompat.C0142a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.view.AbstractC0925u;
import androidx.core.widget.AbstractC0961i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRadioButton.class */
public class AppCompatRadioButton extends RadioButton implements AbstractC0925u, AbstractC0961i {

    /* renamed from: a */
    private final C0391e f1155a;

    /* renamed from: b */
    private final C0390d f1156b;

    /* renamed from: c */
    private final C0399l f1157c;

    public AppCompatRadioButton(Context context) {
        this(context, null);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(C0426y.m45569a(context), attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0391e c0391e = new C0391e(this);
        this.f1155a = c0391e;
        c0391e.m45734a(attributeSet, i);
        C0390d c0390d = new C0390d(this);
        this.f1156b = c0390d;
        c0390d.m45744a(attributeSet, i);
        C0399l c0399l = new C0399l(this);
        this.f1157c = c0399l;
        c0399l.m45694a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0390d c0390d = this.f1156b;
        if (c0390d != null) {
            c0390d.m45740d();
        }
        C0399l c0399l = this.f1157c;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0391e c0391e = this.f1155a;
        int i = compoundPaddingLeft;
        if (c0391e != null) {
            i = c0391e.m45737a(compoundPaddingLeft);
        }
        return i;
    }

    @Override // androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        C0390d c0390d = this.f1156b;
        if (c0390d != null) {
            return c0390d.m45743b();
        }
        return null;
    }

    @Override // androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0390d c0390d = this.f1156b;
        if (c0390d != null) {
            return c0390d.m45741c();
        }
        return null;
    }

    @Override // androidx.core.widget.AbstractC0961i
    public ColorStateList getSupportButtonTintList() {
        C0391e c0391e = this.f1155a;
        if (c0391e != null) {
            return c0391e.f1569a;
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0390d c0390d = this.f1156b;
        if (c0390d != null) {
            c0390d.m45749a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0390d c0390d = this.f1156b;
        if (c0390d != null) {
            c0390d.m45748a(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C0153a.m46374b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0391e c0391e = this.f1155a;
        if (c0391e != null) {
            c0391e.m45738a();
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0390d c0390d = this.f1156b;
        if (c0390d != null) {
            c0390d.m45747a(colorStateList);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0390d c0390d = this.f1156b;
        if (c0390d != null) {
            c0390d.m45746a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0961i
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0391e c0391e = this.f1155a;
        if (c0391e != null) {
            c0391e.m45736a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0961i
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0391e c0391e = this.f1155a;
        if (c0391e != null) {
            c0391e.m45735a(mode);
        }
    }
}
