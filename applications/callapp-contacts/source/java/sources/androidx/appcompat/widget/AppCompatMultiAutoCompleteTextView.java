package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import androidx.appcompat.C0142a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.view.AbstractC0925u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatMultiAutoCompleteTextView.class */
public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView implements AbstractC0925u {

    /* renamed from: a */
    private static final int[] f1150a = {16843126};

    /* renamed from: b */
    private final C0390d f1151b;

    /* renamed from: c */
    private final C0399l f1152c;

    public AppCompatMultiAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.autoCompleteTextViewStyle);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0426y.m45569a(context), attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0370ab m45804a = C0370ab.m45804a(getContext(), attributeSet, f1150a, i, 0);
        if (m45804a.m45793g(0)) {
            setDropDownBackgroundDrawable(m45804a.m45810a(0));
        }
        m45804a.f1491a.recycle();
        C0390d c0390d = new C0390d(this);
        this.f1151b = c0390d;
        c0390d.m45744a(attributeSet, i);
        C0399l c0399l = new C0399l(this);
        this.f1152c = c0399l;
        c0399l.m45694a(attributeSet, i);
        c0399l.m45705a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0390d c0390d = this.f1151b;
        if (c0390d != null) {
            c0390d.m45740d();
        }
        C0399l c0399l = this.f1152c;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        C0390d c0390d = this.f1151b;
        if (c0390d != null) {
            return c0390d.m45743b();
        }
        return null;
    }

    @Override // androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0390d c0390d = this.f1151b;
        if (c0390d != null) {
            return c0390d.m45741c();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0394g.m45720a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0390d c0390d = this.f1151b;
        if (c0390d != null) {
            c0390d.m45749a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0390d c0390d = this.f1151b;
        if (c0390d != null) {
            c0390d.m45748a(i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C0153a.m46374b(getContext(), i));
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0390d c0390d = this.f1151b;
        if (c0390d != null) {
            c0390d.m45747a(colorStateList);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0390d c0390d = this.f1151b;
        if (c0390d != null) {
            c0390d.m45746a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0399l c0399l = this.f1152c;
        if (c0399l != null) {
            c0399l.m45701a(context, i);
        }
    }
}
