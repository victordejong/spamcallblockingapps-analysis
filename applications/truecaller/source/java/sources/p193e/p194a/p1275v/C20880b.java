package p193e.p194a.p1275v;

import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1031t2.C17241d;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6755k0;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p702e0.AbstractC13344c;
import p193e.p194a.p773g.p785j.C14295m0;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.b */
/* loaded from: classes8-dex2jar.jar:e/a/v/b.class */
public final class C20880b extends AbstractC20574a<AbstractC20891h> implements AbstractC20890g {

    /* renamed from: d */
    public String f58672d;

    /* renamed from: e */
    public String f58673e;

    /* renamed from: f */
    public final f f58674f;

    /* renamed from: g */
    public final f f58675g;

    /* renamed from: h */
    public final C16461b f58676h;

    /* renamed from: i */
    public final AbstractC7419a f58677i;

    /* renamed from: j */
    public final C20592g f58678j;

    /* renamed from: k */
    public final AbstractC6755k0 f58679k;

    /* renamed from: l */
    public final C17241d f58680l;

    /* renamed from: m */
    public final AbstractC13344c f58681m;

    /* renamed from: n */
    public final AbstractC19854f<AbstractC19126x> f58682n;

    /* renamed from: e.a.v.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/v/b$a.class */
    public static final class C20881a extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ int f58683b;

        /* renamed from: c */
        public final /* synthetic */ Object f58684c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20881a(int i, Object obj) {
            super(0);
            this.f58683b = i;
            this.f58684c = obj;
        }

        public final Object invoke() {
            s sVar = s.a;
            int i = this.f58683b;
            if (i == 0) {
                ((C14295m0) ((C20880b) this.f58684c).f58681m).f41361d.putInt("afterCallWarnFriends", 0);
                return sVar;
            } else if (i != 1) {
                throw null;
            } else {
                ((C14295m0) ((C20880b) this.f58684c).f58681m).f41361d.m34737l("afterCallWarnFriends");
                return sVar;
            }
        }
    }

    @e(c = "com.truecaller.details_view.DetailsViewHostPresenter$loadAggregatedContact$4$1", f = "DetailsViewHostPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/b$b.class */
    public static final class C20882b extends i implements p<i0, d<? super Contact>, Object> {

        /* renamed from: e */
        public final /* synthetic */ C20880b f58685e;

        /* renamed from: f */
        public final /* synthetic */ d f58686f;

        /* renamed from: g */
        public final /* synthetic */ String f58687g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20882b(d dVar, C20880b c20880b, d dVar2, String str) {
            super(2, dVar);
            this.f58685e = c20880b;
            this.f58686f = dVar2;
            this.f58687g = str;
        }

        /* renamed from: i */
        public final d<s> m10588i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20882b(dVar, this.f58685e, this.f58686f, this.f58687g);
        }

        /* renamed from: k */
        public final Object m10587k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C20880b c20880b = this.f58685e;
            String str = this.f58687g;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c20880b.f58676h.m17362j(str);
        }

        /* renamed from: s */
        public final Object m10586s(Object obj) {
            C25225a.m3932a3(obj);
            return this.f58685e.f58676h.m17362j(this.f58687g);
        }
    }

    @e(c = "com.truecaller.details_view.DetailsViewHostPresenter$loadAggregatedContact$6$1", f = "DetailsViewHostPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v.b$c */
    /* loaded from: classes8-dex2jar.jar:e/a/v/b$c.class */
    public static final class C20883c extends i implements p<i0, d<? super Contact>, Object> {

        /* renamed from: e */
        public final /* synthetic */ C20880b f58688e;

        /* renamed from: f */
        public final /* synthetic */ d f58689f;

        /* renamed from: g */
        public final /* synthetic */ String f58690g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20883c(d dVar, C20880b c20880b, d dVar2, String str) {
            super(2, dVar);
            this.f58688e = c20880b;
            this.f58689f = dVar2;
            this.f58690g = str;
        }

        /* renamed from: i */
        public final d<s> m10585i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20883c(dVar, this.f58688e, this.f58689f, this.f58690g);
        }

        /* renamed from: k */
        public final Object m10584k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C20880b c20880b = this.f58688e;
            String str = this.f58690g;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c20880b.f58676h.m17364h(str);
        }

        /* renamed from: s */
        public final Object m10583s(Object obj) {
            C25225a.m3932a3(obj);
            return this.f58688e.f58676h.m17364h(this.f58690g);
        }
    }

    @e(c = "com.truecaller.details_view.DetailsViewHostPresenter$loadAggregatedContact$8$1", f = "DetailsViewHostPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v.b$d */
    /* loaded from: classes8-dex2jar.jar:e/a/v/b$d.class */
    public static final class C20884d extends i implements p<i0, d<? super Contact>, Object> {

        /* renamed from: e */
        public final /* synthetic */ C20880b f58691e;

        /* renamed from: f */
        public final /* synthetic */ d f58692f;

        /* renamed from: g */
        public final /* synthetic */ String f58693g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20884d(d dVar, C20880b c20880b, d dVar2, String str) {
            super(2, dVar);
            this.f58691e = c20880b;
            this.f58692f = dVar2;
            this.f58693g = str;
        }

        /* renamed from: i */
        public final d<s> m10582i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20884d(dVar, this.f58691e, this.f58692f, this.f58693g);
        }

        /* renamed from: k */
        public final Object m10581k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C20880b c20880b = this.f58691e;
            String str = this.f58693g;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c20880b.f58676h.m17364h(str);
        }

        /* renamed from: s */
        public final Object m10580s(Object obj) {
            C25225a.m3932a3(obj);
            return this.f58691e.f58676h.m17364h(this.f58693g);
        }
    }

    @e(c = "com.truecaller.details_view.DetailsViewHostPresenter", f = "DetailsViewHostPresenter.kt", l = {186, 188, 190}, m = "loadAggregatedContact")
    /* renamed from: e.a.v.b$e */
    /* loaded from: classes8-dex2jar.jar:e/a/v/b$e.class */
    public static final class C20885e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f58694d;

        /* renamed from: e */
        public int f58695e;

        /* renamed from: g */
        public Object f58697g;

        /* renamed from: h */
        public Object f58698h;

        /* renamed from: i */
        public Object f58699i;

        /* renamed from: j */
        public Object f58700j;

        /* renamed from: k */
        public Object f58701k;

        /* renamed from: l */
        public Object f58702l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20885e(d dVar) {
            super(dVar);
            C20880b.this = r4;
        }

        /* renamed from: s */
        public final Object m10579s(Object obj) {
            this.f58694d = obj;
            this.f58695e |= Integer.MIN_VALUE;
            return C20880b.this.m10591Ij(null, null, null, null, null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20880b(@Named("UI") f fVar, @Named("IO") f fVar2, C16461b c16461b, AbstractC7419a abstractC7419a, @Named("features_registry") C20592g c20592g, AbstractC6755k0 abstractC6755k0, C17241d c17241d, AbstractC13344c abstractC13344c, AbstractC19854f<AbstractC19126x> abstractC19854f) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(c16461b, "aggregatedContactDao");
        l.e(abstractC7419a, "blockManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC6755k0, "smsPermissionPromoManager");
        l.e(c17241d, "reportSpamPromoManager");
        l.e(abstractC13344c, "afterBlockPromoHelper");
        l.e(abstractC19854f, "contactsManager");
        this.f58674f = fVar;
        this.f58675g = fVar2;
        this.f58676h = c16461b;
        this.f58677i = abstractC7419a;
        this.f58678j = c20592g;
        this.f58679k = abstractC6755k0;
        this.f58680l = c17241d;
        this.f58681m = abstractC13344c;
        this.f58682n = abstractC19854f;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03a9  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m10591Ij(java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, s1.w.d<? super com.truecaller.data.entity.Contact> r13) {
        /*
            Method dump skipped, instructions count: 952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.C20880b.m10591Ij(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: Jj */
    public final boolean m10590Jj(Contact contact) {
        boolean z;
        C20592g c20592g = this.f58678j;
        C20592g.C20593a c20593a = c20592g.f58004p5;
        s1.a.l<?>[] lVarArr = C20592g.f57695p6;
        if (!c20593a.m10941a(c20592g, lVarArr[333]).isEnabled() || !contact.m35492v0()) {
            C20592g c20592g2 = this.f58678j;
            if (!c20592g2.f57891b4.m10941a(c20592g2, lVarArr[265]).isEnabled() || !contact.m35565G0()) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: Kj */
    public final void m10589Kj() {
        AbstractC20891h abstractC20891h = (AbstractC20891h) this.f57683a;
        if (abstractC20891h != null) {
            abstractC20891h.mo10557O8(this.f58672d, this.f58673e, new C20881a(0, this), new C20881a(1, this));
        }
    }
}
