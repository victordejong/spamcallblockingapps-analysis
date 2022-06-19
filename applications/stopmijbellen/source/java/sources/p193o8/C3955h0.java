package p193o8;

import android.text.Editable;
import android.text.TextWatcher;
import com.mglab.scm.visual.C2107c;
import com.rengwuxian.materialedittext.MaterialAutoCompleteTextView;
import p078e2.EnumC2524b;
/* renamed from: o8.h0 */
/* loaded from: classes2-dex2jar.jar:o8/h0.class */
public class C3955h0 implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ MaterialAutoCompleteTextView f12449a;

    /* renamed from: b */
    public final /* synthetic */ C2107c f12450b;

    public C3955h0(C2107c c2107c, MaterialAutoCompleteTextView materialAutoCompleteTextView) {
        this.f12450b = c2107c;
        this.f12449a = materialAutoCompleteTextView;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        C2107c.f7645k.m3481c(EnumC2524b.POSITIVE).setEnabled(editable.length() != 0);
        if (editable.length() == 0) {
            this.f12449a.setError(this.f12450b.f7646a.getResources().getString(2131820730));
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
