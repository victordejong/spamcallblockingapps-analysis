package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.appcompat.a;
import androidx.core.view.u;
import androidx.core.widget.i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRadioButton.class */
public class AppCompatRadioButton extends RadioButton implements u, i {

    /* renamed from: a  reason: collision with root package name */
    private final e f912a;

    /* renamed from: b  reason: collision with root package name */
    private final d f913b;

    /* renamed from: c  reason: collision with root package name */
    private final l f914c;

    public AppCompatRadioButton(Context context) {
        this(context, null);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(y.a(context), attributeSet, i);
        x.a(this, getContext());
        e eVar = new e(this);
        this.f912a = eVar;
        eVar.a(attributeSet, i);
        d dVar = new d(this);
        this.f913b = dVar;
        dVar.a(attributeSet, i);
        l lVar = new l(this);
        this.f914c = lVar;
        lVar.a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f913b;
        if (dVar != null) {
            dVar.d();
        }
        l lVar = this.f914c;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        e eVar = this.f912a;
        int i = compoundPaddingLeft;
        if (eVar != null) {
            i = eVar.a(compoundPaddingLeft);
        }
        return i;
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f913b;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f913b;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // androidx.core.widget.i
    public ColorStateList getSupportButtonTintList() {
        e eVar = this.f912a;
        if (eVar != null) {
            return eVar.f1085a;
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f913b;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d dVar = this.f913b;
        if (dVar != null) {
            dVar.a(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        e eVar = this.f912a;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f913b;
        if (dVar != null) {
            dVar.a(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f913b;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // androidx.core.widget.i
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        e eVar = this.f912a;
        if (eVar != null) {
            eVar.a(colorStateList);
        }
    }

    @Override // androidx.core.widget.i
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        e eVar = this.f912a;
        if (eVar != null) {
            eVar.a(mode);
        }
    }
}
