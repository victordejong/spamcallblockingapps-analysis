package p193e.p194a.p294b.p295a.p296a.p297a;

import androidx.recyclerview.widget.RecyclerView;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p294b.p295a.p296a.p297a.C7520d;
import p193e.p194a.p294b.p295a.p308b.p310j.C7659c;
import p193e.p194a.p294b.p355m.C8091n0;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.a.a.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/g.class */
public final class C7541g extends m implements l<Integer, s> {

    /* renamed from: b */
    public final /* synthetic */ C8091n0 f23846b;

    /* renamed from: c */
    public final /* synthetic */ C7520d f23847c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7541g(C8091n0 c8091n0, C7520d c7520d) {
        super(1);
        this.f23846b = c8091n0;
        this.f23847c = c7520d;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [n3.b0.a.y, e.a.b.a.a.c.c] */
    /* renamed from: d */
    public Object m29527d(Object obj) {
        C7520d.AbstractC7523c abstractC7523c;
        int intValue = ((Number) obj).intValue();
        C7659c c7659c = this.f23847c.f23819e;
        if (c7659c != null) {
            c7659c.m29457e(Integer.valueOf(intValue));
        }
        RecyclerView recyclerView = this.f23846b.f25042d;
        s1.z.c.l.d(recyclerView, "footerList");
        C18334g0.m15228g0(recyclerView, this.f23847c.m29537QA(), intValue);
        String m29536RA = this.f23847c.m29536RA(intValue);
        if (m29536RA != null && (abstractC7523c = this.f23847c.f23818d) != null) {
            abstractC7523c.mo29531g3(m29536RA);
        }
        return s.a;
    }
}
