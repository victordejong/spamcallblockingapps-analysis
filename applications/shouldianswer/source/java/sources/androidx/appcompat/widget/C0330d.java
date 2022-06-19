package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.core.p023g.AbstractC0551t;
import androidx.core.widget.C0605i;
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d.class */
public class C0330d extends AutoCompleteTextView implements AbstractC0551t {

    /* renamed from: a */
    private static final int[] f1352a = {16843126};

    /* renamed from: b */
    private final C0331e f1353b;

    /* renamed from: c */
    private final C0349v f1354c;

    public C0330d(Context context) {
        this(context, null);
    }

    public C0330d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.autoCompleteTextViewStyle);
    }

    public C0330d(Context context, AttributeSet attributeSet, int i) {
        super(C0308ap.m7167a(context), attributeSet, i);
        C0311as m7156a = C0311as.m7156a(getContext(), attributeSet, f1352a, i, 0);
        if (m7156a.m7144g(0)) {
            setDropDownBackgroundDrawable(m7156a.m7163a(0));
        }
        m7156a.m7164a();
        this.f1353b = new C0331e(this);
        this.f1353b.m7088a(attributeSet, i);
        this.f1354c = new C0349v(this);
        this.f1354c.m7016a(attributeSet, i);
        this.f1354c.m7011b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0331e c0331e = this.f1353b;
        if (c0331e != null) {
            c0331e.m7084c();
        }
        C0349v c0349v = this.f1354c;
        if (c0349v != null) {
            c0349v.m7011b();
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public ColorStateList getSupportBackgroundTintList() {
        C0331e c0331e = this.f1353b;
        return c0331e != null ? c0331e.m7093a() : null;
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0331e c0331e = this.f1353b;
        return c0331e != null ? c0331e.m7087b() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0338k.m7053a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0331e c0331e = this.f1353b;
        if (c0331e != null) {
            c0331e.m7089a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0331e c0331e = this.f1353b;
        if (c0331e != null) {
            c0331e.m7092a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0605i.m5975a(this, callback));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C0062a.m7983b(getContext(), i));
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0331e c0331e = this.f1353b;
        if (c0331e != null) {
            c0331e.m7091a(colorStateList);
        }
    }

    @Override // androidx.core.p023g.AbstractC0551t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0331e c0331e = this.f1353b;
        if (c0331e != null) {
            c0331e.m7090a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0349v c0349v = this.f1354c;
        if (c0349v != null) {
            c0349v.m7024a(context, i);
        }
    }
}
