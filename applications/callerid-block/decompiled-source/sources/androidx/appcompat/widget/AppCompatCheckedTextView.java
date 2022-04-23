package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.core.widget.C0299i;
import d.a.k.a.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckedTextView.class */
public class AppCompatCheckedTextView extends CheckedTextView {

    /* renamed from: c */
    private static final int[] f389c = {16843016};

    /* renamed from: b */
    private final C0142l f390b;

    public AppCompatCheckedTextView(Context context) {
        this(context, null);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0122a0.m14657b(context), attributeSet, i);
        C0161y.m14406a(this, getContext());
        C0142l lVar = new C0142l(this);
        this.f390b = lVar;
        lVar.m14546m(attributeSet, i);
        lVar.m14557b();
        C0127d0 v = C0127d0.m14618v(getContext(), attributeSet, f389c, i, 0);
        setCheckMarkDrawable(v.m14633g(0));
        v.m14617w();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0142l lVar = this.f390b;
        if (lVar != null) {
            lVar.m14557b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0131g.m14598a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(a.d(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0299i.m13386s(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0142l lVar = this.f390b;
        if (lVar != null) {
            lVar.m14542q(context, i);
        }
    }
}
