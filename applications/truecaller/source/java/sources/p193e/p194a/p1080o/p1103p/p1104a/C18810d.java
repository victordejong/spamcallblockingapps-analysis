package p193e.p194a.p1080o.p1103p.p1104a;

import com.truecaller.contextcall.p159db.availability.ContextCallAvailability;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.contextcall.db.availability.ContextCallAvailabilityDbHelperImpl$getAvailability$2", f = "ContextCallAvailabilityDbHelper.kt", l = {41}, m = "invokeSuspend")
/* renamed from: e.a.o.p.a.d */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/a/d.class */
public final class C18810d extends i implements l<d<? super ContextCallAvailability>, Object> {

    /* renamed from: e */
    public int f52837e;

    /* renamed from: f */
    public final /* synthetic */ C18812f f52838f;

    /* renamed from: g */
    public final /* synthetic */ String f52839g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18810d(C18812f c18812f, String str, d dVar) {
        super(1, dVar);
        this.f52838f = c18812f;
        this.f52839g = str;
    }

    /* renamed from: d */
    public final Object m14460d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C18810d(this.f52838f, this.f52839g, dVar).m14458s(s.a);
    }

    /* renamed from: l */
    public final d<s> m14459l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C18810d(this.f52838f, this.f52839g, dVar);
    }

    /* renamed from: s */
    public final Object m14458s(Object obj) {
        a aVar = a.a;
        int i = this.f52837e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18803a mo35591b = this.f52838f.f52843a.mo35591b();
            String str = this.f52839g;
            this.f52837e = 1;
            Object mo14462a = mo35591b.mo14462a(str, this);
            obj = mo14462a;
            if (mo14462a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
