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
import p012b.p016b.C0574a;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0684c0;
import p012b.p016b.p026q.C0685d;
import p012b.p016b.p026q.C0692g;
import p012b.p016b.p026q.C0704k;
import p012b.p016b.p026q.C0706l;
import p012b.p042i.p054p.AbstractC1001t;
import p012b.p042i.p056q.C1032i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatEditText.class */
public class AppCompatEditText extends EditText implements AbstractC1001t {

    /* renamed from: a */
    public final C0685d f549a;

    /* renamed from: b */
    public final C0706l f550b;

    /* renamed from: c */
    public final C0704k f551c;

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.editTextStyle);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(C0684c0.m36459b(context), attributeSet, i);
        C0675a0.m36481a(this, getContext());
        C0685d dVar = new C0685d(this);
        this.f549a = dVar;
        dVar.m36453a(attributeSet, i);
        C0706l lVar = new C0706l(this);
        this.f550b = lVar;
        lVar.m36336a(attributeSet, i);
        this.f550b.m36347a();
        this.f551c = new C0704k(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0685d dVar = this.f549a;
        if (dVar != null) {
            dVar.m36458a();
        }
        C0706l lVar = this.f550b;
        if (lVar != null) {
            lVar.m36347a();
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public ColorStateList getSupportBackgroundTintList() {
        C0685d dVar = this.f549a;
        return dVar != null ? dVar.m36452b() : null;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0685d dVar = this.f549a;
        return dVar != null ? dVar.m36449c() : null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0704k kVar;
        return (Build.VERSION.SDK_INT >= 28 || (kVar = this.f551c) == null) ? super.getTextClassifier() : kVar.m36352a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0692g.m36400a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0685d dVar = this.f549a;
        if (dVar != null) {
            dVar.m36450b(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0685d dVar = this.f549a;
        if (dVar != null) {
            dVar.m36457a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C1032i.m35098a(this, callback));
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0685d dVar = this.f549a;
        if (dVar != null) {
            dVar.m36451b(colorStateList);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0685d dVar = this.f549a;
        if (dVar != null) {
            dVar.m36455a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0706l lVar = this.f550b;
        if (lVar != null) {
            lVar.m36343a(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0704k kVar;
        if (Build.VERSION.SDK_INT >= 28 || (kVar = this.f551c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            kVar.m36351a(textClassifier);
        }
    }
}
