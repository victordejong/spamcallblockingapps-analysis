package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.widget.C0959h;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckedTextView.class */
public class AppCompatCheckedTextView extends CheckedTextView {

    /* renamed from: a */
    private static final int[] f1141a = {16843016};

    /* renamed from: b */
    private final C0399l f1142b;

    public AppCompatCheckedTextView(Context context) {
        this(context, null);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0426y.m45569a(context), attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0399l c0399l = new C0399l(this);
        this.f1142b = c0399l;
        c0399l.m45694a(attributeSet, i);
        c0399l.m45705a();
        C0370ab m45804a = C0370ab.m45804a(getContext(), attributeSet, f1141a, i, 0);
        setCheckMarkDrawable(m45804a.m45810a(0));
        m45804a.f1491a.recycle();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0399l c0399l = this.f1142b;
        if (c0399l != null) {
            c0399l.m45705a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0394g.m45720a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C0153a.m46374b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0959h.m43961a(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0399l c0399l = this.f1142b;
        if (c0399l != null) {
            c0399l.m45701a(context, i);
        }
    }
}
