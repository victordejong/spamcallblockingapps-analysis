package p193e.p194a.p1080o.p1103p.p1106c;

import com.truecaller.contextcall.p159db.ContextCallDatabase;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.p.c.g */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/c/g.class */
public final class C18846g implements AbstractC18842c {

    /* renamed from: a */
    public final g f52914a = C25225a.m3978P1(new C18847a());

    /* renamed from: b */
    public final ContextCallDatabase f52915b;

    /* renamed from: c */
    public final f f52916c;

    /* renamed from: e.a.o.p.c.g$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/c/g$a.class */
    public static final class C18847a extends m implements a<AbstractC18833a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18847a() {
            super(0);
            C18846g.this = r4;
        }

        public Object invoke() {
            return C18846g.this.f52915b.mo35589d();
        }
    }

    @Inject
    public C18846g(ContextCallDatabase contextCallDatabase, @Named("IO") f fVar) {
        l.e(contextCallDatabase, "contextCallDatabase");
        l.e(fVar, "ioContext");
        this.f52915b = contextCallDatabase;
        this.f52916c = fVar;
    }

    /* renamed from: a */
    public static final AbstractC18833a m14413a(C18846g c18846g) {
        return (AbstractC18833a) c18846g.f52914a.getValue();
    }
}
