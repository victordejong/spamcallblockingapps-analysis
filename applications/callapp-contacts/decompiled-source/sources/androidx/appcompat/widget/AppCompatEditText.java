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
import androidx.appcompat.a;
import androidx.core.view.u;
import androidx.core.widget.h;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatEditText.class */
public class AppCompatEditText extends EditText implements u {

    /* renamed from: a  reason: collision with root package name */
    private final d f900a;

    /* renamed from: b  reason: collision with root package name */
    private final l f901b;

    /* renamed from: c  reason: collision with root package name */
    private final k f902c;

    public AppCompatEditText(Context context) {
        this(context, null);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.editTextStyle);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(y.a(context), attributeSet, i);
        x.a(this, getContext());
        d dVar = new d(this);
        this.f900a = dVar;
        dVar.a(attributeSet, i);
        l lVar = new l(this);
        this.f901b = lVar;
        lVar.a(attributeSet, i);
        lVar.a();
        this.f902c = new k(this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f900a;
        if (dVar != null) {
            dVar.d();
        }
        l lVar = this.f901b;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f900a;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f900a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        k kVar;
        return (Build.VERSION.SDK_INT >= 28 || (kVar = this.f902c) == null) ? super.getTextClassifier() : kVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return g.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f900a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d dVar = this.f900a;
        if (dVar != null) {
            dVar.a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(h.a(this, callback));
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f900a;
        if (dVar != null) {
            dVar.a(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f900a;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        l lVar = this.f901b;
        if (lVar != null) {
            lVar.a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        k kVar;
        if (Build.VERSION.SDK_INT >= 28 || (kVar = this.f902c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            kVar.f1106a = textClassifier;
        }
    }
}
