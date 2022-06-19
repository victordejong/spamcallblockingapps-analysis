package p000;

import android.telephony.PhoneNumberFormattingTextWatcher;
/* renamed from: ex0 */
/* loaded from: classes-dex2jar.jar:ex0.class */
public class ex0 extends PhoneNumberFormattingTextWatcher {

    /* renamed from: a */
    public dx0 f6467a;

    public ex0(dx0 dx0Var) {
        this.f6467a = dx0Var;
    }

    @Override // android.telephony.PhoneNumberFormattingTextWatcher, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        this.f6467a.m2414a();
    }
}
