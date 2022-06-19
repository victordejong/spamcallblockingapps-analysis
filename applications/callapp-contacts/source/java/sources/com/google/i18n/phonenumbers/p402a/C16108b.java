package com.google.i18n.phonenumbers.p402a;

import com.google.i18n.phonenumbers.C16129j;
import java.util.regex.Matcher;
/* renamed from: com.google.i18n.phonenumbers.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/a/b.class */
public final class C16108b implements AbstractC16107a {

    /* renamed from: a */
    private final C16109c f56887a = new C16109c(100);

    @Override // com.google.i18n.phonenumbers.p402a.AbstractC16107a
    /* renamed from: a */
    public final boolean mo7843a(CharSequence charSequence, C16129j.C16135d c16135d) {
        String str = c16135d.f57024b;
        if (str.length() == 0) {
            return false;
        }
        Matcher matcher = this.f56887a.m7842a(str).matcher(charSequence);
        return matcher.lookingAt() && matcher.matches();
    }
}
