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
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.p026h.AbstractC0594t;
import androidx.core.widget.C0628i;
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
public class C0346e extends AutoCompleteTextView implements AbstractC0594t {

    /* renamed from: a */
    private static final int[] f1440a = {16843126};

    /* renamed from: b */
    private final C0347f f1441b;

    /* renamed from: c */
    private final C0362t f1442c;

    public C0346e(Context context) {
        this(context, null);
    }

    public C0346e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.autoCompleteTextViewStyle);
    }

    public C0346e(Context context, AttributeSet attributeSet, int i) {
        super(C0314am.m21444a(context), attributeSet, i);
        C0317ap m21433a = C0317ap.m21433a(getContext(), attributeSet, f1440a, i, 0);
        if (m21433a.m21421g(0)) {
            setDropDownBackgroundDrawable(m21433a.m21440a(0));
        }
        m21433a.m21441a();
        this.f1441b = new C0347f(this);
        this.f1441b.m21327a(attributeSet, i);
        this.f1442c = new C0362t(this);
        this.f1442c.m21255a(attributeSet, i);
        this.f1442c.m21250b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f1441b != null) {
            this.f1441b.m21323c();
        }
        if (this.f1442c != null) {
            this.f1442c.m21250b();
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public ColorStateList getSupportBackgroundTintList() {
        return this.f1441b != null ? this.f1441b.m21332a() : null;
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.f1441b != null ? this.f1441b.m21326b() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0352j.m21292a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f1441b != null) {
            this.f1441b.m21328a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f1441b != null) {
            this.f1441b.m21331a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0628i.m20140a(this, callback));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C0094a.m22275b(getContext(), i));
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f1441b != null) {
            this.f1441b.m21330a(colorStateList);
        }
    }

    @Override // androidx.core.p026h.AbstractC0594t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f1441b != null) {
            this.f1441b.m21329a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.f1442c != null) {
            this.f1442c.m21263a(context, i);
        }
    }
}
