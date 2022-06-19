package com.truecaller.messaging.transport.p170im;

import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p244k.AbstractC6690i;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.b0;
import s1.z.c.c0;
import s1.z.c.l;
import w3.b.a.b;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u00105\u001a\u000204\u0012\u0006\u00107\u001a\u000206¢\u0006\u0004\b8\u00109J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R(\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR(\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8��@��X\u0081.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8��@��X\u0081.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R.\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0\u00050\u000e8��@��X\u0081.¢\u0006\u0012\n\u0004\b0\u0010\u0011\u001a\u0004\b1\u0010\u0013\"\u0004\b2\u0010\u0015¨\u0006:"}, d2 = {"Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/r2/f;", "Le/a/a/g/m;", "a", "Le/a/r2/f;", "getMessagesStorage$truecaller_googlePlayRelease", "()Le/a/r2/f;", "setMessagesStorage$truecaller_googlePlayRelease", "(Le/a/r2/f;)V", "messagesStorage", "Lo3/a;", "Le/a/a/g/w;", AbstractC2405c.f7629a, "Lo3/a;", "getReadMessageStorage$truecaller_googlePlayRelease", "()Lo3/a;", "setReadMessageStorage$truecaller_googlePlayRelease", "(Lo3/a;)V", "readMessageStorage", "Le/a/a/k/t;", "d", "Le/a/a/k/t;", "getTransportManager$truecaller_googlePlayRelease", "()Le/a/a/k/t;", "setTransportManager$truecaller_googlePlayRelease", "(Le/a/a/k/t;)V", "transportManager", "Le/a/q2/a;", "f", "Le/a/q2/a;", "getAnalytics$truecaller_googlePlayRelease", "()Le/a/q2/a;", "setAnalytics$truecaller_googlePlayRelease", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/a/v0/a;", C22021b.f61237c, "Le/a/a/v0/a;", "getLinkMetaDataExtractor$truecaller_googlePlayRelease", "()Le/a/a/v0/a;", "setLinkMetaDataExtractor$truecaller_googlePlayRelease", "(Le/a/a/v0/a;)V", "linkMetaDataExtractor", "Le/a/a/k/i;", "e", "getMessagesProcessor$truecaller_googlePlayRelease", "setMessagesProcessor$truecaller_googlePlayRelease", "messagesProcessor", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.messaging.transport.im.FetchLinkPreviewWorker */
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/FetchLinkPreviewWorker.class */
public final class FetchLinkPreviewWorker extends Worker {
    @Inject

    /* renamed from: a */
    public AbstractC19854f<AbstractC6233m> f13709a;
    @Inject

    /* renamed from: b */
    public AbstractC7283a f13710b;
    @Inject

    /* renamed from: c */
    public a<AbstractC6248w> f13711c;
    @Inject

    /* renamed from: d */
    public AbstractC6708t f13712d;
    @Inject

    /* renamed from: e */
    public a<AbstractC19854f<AbstractC6690i>> f13713e;
    @Inject

    /* renamed from: f */
    public AbstractC19462a f13714f;

    @e(c = "com.truecaller.messaging.transport.im.FetchLinkPreviewWorker$doWork$message$1", f = "FetchLinkPreviewWorker.kt", l = {92}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.transport.im.FetchLinkPreviewWorker$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/FetchLinkPreviewWorker$a.class */
    public static final class C4253a extends i implements p<i0, d<? super Message>, Object> {

        /* renamed from: e */
        public int f13715e;

        /* renamed from: g */
        public final /* synthetic */ b0 f13717g;

        /* renamed from: h */
        public final /* synthetic */ c0 f13718h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4253a(b0 b0Var, c0 c0Var, d dVar) {
            super(2, dVar);
            FetchLinkPreviewWorker.this = r5;
            this.f13717g = b0Var;
            this.f13718h = c0Var;
        }

        /* renamed from: i */
        public final d<s> m34913i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4253a(this.f13717g, this.f13718h, dVar);
        }

        /* renamed from: k */
        public final Object m34912k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4253a(this.f13717g, this.f13718h, dVar).m34911s(s.a);
        }

        /* renamed from: s */
        public final Object m34911s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f13715e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                a<AbstractC6248w> aVar2 = FetchLinkPreviewWorker.this.f13711c;
                if (aVar2 == null) {
                    l.l("readMessageStorage");
                    throw null;
                }
                AbstractC6248w abstractC6248w = (AbstractC6248w) aVar2.get();
                long j = this.f13717g.a;
                this.f13715e = 1;
                Object mo31579D = abstractC6248w.mo31579D(j, this);
                obj = mo31579D;
                if (mo31579D == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Message message = (Message) obj;
            Message message2 = null;
            if (message != null) {
                Message.C4209b m35024b = message.m35024b();
                m35024b.m35006g(C10480a.m26012U2((LinkMetaData) this.f13718h.a));
                message2 = m35024b.m35012a();
            }
            return message2;
        }
    }

    @e(c = "com.truecaller.messaging.transport.im.FetchLinkPreviewWorker$doWork$metaData$1", f = "FetchLinkPreviewWorker.kt", l = {83}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.transport.im.FetchLinkPreviewWorker$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b.class */
    public static final class C4254b extends i implements p<i0, d<? super LinkMetaData>, Object> {

        /* renamed from: e */
        public long f13719e;

        /* renamed from: f */
        public int f13720f;

        /* renamed from: h */
        public final /* synthetic */ c0 f13722h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4254b(c0 c0Var, d dVar) {
            super(2, dVar);
            FetchLinkPreviewWorker.this = r5;
            this.f13722h = c0Var;
        }

        /* renamed from: i */
        public final d<s> m34910i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4254b(this.f13722h, dVar);
        }

        /* renamed from: k */
        public final Object m34909k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4254b(this.f13722h, dVar).m34908s(s.a);
        }

        /* JADX WARN: Type inference failed for: r0v51, types: [long] */
        /* JADX WARN: Type inference failed for: r0v71, types: [long] */
        /* renamed from: s */
        public final Object m34908s(Object obj) {
            char c;
            Object mo29853c;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f13720f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                b bVar = new b();
                l.d(bVar, "DateTime.now()");
                c = ((w3.b.a.e0.e) bVar).a;
                AbstractC7283a abstractC7283a = FetchLinkPreviewWorker.this.f13710b;
                if (abstractC7283a == null) {
                    l.l("linkMetaDataExtractor");
                    throw null;
                }
                this.f13719e = c;
                this.f13720f = 1;
                mo29853c = abstractC7283a.mo29853c((String) this.f13722h.a, null, this);
                obj = mo29853c;
                if (obj == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c = this.f13719e;
                C25225a.m3932a3(obj);
            }
            LinkMetaData linkMetaData = (LinkMetaData) obj;
            b bVar2 = new b();
            l.d(bVar2, "DateTime.now()");
            long j = ((w3.b.a.e0.e) bVar2).a;
            FetchLinkPreviewWorker fetchLinkPreviewWorker = FetchLinkPreviewWorker.this;
            boolean z = linkMetaData != null;
            AbstractC19462a abstractC19462a = fetchLinkPreviewWorker.f13714f;
            if (abstractC19462a == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            LinkedHashMap m8655X = C22128a.m8655X("ImWithLinkReceived", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e("hasPreview", AnalyticsConstants.NAME);
            m8655X.put("hasPreview", String.valueOf(z));
            l.e("previewNeedsFetch", AnalyticsConstants.NAME);
            m8655X.put("previewNeedsFetch", String.valueOf(true));
            l.e("previewFetchLatency", AnalyticsConstants.NAME);
            linkedHashMap.put("previewFetchLatency", Double.valueOf(j - c));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("ImWithLinkReceived");
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
            return linkMetaData;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchLinkPreviewWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "workerParams");
        AbstractC16444k2.f46188a.m17389a().mo11384i(this);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        b0 b0Var = new b0();
        Long valueOf = Long.valueOf(getInputData().m1302e("message_id", -1L));
        if (!(valueOf.longValue() != -1)) {
            valueOf = null;
        }
        if (valueOf == null) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        b0Var.a = valueOf.longValue();
        c0 c0Var = new c0();
        String m1301f = getInputData().m1301f("text");
        if (m1301f != null) {
            l.d(m1301f, "it");
            if (!(m1301f.length() > 0)) {
                m1301f = null;
            }
            if (m1301f != null) {
                c0Var.a = m1301f;
                c0 c0Var2 = new c0();
                LinkMetaData linkMetaData = (LinkMetaData) s1.a.a.a.v0.f.d.c3((f) null, new C4254b(c0Var, null), 1, (Object) null);
                if (linkMetaData == null) {
                    ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
                    l.d(c0417c2, "Result.success()");
                    return c0417c2;
                }
                c0Var2.a = linkMetaData;
                Message message = (Message) s1.a.a.a.v0.f.d.c3((f) null, new C4253a(b0Var, c0Var2, null), 1, (Object) null);
                if (message == null) {
                    ListenableWorker.AbstractC0414a.C0417c c0417c3 = new ListenableWorker.AbstractC0414a.C0417c();
                    l.d(c0417c3, "Result.success()");
                    return c0417c3;
                }
                a<AbstractC19854f<AbstractC6690i>> aVar = this.f13713e;
                if (aVar == null) {
                    l.l("messagesProcessor");
                    throw null;
                }
                AbstractC6690i abstractC6690i = (AbstractC6690i) ((AbstractC19854f) aVar.get()).mo11854a();
                AbstractC6708t abstractC6708t = this.f13712d;
                if (abstractC6708t == null) {
                    l.l("transportManager");
                    throw null;
                }
                AbstractC6704q mo30539x = abstractC6708t.mo30539x(2);
                Intent intent = new Intent("update_message");
                intent.putExtra("message", message);
                abstractC6690i.mo30574i(mo30539x, intent, 0).mo11831c();
                ListenableWorker.AbstractC0414a.C0417c c0417c4 = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c4, "Result.success()");
                return c0417c4;
            }
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c5 = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c5, "Result.success()");
        return c0417c5;
    }
}
