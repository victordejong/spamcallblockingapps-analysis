package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import p097g.C2788a;
import p124i4.C3102d;
import p196p0.C3992g;
import p270w0.C4712a;
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d.class */
public class C0215d extends AutoCompleteTextView {

    /* renamed from: d */
    public static final int[] f893d = {16843126};

    /* renamed from: a */
    public final C0221e f894a;

    /* renamed from: b */
    public final C0196a0 f895b;

    /* renamed from: c */
    public final C0249l f896c;

    public C0215d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C3681R.attr.autoCompleteTextViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0215d(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0287w0.m8420a(context);
        C0283u0.m8427a(this, getContext());
        C0303z0 m8383q = C0303z0.m8383q(getContext(), attributeSet, f893d, i, 0);
        if (m8383q.m8385o(0)) {
            setDropDownBackgroundDrawable(m8383q.m8393g(0));
        }
        m8383q.f1164b.recycle();
        C0221e c0221e = new C0221e(this);
        this.f894a = c0221e;
        c0221e.m8545d(attributeSet, i);
        C0196a0 c0196a0 = new C0196a0(this);
        this.f895b = c0196a0;
        c0196a0.m8583e(attributeSet, i);
        c0196a0.m8586b();
        C0249l c0249l = new C0249l(this);
        this.f896c = c0249l;
        c0249l.m8470c(attributeSet, i);
        KeyListener keyListener = getKeyListener();
        Objects.requireNonNull(c0249l);
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean isFocusable = super.isFocusable();
            int inputType = super.getInputType();
            KeyListener m8471b = c0249l.m8471b(keyListener);
            if (m8471b == keyListener) {
                return;
            }
            super.setKeyListener(m8471b);
            super.setRawInputType(inputType);
            super.setFocusable(isFocusable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f894a;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0196a0 c0196a0 = this.f895b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return C3992g.m1555g(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f894a;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f894a;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C3102d.m2648D(onCreateInputConnection, editorInfo, this);
        return this.f896c.m8469e(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f894a;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f894a;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3992g.m1554h(this, callback));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C2788a.m3015b(getContext(), i));
    }

    public void setEmojiCompatEnabled(boolean z) {
        ((C4712a) this.f896c.f1012c).f14564a.mo547c(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f896c.m8471b(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0221e c0221e = this.f894a;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f894a;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0196a0 c0196a0 = this.f895b;
        if (c0196a0 != null) {
            c0196a0.m8582f(context, i);
        }
    }
}
