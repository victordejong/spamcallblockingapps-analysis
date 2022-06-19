package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import me.zhanghai.android.materialprogressbar.C3681R;
import p097g.C2788a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRadioButton.class */
public class AppCompatRadioButton extends RadioButton {

    /* renamed from: a */
    public final C0237i f600a;

    /* renamed from: b */
    public final C0221e f601b;

    /* renamed from: c */
    public final C0196a0 f602c;

    /* renamed from: d */
    public C0251m f603d;

    public AppCompatRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C3681R.attr.radioButtonStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0287w0.m8420a(context);
        C0283u0.m8427a(this, getContext());
        C0237i c0237i = new C0237i(this);
        this.f600a = c0237i;
        c0237i.m8491b(attributeSet, i);
        C0221e c0221e = new C0221e(this);
        this.f601b = c0221e;
        c0221e.m8545d(attributeSet, i);
        C0196a0 c0196a0 = new C0196a0(this);
        this.f602c = c0196a0;
        c0196a0.m8583e(attributeSet, i);
        getEmojiTextViewHelper().m8467a(attributeSet, i);
    }

    private C0251m getEmojiTextViewHelper() {
        if (this.f603d == null) {
            this.f603d = new C0251m(this);
        }
        return this.f603d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f601b;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0196a0 c0196a0 = this.f602c;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        return super.getCompoundPaddingLeft();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f601b;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f601b;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    public ColorStateList getSupportButtonTintList() {
        C0237i c0237i = this.f600a;
        return c0237i != null ? c0237i.f965b : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0237i c0237i = this.f600a;
        return c0237i != null ? c0237i.f966c : null;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f1015b.f14578a.mo543c(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f601b;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f601b;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C2788a.m3015b(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0237i c0237i = this.f600a;
        if (c0237i != null) {
            if (c0237i.f969f) {
                c0237i.f969f = false;
                return;
            }
            c0237i.f969f = true;
            c0237i.m8492a();
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
        C0221e c0221e = this.f601b;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f601b;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0237i c0237i = this.f600a;
        if (c0237i != null) {
            c0237i.f965b = colorStateList;
            c0237i.f967d = true;
            c0237i.m8492a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0237i c0237i = this.f600a;
        if (c0237i != null) {
            c0237i.f966c = mode;
            c0237i.f968e = true;
            c0237i.m8492a();
        }
    }
}
