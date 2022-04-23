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
import androidx.appcompat.a;
import androidx.core.view.u;
import androidx.core.widget.h;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatAutoCompleteTextView.class */
public class AppCompatAutoCompleteTextView extends AutoCompleteTextView implements u {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f890a = {16843126};

    /* renamed from: b  reason: collision with root package name */
    private final d f891b;

    /* renamed from: c  reason: collision with root package name */
    private final l f892c;

    public AppCompatAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public AppCompatAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.autoCompleteTextViewStyle);
    }

    public AppCompatAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(y.a(context), attributeSet, i);
        x.a(this, getContext());
        ab a2 = ab.a(getContext(), attributeSet, f890a, i, 0);
        if (a2.g(0)) {
            setDropDownBackgroundDrawable(a2.a(0));
        }
        a2.f1044a.recycle();
        d dVar = new d(this);
        this.f891b = dVar;
        dVar.a(attributeSet, i);
        l lVar = new l(this);
        this.f892c = lVar;
        lVar.a(attributeSet, i);
        lVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d dVar = this.f891b;
        if (dVar != null) {
            dVar.d();
        }
        l lVar = this.f892c;
        if (lVar != null) {
            lVar.a();
        }
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        d dVar = this.f891b;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        d dVar = this.f891b;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return g.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        d dVar = this.f891b;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        d dVar = this.f891b;
        if (dVar != null) {
            dVar.a(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(h.a(this, callback));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(androidx.appcompat.a.a.a.b(getContext(), i));
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        d dVar = this.f891b;
        if (dVar != null) {
            dVar.a(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        d dVar = this.f891b;
        if (dVar != null) {
            dVar.a(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        l lVar = this.f892c;
        if (lVar != null) {
            lVar.a(context, i);
        }
    }
}
