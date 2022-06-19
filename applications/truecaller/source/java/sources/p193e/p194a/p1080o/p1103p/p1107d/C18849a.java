package p193e.p194a.p1080o.p1103p.p1107d;

import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.o.p.d.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/d/a.class */
public final class C18849a extends AbstractC25649a {
    public C18849a() {
        super(5, 6);
    }

    @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
    /* renamed from: a */
    public void mo1433a(AbstractC26147b abstractC26147b) {
        C22128a.m8565u0(abstractC26147b, "database", "DROP TABLE predefined_call_reason", "CREATE TABLE IF NOT EXISTS `predefined_call_reason`(`_id` INTEGER NOT Null, `index` INTEGER NOT NUll,`message` TEXT NOT NUll, `type` INTEGER NOT NUll, PRIMARY KEY (`_id`, `type`))");
    }
}
