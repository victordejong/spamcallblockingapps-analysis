package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.core.widget.C0649k;
import androidx.core.widget.C0651l;
import p020b.p021a.C1423a;
import p020b.p041h.p050l.AbstractC1675s;
import p020b.p041h.p050l.AbstractC1678v;
import p020b.p041h.p050l.C1609c;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p052g0.C1654a;
import p020b.p041h.p050l.p052g0.C1656b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatEditText.class */
public class AppCompatEditText extends EditText implements AbstractC1678v, AbstractC1675s {

    /* renamed from: d */
    private final C0283d f893d;

    /* renamed from: e */
    private final C0308m f894e;

    /* renamed from: f */
    private final C0306l f895f;

    /* renamed from: g */
    private final C0651l f896g;

    public AppCompatEditText(Context context) {
        this(context, null);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.editTextStyle);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(C0280b0.m34988b(context), attributeSet, i);
        C0339z.m34687a(this, getContext());
        C0283d c0283d = new C0283d(this);
        this.f893d = c0283d;
        c0283d.m34982e(attributeSet, i);
        C0308m c0308m = new C0308m(this);
        this.f894e = c0308m;
        c0308m.m34849m(attributeSet, i);
        c0308m.m34860b();
        this.f895f = new C0306l(this);
        this.f896g = new C0651l();
    }

    @Override // p020b.p041h.p050l.AbstractC1675s
    /* renamed from: a */
    public C1609c mo29256a(C1609c c1609c) {
        return this.f896g.mo29355a(this, c1609c);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0283d c0283d = this.f893d;
        if (c0283d != null) {
            c0283d.m34985b();
        }
        C0308m c0308m = this.f894e;
        if (c0308m != null) {
            c0308m.m34860b();
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public ColorStateList getSupportBackgroundTintList() {
        C0283d c0283d = this.f893d;
        return c0283d != null ? c0283d.m34984c() : null;
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0283d c0283d = this.f893d;
        return c0283d != null ? c0283d.m34983d() : null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0306l c0306l;
        return (Build.VERSION.SDK_INT >= 28 || (c0306l = this.f895f) == null) ? super.getTextClassifier() : c0306l.m34867a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f894e.m34844r(this, onCreateInputConnection, editorInfo);
        InputConnection m34914a = C0292g.m34914a(onCreateInputConnection, editorInfo, this);
        String[] m29340F = C1679w.m29340F(this);
        InputConnection inputConnection = m34914a;
        if (m34914a != null) {
            inputConnection = m34914a;
            if (m29340F != null) {
                C1654a.m29422d(editorInfo, m29340F);
                inputConnection = C1656b.m29416a(m34914a, editorInfo, C0300j.m34885a(this));
            }
        }
        return inputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        if (C0300j.m34884b(this, dragEvent)) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        if (C0300j.m34883c(this, i)) {
            return true;
        }
        return super.onTextContextMenuItem(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0283d c0283d = this.f893d;
        if (c0283d != null) {
            c0283d.m34981f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0283d c0283d = this.f893d;
        if (c0283d != null) {
            c0283d.m34980g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0649k.m33072s(this, callback));
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0283d c0283d = this.f893d;
        if (c0283d != null) {
            c0283d.m34978i(colorStateList);
        }
    }

    @Override // p020b.p041h.p050l.AbstractC1678v
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0283d c0283d = this.f893d;
        if (c0283d != null) {
            c0283d.m34977j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0308m c0308m = this.f894e;
        if (c0308m != null) {
            c0308m.m34845q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0306l c0306l;
        if (Build.VERSION.SDK_INT >= 28 || (c0306l = this.f895f) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0306l.m34866b(textClassifier);
        }
    }
}
