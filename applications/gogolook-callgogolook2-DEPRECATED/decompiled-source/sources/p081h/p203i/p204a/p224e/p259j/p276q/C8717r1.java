package p081h.p203i.p204a.p224e.p259j.p276q;

import android.util.Log;
/* renamed from: h.i.a.e.j.q.r1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/r1.class */
public final class C8717r1 extends AbstractC8671m1<Integer> {
    public C8717r1(C8762w1 w1Var, String str, Integer num) {
        super(w1Var, str, num, null);
    }

    /* renamed from: b */
    public final Integer mo17121a(String str) {
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (NumberFormatException e) {
            String str2 = this.f19846b;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 28 + String.valueOf(str).length());
            sb.append("Invalid integer value for ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
