package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import me.zhanghai.android.materialprogressbar.C3681R;
import p097g.C2788a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckBox.class */
public class AppCompatCheckBox extends CheckBox {

    /* renamed from: a */
    public final C0237i f596a;

    /* renamed from: b */
    public final C0221e f597b;

    /* renamed from: c */
    public final C0196a0 f598c;

    /* renamed from: d */
    public C0251m f599d;

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C3681R.attr.checkboxStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0287w0.m8420a(context);
        C0283u0.m8427a(this, getContext());
        C0237i c0237i = new C0237i(this);
        this.f596a = c0237i;
        c0237i.m8491b(attributeSet, i);
        C0221e c0221e = new C0221e(this);
        this.f597b = c0221e;
        c0221e.m8545d(attributeSet, i);
        C0196a0 c0196a0 = new C0196a0(this);
        this.f598c = c0196a0;
        c0196a0.m8583e(attributeSet, i);
        getEmojiTextViewHelper().m8467a(attributeSet, i);
    }

    private C0251m getEmojiTextViewHelper() {
        if (this.f599d == null) {
            this.f599d = new C0251m(this);
        }
        return this.f599d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f597b;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0196a0 c0196a0 = this.f598c;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        return super.getCompoundPaddingLeft();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f597b;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f597b;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    public ColorStateList getSupportButtonTintList() {
        C0237i c0237i = this.f596a;
        return c0237i != null ? c0237i.f965b : null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0237i c0237i = this.f596a;
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
        C0221e c0221e = this.f597b;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f597b;
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
        C0237i c0237i = this.f596a;
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
        C0221e c0221e = this.f597b;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f597b;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0237i c0237i = this.f596a;
        if (c0237i != null) {
            c0237i.f965b = colorStateList;
            c0237i.f967d = true;
            c0237i.m8492a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0237i c0237i = this.f596a;
        if (c0237i != null) {
            c0237i.f966c = mode;
            c0237i.f968e = true;
            c0237i.m8492a();
        }
    }
}
