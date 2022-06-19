package p193e.p194a.p1195s.p1196a;

import android.app.Activity;
import com.truecaller.C2752R;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1188r3.AbstractC19909g;
import p193e.p194a.p1195s.p1196a.C20002d;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callhero_assistant.subscription.CallAssistantSubscriptionPresenter$install$1", f = "CallAssistantSubscriptionPresenter.kt", l = {49}, m = "invokeSuspend")
/* renamed from: e.a.s.a.e */
/* loaded from: classes6-dex2jar.jar:e/a/s/a/e.class */
public final class C20007e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56534e;

    /* renamed from: f */
    public final /* synthetic */ C20002d f56535f;

    /* renamed from: g */
    public final /* synthetic */ Activity f56536g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20007e(C20002d c20002d, Activity activity, d dVar) {
        super(2, dVar);
        this.f56535f = c20002d;
        this.f56536g = activity;
    }

    /* renamed from: i */
    public final d<s> m11672i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20007e(this.f56535f, this.f56536g, dVar);
    }

    /* renamed from: k */
    public final Object m11671k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20007e(this.f56535f, this.f56536g, dVar).m11670s(s.a);
    }

    /* renamed from: s */
    public final Object m11670s(Object obj) {
        C20002d.AbstractC20003a abstractC20003a;
        AbstractC20001c abstractC20001c;
        C20002d.AbstractC20003a abstractC20003a2 = C20002d.AbstractC20003a.C20005b.f56532b;
        a aVar = a.a;
        int i = this.f56534e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                Activity activity = this.f56536g;
                AbstractC19909g abstractC19909g = this.f56535f.f56527f;
                DynamicFeature dynamicFeature = DynamicFeature.CALLHERO_ASSISTANT;
                this.f56534e = 1;
                Object m15649Q0 = C17891a1.C17902k.m15649Q0(activity, abstractC19909g, dynamicFeature, true, this);
                obj = m15649Q0;
                if (m15649Q0 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            abstractC20003a = ((Boolean) obj).booleanValue() ? abstractC20003a2 : C20002d.AbstractC20003a.C20006c.f56533b;
        } catch (CancellationException e) {
            abstractC20003a = C20002d.AbstractC20003a.C20004a.f56531b;
        }
        C20002d c20002d = this.f56535f;
        C12864a2.m22554g0(c20002d.f56526e, 0, c20002d.f56528g.mo13768b(C2752R.string.CallAssistantInstallationResultMessage, new Integer(abstractC20003a.f56530a)), 0, 5, null);
        if (l.a(abstractC20003a, abstractC20003a2) && (abstractC20001c = (AbstractC20001c) this.f56535f.f57683a) != null) {
            abstractC20001c.mo11674fb();
        }
        return s.a;
    }
}
