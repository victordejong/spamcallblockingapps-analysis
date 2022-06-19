package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;
/* renamed from: androidx.appcompat.widget.e0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e0.class */
public class C0222e0 extends ToggleButton {

    /* renamed from: a */
    public final C0221e f917a;

    /* renamed from: b */
    public final C0196a0 f918b;

    /* renamed from: c */
    public C0251m f919c;

    public C0222e0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842827);
        C0283u0.m8427a(this, getContext());
        C0221e c0221e = new C0221e(this);
        this.f917a = c0221e;
        c0221e.m8545d(attributeSet, 16842827);
        C0196a0 c0196a0 = new C0196a0(this);
        this.f918b = c0196a0;
        c0196a0.m8583e(attributeSet, 16842827);
        getEmojiTextViewHelper().m8467a(attributeSet, 16842827);
    }

    private C0251m getEmojiTextViewHelper() {
        if (this.f919c == null) {
            this.f919c = new C0251m(this);
        }
        return this.f919c;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f917a;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0196a0 c0196a0 = this.f918b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f917a;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f917a;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f1015b.f14578a.mo543c(z);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f917a;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f917a;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().f1015b.f14578a.mo542d(z);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().f1015b.f14578a.mo545a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0221e c0221e = this.f917a;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f917a;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }
}
