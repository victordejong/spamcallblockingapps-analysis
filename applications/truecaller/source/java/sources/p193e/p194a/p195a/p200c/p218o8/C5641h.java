package p193e.p194a.p195a.p200c.p218o8;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6487o;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.mention.MentionPresenterImpl$searchMentions$1", f = "MentionPresenter.kt", l = {147}, m = "invokeSuspend")
/* renamed from: e.a.a.c.o8.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o8/h.class */
public final class C5641h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f18954e;

    /* renamed from: f */
    public final /* synthetic */ C5643i f18955f;

    /* renamed from: g */
    public final /* synthetic */ String f18956g;

    /* renamed from: h */
    public final /* synthetic */ String f18957h;

    /* renamed from: e.a.a.c.o8.h$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o8/h$a.class */
    public static final class C5642a<R> implements AbstractC19851d0<AbstractC6487o> {
        public C5642a() {
            C5641h.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(AbstractC6487o abstractC6487o) {
            AbstractC6487o abstractC6487o2 = abstractC6487o;
            C5643i c5643i = C5641h.this.f18955f;
            if (c5643i.f57683a == 0) {
                if (abstractC6487o2 == null) {
                    return;
                }
                abstractC6487o2.close();
                return;
            }
            AbstractC6487o abstractC6487o3 = c5643i.f18960e;
            if (abstractC6487o3 != null) {
                abstractC6487o3.close();
            }
            c5643i.f18960e = abstractC6487o2;
            AbstractC5644j abstractC5644j = (AbstractC5644j) c5643i.f57683a;
            if (abstractC5644j == null) {
                return;
            }
            boolean z = false;
            if ((abstractC6487o2 != null ? abstractC6487o2.getCount() : 0) > 0) {
                z = true;
            }
            abstractC5644j.mo32441lx(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5641h(C5643i c5643i, String str, String str2, d dVar) {
        super(2, dVar);
        this.f18955f = c5643i;
        this.f18956g = str;
        this.f18957h = str2;
    }

    /* renamed from: i */
    public final d<s> m32835i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5641h(this.f18955f, this.f18956g, this.f18957h, dVar);
    }

    /* renamed from: k */
    public final Object m32834k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5641h(this.f18955f, this.f18956g, this.f18957h, dVar).m32833s(s.a);
    }

    /* renamed from: s */
    public final Object m32833s(Object obj) {
        a aVar = a.a;
        int i = this.f18954e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f18954e = 1;
            if (s1.a.a.a.v0.f.d.D0(200L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f18955f.f18967l.mo11854a().mo30880t(this.f18956g, this.f18957h).mo11830e(this.f18955f.f18966k.mo11845d(), new C5642a());
        return s.a;
    }
}
