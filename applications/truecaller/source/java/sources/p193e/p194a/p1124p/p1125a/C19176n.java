package p193e.p194a.p1124p.p1125a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1124p.AbstractC19188c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.editprofile.ui.EditProfilePresenter$maybeRefreshPhoneNumbers$1", f = "EditProfilePresenter.kt", l = {898}, m = "invokeSuspend")
/* renamed from: e.a.p.a.n */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/n.class */
public final class C19176n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53538e;

    /* renamed from: f */
    public final /* synthetic */ C19172m f53539f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19176n(C19172m c19172m, d dVar) {
        super(2, dVar);
        this.f53539f = c19172m;
    }

    /* renamed from: i */
    public final d<s> m13922i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19176n(this.f53539f, dVar);
    }

    /* renamed from: k */
    public final Object m13921k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19176n(this.f53539f, dVar).m13920s(s.a);
    }

    /* renamed from: s */
    public final Object m13920s(Object obj) {
        a aVar = a.a;
        int i = this.f53538e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC19188c abstractC19188c = this.f53539f.f53475C;
            this.f53538e = 1;
            Object mo13900a = abstractC19188c.mo13900a(this);
            obj = mo13900a;
            if (mo13900a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            this.f53539f.m13936Tj();
            this.f53539f.m13929ak();
            this.f53539f.m13930Zj();
        }
        return s.a;
    }
}
