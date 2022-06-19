package p193e.p194a.p1080o.p1081a.p1085b;

import android.content.Intent;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.details_view.analytics.SourceType;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.AbstractC18769f;
import p193e.p194a.p1080o.C18771h;
import p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d;
import p193e.p194a.p1080o.p1103p.p1105b.C18813a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1275v.p1309p.C20940n;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.a.b.g */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/g.class */
public final class C18534g extends AbstractC20574a<AbstractC18533f> implements AbstractC18532e {

    /* renamed from: d */
    public final f f52278d;

    /* renamed from: e */
    public final AbstractC18823d f52279e;

    /* renamed from: f */
    public final a<AbstractC19462a> f52280f;

    /* renamed from: g */
    public final AbstractC18769f f52281g;

    @e(c = "com.truecaller.contextcall.ui.hiddencontacts.HiddenContactsPresenter$fetchAndShowHiddenContacts$1", f = "HiddenContactsPresenter.kt", l = {42}, m = "invokeSuspend")
    /* renamed from: e.a.o.a.b.g$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/b/g$a.class */
    public static final class C18535a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52282e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18535a(d dVar) {
            super(2, dVar);
            C18534g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14803i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18535a(dVar);
        }

        /* renamed from: k */
        public final Object m14802k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18535a(dVar).m14801s(s.a);
        }

        /* renamed from: s */
        public final Object m14801s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52282e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18823d abstractC18823d = C18534g.this.f52279e;
                this.f52282e = 1;
                Object mo14448b = abstractC18823d.mo14448b(this);
                obj = mo14448b;
                if (mo14448b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Iterable<C18813a> iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(iterable, 10));
            for (C18813a c18813a : iterable) {
                arrayList.add(new C18539j(c18813a.f52845a, c18813a.f52846b, c18813a.f52847c, c18813a.f52848d, c18813a.f52849e));
            }
            if (!arrayList.isEmpty()) {
                AbstractC18533f abstractC18533f = (AbstractC18533f) C18534g.this.f57683a;
                if (abstractC18533f != null) {
                    abstractC18533f.mo14808g4(arrayList);
                }
            } else {
                AbstractC18533f abstractC18533f2 = (AbstractC18533f) C18534g.this.f57683a;
                if (abstractC18533f2 != null) {
                    abstractC18533f2.mo14807t();
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.contextcall.ui.hiddencontacts.HiddenContactsPresenter$onContactDeleteClicked$1", f = "HiddenContactsPresenter.kt", l = {32}, m = "invokeSuspend")
    /* renamed from: e.a.o.a.b.g$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/b/g$b.class */
    public static final class C18536b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52284e;

        /* renamed from: g */
        public final /* synthetic */ C18539j f52286g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18536b(C18539j c18539j, d dVar) {
            super(2, dVar);
            C18534g.this = r5;
            this.f52286g = c18539j;
        }

        /* renamed from: i */
        public final d<s> m14800i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18536b(this.f52286g, dVar);
        }

        /* renamed from: k */
        public final Object m14799k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18536b(this.f52286g, dVar).m14798s(s.a);
        }

        /* renamed from: s */
        public final Object m14798s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52284e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18823d abstractC18823d = C18534g.this.f52279e;
                String str = this.f52286g.f52293c;
                this.f52284e = 1;
                if (abstractC18823d.mo14445e(str, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C18534g.this.m14806Ij();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18534g(@Named("UI") f fVar, AbstractC18823d abstractC18823d, a<AbstractC19462a> aVar, AbstractC18769f abstractC18769f) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC18823d, "hiddenNumberRepository");
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC18769f, "support");
        this.f52278d = fVar;
        this.f52279e = abstractC18823d;
        this.f52280f = aVar;
        this.f52281g = abstractC18769f;
    }

    /* renamed from: Ij */
    public final p1 m14806Ij() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18535a(null), 3, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.o.a.b.f, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18533f abstractC18533f) {
        AbstractC18533f abstractC18533f2 = abstractC18533f;
        l.e(abstractC18533f2, "presenterView");
        this.f57683a = abstractC18533f2;
        C19597a m8580q1 = C22128a.m8580q1("OnBoardingHiddenContacts", "viewId", "OnBoardingHiddenContacts", null, null);
        Object obj = this.f52280f.get();
        l.d(obj, "analytics.get()");
        n.B0(m8580q1, (AbstractC19462a) obj);
        m14806Ij();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1085b.AbstractC18532e
    /* renamed from: qe */
    public void mo14805qe(C18539j c18539j) {
        Intent m10486b;
        l.e(c18539j, AnalyticsConstants.CONTACT);
        AbstractC18769f abstractC18769f = this.f52281g;
        String str = c18539j.f52291a;
        String str2 = c18539j.f52292b;
        String str3 = c18539j.f52293c;
        C18771h c18771h = (C18771h) abstractC18769f;
        Objects.requireNonNull(c18771h);
        l.e(str2, AnalyticsConstants.NAME);
        l.e(str3, "number");
        C20940n c20940n = C20940n.f58889a;
        m10486b = c20940n.m10486b(c18771h.f52739f, str, str2, str3, "", "", SourceType.ContextCallHiddenContact, true, true, 30, null, null, null);
        m10486b.setFlags(268435456);
        c20940n.m10483e(c18771h.f52739f, m10486b);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1085b.AbstractC18532e
    /* renamed from: w4 */
    public void mo14804w4(C18539j c18539j) {
        l.e(c18539j, AnalyticsConstants.CONTACT);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18536b(c18539j, null), 3, (Object) null);
    }
}
