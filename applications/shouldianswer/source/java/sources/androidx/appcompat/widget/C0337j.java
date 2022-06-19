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
import androidx.appcompat.C0051a;
import androidx.core.p023g.AbstractC0551t;
import androidx.core.widget.C0605i;
/* renamed from: androidx.appcompat.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j.class */
public class C0337j extends EditText implements AbstractC0551t {
    private final C0331e mBackgroundTintHelper;
    private final C0348u mTextClassifierHelper;
    private final C0349v mTextHelper;

    public C0337j(Context context) {
        this(context, null);
    }

    public C0337j(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.editTextStyle);
    }

    public C0337j(Context context, AttributeSet attributeSet, int i) {
        super(C0308ap.m7167a(context), attributeSet, i);
        this.mBackgroundTintHelper = new C0331e(this);
        this.mBackgroundTintHelper.m7088a(attributeSet, i);
        this.mTextHelper = new C0349v(this);
        this.mTextHelper.m7016a(attributeSet, i);
        this.mTextHelper.m7011b();
        this.mTextClassifierHelper = new C0348u(this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7084c();
        }
        C0349v c0349v = this.mTextHelper;
        if (c0349v != null) {
            c0349v.m7011b();
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public ColorStateList getSupportBackgroundTintList() {
        C0331e c0331e = this.mBackgroundTintHelper;
        return c0331e != null ? c0331e.m7093a() : null;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0331e c0331e = this.mBackgroundTintHelper;
        return c0331e != null ? c0331e.m7087b() : null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0348u c0348u;
        return (Build.VERSION.SDK_INT >= 28 || (c0348u = this.mTextClassifierHelper) == null) ? super.getTextClassifier() : c0348u.m7030a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0338k.m7053a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7089a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7092a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0605i.m5975a(this, callback));
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7091a(colorStateList);
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0331e c0331e = this.mBackgroundTintHelper;
        if (c0331e != null) {
            c0331e.m7090a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0349v c0349v = this.mTextHelper;
        if (c0349v != null) {
            c0349v.m7024a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0348u c0348u;
        if (Build.VERSION.SDK_INT >= 28 || (c0348u = this.mTextClassifierHelper) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0348u.m7029a(textClassifier);
        }
    }
}
