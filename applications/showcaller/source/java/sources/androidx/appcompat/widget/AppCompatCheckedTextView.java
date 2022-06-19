package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.core.widget.C0649k;
import p020b.p021a.p022k.p023a.C1433a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckedTextView.class */
public class AppCompatCheckedTextView extends CheckedTextView {

    /* renamed from: d */
    private static final int[] f891d = {16843016};

    /* renamed from: e */
    private final C0308m f892e;

    public AppCompatCheckedTextView(Context context) {
        this(context, null);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0280b0.m34988b(context), attributeSet, i);
        C0339z.m34687a(this, getContext());
        C0308m c0308m = new C0308m(this);
        this.f892e = c0308m;
        c0308m.m34849m(attributeSet, i);
        c0308m.m34860b();
        C0286e0 m34946v = C0286e0.m34946v(getContext(), attributeSet, f891d, i, 0);
        setCheckMarkDrawable(m34946v.m34961g(0));
        m34946v.m34945w();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0308m c0308m = this.f892e;
        if (c0308m != null) {
            c0308m.m34860b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0292g.m34914a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C1433a.m30126d(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0649k.m33072s(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0308m c0308m = this.f892e;
        if (c0308m != null) {
            c0308m.m34845q(context, i);
        }
    }
}
