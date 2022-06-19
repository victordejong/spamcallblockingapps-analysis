package p193e.p194a.p1080o.p1103p.p1108e.p1109g;

import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p159db.ContextCallDatabase;
import com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonEntity;
import com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1097b.AbstractC18704c0;
import p193e.p194a.p1080o.p1097b.AbstractC18746o;
import p193e.p194a.p1080o.p1097b.C18706d0;
import p193e.p194a.p1080o.p1097b.C18708e0;
import p193e.p194a.p1080o.p1101n.C18787a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import q3.a.h1;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.o.p.e.g.d */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/d.class */
public final class C18883d implements AbstractC18882c {

    /* renamed from: a */
    public final g f52979a = C25225a.m3978P1(new C18886c());

    /* renamed from: b */
    public final ContextCallDatabase f52980b;

    /* renamed from: c */
    public final AbstractC18746o f52981c;

    /* renamed from: d */
    public final AbstractC19223c0 f52982d;

    /* renamed from: e */
    public final AbstractC18704c0 f52983e;

    /* renamed from: f */
    public final f f52984f;

    @e(c = "com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonRepositoryImpl", f = "PredefinedCallReasonRepository.kt", l = {43}, m = "getPredefinedCallReasons")
    /* renamed from: e.a.o.p.e.g.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/d$a.class */
    public static final class C18884a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52985d;

        /* renamed from: e */
        public int f52986e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18884a(d dVar) {
            super(dVar);
            C18883d.this = r4;
        }

        /* renamed from: s */
        public final Object m14355s(Object obj) {
            this.f52985d = obj;
            this.f52986e |= Integer.MIN_VALUE;
            return C18883d.this.mo14361a(this);
        }
    }

    @e(c = "com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonRepositoryImpl$getPredefinedCallReasons$2", f = "PredefinedCallReasonRepository.kt", l = {44}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.g.d$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/d$b.class */
    public static final class C18885b extends i implements l<d<? super List<? extends C18787a>>, Object> {

        /* renamed from: e */
        public int f52988e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18885b(d dVar) {
            super(1, dVar);
            C18883d.this = r5;
        }

        /* renamed from: d */
        public final Object m14354d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18885b(dVar).m14352s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14353l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18885b(dVar);
        }

        /* renamed from: s */
        public final Object m14352s(Object obj) {
            a aVar = a.a;
            int i = this.f52988e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f52988e = 1;
                Object mo14365b = ((AbstractC18873a) C18883d.this.f52979a.getValue()).mo14365b(this);
                obj = mo14365b;
                if (mo14365b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Iterable<PredefinedCallReasonEntity> iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(iterable, 10));
            for (PredefinedCallReasonEntity predefinedCallReasonEntity : iterable) {
                s1.z.c.l.e(predefinedCallReasonEntity, "$this$mapToPredefinedCallReason");
                arrayList.add(new C18787a(predefinedCallReasonEntity.getId(), predefinedCallReasonEntity.getIndex(), predefinedCallReasonEntity.getMessage(), PredefinedCallReasonType.values()[predefinedCallReasonEntity.getType()]));
            }
            if (arrayList.isEmpty() || !C18883d.m14357e(C18883d.this, arrayList, PredefinedCallReasonType.Predefined) || !C18883d.m14357e(C18883d.this, arrayList, PredefinedCallReasonType.MidCall) || !C18883d.m14357e(C18883d.this, arrayList, PredefinedCallReasonType.SecondCall) || !C18883d.m14357e(C18883d.this, arrayList, PredefinedCallReasonType.MissedCall)) {
                C18708e0 c18708e0 = (C18708e0) C18883d.this.f52983e;
                s1.a.a.a.v0.f.d.w2(h1.a, c18708e0.f52576b, (j0) null, new C18706d0(c18708e0, null), 2, (Object) null);
                C18883d c18883d = C18883d.this;
                Objects.requireNonNull(c18883d);
                List<C18787a> m14356f = c18883d.m14356f(C3771R.array.context_call_picker_reasons_ondemand, C3771R.array.context_call_picker_reasons_ondemand_ids, PredefinedCallReasonType.Predefined);
                int i2 = C3771R.array.context_call_picker_reasons_ondemand_mid_second_call;
                int i3 = C3771R.array.context_call_picker_reasons_ondemand_mid_second_call_ids;
                return s1.u.i.l0(s1.u.i.l0(s1.u.i.l0(m14356f, c18883d.m14356f(i2, i3, PredefinedCallReasonType.MidCall)), c18883d.m14356f(i2, i3, PredefinedCallReasonType.SecondCall)), c18883d.m14356f(C3771R.array.context_call_picker_reasons_ondemand_missed_call, C3771R.array.context_call_picker_reasons_ondemand_missed_call_ids, PredefinedCallReasonType.MissedCall));
            }
            return arrayList;
        }
    }

    /* renamed from: e.a.o.p.e.g.d$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/d$c.class */
    public static final class C18886c extends m implements s1.z.b.a<AbstractC18873a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18886c() {
            super(0);
            C18883d.this = r4;
        }

        public Object invoke() {
            return C18883d.this.f52980b.mo35588e();
        }
    }

    @e(c = "com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonRepositoryImpl$replacePredefinedCallReasons$2", f = "PredefinedCallReasonRepository.kt", l = {103}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.e.g.d$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/e/g/d$d.class */
    public static final class C18887d extends i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f52991e;

        /* renamed from: g */
        public final /* synthetic */ List f52993g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18887d(List list, d dVar) {
            super(1, dVar);
            C18883d.this = r5;
            this.f52993g = list;
        }

        /* renamed from: d */
        public final Object m14351d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18887d(this.f52993g, dVar).m14349s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14350l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18887d(this.f52993g, dVar);
        }

        /* renamed from: s */
        public final Object m14349s(Object obj) {
            a aVar = a.a;
            int i = this.f52991e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18873a abstractC18873a = (AbstractC18873a) C18883d.this.f52979a.getValue();
                List<C18787a> list = this.f52993g;
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                for (C18787a c18787a : list) {
                    s1.z.c.l.e(c18787a, "$this$mapToPredefinedCallReasonEntity");
                    arrayList.add(new PredefinedCallReasonEntity(c18787a.f52774a, c18787a.f52775b, c18787a.f52776c, c18787a.f52777d.getValue()));
                }
                this.f52991e = 1;
                if (abstractC18873a.mo14363d(arrayList, this) == aVar) {
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

    @Inject
    public C18883d(ContextCallDatabase contextCallDatabase, AbstractC18746o abstractC18746o, AbstractC19223c0 abstractC19223c0, AbstractC18704c0 abstractC18704c0, @Named("IO") f fVar) {
        s1.z.c.l.e(contextCallDatabase, "contextCallDatabase");
        s1.z.c.l.e(abstractC18746o, "contextCallSettings");
        s1.z.c.l.e(abstractC19223c0, "resourceProvider");
        s1.z.c.l.e(abstractC18704c0, "messagesFetcherWorkActionUtil");
        s1.z.c.l.e(fVar, "iOContext");
        this.f52980b = contextCallDatabase;
        this.f52981c = abstractC18746o;
        this.f52982d = abstractC19223c0;
        this.f52983e = abstractC18704c0;
        this.f52984f = fVar;
    }

    /* renamed from: e */
    public static final boolean m14357e(C18883d c18883d, List list, PredefinedCallReasonType predefinedCallReasonType) {
        boolean z;
        Objects.requireNonNull(c18883d);
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (((C18787a) it.next()).f52777d == predefinedCallReasonType) {
                z = true;
                break;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0092  */
    @Override // p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14361a(s1.w.d<? super java.util.List<p193e.p194a.p1080o.p1101n.C18787a>> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1080o.p1103p.p1108e.p1109g.C18883d.C18884a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.o.p.e.g.d$a r0 = (p193e.p194a.p1080o.p1103p.p1108e.p1109g.C18883d.C18884a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f52986e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f52986e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.o.p.e.g.d$a r0 = new e.a.o.p.e.g.d$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f52985d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f52986e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L86
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f52984f
            r10 = r0
            e.a.o.p.e.g.d$b r0 = new e.a.o.p.e.g.d$b
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f52986e = r1
            r0 = r10
            r1 = r7
            r2 = r6
            java.lang.Object r0 = p193e.p194a.p1053m0.C17891a1.C17902k.m15625b1(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L86
            r0 = r9
            return r0
        L86:
            r0 = r6
            java.util.List r0 = (java.util.List) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L92
            goto L96
        L92:
            s1.u.s r0 = s1.u.s.a
            r6 = r0
        L96:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1103p.p1108e.p1109g.C18883d.mo14361a(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c
    /* renamed from: b */
    public String mo14360b() {
        return this.f52981c.getString("customOnDemandMessage");
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c
    /* renamed from: c */
    public Object mo14359c(List<C18787a> list, d<? super s> dVar) {
        Object m15625b1 = C17891a1.C17902k.m15625b1(this.f52984f, new C18887d(list, null), dVar);
        return m15625b1 == a.a ? m15625b1 : s.a;
    }

    @Override // p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c
    /* renamed from: d */
    public void mo14358d(String str) {
        this.f52981c.putString("customOnDemandMessage", str);
    }

    /* renamed from: f */
    public final List<C18787a> m14356f(int i, int i2, PredefinedCallReasonType predefinedCallReasonType) {
        String[] mo13761i = this.f52982d.mo13761i(i);
        s1.z.c.l.d(mo13761i, "resourceProvider\n       …StringArray(stringArrRes)");
        ArrayList arrayList = new ArrayList(mo13761i.length);
        int length = mo13761i.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            String str = mo13761i[i3];
            Integer num = this.f52982d.mo13766d(i2)[i4];
            s1.z.c.l.d(num, "resourceProvider.getInte…Array(idsArrayRes)[index]");
            int intValue = num.intValue();
            s1.z.c.l.d(str, "message");
            arrayList.add(new C18787a(intValue, i4, str, predefinedCallReasonType));
            i3++;
            i4++;
        }
        return arrayList;
    }
}
