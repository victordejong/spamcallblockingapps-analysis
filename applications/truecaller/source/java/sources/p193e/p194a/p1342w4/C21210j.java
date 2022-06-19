package p193e.p194a.p1342w4;

import com.truecaller.data.entity.SpamCategoryModel;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p288a0.AbstractC7395n;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.search.ExtraInfoSelectionArbiter$buildInMemorySpamCategoryTable$1", f = "ExtraInfoSelectionArbiter.kt", l = {21}, m = "invokeSuspend")
/* renamed from: e.a.w4.j */
/* loaded from: classes13-dex2jar.jar:e/a/w4/j.class */
public final class C21210j extends i implements p<i0, d<? super List<? extends SpamCategoryModel>>, Object> {

    /* renamed from: e */
    public int f59415e;

    /* renamed from: f */
    public final /* synthetic */ C21211k f59416f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21210j(C21211k c21211k, d dVar) {
        super(2, dVar);
        this.f59416f = c21211k;
    }

    /* renamed from: i */
    public final d<s> m10133i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21210j(this.f59416f, dVar);
    }

    /* renamed from: k */
    public final Object m10132k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C21210j(this.f59416f, dVar).m10131s(s.a);
    }

    /* renamed from: s */
    public final Object m10131s(Object obj) {
        a aVar = a.a;
        int i = this.f59415e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7395n abstractC7395n = this.f59416f.f59417a;
            this.f59415e = 1;
            Object mo29693a = abstractC7395n.mo29693a(this);
            obj = mo29693a;
            if (mo29693a == aVar) {
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
