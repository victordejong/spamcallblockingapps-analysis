package p193e.p194a.p1275v.p1309p;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.C19090q;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p804h.p831p0.AbstractC14719c;
import p193e.p194a.p804h.p831p0.p832e.C14720a;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
import q3.a.i0;
import s1.f0.r;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.p.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/e.class */
public final class C20924e implements AbstractC20923d {

    /* renamed from: a */
    public final g f58856a = C25225a.m3978P1(C20925a.f58860b);

    /* renamed from: b */
    public final Context f58857b;

    /* renamed from: c */
    public final f f58858c;

    /* renamed from: d */
    public final a<C16487j> f58859d;

    /* renamed from: e.a.v.p.e$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/e$a.class */
    public static final class C20925a extends m implements s1.z.b.a<AbstractC14719c> {

        /* renamed from: b */
        public static final C20925a f58860b = new C20925a();

        public C20925a() {
            super(0);
        }

        public Object invoke() {
            return ((C20399t1.C20416k) AbstractC17399l2.f48744a.m16142a().mo11182b()).m11158a();
        }
    }

    @e(c = "com.truecaller.details_view.util.ContactUtilHelperImpl", f = "ContactUtilHelperImpl.kt", l = {74}, m = "getId")
    /* renamed from: e.a.v.p.e$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/e$b.class */
    public static final class C20926b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f58861d;

        /* renamed from: e */
        public int f58862e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20926b(d dVar) {
            super(dVar);
            C20924e.this = r4;
        }

        /* renamed from: s */
        public final Object m10507s(Object obj) {
            this.f58861d = obj;
            this.f58862e |= Integer.MIN_VALUE;
            return C20924e.this.mo10513c(null, this);
        }
    }

    @e(c = "com.truecaller.details_view.util.ContactUtilHelperImpl$getId$2", f = "ContactUtilHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v.p.e$c */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/e$c.class */
    public static final class C20927c extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Contact f58865f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20927c(Contact contact, d dVar) {
            super(2, dVar);
            C20924e.this = r5;
            this.f58865f = contact;
        }

        /* renamed from: i */
        public final d<s> m10506i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20927c(this.f58865f, dVar);
        }

        /* renamed from: k */
        public final Object m10505k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C20924e c20924e = C20924e.this;
            Contact contact = this.f58865f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return C19090q.m14142b(c20924e.f58857b, contact.m35496t());
        }

        /* renamed from: s */
        public final Object m10504s(Object obj) {
            C25225a.m3932a3(obj);
            return C19090q.m14142b(C20924e.this.f58857b, this.f58865f.m35496t());
        }
    }

    @e(c = "com.truecaller.details_view.util.ContactUtilHelperImpl$remove$2", f = "ContactUtilHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v.p.e$d */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/e$d.class */
    public static final class C20928d extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Contact f58867f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20928d(Contact contact, d dVar) {
            super(2, dVar);
            C20924e.this = r5;
            this.f58867f = contact;
        }

        /* renamed from: i */
        public final d<s> m10503i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20928d(this.f58867f, dVar);
        }

        /* renamed from: k */
        public final Object m10502k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20928d(this.f58867f, dVar).m10501s(s.a);
        }

        /* renamed from: s */
        public final Object m10501s(Object obj) {
            boolean z;
            Object obj2;
            C25225a.m3932a3(obj);
            if (this.f58867f.m35495t0()) {
                z = C17422k.m16074i0(C20924e.this.f58857b, this.f58867f.m35548R(), this.f58867f.m35545T());
            } else {
                z = false;
                if (this.f58867f.m35508l0()) {
                    List<Number> m35557M = this.f58867f.m35557M();
                    l.d(m35557M, "contact.numbers");
                    Iterator<T> it = m35557M.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it.next();
                        Number number = (Number) obj2;
                        l.d(number, "it");
                        String m35479e = number.m35479e();
                        if (Boolean.valueOf(!(m35479e == null || r.p(m35479e))).booleanValue()) {
                            break;
                        }
                    }
                    Number number2 = (Number) obj2;
                    z = false;
                    if (number2 != null) {
                        Boolean valueOf = Boolean.valueOf(((C16487j) C20924e.this.f58859d.get()).m17322l(number2.m35479e(), 32));
                        z = false;
                        if (valueOf != null) {
                            z = valueOf.booleanValue();
                        }
                    }
                }
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.details_view.util.ContactUtilHelperImpl$removeFromIdentified$2", f = "ContactUtilHelperImpl.kt", l = {64, 65}, m = "invokeSuspend")
    /* renamed from: e.a.v.p.e$e */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/e$e.class */
    public static final class C20929e extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public Object f58868e;

        /* renamed from: f */
        public int f58869f;

        /* renamed from: h */
        public final /* synthetic */ Contact f58871h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20929e(Contact contact, d dVar) {
            super(2, dVar);
            C20924e.this = r5;
            this.f58871h = contact;
        }

        /* renamed from: i */
        public final d<s> m10500i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20929e(this.f58871h, dVar);
        }

        /* renamed from: k */
        public final Object m10499k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20929e(this.f58871h, dVar).m10498s(s.a);
        }

        /* renamed from: s */
        public final Object m10498s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f58869f;
            if (i != 0) {
                if (i == 1) {
                    C14720a c14720a = (C14720a) this.f58868e;
                } else if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
            } else {
                C25225a.m3932a3(obj);
                String tcId = this.f58871h.getTcId();
                if (tcId == null) {
                    return Boolean.FALSE;
                }
                l.d(tcId, "contact.tcId ?: return@withContext false");
                C14720a m19727f = C20924e.m10508h(C20924e.this).m19727f(tcId);
                if (m19727f != null) {
                    m19727f.f42220b = true;
                    AbstractC14719c m10508h = C20924e.m10508h(C20924e.this);
                    this.f58868e = m19727f;
                    this.f58869f = 1;
                    if (m10508h.m19731b(m19727f, this) == aVar) {
                        return aVar;
                    }
                } else {
                    AbstractC14719c m10508h2 = C20924e.m10508h(C20924e.this);
                    C14720a c14720a2 = new C14720a(tcId, true);
                    this.f58869f = 2;
                    if (m10508h2.m19729d(c14720a2, this) == aVar) {
                        return aVar;
                    }
                }
            }
            return Boolean.TRUE;
        }
    }

    @e(c = "com.truecaller.details_view.util.ContactUtilHelperImpl$setFavorite$2", f = "ContactUtilHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v.p.e$f */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/e$f.class */
    public static final class C20930f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Contact f58873f;

        /* renamed from: g */
        public final /* synthetic */ boolean f58874g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20930f(Contact contact, boolean z, d dVar) {
            super(2, dVar);
            C20924e.this = r5;
            this.f58873f = contact;
            this.f58874g = z;
        }

        /* renamed from: i */
        public final d<s> m10497i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20930f(this.f58873f, this.f58874g, dVar);
        }

        /* renamed from: k */
        public final Object m10496k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C20924e c20924e = C20924e.this;
            Contact contact = this.f58873f;
            boolean z = this.f58874g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Long m35548R = contact.m35548R();
            if (m35548R != null) {
                long longValue = m35548R.longValue();
                String m35545T = contact.m35545T();
                if (m35545T != null) {
                    C12864a2.m22558e0(c20924e.f58857b, m35545T, longValue, z);
                }
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m10495s(Object obj) {
            s sVar = s.a;
            C25225a.m3932a3(obj);
            Long m35548R = this.f58873f.m35548R();
            if (m35548R != null) {
                long longValue = m35548R.longValue();
                String m35545T = this.f58873f.m35545T();
                if (m35545T != null) {
                    C12864a2.m22558e0(C20924e.this.f58857b, m35545T, longValue, this.f58874g);
                }
            }
            return sVar;
        }
    }

    @Inject
    public C20924e(Context context, @Named("IO") f fVar, a<C16487j> aVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "ioContext");
        l.e(aVar, "rawContactDao");
        this.f58857b = context;
        this.f58858c = fVar;
        this.f58859d = aVar;
    }

    /* renamed from: h */
    public static final AbstractC14719c m10508h(C20924e c20924e) {
        return (AbstractC14719c) c20924e.f58856a.getValue();
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20923d
    /* renamed from: a */
    public Object mo10515a(Contact contact, boolean z, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f58858c, new C20930f(contact, z, null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20923d
    /* renamed from: b */
    public Object mo10514b(Contact contact, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f58858c, new C20929e(contact, null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    @Override // p193e.p194a.p1275v.p1309p.AbstractC20923d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo10513c(com.truecaller.data.entity.Contact r7, s1.w.d<? super java.lang.String> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p1275v.p1309p.C20924e.C20926b
            if (r0 == 0) goto L28
            r0 = r8
            e.a.v.p.e$b r0 = (p193e.p194a.p1275v.p1309p.C20924e.C20926b) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f58862e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f58862e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.v.p.e$b r0 = new e.a.v.p.e$b
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f58861d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f58862e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r7 = r0
            goto L9d
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            boolean r0 = r0.m35495t0()
            if (r0 == 0) goto L76
            r0 = r7
            java.lang.Long r0 = r0.m35548R()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r7 = r0
            goto La8
        L76:
            r0 = r6
            s1.w.f r0 = r0.f58858c
            r9 = r0
            e.a.v.p.e$c r0 = new e.a.v.p.e$c
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f58862e = r1
            r0 = r9
            r1 = r7
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r11
            if (r0 != r1) goto L9d
            r0 = r11
            return r0
        L9d:
            r0 = r7
            java.lang.String r1 = "withContext(ioContext) {…efaultNumberForDisplay) }"
            s1.z.c.l.d(r0, r1)
            r0 = r7
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
        La8:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1309p.C20924e.mo10513c(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20923d
    /* renamed from: d */
    public int mo10512d(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return C19103t.m14107f(contact.f11523r, contact.f11530y);
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20923d
    /* renamed from: e */
    public Long mo10511e(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return C16461b.m17357o(contact) ? contact.getId() : contact.m35509l();
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20923d
    /* renamed from: f */
    public List<String> mo10510f(Contact contact) {
        List<String> m14111b = C19103t.m14111b(contact);
        l.d(m14111b, "ContactUtil.getEmails(contact)");
        return m14111b;
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20923d
    /* renamed from: g */
    public Object mo10509g(Contact contact, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f58858c, new C20928d(contact, null), dVar);
    }
}
