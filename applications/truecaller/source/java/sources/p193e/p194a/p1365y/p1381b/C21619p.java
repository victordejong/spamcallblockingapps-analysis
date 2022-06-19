package p193e.p194a.p1365y.p1381b;

import android.text.Editable;
import android.text.TextWatcher;
import s1.z.b.l;
/* renamed from: e.a.y.b.p */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/p.class */
public final class C21619p implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ l f60283a;

    public C21619p(l lVar) {
        this.f60283a = lVar;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f60283a.d(charSequence);
    }
}
