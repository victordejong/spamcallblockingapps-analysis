package p193e.p194a.p195a.p244k.p245a;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.messenger.p138v1.GetChangelog;
import java.lang.ref.WeakReference;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p751f4.p753b.p756h.AbstractC13980g;
import p3.a.i1;
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
/* renamed from: e.a.a.k.a.j1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/j1.class */
public final class C6576j1 implements AbstractC6573i1 {

    /* renamed from: a */
    public final AbstractC6392i0 f21676a;

    /* renamed from: b */
    public final AbstractC8438a f21677b;

    /* renamed from: c */
    public final C20592g f21678c;

    /* renamed from: d */
    public final a<AbstractC6625s1> f21679d;

    /* renamed from: e */
    public final f f21680e;

    /* renamed from: f */
    public final f f21681f;

    @e(c = "com.truecaller.messaging.transport.im.ImVersionManagerImpl$getChangeLogInfo$1", f = "ImVersionManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.j1$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/j1$a.class */
    public static final class C6577a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ WeakReference f21683f;

        @e(c = "com.truecaller.messaging.transport.im.ImVersionManagerImpl$getChangeLogInfo$1$1", f = "ImVersionManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.k.a.j1$a$a */
        /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/j1$a$a.class */
        public static final class C6578a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ GetChangelog.Response f21685f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C6578a(GetChangelog.Response response, d dVar) {
                super(2, dVar);
                C6577a.this = r5;
                this.f21685f = response;
            }

            /* renamed from: i */
            public final d<s> m30749i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C6578a(this.f21685f, dVar);
            }

            /* renamed from: k */
            public final Object m30748k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C6577a c6577a = C6577a.this;
                GetChangelog.Response response = this.f21685f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                AbstractC6634u1 abstractC6634u1 = (AbstractC6634u1) c6577a.f21683f.get();
                if (abstractC6634u1 != null) {
                    l.d(response, "response");
                    abstractC6634u1.mo30363a(response.getLinesList());
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m30747s(Object obj) {
                C25225a.m3932a3(obj);
                AbstractC6634u1 abstractC6634u1 = (AbstractC6634u1) C6577a.this.f21683f.get();
                if (abstractC6634u1 != null) {
                    GetChangelog.Response response = this.f21685f;
                    l.d(response, "response");
                    abstractC6634u1.mo30363a(response.getLinesList());
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6577a(WeakReference weakReference, d dVar) {
            super(2, dVar);
            C6576j1.this = r5;
            this.f21683f = weakReference;
        }

        /* renamed from: i */
        public final d<s> m30752i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6577a(this.f21683f, dVar);
        }

        /* renamed from: k */
        public final Object m30751k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6577a(this.f21683f, dVar).m30750s(s.a);
        }

        /* renamed from: s */
        public final Object m30750s(Object obj) {
            C20458b.C20459a mo20911c;
            s sVar = s.a;
            C25225a.m3932a3(obj);
            mo20911c = ((AbstractC13980g) C6576j1.this.f21679d.get()).mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            C20458b.C20459a c20459a = mo20911c;
            if (c20459a != null) {
                String string = C6576j1.this.f21677b.getString("profileCountryIso");
                if (string == null) {
                    string = "";
                }
                l.d(string, "accountSettings.getStrin…ROFILE_COUNTRY_ISO) ?: \"\"");
                try {
                    GetChangelog.Request.C3038a newBuilder = GetChangelog.Request.newBuilder();
                    int mo30758b = C6576j1.this.mo30758b();
                    newBuilder.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder).instance.setFromVersion(mo30758b);
                    int m30753g = C6576j1.this.m30753g();
                    newBuilder.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder).instance.setToVersion(m30753g);
                    newBuilder.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder).instance.setLocale(string);
                    s1.a.a.a.v0.f.d.w2(h1.a, C6576j1.this.f21681f, (j0) null, new C6578a(c20459a.m11119f((GetChangelog.Request) newBuilder.build()), null), 2, (Object) null);
                } catch (i1 | RuntimeException e) {
                }
            }
            return sVar;
        }
    }

    @Inject
    public C6576j1(AbstractC6392i0 abstractC6392i0, AbstractC8438a abstractC8438a, C20592g c20592g, a<AbstractC6625s1> aVar, @Named("IO") f fVar, @Named("UI") f fVar2) {
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(aVar, "stubManager");
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        this.f21676a = abstractC6392i0;
        this.f21677b = abstractC8438a;
        this.f21678c = c20592g;
        this.f21679d = aVar;
        this.f21680e = fVar;
        this.f21681f = fVar2;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6573i1
    /* renamed from: a */
    public void mo30759a(WeakReference<AbstractC6634u1> weakReference) {
        l.e(weakReference, "listenerRef");
        if (m30753g() < mo30758b()) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f21680e, (j0) null, new C6577a(weakReference, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6573i1
    /* renamed from: b */
    public int mo30758b() {
        return !this.f21678c.m10993L().isEnabled() ? 11 : !this.f21678c.m10995J().isEnabled() ? 12 : 13;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6573i1
    /* renamed from: c */
    public void mo30757c(int i) {
        this.f21676a.mo31189J3(i);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6573i1
    /* renamed from: d */
    public boolean mo30756d() {
        return m30753g() <= 6;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6573i1
    /* renamed from: e */
    public boolean mo30755e(int i) {
        return mo30758b() >= i;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6573i1
    /* renamed from: f */
    public boolean mo30754f() {
        return !mo30755e(this.f21676a.mo31146S1());
    }

    /* renamed from: g */
    public int m30753g() {
        return this.f21676a.mo31165O2();
    }
}
