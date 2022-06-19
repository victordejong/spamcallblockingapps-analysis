package p193e.p194a.p1080o.p1081a.p1089g.p1092i;

import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contextcall.p159db.reason.CallReason;
import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.FeatureType;
import com.truecaller.data.entity.MessageType;
import e.m.d.y.n;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.C18771h;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import p193e.p194a.p1146q2.AbstractC19462a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.ui.custommessage.onboarded.OnBoardedCustomMessagePresenter$updateThenInitiateCallWithReason$1", f = "OnBoardedCustomMessagePresenter.kt", l = {51}, m = "invokeSuspend")
/* renamed from: e.a.o.a.g.i.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/i/f.class */
public final class C18622f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f52418e;

    /* renamed from: f */
    public final /* synthetic */ C18623g f52419f;

    /* renamed from: g */
    public final /* synthetic */ String f52420g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18622f(C18623g c18623g, String str, d dVar) {
        super(2, dVar);
        this.f52419f = c18623g;
        this.f52420g = str;
    }

    /* renamed from: i */
    public final d<s> m14717i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18622f(this.f52419f, this.f52420g, dVar);
    }

    /* renamed from: k */
    public final Object m14716k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18622f(this.f52419f, this.f52420g, dVar).m14715s(s.a);
    }

    /* renamed from: s */
    public final Object m14715s(Object obj) {
        InitiateCallHelper.CallOptions mo14718r;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f52418e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18621e abstractC18621e = (AbstractC18621e) this.f52419f.f57683a;
            CallReason mo14719T3 = abstractC18621e != null ? abstractC18621e.mo14719T3() : null;
            if (mo14719T3 != null) {
                AbstractC18868e abstractC18868e = this.f52419f.f52424h;
                CallReason copy$default = CallReason.copy$default(mo14719T3, 0, this.f52420g, 1, null);
                this.f52418e = 1;
                if (abstractC18868e.mo14382b(copy$default, this) == aVar) {
                    return aVar;
                }
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC18621e abstractC18621e2 = (AbstractC18621e) this.f52419f.f57683a;
        if (abstractC18621e2 != null && (mo14718r = abstractC18621e2.mo14718r()) != null) {
            CallContextMessage m15579r = C17891a1.C17902k.m15579r(this.f52419f.f52422f, null, mo14718r.f10714a, this.f52420g, FeatureType.ON_BOARDING, MessageType.Custom.f11559b, mo14718r.f10715b, 1, null);
            InitiateCallHelper.CallContextOption set = m15579r == null ? InitiateCallHelper.CallContextOption.Skip.a : new InitiateCallHelper.CallContextOption.Set(m15579r);
            ViewActionEvent m35932f = ViewActionEvent.f9985d.m35932f("OnBoardingReasonPicker", ViewActionEvent.ContextCallAction.ON_BOARDED_CUSTOM_MESSAGE);
            Object obj2 = this.f52419f.f52425i.get();
            l.d(obj2, "analytics.get()");
            n.B0(m35932f, (AbstractC19462a) obj2);
            InitiateCallHelper.CallOptions.C3621a c3621a = new InitiateCallHelper.CallOptions.C3621a(mo14718r);
            c3621a.m35742b(set);
            ((C18771h) this.f52419f.f52423g).m14495a(c3621a.m35743a());
            AbstractC18621e abstractC18621e3 = (AbstractC18621e) this.f52419f.f57683a;
            if (abstractC18621e3 != null) {
                abstractC18621e3.mo14720t7();
            }
        }
        return sVar;
    }
}
