package p193e.p194a.p1188r3.p1190k;

import android.app.Activity;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1188r3.AbstractC19909g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.dynamicfeaturesupport.qm.DynamicFeaturePanelPresenter$install$1", f = "DynamicFeaturePanelPresenter.kt", l = {57}, m = "invokeSuspend")
/* renamed from: e.a.r3.k.f */
/* loaded from: classes8-dex2jar.jar:e/a/r3/k/f.class */
public final class C19927f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56371e;

    /* renamed from: f */
    public final /* synthetic */ C19928g f56372f;

    /* renamed from: g */
    public final /* synthetic */ Activity f56373g;

    /* renamed from: h */
    public final /* synthetic */ DynamicFeature f56374h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19927f(C19928g c19928g, Activity activity, DynamicFeature dynamicFeature, d dVar) {
        super(2, dVar);
        this.f56372f = c19928g;
        this.f56373g = activity;
        this.f56374h = dynamicFeature;
    }

    /* renamed from: i */
    public final d<s> m11807i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19927f(this.f56372f, this.f56373g, this.f56374h, dVar);
    }

    /* renamed from: k */
    public final Object m11806k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19927f(this.f56372f, this.f56373g, this.f56374h, dVar).m11805s(s.a);
    }

    /* renamed from: s */
    public final Object m11805s(Object obj) {
        String str;
        a aVar = a.a;
        int i = this.f56371e;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                Activity activity = this.f56373g;
                AbstractC19909g abstractC19909g = this.f56372f.f56377f;
                DynamicFeature dynamicFeature = this.f56374h;
                this.f56371e = 1;
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
            boolean booleanValue = ((Boolean) obj).booleanValue();
            this.f56372f.m11804Ij();
            str = booleanValue ? "done." : "failed!";
        } catch (CancellationException e) {
            str = "canceled!";
        }
        AbstractC19926e abstractC19926e = (AbstractC19926e) this.f56372f.f57683a;
        if (abstractC19926e != null) {
            abstractC19926e.mo11809m(this.f56374h.getModuleName() + " module installation is " + str);
        }
        return s.a;
    }
}
