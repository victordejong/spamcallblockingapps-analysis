package com.truecaller.bizmon.newBusiness.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import com.truecaller.featuretoggles.FeatureKey;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p424n.AbstractC8525d;
import p193e.p194a.p372b0.p424n.AbstractC8531g;
import p193e.p194a.p372b0.p424n.AbstractC8532h;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=¢\u0006\u0004\b?\u0010@J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R(\u0010\u0011\u001a\u00020\b8\u0016@\u0016X\u0097.¢\u0006\u0018\n\u0004\b\t\u0010\n\u0012\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006A"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "getFeaturesRegistry$annotations", "()V", "featuresRegistry", "Le/a/r2/f;", "Le/a/q2/a0;", AbstractC2405c.f7629a, "Le/a/r2/f;", "getEventsTracker", "()Le/a/r2/f;", "setEventsTracker", "(Le/a/r2/f;)V", "eventsTracker", "Le/a/q2/a;", "a", "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/b0/e/l;", "e", "Le/a/b0/e/l;", "getAccountManager", "()Le/a/b0/e/l;", "setAccountManager", "(Le/a/b0/e/l;)V", "accountManager", "Le/a/b0/n/g;", "f", "Le/a/b0/n/g;", "getProfileRepository", "()Le/a/b0/n/g;", "setProfileRepository", "(Le/a/b0/n/g;)V", "profileRepository", "Le/a/b0/o/a;", "d", "Le/a/b0/o/a;", "getCoreSettings", "()Le/a/b0/o/a;", "setCoreSettings", "(Le/a/b0/o/a;)V", "coreSettings", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker.class */
public final class BizProfileMigrationWorker extends TrackedWorker {
    @Inject

    /* renamed from: a */
    public AbstractC19462a f10350a;
    @Inject

    /* renamed from: b */
    public C20592g f10351b;
    @Inject

    /* renamed from: c */
    public AbstractC19854f<AbstractC19463a0> f10352c;
    @Inject

    /* renamed from: d */
    public AbstractC8541a f10353d;
    @Inject

    /* renamed from: e */
    public AbstractC8432l f10354e;
    @Inject

    /* renamed from: f */
    public AbstractC8531g f10355f;

    @e(c = "com.truecaller.bizmon.newBusiness.workers.BizProfileMigrationWorker$work$saveProfileResult$1", f = "BizProfileMigrationWorker.kt", l = {93}, m = "invokeSuspend")
    /* renamed from: com.truecaller.bizmon.newBusiness.workers.BizProfileMigrationWorker$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker$a.class */
    public static final class C3511a extends i implements p<i0, d<? super AbstractC8532h>, Object> {

        /* renamed from: e */
        public int f10356e;

        /* renamed from: g */
        public final /* synthetic */ c0 f10358g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3511a(c0 c0Var, d dVar) {
            super(2, dVar);
            BizProfileMigrationWorker.this = r5;
            this.f10358g = c0Var;
        }

        /* renamed from: i */
        public final d<s> m35851i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3511a(this.f10358g, dVar);
        }

        /* renamed from: k */
        public final Object m35850k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3511a(this.f10358g, dVar).m35849s(s.a);
        }

        /* renamed from: s */
        public final Object m35849s(Object obj) {
            a aVar = a.a;
            int i = this.f10356e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC8531g abstractC8531g = BizProfileMigrationWorker.this.f10355f;
                if (abstractC8531g == null) {
                    l.l("profileRepository");
                    throw null;
                }
                this.f10356e = 1;
                Object mo15425b = abstractC8531g.mo15425b(AbstractC8525d.C8528c.f26320a, true, null, (Map) this.f10358g.a, true, this);
                obj = mo15425b;
                if (mo15425b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BizProfileMigrationWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        C7805e c7805e = (C7805e) C18334g0.m15219l(context);
        AbstractC19462a mo12776C4 = c7805e.f24300h.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        this.f10350a = mo12776C4;
        C20592g mo12343i5 = c7805e.f24288b.mo12343i5();
        Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
        this.f10351b = mo12343i5;
        AbstractC19854f<AbstractC19463a0> mo12217s = c7805e.f24300h.mo12217s();
        Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
        this.f10352c = mo12217s;
        AbstractC8541a mo12420d = c7805e.f24288b.mo12420d();
        Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
        this.f10353d = mo12420d;
        AbstractC8432l mo11657L = c7805e.f24288b.mo11657L();
        Objects.requireNonNull(mo11657L, "Cannot return null from a non-@Nullable component method");
        this.f10354e = mo11657L;
        AbstractC8531g mo12781C = c7805e.f24294e.mo12781C();
        Objects.requireNonNull(mo12781C, "Cannot return null from a non-@Nullable component method");
        this.f10355f = mo12781C;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f10350a;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f10351b;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        AbstractC8541a abstractC8541a = this.f10353d;
        if (abstractC8541a == null) {
            l.l("coreSettings");
            throw null;
        }
        boolean z = abstractC8541a.getBoolean("profileBusiness", false);
        AbstractC8541a abstractC8541a2 = this.f10353d;
        if (abstractC8541a2 == null) {
            l.l("coreSettings");
            throw null;
        }
        boolean z2 = abstractC8541a2.getBoolean("bizV2GetProfileSuccess", false);
        boolean z3 = mo34358o().m10972d(FeatureKey.BUSINESS_PROFILES_V2).isEnabled() && mo34358o().m10972d(FeatureKey.EDIT_BUSINESS_PROFILES_V2).isEnabled();
        AbstractC8541a abstractC8541a3 = this.f10353d;
        if (abstractC8541a3 == null) {
            l.l("coreSettings");
            throw null;
        }
        boolean z4 = abstractC8541a3.getBoolean("bizV2MigrationSuccessful", false);
        boolean z5 = false;
        if (z) {
            z5 = false;
            if (z2) {
                z5 = false;
                if (z3) {
                    z5 = false;
                    if (!z4) {
                        AbstractC8432l abstractC8432l = this.f10354e;
                        if (abstractC8432l == null) {
                            l.l("accountManager");
                            throw null;
                        }
                        z5 = false;
                        if (abstractC8432l.mo28580d()) {
                            z5 = true;
                        }
                    }
                }
            }
        }
        return z5;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        ListenableWorker.AbstractC0414a.C0417c c0417c;
        c0 c0Var = new c0();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c0Var.a = linkedHashMap;
        linkedHashMap.put(AnalyticsConstants.EMAIL, "");
        ((Map) c0Var.a).put("twitter_id", "");
        ((Map) c0Var.a).put("facebook_id", "");
        ((Map) c0Var.a).put("url", "");
        ((Map) c0Var.a).put("google_id_token", "");
        ((Map) c0Var.a).put("w_company", "");
        ((Map) c0Var.a).put("w_title", "");
        ((Map) c0Var.a).put("street", "");
        ((Map) c0Var.a).put("city", "");
        ((Map) c0Var.a).put("zipcode", "");
        ((Map) c0Var.a).put("status_message", "");
        AbstractC8532h abstractC8532h = (AbstractC8532h) s1.a.a.a.v0.f.d.c3((f) null, new C3511a(c0Var, null), 1, (Object) null);
        if (l.a(abstractC8532h, AbstractC8532h.C8537e.f26328c)) {
            AbstractC8541a abstractC8541a = this.f10353d;
            if (abstractC8541a == null) {
                l.l("coreSettings");
                throw null;
            }
            abstractC8541a.putBoolean("bizV2MigrationSuccessful", true);
            c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        } else if (l.a(abstractC8532h, AbstractC8532h.C8534b.f26325c)) {
            c0417c = new ListenableWorker.AbstractC0414a.C0415a();
        } else if (l.a(abstractC8532h, AbstractC8532h.C8533a.f26324c)) {
            c0417c = new ListenableWorker.AbstractC0414a.C0415a();
        } else if (l.a(abstractC8532h, AbstractC8532h.C8535c.f26326c)) {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
        } else if (l.a(abstractC8532h, AbstractC8532h.C8536d.f26327c)) {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
        } else if (abstractC8532h instanceof AbstractC8532h.C8538f) {
            c0417c = new ListenableWorker.AbstractC0414a.C0416b();
        } else if (!(abstractC8532h instanceof AbstractC8532h.C8539g)) {
            throw new s1.i();
        } else {
            c0417c = new ListenableWorker.AbstractC0414a.C0415a();
        }
        l.d(c0417c, "when (saveProfileResult)…esult.failure()\n        }");
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("BizProfileMigrationWorker");
        m15852a.m15848d(C25225a.m3938Z1(new k(UpdateKey.STATUS, c0417c instanceof ListenableWorker.AbstractC0414a.C0417c ? AnalyticsConstants.SUCCESS : AnalyticsConstants.FAILURE)));
        AbstractC19854f<AbstractC19463a0> abstractC19854f = this.f10352c;
        if (abstractC19854f != null) {
            abstractC19854f.mo11854a().mo13111a(m15852a.build());
            return c0417c;
        }
        l.l("eventsTracker");
        throw null;
    }
}
