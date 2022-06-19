package p193e.p194a.p195a.p224d;

import com.truecaller.messaging.newconversation.NewConversationPresenter;
import java.util.ArrayList;
import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6487o;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$loadExistingImGroupParticipants$1", f = "NewConversationPresenter.kt", l = {859}, m = "invokeSuspend")
/* renamed from: e.a.a.d.y */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/y.class */
public final class C5942y extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f19835e;

    /* renamed from: f */
    public final /* synthetic */ NewConversationPresenter f19836f;

    /* renamed from: g */
    public final /* synthetic */ String f19837g;

    @e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$loadExistingImGroupParticipants$1$participants$1", f = "NewConversationPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.d.y$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/y$a.class */
    public static final class C5943a extends i implements p<i0, d<? super Map<String, ? extends C16503a>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5943a(d dVar) {
            super(2, dVar);
            C5942y.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32125i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5943a(dVar);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: k */
        public final Object m32124k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5942y c5942y = C5942y.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            AbstractC6487o mo11831c = c5942y.f19836f.f13582B.mo11854a().mo30883q(c5942y.f19837g).mo11831c();
            Map map = null;
            if (mo11831c != null) {
                try {
                    ArrayList arrayList = new ArrayList();
                    while (mo11831c.moveToNext()) {
                        C16503a mo30875i1 = mo11831c.mo30875i1();
                        arrayList.add(new k(mo30875i1.f46397a, mo30875i1));
                    }
                    C25225a.m4016G(mo11831c, null);
                    map = s1.u.i.V0(arrayList);
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
            return map;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        public final Object m32123s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC6487o mo11831c = C5942y.this.f19836f.f13582B.mo11854a().mo30883q(C5942y.this.f19837g).mo11831c();
            Map map = null;
            if (mo11831c != null) {
                try {
                    ArrayList arrayList = new ArrayList();
                    while (mo11831c.moveToNext()) {
                        C16503a mo30875i1 = mo11831c.mo30875i1();
                        arrayList.add(new k(mo30875i1.f46397a, mo30875i1));
                    }
                    C25225a.m4016G(mo11831c, null);
                    map = s1.u.i.V0(arrayList);
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
            return map;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5942y(NewConversationPresenter newConversationPresenter, String str, d dVar) {
        super(2, dVar);
        this.f19836f = newConversationPresenter;
        this.f19837g = str;
    }

    /* renamed from: i */
    public final d<s> m32128i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5942y(this.f19836f, this.f19837g, dVar);
    }

    /* renamed from: k */
    public final Object m32127k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5942y(this.f19836f, this.f19837g, dVar).m32126s(s.a);
    }

    /* renamed from: s */
    public final Object m32126s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f19835e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f19836f.f13601l;
            C5943a c5943a = new C5943a(null);
            this.f19835e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c5943a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Map<String, C16503a> map = (Map) obj;
        if (map != null) {
            this.f19836f.f13613x.mo32205F(map);
            AbstractC5938v abstractC5938v = (AbstractC5938v) this.f19836f.f57683a;
            if (abstractC5938v != null) {
                abstractC5938v.mo32146l2();
            }
            this.f19836f.f13614y.mo32193Lj(map.size());
        }
        return sVar;
    }
}
