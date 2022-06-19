package com.google.i18n.phonenumbers.p169a;

import com.google.i18n.phonenumbers.C5060h;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.i18n.phonenumbers.a.b */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/a/b.class */
public final class C5045b implements AbstractC5044a {

    /* renamed from: a */
    private final C5046c f21301a = new C5046c(100);

    private C5045b() {
    }

    /* renamed from: a */
    public static AbstractC5044a m1760a() {
        return new C5045b();
    }

    /* renamed from: a */
    private static boolean m1758a(CharSequence charSequence, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(charSequence);
        if (!matcher.lookingAt()) {
            z = false;
        } else if (matcher.matches()) {
            z = true;
        }
        return z;
    }

    @Override // com.google.i18n.phonenumbers.p169a.AbstractC5044a
    /* renamed from: a */
    public boolean mo1759a(CharSequence charSequence, C5060h.C5064d c5064d, boolean z) {
        String m1639a = c5064d.m1639a();
        return m1639a.length() == 0 ? false : m1758a(charSequence, this.f21301a.m1757a(m1639a), z);
    }
}
