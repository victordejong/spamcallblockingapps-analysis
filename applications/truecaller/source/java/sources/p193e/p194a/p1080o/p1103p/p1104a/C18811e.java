package p193e.p194a.p1080o.p1103p.p1104a;

import com.truecaller.contextcall.p159db.availability.ContextCallAvailability;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.contextcall.db.availability.ContextCallAvailabilityDbHelperImpl$insertOrUpdate$2", f = "ContextCallAvailabilityDbHelper.kt", l = {24}, m = "invokeSuspend")
/* renamed from: e.a.o.p.a.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/a/e.class */
public final class C18811e extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f52840e;

    /* renamed from: f */
    public final /* synthetic */ C18812f f52841f;

    /* renamed from: g */
    public final /* synthetic */ ContextCallAvailability f52842g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18811e(C18812f c18812f, ContextCallAvailability contextCallAvailability, d dVar) {
        super(1, dVar);
        this.f52841f = c18812f;
        this.f52842g = contextCallAvailability;
    }

    /* renamed from: d */
    public final Object m14457d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C18811e(this.f52841f, this.f52842g, dVar).m14455s(s.a);
    }

    /* renamed from: l */
    public final d<s> m14456l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C18811e(this.f52841f, this.f52842g, dVar);
    }

    /* renamed from: s */
    public final Object m14455s(Object obj) {
        a aVar = a.a;
        int i = this.f52840e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18803a mo35591b = this.f52841f.f52843a.mo35591b();
            ContextCallAvailability contextCallAvailability = this.f52842g;
            this.f52840e = 1;
            if (mo35591b.mo14461b(contextCallAvailability, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
