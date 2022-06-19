package p193e.p194a.p1053m0;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.m0.j0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/j0.class */
public final class C18105j0 extends m implements l<String, CharSequence> {

    /* renamed from: b */
    public final /* synthetic */ List f51024b;

    /* renamed from: c */
    public final /* synthetic */ String f51025c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18105j0(List list, String str) {
        super(1);
        this.f51024b = list;
        this.f51025c = str;
    }

    /* renamed from: d */
    public Object m15486d(Object obj) {
        String str = (String) obj;
        s1.z.c.l.e(str, "column");
        List list = this.f51024b;
        list.add(this.f51025c + '%');
        List list2 = this.f51024b;
        StringBuilder m8728C = C22128a.m8728C("%|");
        m8728C.append(this.f51025c);
        m8728C.append('%');
        list2.add(m8728C.toString());
        List list3 = this.f51024b;
        StringBuilder m8728C2 = C22128a.m8728C("% ");
        m8728C2.append(this.f51025c);
        m8728C2.append('%');
        list3.add(m8728C2.toString());
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        C22128a.m8666T0(sb, " LIKE ? OR ", str, " LIKE ? OR ", str);
        sb.append(" LIKE ?");
        return sb.toString();
    }
}
