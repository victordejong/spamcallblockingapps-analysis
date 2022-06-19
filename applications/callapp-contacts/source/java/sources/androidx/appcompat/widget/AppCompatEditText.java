package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.appcompat.C0142a;
import androidx.core.view.AbstractC0925u;
import androidx.core.widget.C0959h;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatEditText.class */
public class AppCompatEditText extends EditText implements AbstractC0925u {

    /* renamed from: a */
    private final C0390d f1143a;

    /* renamed from: b */
    private final C0399l f1144b;

    /* renamed from: c */
    private final C0398k f1145c;

    public AppCompatEditText(Context context) {
        this(context, null);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.editTextStyle);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(C0426y.m45569a(context), attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0390d c0390d = new C0390d(this);
        this.f1143a = c0390d;
        c0390d.m45744a(attributeSet, i);
        C0399l c0399l = new C0399l(this);
        this.f1144b = c0399l;
        c0399l.m45694a(attributeSet, i);
        c0399l.m45705a();
        this.f1145c = new C0398k(this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0390d c0390d = this.f1143a;
        if (c0390d != null) {
            c0390d.m45740d();
        }
        C0399l c0399l = this.f1144b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public ColorStateList getSupportBackgroundTintList() {
        C0390d c0390d = this.f1143a;
        if (c0390d != null) {
            return c0390d.m45743b();
        }
        return null;
    }

    @Override // androidx.core.view.AbstractC0925u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0390d c0390d = this.f1143a;
        if (c0390d != null) {
            return c0390d.m45741c();
        }
        return null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0398k c0398k;
        return (Build.VERSION.SDK_INT >= 28 || (c0398k = this.f1145c) == null) ? super.getTextClassifier() : c0398k.m45706a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0394g.m45720a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0390d c0390d = this.f1143a;
        if (c0390d != null) {
            c0390d.m45749a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0390d c0390d = this.f1143a;
        if (c0390d != null) {
            c0390d.m45748a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0959h.m43961a(this, callback));
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0390d c0390d = this.f1143a;
        if (c0390d != null) {
            c0390d.m45747a(colorStateList);
        }
    }

    @Override // androidx.core.view.AbstractC0925u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0390d c0390d = this.f1143a;
        if (c0390d != null) {
            c0390d.m45746a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0399l c0399l = this.f1144b;
        if (c0399l != null) {
            c0399l.m45701a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0398k c0398k;
        if (Build.VERSION.SDK_INT >= 28 || (c0398k = this.f1145c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0398k.f1597a = textClassifier;
        }
    }
}
