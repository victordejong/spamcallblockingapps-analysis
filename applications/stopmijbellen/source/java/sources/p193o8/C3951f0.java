package p193o8;

import android.text.Editable;
import android.text.TextWatcher;
import com.mglab.scm.visual.C2107c;
import p078e2.EnumC2524b;
/* renamed from: o8.f0 */
/* loaded from: classes2-dex2jar.jar:o8/f0.class */
public class C3951f0 implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ C2107c f12444a;

    public C3951f0(C2107c c2107c) {
        this.f12444a = c2107c;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        C2107c.f7645k.m3481c(EnumC2524b.POSITIVE).setEnabled(editable.length() != 0);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
