package androidx.appcompat.widget;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.C25529m0;
import p1727n3.p1734b.p1743f.C25533o0;
import p1727n3.p1734b.p1743f.C25536q;
import p1727n3.p1734b.p1743f.C25540r0;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCheckedTextView.class */
public class AppCompatCheckedTextView extends CheckedTextView {

    /* renamed from: b */
    public static final int[] f261b = {16843016};

    /* renamed from: a */
    public final C25536q f262a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16843720);
        C25533o0.m3337a(context);
        C25529m0.m3344a(this, getContext());
        C25536q c25536q = new C25536q(this);
        this.f262a = c25536q;
        c25536q.m3331e(attributeSet, 16843720);
        c25536q.m3334b();
        C25540r0 m3306q = C25540r0.m3306q(getContext(), attributeSet, f261b, 16843720, 0);
        setCheckMarkDrawable(m3306q.m3316g(0));
        m3306q.f71466b.recycle();
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25536q c25536q = this.f262a;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        MediaSessionCompat.m43254a1(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C25440a.m3540a(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(MediaSessionCompat.m43281N1(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C25536q c25536q = this.f262a;
        if (c25536q != null) {
            c25536q.m3330f(context, i);
        }
    }
}
