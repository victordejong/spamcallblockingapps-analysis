package p000;

import java.util.Objects;
import p193e.p194a.p294b.p295a.p296a.p297a.p298b.C7483a;
import p193e.p194a.p372b0.p430q.C8612s;
import p193e.p194a.p851h5.C14945l;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: l2 */
/* loaded from: classes5-dex2jar.jar:l2.class */
public final class C25348l2 extends m implements l<C14945l, s> {

    /* renamed from: b */
    public final /* synthetic */ int f70760b;

    /* renamed from: c */
    public final /* synthetic */ Object f70761c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25348l2(int i, Object obj) {
        super(1);
        this.f70760b = i;
        this.f70761c = obj;
    }

    /* renamed from: d */
    public final Object m3702d(Object obj) {
        s sVar = s.a;
        int i = this.f70760b;
        if (i == 0) {
            C14945l c14945l = (C14945l) obj;
            s1.z.c.l.e(c14945l, "it");
            if (c14945l.f42679a) {
                C7483a c7483a = (C7483a) this.f70761c;
                s1.a.l[] lVarArr = C7483a.f23750h;
                c7483a.startActivityForResult(C8612s.m28221a(c7483a.requireContext()), 17);
            }
            return sVar;
        } else if (i != 1) {
            throw null;
        } else {
            C14945l c14945l2 = (C14945l) obj;
            s1.z.c.l.e(c14945l2, "it");
            if (c14945l2.f42679a) {
                C7483a c7483a2 = (C7483a) this.f70761c;
                s1.a.l[] lVarArr2 = C7483a.f23750h;
                Objects.requireNonNull(c7483a2);
                c7483a2.startActivityForResult(C8612s.m28219c(), 34);
            }
            return sVar;
        }
    }
}
