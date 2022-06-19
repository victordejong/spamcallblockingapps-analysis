package p193e.p194a.p1365y.p1366a.p1379l;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1389g.C21743a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.o0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.flashsdk.ui.whatsnew.FlashWithFriendsPresenter$readBundleAndInitData$1", f = "FlashWithFriendsPresenter.kt", l = {77}, m = "invokeSuspend")
/* renamed from: e.a.y.a.l.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/l/e.class */
public final class C21587e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f60232e;

    /* renamed from: f */
    public final /* synthetic */ C21588f f60233f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC21583b f60234g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21587e(C21588f c21588f, AbstractC21583b abstractC21583b, d dVar) {
        super(2, dVar);
        this.f60233f = c21588f;
        this.f60234g = abstractC21583b;
    }

    /* renamed from: i */
    public final d<s> m9400i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C21587e(this.f60233f, this.f60234g, dVar);
    }

    /* renamed from: k */
    public final Object m9399k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C21587e(this.f60233f, this.f60234g, dVar).m9398s(s.a);
    }

    /* renamed from: s */
    public final Object m9398s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f60232e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C21588f c21588f = this.f60233f;
            o0 H = s1.a.a.a.v0.f.d.H(h1.a, c21588f.f60240i, (j0) null, new C21586d(c21588f, null), 2, (Object) null);
            this.f60232e = 1;
            Object A = H.A(this);
            obj = A;
            if (A == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        List<? extends C21743a> list = (List) obj;
        if (list != null) {
            this.f60234g.mo9408H2(list);
        }
        return sVar;
    }
}
