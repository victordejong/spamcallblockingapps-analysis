package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0684c0;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0692g;
import p012b.p016b.p026q.C0706l;
import p012b.p042i.p056q.C1032i;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckedTextView.class */
public class AppCompatCheckedTextView extends CheckedTextView {

    /* renamed from: b */
    public static final int[] f547b = {16843016};

    /* renamed from: a */
    public final C0706l f548a;

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(C0684c0.m36459b(context), attributeSet, i);
        C0675a0.m36481a(this, getContext());
        C0706l lVar = new C0706l(this);
        this.f548a = lVar;
        lVar.m36336a(attributeSet, i);
        this.f548a.m36347a();
        C0691f0 a = C0691f0.m36414a(getContext(), attributeSet, f547b, i, 0);
        setCheckMarkDrawable(a.m36412b(0));
        a.m36413b();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0706l lVar = this.f548a;
        if (lVar != null) {
            lVar.m36347a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0692g.m36400a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C0601a.m36777c(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C1032i.m35098a(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0706l lVar = this.f548a;
        if (lVar != null) {
            lVar.m36343a(context, i);
        }
    }
}
