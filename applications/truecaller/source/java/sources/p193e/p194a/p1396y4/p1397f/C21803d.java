package p193e.p194a.p1396y4.p1397f;

import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.y4.f.d */
/* loaded from: classes13-dex2jar.jar:e/a/y4/f/d.class */
public final class C21803d implements AbstractC21805f {

    /* renamed from: a */
    public static final C21803d f60663a = new C21803d();

    @Override // p193e.p194a.p1396y4.p1397f.AbstractC21805f
    /* renamed from: a */
    public k<String, String> mo9045a(String str, String str2) {
        k<String, String> kVar;
        if (str != null) {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (Character.isLetterOrDigit(charAt)) {
                    sb.append(charAt);
                }
            }
            String sb2 = sb.toString();
            l.d(sb2, "filterTo(StringBuilder(), predicate).toString()");
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            String lowerCase = sb2.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            boolean z = false;
            if (lowerCase.length() == 0) {
                z = true;
            }
            if (z) {
                lowerCase = null;
            }
            if (lowerCase != null) {
                kVar = new k<>(lowerCase, (Object) null);
                return kVar;
            }
        }
        StringBuilder m8558w = C22128a.m8558w((char) 65533);
        if (str == null) {
            str = "";
        }
        m8558w.append(str);
        kVar = new k<>(m8558w.toString(), "?");
        return kVar;
    }
}
