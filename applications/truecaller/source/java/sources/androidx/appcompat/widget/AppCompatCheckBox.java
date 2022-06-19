package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.C25499c;
import p1727n3.p1734b.p1743f.C25501d;
import p1727n3.p1734b.p1743f.C25529m0;
import p1727n3.p1734b.p1743f.C25533o0;
import p1727n3.p1734b.p1743f.C25536q;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckBox.class */
public class AppCompatCheckBox extends CheckBox {

    /* renamed from: a */
    public final C25501d f258a;

    /* renamed from: b */
    public final C25499c f259b;

    /* renamed from: c */
    public final C25536q f260c;

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0032R.attr.checkboxStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C25533o0.m3337a(context);
        C25529m0.m3344a(this, getContext());
        C25501d c25501d = new C25501d(this);
        this.f258a = c25501d;
        c25501d.m3381b(attributeSet, i);
        C25499c c25499c = new C25499c(this);
        this.f259b = c25499c;
        c25499c.m3390d(attributeSet, i);
        C25536q c25536q = new C25536q(this);
        this.f260c = c25536q;
        c25536q.m3331e(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25499c c25499c = this.f259b;
        if (c25499c != null) {
            c25499c.m3393a();
        }
        C25536q c25536q = this.f260c;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C25501d c25501d = this.f258a;
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C25499c c25499c = this.f259b;
        return c25499c != null ? c25499c.m3392b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C25499c c25499c = this.f259b;
        return c25499c != null ? c25499c.m3391c() : null;
    }

    public ColorStateList getSupportButtonTintList() {
        C25501d c25501d = this.f258a;
        return c25501d != null ? c25501d.f71354b : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C25501d c25501d = this.f258a;
        return c25501d != null ? c25501d.f71355c : null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C25499c c25499c = this.f259b;
        if (c25499c != null) {
            c25499c.m3389e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C25499c c25499c = this.f259b;
        if (c25499c != null) {
            c25499c.m3388f(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C25440a.m3540a(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C25501d c25501d = this.f258a;
        if (c25501d != null) {
            if (c25501d.f71358f) {
                c25501d.f71358f = false;
                return;
            }
            c25501d.f71358f = true;
            c25501d.m3382a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C25499c c25499c = this.f259b;
        if (c25499c != null) {
            c25499c.m3386h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C25499c c25499c = this.f259b;
        if (c25499c != null) {
            c25499c.m3385i(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C25501d c25501d = this.f258a;
        if (c25501d != null) {
            c25501d.f71354b = colorStateList;
            c25501d.f71356d = true;
            c25501d.m3382a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C25501d c25501d = this.f258a;
        if (c25501d != null) {
            c25501d.f71355c = mode;
            c25501d.f71357e = true;
            c25501d.m3382a();
        }
    }
}
