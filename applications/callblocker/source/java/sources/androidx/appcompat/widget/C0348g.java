package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.widget.C0628i;
/* renamed from: androidx.appcompat.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g.class */
public class C0348g extends CheckedTextView {

    /* renamed from: a */
    private static final int[] f1449a = {16843016};

    /* renamed from: b */
    private final C0362t f1450b;

    public C0348g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public C0348g(Context context, AttributeSet attributeSet, int i) {
        super(C0314am.m21444a(context), attributeSet, i);
        this.f1450b = new C0362t(this);
        this.f1450b.m21255a(attributeSet, i);
        this.f1450b.m21250b();
        C0317ap m21433a = C0317ap.m21433a(getContext(), attributeSet, f1449a, i, 0);
        setCheckMarkDrawable(m21433a.m21440a(0));
        m21433a.m21441a();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f1450b != null) {
            this.f1450b.m21250b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return C0352j.m21292a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C0094a.m22275b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0628i.m20140a(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.f1450b != null) {
            this.f1450b.m21263a(context, i);
        }
    }
}
