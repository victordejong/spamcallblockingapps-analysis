package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import p020b.p021a.C1423a;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.AbstractC1678v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatMultiAutoCompleteTextView.class */
public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView implements AbstractC1678v {

    /* renamed from: d */
    private static final int[] f901d = {16843126};

    /* renamed from: e */
    private final C0283d f902e;

    /* renamed from: f */
    private final C0308m f903f;

    public AppCompatMultiAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.autoCompleteTextViewStyle);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0280b0.m34988b(context), attributeSet, i);
        C0339z.m34687a(this, getContext());
        C0286e0 m34946v = C0286e0.m34946v(getContext(), attributeSet, f901d, i, 0);
        if (m34946v.m34949s(0)) {
            setDropDownBackgroundDrawable(m34946v.m34961g(0));
        }
        m34946v.m34945w();
        C0283d c0283d = new C0283d(this);
        this.f902e = c0283d;
        c0283d.m34982e(attributeSet, i);
        C0308m c0308m = new C0308m(this);
        this.f903f = c0308m;
        c0308m.m34849m(attributeSet, i);
        c0308m.m34860b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0283d c0283d = this.f902e;
        if (c0283d != null) {
            c0283d.m34985b();
        }
        C0308m c0308m = this.f903f;
        if (c0308m != null) {
            c0308m.m34860b();
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        C0283d c0283d = this.f902e;
        return c0283d != null ? c0283d.m34984c() : null;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0283d c0283d = this.f902e;
        return c0283d != null ? c0283d.m34983d() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0292g.m34914a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0283d c0283d = this.f902e;
        if (c0283d != null) {
            c0283d.m34981f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0283d c0283d = this.f902e;
        if (c0283d != null) {
            c0283d.m34980g(i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C1433a.m30126d(getContext(), i));
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0283d c0283d = this.f902e;
        if (c0283d != null) {
            c0283d.m34978i(colorStateList);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0283d c0283d = this.f902e;
        if (c0283d != null) {
            c0283d.m34977j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0308m c0308m = this.f903f;
        if (c0308m != null) {
            c0308m.m34845q(context, i);
        }
    }
}
