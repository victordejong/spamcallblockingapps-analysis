package com.truecaller.messaging.conversationlist;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.TrackedWorker;
import javax.inject.Inject;
import javax.inject.Provider;
import kotlin.Metadata;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21763i;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import p193e.p194a.p195a.p279r0.AbstractC7203c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� /2\u00020\u0001:\u0001\tB\u0017\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+¢\u0006\u0004\b-\u0010.J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\b8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0016@\u0016X\u0097.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u00060"}, d2 = {"Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;", "Lcom/truecaller/background_work/TrackedWorker;", "", "q", "()Z", "Landroidx/work/ListenableWorker$a;", "r", "()Landroidx/work/ListenableWorker$a;", "Le/a/q2/a;", "a", "Le/a/q2/a;", "n", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Ljavax/inject/Provider;", "Le/a/a/r0/c;", AbstractC2405c.f7629a, "Ljavax/inject/Provider;", "getSpamSearcher$truecaller_googlePlayRelease", "()Ljavax/inject/Provider;", "setSpamSearcher$truecaller_googlePlayRelease", "(Ljavax/inject/Provider;)V", "spamSearcher", "Le/a/a/r0/a;", "d", "Le/a/a/r0/a;", "getSpamSearchTrigger$truecaller_googlePlayRelease", "()Le/a/a/r0/a;", "setSpamSearchTrigger$truecaller_googlePlayRelease", "(Le/a/a/r0/a;)V", "spamSearchTrigger", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "o", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "featuresRegistry", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "e", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversationlist/ConversationSpamSearchWorker.class */
public final class ConversationSpamSearchWorker extends TrackedWorker {

    /* renamed from: e */
    public static final C4185a f13162e = new C4185a(null);
    @Inject

    /* renamed from: a */
    public AbstractC19462a f13163a;
    @Inject

    /* renamed from: b */
    public C20592g f13164b;
    @Inject

    /* renamed from: c */
    public Provider<AbstractC7203c> f13165c;
    @Inject

    /* renamed from: d */
    public AbstractC7201a f13166d;

    /* renamed from: com.truecaller.messaging.conversationlist.ConversationSpamSearchWorker$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$a.class */
    public static final class C4185a implements AbstractC21763i {
        public C4185a(f fVar) {
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        /* renamed from: a */
        public C21762h mo9107a() {
            C21762h c21762h = new C21762h(d0.a(ConversationSpamSearchWorker.class), null, 2);
            c21762h.m9108f(EnumC26841q.CONNECTED);
            return c21762h;
        }

        @Override // p193e.p194a.p1392y2.AbstractC21763i
        public String getName() {
            return "ConversationSpamSearchWorker";
        }
    }

    @e(c = "com.truecaller.messaging.conversationlist.ConversationSpamSearchWorker$work$1", f = "ConversationSpamSearchWorker.kt", l = {44}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.conversationlist.ConversationSpamSearchWorker$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$b.class */
    public static final class C4186b extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f13167e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4186b(d dVar) {
            super(2, dVar);
            ConversationSpamSearchWorker.this = r5;
        }

        /* renamed from: i */
        public final d<s> m35075i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4186b(dVar);
        }

        /* renamed from: k */
        public final Object m35074k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4186b(dVar).m35073s(s.a);
        }

        /* renamed from: s */
        public final Object m35073s(Object obj) {
            a aVar = a.a;
            int i = this.f13167e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Provider<AbstractC7203c> provider = ConversationSpamSearchWorker.this.f13165c;
                if (provider == null) {
                    l.l("spamSearcher");
                    throw null;
                }
                this.f13167e = 1;
                Object mo29998a = ((AbstractC7203c) provider.get()).mo29998a(this);
                obj = mo29998a;
                if (mo29998a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((Boolean) obj).booleanValue() ? new ListenableWorker.AbstractC0414a.C0417c() : new ListenableWorker.AbstractC0414a.C0415a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConversationSpamSearchWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        AbstractC16444k2.f46188a.m17389a().mo11394H(this);
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: n */
    public AbstractC19462a mo34359n() {
        AbstractC19462a abstractC19462a = this.f13163a;
        if (abstractC19462a != null) {
            return abstractC19462a;
        }
        l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: o */
    public C20592g mo34358o() {
        C20592g c20592g = this.f13164b;
        if (c20592g != null) {
            return c20592g;
        }
        l.l("featuresRegistry");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: q */
    public boolean mo34357q() {
        AbstractC7201a abstractC7201a = this.f13166d;
        if (abstractC7201a != null) {
            return abstractC7201a.mo29999b();
        }
        l.l("spamSearchTrigger");
        throw null;
    }

    @Override // com.truecaller.background_work.TrackedWorker
    /* renamed from: r */
    public ListenableWorker.AbstractC0414a mo34356r() {
        Object c3 = s1.a.a.a.v0.f.d.c3((s1.w.f) null, new C4186b(null), 1, (Object) null);
        l.d(c3, "runBlocking { if (spamSe…) else Result.failure() }");
        return (ListenableWorker.AbstractC0414a) c3;
    }
}
