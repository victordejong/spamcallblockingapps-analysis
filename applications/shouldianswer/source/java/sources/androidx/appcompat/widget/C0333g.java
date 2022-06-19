package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.core.widget.C0605i;
/* renamed from: androidx.appcompat.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g.class */
public class C0333g extends CheckedTextView {

    /* renamed from: a */
    private static final int[] f1361a = {16843016};

    /* renamed from: b */
    private final C0349v f1362b;

    public C0333g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public C0333g(Context context, AttributeSet attributeSet, int i) {
        super(C0308ap.m7167a(context), attributeSet, i);
        this.f1362b = new C0349v(this);
        this.f1362b.m7016a(attributeSet, i);
        this.f1362b.m7011b();
        C0311as m7156a = C0311as.m7156a(getContext(), attributeSet, f1361a, i, 0);
        setCheckMarkDrawable(m7156a.m7163a(0));
        m7156a.m7164a();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0349v c0349v = this.f1362b;
        if (c0349v != null) {
            c0349v.m7011b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0338k.m7053a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C0062a.m7983b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0605i.m5975a(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0349v c0349v = this.f1362b;
        if (c0349v != null) {
            c0349v.m7024a(context, i);
        }
    }
}
