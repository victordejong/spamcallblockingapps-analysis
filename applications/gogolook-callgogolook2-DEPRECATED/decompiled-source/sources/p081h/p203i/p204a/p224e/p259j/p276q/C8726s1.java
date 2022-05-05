package p081h.p203i.p204a.p224e.p259j.p276q;

import android.util.Log;
/* renamed from: h.i.a.e.j.q.s1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/s1.class */
public final class C8726s1 extends AbstractC8671m1<Boolean> {
    public C8726s1(C8762w1 w1Var, String str, Boolean bool) {
        super(w1Var, str, bool, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8671m1
    /* renamed from: a */
    public final /* synthetic */ Boolean mo17121a(String str) {
        if (C8619h1.f19735c.matcher(str).matches()) {
            return true;
        }
        if (C8619h1.f19736d.matcher(str).matches()) {
            return false;
        }
        String str2 = this.f19846b;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 28 + String.valueOf(str).length());
        sb.append("Invalid boolean value for ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
