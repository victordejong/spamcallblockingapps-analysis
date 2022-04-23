package com.google.i18n.phonenumbers.a;

import com.google.i18n.phonenumbers.j;
import java.util.regex.Matcher;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/a/b.class */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final c f32833a = new c(100);

    @Override // com.google.i18n.phonenumbers.a.a
    public final boolean a(CharSequence charSequence, j.d dVar) {
        String str = dVar.f32887b;
        if (str.length() == 0) {
            return false;
        }
        Matcher matcher = this.f32833a.a(str).matcher(charSequence);
        return matcher.lookingAt() && matcher.matches();
    }
}
