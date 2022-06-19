package com.truecaller.bizmon.newBusiness.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18228e;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.AbstractC7602a;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.C7613b;
import p193e.p194a.p294b.p295a.p296a.p301b.p303d.C7617d;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010C\u001a\u00020B\u0012\u0006\u0010E\u001a\u00020D¢\u0006\u0004\bF\u0010GJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010!\u001a\u00020\u00188\u0016@\u0016X\u0097.¢\u0006\u0018\n\u0004\b\u0019\u0010\u001a\u0012\u0004\b\u001f\u0010 \u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00109\u001a\u0002028\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010A\u001a\u00020:8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@¨\u0006H"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/b/a/a/b/d/b;", AbstractC2405c.f7629a, "Le/a/b/a/a/b/d/b;", "getBizProfileRemoteDataSource", "()Le/a/b/a/a/b/d/b;", "setBizProfileRemoteDataSource", "(Le/a/b/a/a/b/d/b;)V", "bizProfileRemoteDataSource", "Le/a/b0/e/l;", "e", "Le/a/b0/e/l;", "getAccountManager", "()Le/a/b0/e/l;", "setAccountManager", "(Le/a/b0/e/l;)V", "accountManager", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "getFeaturesRegistry$annotations", "()V", "featuresRegistry", "Le/a/m4/c/i/a/e;", "g", "Le/a/m4/c/i/a/e;", "getBizProfileRefreshNotifier", "()Le/a/m4/c/i/a/e;", "setBizProfileRefreshNotifier", "(Le/a/m4/c/i/a/e;)V", "bizProfileRefreshNotifier", "Le/a/m4/c/i/a/b;", "f", "Le/a/m4/c/i/a/b;", "getBizProfileLocalFileManager", "()Le/a/m4/c/i/a/b;", "setBizProfileLocalFileManager", "(Le/a/m4/c/i/a/b;)V", "bizProfileLocalFileManager", "Le/a/b0/o/a;", "d", "Le/a/b0/o/a;", "s", "()Le/a/b0/o/a;", "setCoreSettings", "(Le/a/b0/o/a;)V", "coreSettings", "Le/a/q2/a;", "a", "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker.class */
public final class BizProfileV2FetchWorker extends TrackedWorker {
    @Inject

    /* renamed from: a */
    public AbstractC19462a f10359a;
    @Inject

    /* renamed from: b */
    public C20592g f10360b;
    @Inject

    /* renamed from: c */
    public C7613b f10361c = new C7613b();
    @Inject

    /* renamed from: d */
    public AbstractC8541a f10362d;
    @Inject

    /* renamed from: e */
    public AbstractC8432l f10363e;
    @Inject

    /* renamed from: f */
    public AbstractC18223b f10364f;
    @Inject

    /* renamed from: g */
    public AbstractC18228e f10365g;

    @e(c = "com.truecaller.bizmon.newBusiness.workers.BizProfileV2FetchWorker$work$1", f = "BizProfileV2FetchWorker.kt", l = {64}, m = "invokeSuspend")
    /* renamed from: com.truecaller.bizmon.newBusiness.workers.BizProfileV2FetchWorker$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/BizProfileV2FetchWorker$a.class */
    public static final class C3512a extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f10366e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3512a(d dVar) {
            super(2, dVar);
            BizProfileV2FetchWorker.this = r5;
        }

        /* renamed from: i */
        public final d<s> m35847i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3512a(dVar);
        }

        /* renamed from: k */
        public final Object m35846k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3512a(dVar).m35845s(s.a);
        }

        /* renamed from: s */
        public final Object m35845s(Object obj) {
            a aVar = a.a;
            int i = this.f10366e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C7613b c7613b = BizProfileV2FetchWorker.this.f10361c;
                if (c7613b == null) {
                    l.l("bizProfileRemoteDataSource");
                    throw null;
                }
                this.f10366e = 1;
                Object m15252P = C18334g0.m15252P(new C7617d(c7613b, null), this);
                obj = m15252P;
                if (m15252P == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC7602a abstractC7602a = (AbstractC7602a) obj;
            if (abstractC7602a instanceof AbstractC7602a.C7612c) {
                BizProfileV2FetchWorker.this.m35848s().putBoolean("bizV2GetProfileSuccess", true);
                AbstractC18223b abstractC18223b = BizProfileV2FetchWorker.this.f10364f;
                if (abstractC18223b == null) {
                    l.l("bizProfileLocalFileManager");
                    throw null;
                }
                AbstractC7602a.C7612c c7612c = (AbstractC7602a.C7612c) abstractC7602a;
                abstractC18223b.mo15397e((BusinessProfile) c7612c.f23953a);
                AbstractC18228e abstractC18228e = BizProfileV2FetchWorker.this.f10365g;
                if (abstractC18228e == null) {
                    l.l("bizProfileRefreshNotifier");
                    throw null;
                }
                C17422k.m16095W(abstractC18228e, ((BusinessProfile) c7612c.f23953a).getName(), false, 2, null);
            } else if (abstractC7602a instanceof AbstractC7602a.AbstractC7604b.C7609e) {
                BizProfileV2FetchWorker.this.m35848s().putBoolean("bizV2GetProfileSuccess", true);
                AbstractC18223b abstractC18223b2 = BizProfileV2FetchWorker.this.f10364f;
                if (abstractC18223b2 == null) {
                    l.l("bizProfileLocalFileManager");
                    throw null;
                }
                abstractC18223b2.mo15399c();
                AbstractC18228e abstractC18228e2 = BizProfileV2FetchWorker.this.f10365g;
                if (abstractC18228e2 == null) {
                    l.l("bizProfileRefreshNotifier");
                    throw null;
                }
                C17422k.m16095W(abstractC18228e2, null, true, 1, null);
            } else {
                BizProfileV2FetchWorker.this.m35848s().putBoolean("bizV2GetProfileSuccess", false);
            }
            return new ListenableWorker.AbstractC0414a.C0417c();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BizProfileV2FetchWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        C7805e c7805e = (C7805e) C18334g0.m15219l(context);
        AbstractC19462a mo12776C4 = c7805e.f24300h.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        this.f10359a = mo12776C4;
        C20592g mo12343i5 = c7805e.f24288b.mo12343i5();
        Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
        this.f10360b = mo12343i5;
        AbstractC8541a mo12420d = c7805e.f24288b.mo12420d();
        Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
        this.f10362d = mo12420d;
        AbstractC8432l mo11657L = c7805e.f24288b.mo11657L();
        Objects.requireNonNull(mo11657L, "Cannot return null from a non-@Nullable component method");
        this.f10363e = mo11657L;
        AbstractC18223b mo12498X = c7805e.f24294e.mo12498X();
        Objects.requireNonNull(mo12498X, "Cannot return null from a non-@Nullable component method");
        this.f10364f = mo12498X;
        AbstractC18228e mo12428c6 = c7805e.f24294e.mo12428c6();
        Objects.requireNonNull(mo12428c6, "Cannot return null from a non-@Nullable component method");
        this.f10365g = mo12428c6;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f10359a;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f10360b;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        AbstractC8432l abstractC8432l = this.f10363e;
        if (abstractC8432l != null) {
            return abstractC8432l.mo28580d();
        }
        l.l("accountManager");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C3512a(null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          …esult.success()\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }

    /* renamed from: s */
    public final AbstractC8541a m35848s() {
        AbstractC8541a abstractC8541a = this.f10362d;
        if (abstractC8541a != null) {
            return abstractC8541a;
        }
        l.l("coreSettings");
        throw null;
    }
}
