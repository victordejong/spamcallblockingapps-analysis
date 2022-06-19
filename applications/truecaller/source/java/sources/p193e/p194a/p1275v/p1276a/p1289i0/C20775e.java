package p193e.p194a.p1275v.p1276a.p1289i0;

import com.truecaller.data.entity.Number;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1309p.AbstractC20932g;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.i0.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/i0/e.class */
public final class C20775e extends m implements l<Integer, s> {

    /* renamed from: b */
    public final /* synthetic */ C20773d f58421b;

    /* renamed from: c */
    public final /* synthetic */ C20847s f58422c;

    /* renamed from: d */
    public final /* synthetic */ Number f58423d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20775e(C20773d c20773d, C20847s c20847s, Number number) {
        super(1);
        this.f58421b = c20773d;
        this.f58422c = c20847s;
        this.f58423d = number;
    }

    /* renamed from: d */
    public Object m10712d(Object obj) {
        int intValue = ((Number) obj).intValue();
        this.f58421b.f58417f.m10594a();
        AbstractC20932g abstractC20932g = this.f58421b.f58414c;
        String m35489x = this.f58422c.f58578a.m35489x();
        s1.z.c.l.d(m35489x, "detailsViewModel.contact.displayNameOrNumber");
        abstractC20932g.mo10491d(m35489x, this.f58423d, intValue);
        return s.a;
    }
}
