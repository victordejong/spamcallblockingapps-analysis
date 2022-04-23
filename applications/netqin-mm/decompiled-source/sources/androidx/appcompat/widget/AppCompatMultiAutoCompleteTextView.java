package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import p012b.p016b.C0574a;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0684c0;
import p012b.p016b.p026q.C0685d;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0692g;
import p012b.p016b.p026q.C0706l;
import p012b.p042i.p054p.AbstractC1001t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatMultiAutoCompleteTextView.class */
public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView implements AbstractC1001t {

    /* renamed from: c */
    public static final int[] f556c = {16843126};

    /* renamed from: a */
    public final C0685d f557a;

    /* renamed from: b */
    public final C0706l f558b;

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.autoCompleteTextViewStyle);
    }

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0684c0.m36459b(context), attributeSet, i);
        C0675a0.m36481a(this, getContext());
        C0691f0 a = C0691f0.m36414a(getContext(), attributeSet, f556c, i, 0);
        if (a.m36402g(0)) {
            setDropDownBackgroundDrawable(a.m36412b(0));
        }
        a.m36413b();
        C0685d dVar = new C0685d(this);
        this.f557a = dVar;
        dVar.m36453a(attributeSet, i);
        C0706l lVar = new C0706l(this);
        this.f558b = lVar;
        lVar.m36336a(attributeSet, i);
        this.f558b.m36347a();
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0685d dVar = this.f557a;
        if (dVar != null) {
            dVar.m36458a();
        }
        C0706l lVar = this.f558b;
        if (lVar != null) {
            lVar.m36347a();
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public ColorStateList getSupportBackgroundTintList() {
        C0685d dVar = this.f557a;
        return dVar != null ? dVar.m36452b() : null;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0685d dVar = this.f557a;
        return dVar != null ? dVar.m36449c() : null;
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
        C0685d dVar = this.f557a;
        if (dVar != null) {
            dVar.m36450b(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0685d dVar = this.f557a;
        if (dVar != null) {
            dVar.m36457a(i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C0601a.m36777c(getContext(), i));
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0685d dVar = this.f557a;
        if (dVar != null) {
            dVar.m36451b(colorStateList);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0685d dVar = this.f557a;
        if (dVar != null) {
            dVar.m36455a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0706l lVar = this.f558b;
        if (lVar != null) {
            lVar.m36343a(context, i);
        }
    }
}
