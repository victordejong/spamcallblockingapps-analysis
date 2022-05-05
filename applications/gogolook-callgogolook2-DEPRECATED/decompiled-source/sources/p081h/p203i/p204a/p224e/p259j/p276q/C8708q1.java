package p081h.p203i.p204a.p224e.p259j.p276q;

import android.util.Log;
/* renamed from: h.i.a.e.j.q.q1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/q1.class */
public final class C8708q1 extends AbstractC8671m1<Long> {
    public C8708q1(C8762w1 w1Var, String str, Long l) {
        super(w1Var, str, l, null);
    }

    /* renamed from: b */
    public final Long mo17121a(String str) {
        try {
            return Long.valueOf(Long.parseLong(str));
        } catch (NumberFormatException e) {
            String str2 = this.f19846b;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 25 + String.valueOf(str).length());
            sb.append("Invalid long value for ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
