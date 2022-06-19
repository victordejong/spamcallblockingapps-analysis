package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import p193e.p1545k.p1546a.p1556c.AbstractC23614e;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23705c;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
/* renamed from: e.k.a.c.j0.i.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/m.class */
public class C23725m extends C23723k {

    /* renamed from: d */
    public final String f65750d;

    /* renamed from: e */
    public final String f65751e;

    public C23725m(AbstractC23698i abstractC23698i, C23887o c23887o, AbstractC23705c abstractC23705c) {
        super(abstractC23698i, c23887o, abstractC23705c);
        String name = abstractC23698i.f65728a.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf < 0) {
            this.f65750d = "";
            this.f65751e = StringConstant.DOT;
            return;
        }
        this.f65751e = name.substring(0, lastIndexOf + 1);
        this.f65750d = name.substring(0, lastIndexOf);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23723k, p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f
    /* renamed from: a */
    public String mo6170a(Object obj) {
        String name = obj.getClass().getName();
        String str = name;
        if (name.startsWith(this.f65751e)) {
            str = name.substring(this.f65751e.length() - 1);
        }
        return str;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23723k
    /* renamed from: h */
    public AbstractC23698i mo6197h(String str, AbstractC23614e abstractC23614e) throws IOException {
        String str2 = str;
        if (str.startsWith(StringConstant.DOT)) {
            StringBuilder sb = new StringBuilder(this.f65750d.length() + str.length());
            if (this.f65750d.isEmpty()) {
                sb.append(str.substring(1));
            } else {
                sb.append(this.f65750d);
                sb.append(str);
            }
            str2 = sb.toString();
        }
        return super.mo6197h(str2, abstractC23614e);
    }
}
