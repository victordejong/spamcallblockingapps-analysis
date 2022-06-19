package p193e.p194a.p195a.p199b1;

import com.huawei.hms.actions.SearchIntents;
import com.truecaller.data.entity.messaging.Participant;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14020n;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p762g.C14030t;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.b1.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/b1/c.class */
public final class C5008c implements AbstractC5007b {

    /* renamed from: a */
    public final f f17107a;

    /* renamed from: b */
    public final f f17108b;

    /* renamed from: c */
    public final AbstractC14028r f17109c;

    @e(c = "com.truecaller.messaging.search.ParticipantSearchHelperImpl$searchAsync$1", f = "ParticipantSearchHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.b1.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b1/c$a.class */
    public static final class C5009a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f17110e;

        /* renamed from: g */
        public final /* synthetic */ Participant f17112g;

        /* renamed from: h */
        public final /* synthetic */ String f17113h;

        /* renamed from: i */
        public final /* synthetic */ AbstractC5006a f17114i;

        @e(c = "com.truecaller.messaging.search.ParticipantSearchHelperImpl$searchAsync$1$1", f = "ParticipantSearchHelper.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.b1.c$a$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/b1/c$a$a.class */
        public static final class C5010a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ C14030t f17116f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5010a(C14030t c14030t, d dVar) {
                super(2, dVar);
                C5009a.this = r5;
                this.f17116f = c14030t;
            }

            /* renamed from: i */
            public final d<s> m34008i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5010a(this.f17116f, dVar);
            }

            /* renamed from: k */
            public final Object m34007k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5009a c5009a = C5009a.this;
                C14030t c14030t = this.f17116f;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                c5009a.f17114i.mo33481a(c14030t);
                return sVar;
            }

            /* renamed from: s */
            public final Object m34006s(Object obj) {
                C25225a.m3932a3(obj);
                C5009a.this.f17114i.mo33481a(this.f17116f);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5009a(Participant participant, String str, AbstractC5006a abstractC5006a, d dVar) {
            super(2, dVar);
            C5008c.this = r5;
            this.f17112g = participant;
            this.f17113h = str;
            this.f17114i = abstractC5006a;
        }

        /* renamed from: i */
        public final d<s> m34011i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C5009a c5009a = new C5009a(this.f17112g, this.f17113h, this.f17114i, dVar);
            c5009a.f17110e = obj;
            return c5009a;
        }

        /* renamed from: k */
        public final Object m34010k(Object obj, Object obj2) {
            return m34011i(obj, (d) obj2).m34009s(s.a);
        }

        /* renamed from: s */
        public final Object m34009s(Object obj) {
            s sVar = s.a;
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f17110e;
            C14030t mo34012b = C5008c.this.mo34012b(this.f17112g, this.f17113h, s1.u.s.a);
            if (mo34012b != null) {
                s1.a.a.a.v0.f.d.w2(i0Var, C5008c.this.f17107a, (j0) null, new C5010a(mo34012b, null), 2, (Object) null);
            }
            return sVar;
        }
    }

    @Inject
    public C5008c(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC14028r abstractC14028r) {
        l.e(fVar, "uiCoroutineContext");
        l.e(fVar2, "ioCoroutineContext");
        l.e(abstractC14028r, "searchManager");
        this.f17107a = fVar;
        this.f17108b = fVar2;
        this.f17109c = abstractC14028r;
    }

    @Override // p193e.p194a.p195a.p199b1.AbstractC5007b
    /* renamed from: a */
    public void mo34013a(Participant participant, String str, AbstractC5006a abstractC5006a) {
        l.e(participant, "participant");
        l.e(str, "searchSource");
        l.e(abstractC5006a, "listener");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f17108b, (j0) null, new C5009a(participant, str, abstractC5006a, null), 2, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x00be -> B:12:0x00c0). Please submit an issue!!! */
    @Override // p193e.p194a.p195a.p199b1.AbstractC5007b
    /* renamed from: b */
    public C14030t mo34012b(Participant participant, String str, List<? extends CharSequence> list) {
        C14030t c14030t;
        int i;
        l.e(participant, "participant");
        l.e(str, "searchSource");
        l.e(list, "messages");
        try {
            i = participant.f11569b;
        } catch (IOException e) {
        }
        if (i == 0 || i == 1) {
            AbstractC14028r abstractC14028r = this.f17109c;
            UUID randomUUID = UUID.randomUUID();
            l.d(randomUUID, "UUID.randomUUID()");
            C14022p mo20839b = abstractC14028r.mo20839b(randomUUID, str);
            mo20839b.m20844d();
            mo20839b.f40566p = participant.f11572e;
            mo20839b.f40565o = 20;
            mo20839b.f40556f = list;
            c14030t = mo20839b.mo20821a();
        } else {
            if (i == 3) {
                AbstractC14028r abstractC14028r2 = this.f17109c;
                UUID randomUUID2 = UUID.randomUUID();
                l.d(randomUUID2, "UUID.randomUUID()");
                C14020n mo20840a = abstractC14028r2.mo20840a(randomUUID2, str);
                String str2 = '*' + participant.f11572e;
                Objects.requireNonNull(mo20840a);
                l.e(str2, SearchIntents.EXTRA_QUERY);
                mo20840a.f40538a = str2;
                mo20840a.f40539b = 23;
                c14030t = mo20840a.m20847a();
            }
            c14030t = null;
        }
        return c14030t;
    }
}
