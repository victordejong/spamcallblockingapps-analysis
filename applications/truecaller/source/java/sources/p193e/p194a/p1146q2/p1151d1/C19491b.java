package p193e.p194a.p1146q2.p1151d1;

import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.p1148b1.AbstractC19469a;
import s1.f0.w;
import s1.z.c.l;
/* renamed from: e.a.q2.d1.b */
/* loaded from: classes5-dex2jar.jar:e/a/q2/d1/b.class */
public final class C19491b implements AbstractC19490a {

    /* renamed from: a */
    public final AbstractC19469a f54102a;

    @Inject
    public C19491b(AbstractC19469a abstractC19469a) {
        l.e(abstractC19469a, "settings");
        this.f54102a = abstractC19469a;
    }

    @Override // p193e.p194a.p1146q2.p1151d1.AbstractC19490a
    /* renamed from: a */
    public String mo13286a() {
        String string = this.f54102a.getString("analyticsID");
        String str = string;
        if (string == null) {
            String m8627e2 = C22128a.m8627e2("UUID.randomUUID().toString()");
            StringBuilder sb = new StringBuilder();
            int length = m8627e2.length();
            for (int i = 0; i < length; i++) {
                char charAt = m8627e2.charAt(i);
                if (Character.isLetterOrDigit(charAt)) {
                    sb.append(charAt);
                }
            }
            String sb2 = sb.toString();
            StringBuilder m8708H = C22128a.m8708H(sb2, "filterTo(StringBuilder(), predicate).toString()");
            m8708H.append(w.n0(sb2, 7));
            m8708H.append('-');
            m8708H.append(w.o0(sb2, 7));
            str = m8708H.toString();
            l.e(str, "id");
            this.f54102a.putString("analyticsID", str);
        }
        return str;
    }

    @Override // p193e.p194a.p1146q2.p1151d1.AbstractC19490a
    /* renamed from: b */
    public void mo13285b(String str) {
        l.e(str, "id");
        this.f54102a.putString("analyticsID", str);
    }
}
