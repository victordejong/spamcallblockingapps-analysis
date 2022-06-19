package com.truecaller.background_work;

import android.content.Context;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Provider;
import kotlin.Metadata;
import p1727n3.p1834m0.AbstractC26844s;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1392y2.AbstractC21766l;
import p193e.p194a.p1392y2.AbstractC21770n;
import p193e.p194a.p1392y2.AbstractC21771o;
import p193e.p194a.p1392y2.C21755a;
import s1.a.c;
import s1.f0.r;
import s1.f0.v;
import s1.k;
import s1.z.c.d0;
import s1.z.c.l;
import w3.b.a.e0.f;
import w3.b.a.i;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006*"}, d2 = {"Lcom/truecaller/background_work/StandaloneActionWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/q2/a;", "a", "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/y2/l;", AbstractC2405c.f7629a, "Le/a/y2/l;", "getWorkActionFactory", "()Le/a/y2/l;", "setWorkActionFactory", "(Le/a/y2/l;)V", "workActionFactory", "Le/a/y2/k;", "d", "Le/a/y2/k;", "workAction", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "background-work_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/StandaloneActionWorker.class */
public final class StandaloneActionWorker extends TrackedWorker {
    @Inject

    /* renamed from: a */
    public AbstractC19462a f10148a;
    @Inject

    /* renamed from: b */
    public C20592g f10149b;
    @Inject

    /* renamed from: c */
    public AbstractC21766l f10150c;

    /* renamed from: d */
    public AbstractC21765k f10151d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StandaloneActionWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        C26829f c26829f;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.background_work.WorkActionSchedulingApplication");
        ((AbstractC21771o) applicationContext).mo9098o().mo9095l4(this);
        C26829f inputData = getInputData();
        l.d(inputData, "inputData");
        Map<String, Object> m1303d = inputData.m1303d();
        l.d(m1303d, "inputData.keyValueMap");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : m1303d.entrySet()) {
            String key = entry.getKey();
            l.d(key, AnalyticsConstants.KEY);
            if (r.y(key, "c_", false, 2)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        AbstractC21765k abstractC21765k = null;
        linkedHashMap = linkedHashMap.isEmpty() ? null : linkedHashMap;
        if (linkedHashMap != null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(C25225a.m3942Y1(linkedHashMap.size()));
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str = (String) entry2.getKey();
                l.d(str, AnalyticsConstants.KEY);
                linkedHashMap2.put(v.a0(str, "c_", (String) null, 2), entry2.getValue());
            }
            C26829f.C26830a c26830a = new C26829f.C26830a();
            c26830a.m1298b(linkedHashMap2);
            c26829f = c26830a.m1299a();
        } else {
            c26829f = null;
        }
        String m1301f = getInputData().m1301f("standalone_action_name");
        if (m1301f != null) {
            AbstractC21766l abstractC21766l = this.f10150c;
            if (abstractC21766l == null) {
                l.l("workActionFactory");
                throw null;
            } else {
                l.d(m1301f, "actionName");
                abstractC21765k = abstractC21766l.mo9105a(m1301f, c26829f);
            }
        }
        this.f10151d = abstractC21765k;
    }

    /* renamed from: s */
    public static final AbstractC26844s m35891s(String str, k<? extends EnumC26674a, i> kVar, C26829f c26829f, Context context, AbstractC26857y abstractC26857y) {
        Map.Entry entry;
        C21755a c21755a;
        l.e(str, "actionName");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC26857y, "workManager");
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.background_work.WorkActionSchedulingApplication");
        AbstractC21770n mo9097N5 = ((AbstractC21771o) applicationContext).mo9098o().mo9097N5();
        Objects.requireNonNull(mo9097N5);
        l.e(str, "actionName");
        Map<C21755a, Provider<AbstractC21765k>> mo9099a = mo9097N5.mo9099a();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<C21755a, Provider<AbstractC21765k>> entry2 : mo9099a.entrySet()) {
            if (l.a(entry2.getKey().f60582c, str)) {
                linkedHashMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        if (!it.hasNext()) {
            it = null;
        }
        if (it == null || (entry = (Map.Entry) it.next()) == null || (c21755a = (C21755a) entry.getKey()) == null) {
            throw new IllegalArgumentException(C22128a.m8725C2("Action ", str, " is not found"));
        }
        C26829f.C26830a c26830a = new C26829f.C26830a();
        c26830a.f75079a.put("standalone_action_name", str);
        l.d(c26830a, "Data.Builder().putString…K_KEY_ACTION, actionName)");
        if (c26829f != null) {
            Map<String, Object> m1303d = c26829f.m1303d();
            if (m1303d != null) {
                if (m1303d.isEmpty()) {
                    m1303d = null;
                }
                if (m1303d != null) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap(C25225a.m3942Y1(m1303d.size()));
                    Iterator<T> it2 = m1303d.entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry3 = (Map.Entry) it2.next();
                        linkedHashMap2.put(C22128a.m8543z2("c_", (String) entry3.getKey()), entry3.getValue());
                    }
                    c26830a.m1298b(linkedHashMap2);
                }
            }
        }
        c a = d0.a(StandaloneActionWorker.class);
        l.e(a, "workerClass");
        C26825d.C26826a c26826a = new C26825d.C26826a();
        C26829f m1299a = c26830a.m1299a();
        l.d(m1299a, "workerInput.build()");
        l.e(m1299a, RemoteMessageConst.DATA);
        if (c21755a.f60584e) {
            EnumC26841q enumC26841q = EnumC26841q.CONNECTED;
            l.e(enumC26841q, "networkType");
            c26826a.f75068c = enumC26841q;
        }
        String m8543z2 = C22128a.m8543z2("Standalone_", str);
        k kVar2 = null;
        if (kVar != null) {
            EnumC26674a enumC26674a = (EnumC26674a) kVar.a;
            i iVar = (i) kVar.b;
            l.e(enumC26674a, "backoffPolicy");
            l.e(iVar, "backoffDelay");
            kVar2 = new k(enumC26674a, iVar);
        }
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(C25225a.m3983O0(a));
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        if (kVar2 != null) {
            c26843a.m1269e((EnumC26674a) kVar2.a, ((f) ((i) kVar2.b)).a, TimeUnit.MILLISECONDS);
        }
        c26843a.f75127c.f74906e = m1299a;
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…t) }\n            .build()");
        AbstractC26844s m1279i = abstractC26857y.m1279i(m8543z2, enumC26832h, m1272b);
        l.d(m1279i, "workManager.enqueueUniqu…uildOneTimeWorkRequest())");
        return m1279i;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f10148a;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f10149b;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        AbstractC21765k abstractC21765k = this.f10151d;
        return abstractC21765k != null ? abstractC21765k.mo9061c() : false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r4 != null) goto L7;
     */
    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.work.ListenableWorker.AbstractC0414a mo34356r() {
        /*
            r3 = this;
            r0 = r3
            e.a.y2.k r0 = r0.f10151d
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L15
            r0 = r4
            androidx.work.ListenableWorker$a r0 = r0.mo9063a()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L15
            goto L24
        L15:
            androidx.work.ListenableWorker$a$a r0 = new androidx.work.ListenableWorker$a$a
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "Result.failure()"
            s1.z.c.l.d(r0, r1)
        L24:
            java.lang.String r0 = "WorkAction "
            java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
            r5 = r0
            r0 = r3
            e.a.y2.k r0 = r0.f10151d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L3c
            r0 = r6
            java.lang.String r0 = r0.mo9062b()
            r6 = r0
            goto L3e
        L3c:
            r0 = 0
            r6 = r0
        L3e:
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " finished with result "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r4
            java.lang.String r1 = e.m.d.y.n.k(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r3
            r1 = r5
            java.lang.String r1 = r1.toString()
            r0.m35890p(r1)
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.background_work.StandaloneActionWorker.mo34356r():androidx.work.ListenableWorker$a");
    }
}
