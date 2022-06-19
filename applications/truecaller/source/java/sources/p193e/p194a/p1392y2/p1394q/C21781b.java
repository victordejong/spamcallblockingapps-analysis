package p193e.p194a.p1392y2.p1394q;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.StandaloneActionWorker;
import javax.inject.Inject;
import javax.inject.Provider;
import p1727n3.p1834m0.AbstractC26844s;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1392y2.AbstractC21763i;
import s1.k;
import s1.z.c.l;
import w3.b.a.i;
/* renamed from: e.a.y2.q.b */
/* loaded from: classes5-dex2jar.jar:e/a/y2/q/b.class */
public final class C21781b implements AbstractC21780a {

    /* renamed from: a */
    public final Provider<Context> f60619a;

    @Inject
    public C21781b(Provider<Context> provider) {
        l.e(provider, "contextProvider");
        this.f60619a = provider;
    }

    @Override // p193e.p194a.p1392y2.p1394q.AbstractC21780a
    /* renamed from: a */
    public AbstractC26844s mo9087a(String str, k<? extends EnumC26674a, i> kVar, C26829f c26829f) {
        l.e(str, "actionName");
        Context context = (Context) this.f60619a.get();
        l.d(context, "ctx");
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(ctx)");
        return StandaloneActionWorker.m35891s(str, kVar, c26829f, context, m1431n);
    }

    @Override // p193e.p194a.p1392y2.p1394q.AbstractC21780a
    /* renamed from: b */
    public AbstractC26844s mo9086b(AbstractC21763i abstractC21763i) {
        l.e(abstractC21763i, "trackedRequestCreator");
        Object obj = this.f60619a.get();
        l.d(obj, "contextProvider.get()");
        Context context = (Context) obj;
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        l.e(abstractC21763i, "$this$scheduleUniqueOneOffWork");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(enumC26832h, "existingWorkPolicy");
        C26702l m1431n = C26702l.m1431n(context);
        StringBuilder m8728C = C22128a.m8728C("OneOff_");
        m8728C.append(abstractC21763i.getName());
        AbstractC26844s m1279i = m1431n.m1279i(m8728C.toString(), enumC26832h, abstractC21763i.mo9107a().m9113a());
        l.d(m1279i, "WorkManager.getInstance(…uildOneTimeWorkRequest())");
        return m1279i;
    }
}
