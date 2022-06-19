package p193e.p194a.p1080o.p1103p.p1104a;

import com.truecaller.contextcall.p159db.ContextCallDatabase;
import javax.inject.Inject;
import javax.inject.Named;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.o.p.a.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/a/f.class */
public final class C18812f implements AbstractC18809c {

    /* renamed from: a */
    public final ContextCallDatabase f52843a;

    /* renamed from: b */
    public final f f52844b;

    @Inject
    public C18812f(ContextCallDatabase contextCallDatabase, @Named("IO") f fVar) {
        l.e(contextCallDatabase, "contextCallDatabase");
        l.e(fVar, "coroutineContext");
        this.f52843a = contextCallDatabase;
        this.f52844b = fVar;
    }
}
