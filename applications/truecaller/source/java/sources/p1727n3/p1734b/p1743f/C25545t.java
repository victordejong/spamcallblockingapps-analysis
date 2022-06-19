package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ToggleButton;
/* renamed from: n3.b.f.t */
/* loaded from: classes-dex2jar.jar:n3/b/f/t.class */
public class C25545t extends ToggleButton {

    /* renamed from: a */
    public final C25499c f71484a;

    /* renamed from: b */
    public final C25536q f71485b;

    public C25545t(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842827);
        C25529m0.m3344a(this, getContext());
        C25499c c25499c = new C25499c(this);
        this.f71484a = c25499c;
        c25499c.m3390d(attributeSet, 16842827);
        C25536q c25536q = new C25536q(this);
        this.f71485b = c25536q;
        c25536q.m3331e(attributeSet, 16842827);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25499c c25499c = this.f71484a;
        if (c25499c != null) {
            c25499c.m3393a();
        }
        C25536q c25536q = this.f71485b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C25499c c25499c = this.f71484a;
        return c25499c != null ? c25499c.m3392b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C25499c c25499c = this.f71484a;
        return c25499c != null ? c25499c.m3391c() : null;
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C25499c c25499c = this.f71484a;
        if (c25499c != null) {
            c25499c.m3389e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C25499c c25499c = this.f71484a;
        if (c25499c != null) {
            c25499c.m3388f(i);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C25499c c25499c = this.f71484a;
        if (c25499c != null) {
            c25499c.m3386h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C25499c c25499c = this.f71484a;
        if (c25499c != null) {
            c25499c.m3385i(mode);
        }
    }
}
