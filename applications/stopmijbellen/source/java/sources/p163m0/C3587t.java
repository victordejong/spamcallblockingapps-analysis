package p163m0;

import android.text.TextUtils;
import android.view.View;
import p163m0.C3589v;
/* renamed from: m0.t */
/* loaded from: classes-dex2jar.jar:m0/t.class */
public class C3587t extends C3589v.AbstractC3591b<CharSequence> {
    public C3587t(int i, Class cls, int i2, int i3) {
        super(i, cls, i2, i3);
    }

    @Override // p163m0.C3589v.AbstractC3591b
    /* renamed from: b */
    public CharSequence mo2099b(View view) {
        return C3589v.C3604n.m1992a(view);
    }

    @Override // p163m0.C3589v.AbstractC3591b
    /* renamed from: c */
    public void mo2098c(View view, CharSequence charSequence) {
        C3589v.C3604n.m1991b(view, charSequence);
    }

    @Override // p163m0.C3589v.AbstractC3591b
    /* renamed from: f */
    public boolean mo2095f(CharSequence charSequence, CharSequence charSequence2) {
        return !TextUtils.equals(charSequence, charSequence2);
    }
}
