package p193e.p194a.p1080o;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.p159db.availability.ContextCallAvailability;
import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import com.truecaller.contextcall.utils.ContextCallPromoType;
import com.truecaller.contextcall.utils.ContextCallState;
import com.truecaller.contextcall.utils.SecondCallContext;
import com.truecaller.data.entity.CallContextMessage;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1081a.p1094h.AbstractC18638a;
import p193e.p194a.p1080o.p1097b.AbstractC18705d;
import p193e.p194a.p1080o.p1097b.AbstractC18710f;
import p193e.p194a.p1080o.p1097b.AbstractC18711f0;
import p193e.p194a.p1080o.p1097b.AbstractC18729i;
import p193e.p194a.p1080o.p1097b.AbstractC18732i0;
import p193e.p194a.p1080o.p1097b.AbstractC18733j;
import p193e.p194a.p1080o.p1097b.AbstractC18738k;
import p193e.p194a.p1080o.p1097b.AbstractC18741l0;
import p193e.p194a.p1080o.p1097b.AbstractC18746o;
import p193e.p194a.p1080o.p1097b.AbstractC18754t;
import p193e.p194a.p1080o.p1097b.AbstractC18756v;
import p193e.p194a.p1080o.p1097b.AbstractC18764z;
import p193e.p194a.p1080o.p1097b.C18699a0;
import p193e.p194a.p1080o.p1097b.C18701b0;
import p193e.p194a.p1080o.p1097b.C18722g0;
import p193e.p194a.p1080o.p1097b.C18728h0;
import p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.a1;
import q3.a.x2.i1;
import s1.a.j;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.l;
import s1.z.c.u;
/* renamed from: e.a.o.d */
/* loaded from: classes8-dex2jar.jar:e/a/o/d.class */
public final class C18766d implements AbstractC18765c {

    /* renamed from: a */
    public final j f52713a;

    /* renamed from: b */
    public final f f52714b;

    /* renamed from: c */
    public final a<AbstractC18710f> f52715c;

    /* renamed from: d */
    public final a<AbstractC18756v> f52716d;

    /* renamed from: e */
    public final a<AbstractC18638a> f52717e;

    /* renamed from: f */
    public final a<AbstractC18868e> f52718f;

    /* renamed from: g */
    public final a<AbstractC18882c> f52719g;

    /* renamed from: h */
    public final a<AbstractC18823d> f52720h;

    /* renamed from: i */
    public final a<AbstractC18746o> f52721i;

    /* renamed from: j */
    public final a<AbstractC18738k> f52722j;

    /* renamed from: k */
    public final AbstractC18705d f52723k;

    /* renamed from: l */
    public final AbstractC18741l0 f52724l;

    /* renamed from: m */
    public final AbstractC18711f0 f52725m;

    /* renamed from: n */
    public final a<AbstractC18754t> f52726n;

    /* renamed from: o */
    public final AbstractC18764z f52727o;

    /* renamed from: p */
    public final AbstractC18705d f52728p;

    /* renamed from: q */
    public final AbstractC18732i0 f52729q;

    @e(c = "com.truecaller.contextcall.ContextCallImpl$clearPredefinedMessages$1", f = "ContextCall.kt", l = {227}, m = "invokeSuspend")
    /* renamed from: e.a.o.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/d$a.class */
    public static final class C18767a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52730e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18767a(d dVar) {
            super(2, dVar);
            C18766d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14498i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18767a(dVar);
        }

        /* renamed from: k */
        public final Object m14497k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18767a(dVar).m14496s(s.a);
        }

        /* renamed from: s */
        public final Object m14496s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52730e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ((AbstractC18746o) C18766d.this.f52721i.get()).remove("predefinedMessagesExpirationTime");
                AbstractC18882c abstractC18882c = (AbstractC18882c) C18766d.this.f52719g.get();
                s1.u.s sVar = s1.u.s.a;
                this.f52730e = 1;
                if (abstractC18882c.mo14359c(sVar, this) == aVar) {
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
    public C18766d(@Named("IO") f fVar, a<AbstractC18710f> aVar, a<AbstractC18756v> aVar2, a<AbstractC18638a> aVar3, a<AbstractC18868e> aVar4, a<AbstractC18882c> aVar5, a<AbstractC18823d> aVar6, a<AbstractC18746o> aVar7, a<AbstractC18738k> aVar8, AbstractC18705d abstractC18705d, AbstractC18741l0 abstractC18741l0, AbstractC18711f0 abstractC18711f0, a<AbstractC18754t> aVar9, AbstractC18764z abstractC18764z, AbstractC18705d abstractC18705d2, AbstractC18732i0 abstractC18732i0) {
        l.e(fVar, "asyncContext");
        l.e(aVar, "availabilityManager");
        l.e(aVar2, "incomingCallContextRepository");
        l.e(aVar3, "communityGuideline");
        l.e(aVar4, "reasonRepository");
        l.e(aVar5, "predefinedCallReasonRepository");
        l.e(aVar6, "hiddenNumberRepository");
        l.e(aVar7, "settings");
        l.e(aVar8, "contextCallPromoManager");
        l.e(abstractC18705d, "contextCallAnalytics");
        l.e(abstractC18741l0, "outgoingMessageHandler");
        l.e(abstractC18711f0, "midCallReasonManager");
        l.e(aVar9, "currentCallStateHolder");
        l.e(abstractC18764z, "incomingMidCallReasonNotificationManager");
        l.e(abstractC18705d2, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC18732i0, "midCallReasonNotificationStateHolder");
        this.f52714b = fVar;
        this.f52715c = aVar;
        this.f52716d = aVar2;
        this.f52717e = aVar3;
        this.f52718f = aVar4;
        this.f52719g = aVar5;
        this.f52720h = aVar6;
        this.f52721i = aVar7;
        this.f52722j = aVar8;
        this.f52723k = abstractC18705d;
        this.f52724l = abstractC18741l0;
        this.f52725m = abstractC18711f0;
        this.f52726n = aVar9;
        this.f52727o = abstractC18764z;
        this.f52728p = abstractC18705d2;
        this.f52729q = abstractC18732i0;
        this.f52713a = new u(abstractC18741l0) { // from class: e.a.o.e
            public Object get() {
                return ((AbstractC18741l0) ((b) this).b).mo14564i();
            }
        };
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: A */
    public Object mo14531A(SecondCallContext secondCallContext, d<? super Boolean> dVar) {
        return ((C18722g0) this.f52725m).m14582d(secondCallContext, dVar);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: B */
    public Object mo14530B(String str, SecondCallContext.Context context, d<? super s> dVar) {
        Object m14583c = ((C18722g0) this.f52725m).m14583c(str, context, dVar);
        return m14583c == s1.w.j.a.a ? m14583c : s.a;
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: C */
    public Object mo14529C(ContextCallState contextCallState, d<? super s> dVar) {
        Object mo14549a = ((AbstractC18754t) this.f52726n.get()).mo14549a(contextCallState, dVar);
        return mo14549a == s1.w.j.a.a ? mo14549a : s.a;
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: D */
    public Object mo14528D(String str, String str2, String str3, boolean z, d<? super IncomingCallContext> dVar) {
        return C17891a1.C17902k.m15582q((AbstractC18756v) this.f52716d.get(), str, str2, str3, z, null, dVar, 16, null);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: E */
    public Integer mo14527E() {
        return ((AbstractC18868e) this.f52718f.get()).mo14378f();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: F */
    public void mo14526F(C18728h0 c18728h0) {
        l.e(c18728h0, "midCallReasonNotification");
        C18701b0 c18701b0 = (C18701b0) this.f52727o;
        Objects.requireNonNull(c18701b0);
        l.e(c18728h0, "midCallReasonNotification");
        s1.a.a.a.v0.f.d.w2(c18701b0, (f) null, (j0) null, new C18699a0(c18701b0, c18728h0, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: G */
    public ContextCallPromoType mo14525G() {
        return ((AbstractC18738k) this.f52722j.get()).mo14569e(isSupported());
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: H */
    public Object mo14524H(String str, d<? super IncomingCallContext> dVar) {
        return ((AbstractC18756v) this.f52716d.get()).mo14546a(str, dVar);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: I */
    public void mo14523I(boolean z) {
        ((C18722g0) this.f52725m).m14580f(true);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: J */
    public void mo14522J() {
        ((AbstractC18754t) this.f52726n.get()).mo14548b();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: c */
    public void mo14521c() {
        ((AbstractC18738k) this.f52722j.get()).mo14571c();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: e */
    public void mo14520e(String str, boolean z) {
        l.e(str, AnalyticsConstants.CONTEXT);
        this.f52723k.mo14613e(str, z);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: f */
    public Object mo14519f(d<? super AbstractC18733j> dVar) {
        return ((AbstractC18710f) this.f52715c.get()).mo14605f(dVar);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: g */
    public void mo14518g(String str, String str2) {
        l.e(str, "messageId");
        l.e(str2, AnalyticsConstants.CONTEXT);
        this.f52728p.mo14612g(str, str2);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    public int getVersion() {
        return ((AbstractC18710f) this.f52715c.get()).getVersion();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: h */
    public void mo14517h(CallContextMessage callContextMessage, String str) {
        l.e(callContextMessage, "contextCallMessage");
        l.e(str, "response");
        this.f52728p.mo14611h(callContextMessage, str);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: i */
    public a1<CallContextMessage> mo14516i() {
        return (a1) this.f52713a.get();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    public boolean isSupported() {
        return ((AbstractC18710f) this.f52715c.get()).isSupported();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: j */
    public void mo14515j() {
        ((AbstractC18738k) this.f52722j.get()).mo14566j();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: k */
    public Object mo14514k(String str, d<? super CallContextMessage> dVar) {
        return this.f52724l.mo14563k(str, dVar);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: l */
    public boolean mo14513l() {
        return ((AbstractC18710f) this.f52715c.get()).mo14601l();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: m */
    public void mo14512m() {
        ((AbstractC18738k) this.f52722j.get()).mo14565m();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: n */
    public Object mo14511n(String str, d<? super Boolean> dVar) {
        return ((AbstractC18710f) this.f52715c.get()).mo14600n(str, dVar);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: o */
    public void mo14510o(boolean z) {
        ((AbstractC18710f) this.f52715c.get()).mo14607d(z);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: p */
    public Object mo14509p(String str, d<? super AbstractC18729i> dVar) {
        return ((AbstractC18710f) this.f52715c.get()).mo14599p(str, dVar);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: q */
    public boolean mo14508q() {
        return ((AbstractC18710f) this.f52715c.get()).mo14598q();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: r */
    public void mo14507r(List<ContextCallAvailability> list) {
        l.e(list, "contextCallAvailability");
        for (ContextCallAvailability contextCallAvailability : list) {
            ((AbstractC18710f) this.f52715c.get()).mo14610a(contextCallAvailability);
        }
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: s */
    public void mo14506s() {
        ((C18722g0) this.f52725m).m14584b();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: t */
    public void mo14505t() {
        ((AbstractC18638a) this.f52717e.get()).mo14672a();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: u */
    public void mo14504u() {
        this.f52729q.reset();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: v */
    public void mo14503v() {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f52714b, (j0) null, new C18767a(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: w */
    public i1<String> mo14502w() {
        return this.f52729q.mo14574a();
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: x */
    public Object mo14501x(String str, d<? super Boolean> dVar) {
        return ((AbstractC18710f) this.f52715c.get()).mo14608c(str, dVar);
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: y */
    public Object mo14500y(String str, d<? super s> dVar) {
        Object mo14544c = ((AbstractC18756v) this.f52716d.get()).mo14544c(str, dVar);
        return mo14544c == s1.w.j.a.a ? mo14544c : s.a;
    }

    @Override // p193e.p194a.p1080o.AbstractC18765c
    /* renamed from: z */
    public Object mo14499z(d<? super Boolean> dVar) {
        return ((AbstractC18823d) this.f52720h.get()).mo14449a(dVar);
    }
}
