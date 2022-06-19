package p193e.p194a.p294b.p345k.p350c;

import com.truecaller.bizmon.C3478R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19463a0;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.b0;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.covidDirectory.mvp.CovidContactListPresenter$onAttachView$1$4", f = "CovidContactListMvp.kt", l = {96}, m = "invokeSuspend")
/* renamed from: e.a.b.k.c.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/c/b.class */
public final class C7984b extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f24657e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC7983a f24658f;

    /* renamed from: g */
    public final /* synthetic */ b0 f24659g;

    /* renamed from: h */
    public final /* synthetic */ C7986c f24660h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC7983a f24661i;

    @e(c = "com.truecaller.bizmon.covidDirectory.mvp.CovidContactListPresenter$onAttachView$1$4$1", f = "CovidContactListMvp.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.k.c.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/c/b$a.class */
    public static final class C7985a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7985a(d dVar) {
            super(2, dVar);
            C7984b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m29038i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7985a(dVar);
        }

        /* renamed from: k */
        public final Object m29037k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7984b c7984b = C7984b.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            long j = c7984b.f24659g.a;
            if (j != 0) {
                c7984b.f24660h.f24663d = c7984b.f24660h.f24669j.mo29054b(j);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m29036s(Object obj) {
            C25225a.m3932a3(obj);
            C7984b c7984b = C7984b.this;
            long j = c7984b.f24659g.a;
            if (j != 0) {
                C7984b.this.f24660h.f24663d = c7984b.f24660h.f24669j.mo29054b(j);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7984b(AbstractC7983a abstractC7983a, b0 b0Var, d dVar, C7986c c7986c, AbstractC7983a abstractC7983a2) {
        super(2, dVar);
        this.f24658f = abstractC7983a;
        this.f24659g = b0Var;
        this.f24660h = c7986c;
        this.f24661i = abstractC7983a2;
    }

    /* renamed from: i */
    public final d<s> m29041i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7984b(this.f24658f, this.f24659g, dVar, this.f24660h, this.f24661i);
    }

    /* renamed from: k */
    public final Object m29040k(Object obj, Object obj2) {
        return m29041i(obj, (d) obj2).m29039s(s.a);
    }

    /* renamed from: s */
    public final Object m29039s(Object obj) {
        a aVar = a.a;
        int i = this.f24657e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f24660h.f24667h;
            C7985a c7985a = new C7985a(null);
            this.f24657e = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c7985a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C7986c c7986c = this.f24660h;
        String str = c7986c.f24664e;
        String str2 = str;
        if (str.equals(Integer.valueOf(C3478R.string.biz_govt_general_services))) {
            str2 = "others";
        }
        C22128a.m8711G0("COVID_DIRECTORY_CONTACT_LIST", null, C22128a.m8667T("District", str2), null, "eventBuilder.build()", c7986c.f24670k);
        AbstractC19463a0 mo11854a = c7986c.f24671l.mo11854a();
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("COVID_DIRECTORY_CONTACT_LIST");
        m15852a.m15848d(C25225a.m3938Z1(new k("District", str2)));
        mo11854a.mo13111a(m15852a.build());
        this.f24658f.mo29016N1();
        AbstractC7983a abstractC7983a = this.f24658f;
        C7986c c7986c2 = this.f24660h;
        String mo13759k = c7986c2.f24665f.mo13759k(C3478R.plurals.biz_govt_contacts_count, c7986c2.f24663d.size(), new Integer(this.f24660h.f24663d.size()));
        l.d(mo13759k, "resourceProvider.getQuan…ize\n                    )");
        abstractC7983a.mo29018J5(mo13759k);
        this.f24658f.mo29021H5(this.f24660h.f24663d);
        return s.a;
    }
}
