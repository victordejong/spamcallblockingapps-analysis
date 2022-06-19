package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.RemoteException;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.facebook.ads.AdError;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.messenger.p138v1.EditMessage;
import com.truecaller.api.services.messenger.p138v1.SendMessage;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.api.services.messenger.p138v1.models.Urgency;
import com.truecaller.api.services.messenger.p138v1.models.input.InputMessageContent;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import com.truecaller.api.services.messenger.p138v1.models.input.InputReportType;
import com.truecaller.api.services.messenger.p138v1.models.input.InputUserTypingKind;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.GifEntity;
import com.truecaller.messaging.data.types.ImageEntity;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.data.types.VideoEntity;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import com.truecaller.messaging.transport.p170im.RetryImMessageWorker;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import org.apache.avro.Schema;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17508e1;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.AbstractC19109u1;
import p193e.p194a.p1114o5.p1123g2.AbstractC19032b;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.C6676e;
import p193e.p194a.p195a.p244k.C6702p;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6491s;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6493u;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6503z;
import p193e.p194a.p195a.p244k.p253d0.AbstractC6673a;
import p193e.p194a.p195a.p276p0.AbstractC7158b;
import p193e.p194a.p195a.p276p0.C7164e;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p195a.p286y0.AbstractC7314g0;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p837h0.AbstractC14835j;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.c;
import q3.a.i0;
import s1.f0.r;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
import s1.z.c.y;
import u3.e0;
import u3.f;
import u3.p0.g.e;
/* renamed from: e.a.a.k.a.m0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/m0.class */
public final class C6587m0 implements AbstractC6704q<C6593n0> {

    /* renamed from: A */
    public final AbstractC6601p0 f21714A;

    /* renamed from: B */
    public final C6556g f21715B;

    /* renamed from: C */
    public final a<AbstractC14835j> f21716C;

    /* renamed from: D */
    public final AbstractC8571b f21717D;

    /* renamed from: E */
    public final AbstractC19219a0 f21718E;

    /* renamed from: F */
    public final AbstractC6520b1 f21719F;

    /* renamed from: G */
    public final AbstractC7290a f21720G;

    /* renamed from: H */
    public final AbstractC6599o1 f21721H;

    /* renamed from: I */
    public final AbstractC7283a f21722I;

    /* renamed from: J */
    public final AbstractC19215b f21723J;

    /* renamed from: K */
    public final C7164e f21724K;

    /* renamed from: L */
    public final AbstractC19222c f21725L;

    /* renamed from: M */
    public final AbstractC6673a f21726M;

    /* renamed from: N */
    public final AbstractC7314g0 f21727N;

    /* renamed from: a */
    public final ContentResolver f21728a;

    /* renamed from: b */
    public final AbstractC6625s1 f21729b;

    /* renamed from: c */
    public final a<AbstractC19854f<AbstractC6233m>> f21730c;

    /* renamed from: d */
    public final a<AbstractC6248w> f21731d;

    /* renamed from: e */
    public final C6713w.AbstractC6717c f21732e;

    /* renamed from: f */
    public final AbstractC6392i0 f21733f;

    /* renamed from: g */
    public final AbstractC19854f<AbstractC6626t> f21734g;

    /* renamed from: h */
    public final AbstractC19321u f21735h;

    /* renamed from: i */
    public final AbstractC19854f<AbstractC19463a0> f21736i;

    /* renamed from: j */
    public final AbstractC19462a f21737j;

    /* renamed from: k */
    public final AbstractC6563h f21738k;

    /* renamed from: l */
    public final AbstractC6573i1 f21739l;

    /* renamed from: m */
    public final AbstractC19854f<AbstractC6543e1> f21740m;

    /* renamed from: n */
    public final AbstractC19854f<AbstractC6646x0> f21741n;

    /* renamed from: o */
    public final C20592g f21742o;

    /* renamed from: p */
    public final AbstractC7158b f21743p;

    /* renamed from: q */
    public final AbstractC19032b f21744q;

    /* renamed from: r */
    public final AbstractC19109u1 f21745r;

    /* renamed from: s */
    public final AbstractC21309b f21746s;

    /* renamed from: t */
    public final AbstractC26857y f21747t;

    /* renamed from: u */
    public final AbstractC19854f<AbstractC6503z> f21748u;

    /* renamed from: v */
    public final AbstractC6448d f21749v;

    /* renamed from: w */
    public final AbstractC6489q f21750w;

    /* renamed from: x */
    public final AbstractC6493u f21751x;

    /* renamed from: y */
    public final AbstractC6491s f21752y;

    /* renamed from: z */
    public final AbstractC6592n f21753z;

    /* renamed from: e.a.a.k.a.m0$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/m0$a.class */
    public static final class C6588a extends m implements l<OutputStream, s> {

        /* renamed from: b */
        public final /* synthetic */ InputStream f21754b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6588a(InputStream inputStream) {
            super(1);
            this.f21754b = inputStream;
        }

        /* renamed from: d */
        public Object m30708d(Object obj) {
            OutputStream outputStream = (OutputStream) obj;
            s1.z.c.l.e(outputStream, "it");
            C25225a.m3960U(this.f21754b, outputStream, 0, 2);
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.transport.im.ImTransport$sendMessage$6$1", f = "ImTransport.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.m0$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/m0$b.class */
    public static final class C6589b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ BinaryEntity f21755e;

        /* renamed from: f */
        public final /* synthetic */ C6587m0 f21756f;

        /* renamed from: g */
        public final /* synthetic */ Message f21757g;

        /* renamed from: h */
        public final /* synthetic */ InputMessageContent.C3271b f21758h;

        /* renamed from: i */
        public final /* synthetic */ List f21759i;

        /* renamed from: j */
        public final /* synthetic */ y f21760j;

        /* renamed from: k */
        public final /* synthetic */ y f21761k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6589b(BinaryEntity binaryEntity, d dVar, C6587m0 c6587m0, Message message, InputMessageContent.C3271b c3271b, List list, y yVar, y yVar2) {
            super(2, dVar);
            this.f21755e = binaryEntity;
            this.f21756f = c6587m0;
            this.f21757g = message;
            this.f21758h = c3271b;
            this.f21759i = list;
            this.f21760j = yVar;
            this.f21761k = yVar2;
        }

        /* renamed from: i */
        public final d<s> m30707i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C6589b(this.f21755e, dVar, this.f21756f, this.f21757g, this.f21758h, this.f21759i, this.f21760j, this.f21761k);
        }

        /* renamed from: k */
        public final Object m30706k(Object obj, Object obj2) {
            return m30707i(obj, (d) obj2).m30705s(s.a);
        }

        /* renamed from: s */
        public final Object m30705s(Object obj) {
            s sVar;
            C25225a.m3932a3(obj);
            Entity mo30590a = this.f21756f.f21726M.mo30590a((GifEntity) this.f21755e);
            if (mo30590a != null) {
                this.f21759i.add(mo30590a);
                AbstractC6563h abstractC6563h = this.f21756f.f21738k;
                InputMessageContent.C3271b c3271b = this.f21758h;
                s1.z.c.l.d(c3271b, "contentBuilder");
                ((C6579k) abstractC6563h).m30746a(c3271b, (BinaryEntity) mo30590a);
                sVar = s.a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.messaging.transport.im.ImTransport$sendMessage$2", f = "ImTransport.kt", l = {909}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.m0$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/m0$c.class */
    public static final class C6590c extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: e */
        public int f21762e;

        /* renamed from: g */
        public final /* synthetic */ Message f21764g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6590c(Message message, d dVar) {
            super(2, dVar);
            C6587m0.this = r5;
            this.f21764g = message;
        }

        /* renamed from: i */
        public final d<s> m30704i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C6590c(this.f21764g, dVar);
        }

        /* renamed from: k */
        public final Object m30703k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C6590c(this.f21764g, dVar).m30702s(s.a);
        }

        /* renamed from: s */
        public final Object m30702s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f21762e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = (AbstractC6248w) C6587m0.this.f21731d.get();
                long j = this.f21764g.f13366B;
                this.f21762e = 1;
                Object mo31577F = abstractC6248w.mo31577F(j, this);
                obj = mo31577F;
                if (mo31577F == aVar) {
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

    @Inject
    public C6587m0(ContentResolver contentResolver, AbstractC6625s1 abstractC6625s1, a<AbstractC19854f<AbstractC6233m>> aVar, a<AbstractC6248w> aVar2, C6713w.AbstractC6717c abstractC6717c, AbstractC6392i0 abstractC6392i0, AbstractC19854f<AbstractC6626t> abstractC19854f, AbstractC19321u abstractC19321u, AbstractC19854f<AbstractC19463a0> abstractC19854f2, AbstractC19462a abstractC19462a, AbstractC6563h abstractC6563h, AbstractC6573i1 abstractC6573i1, AbstractC19854f<AbstractC6543e1> abstractC19854f3, AbstractC19854f<AbstractC6646x0> abstractC19854f4, C20592g c20592g, AbstractC7158b abstractC7158b, AbstractC19032b abstractC19032b, AbstractC19109u1 abstractC19109u1, AbstractC21309b abstractC21309b, AbstractC26857y abstractC26857y, AbstractC19854f<AbstractC6503z> abstractC19854f5, AbstractC6448d abstractC6448d, AbstractC6489q abstractC6489q, AbstractC6493u abstractC6493u, AbstractC6491s abstractC6491s, AbstractC6592n abstractC6592n, AbstractC6601p0 abstractC6601p0, C6556g c6556g, a<AbstractC14835j> aVar3, AbstractC8571b abstractC8571b, AbstractC19219a0 abstractC19219a0, AbstractC6520b1 abstractC6520b1, AbstractC7290a abstractC7290a, AbstractC6599o1 abstractC6599o1, AbstractC7283a abstractC7283a, AbstractC19215b abstractC19215b, C7164e c7164e, AbstractC19222c abstractC19222c, AbstractC6673a abstractC6673a, AbstractC7314g0 abstractC7314g0) {
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(abstractC6625s1, "stubManager");
        s1.z.c.l.e(aVar, "messageStorage");
        s1.z.c.l.e(aVar2, "readMessageStorage");
        s1.z.c.l.e(abstractC6717c, "transactionExecutor");
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(abstractC19854f, "imManager");
        s1.z.c.l.e(abstractC19321u, "networkUtil");
        s1.z.c.l.e(abstractC19854f2, "eventsTracker");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC6563h, "imAttachmentManager");
        s1.z.c.l.e(abstractC6573i1, "imVersionManager");
        s1.z.c.l.e(abstractC19854f3, "imUserManager");
        s1.z.c.l.e(abstractC19854f4, "imUnsupportedEventManager");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(abstractC7158b, "categorizerManager");
        s1.z.c.l.e(abstractC19032b, "videoCompressor");
        s1.z.c.l.e(abstractC19109u1, "tempEntityCleaner");
        s1.z.c.l.e(abstractC21309b, "dataManager");
        s1.z.c.l.e(abstractC26857y, "workManager");
        s1.z.c.l.e(abstractC19854f5, "unprocessedHistoryManager");
        s1.z.c.l.e(abstractC6448d, "groupHelper");
        s1.z.c.l.e(abstractC6489q, "groupUtils");
        s1.z.c.l.e(abstractC6493u, "reportHelper");
        s1.z.c.l.e(abstractC6491s, "reactionHelper");
        s1.z.c.l.e(abstractC6592n, "editMessageHelper");
        s1.z.c.l.e(abstractC6601p0, "imTypingManager");
        s1.z.c.l.e(c6556g, "hiddenNumberHelper");
        s1.z.c.l.e(aVar3, "filterManager");
        s1.z.c.l.e(abstractC8571b, "attachmentStoreHelper");
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        s1.z.c.l.e(abstractC6520b1, "userInfoHelper");
        s1.z.c.l.e(abstractC7290a, "messagesMonitor");
        s1.z.c.l.e(abstractC6599o1, "linkPreviewEntityHelper");
        s1.z.c.l.e(abstractC7283a, "linkMetaDataExtractor");
        s1.z.c.l.e(abstractC19215b, "qaMenuSettings");
        s1.z.c.l.e(c7164e, "insightsImSyncHelper");
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(abstractC6673a, "tenorDownloadingManager");
        s1.z.c.l.e(abstractC7314g0, "urgentMessageNotificationHelper");
        this.f21728a = contentResolver;
        this.f21729b = abstractC6625s1;
        this.f21730c = aVar;
        this.f21731d = aVar2;
        this.f21732e = abstractC6717c;
        this.f21733f = abstractC6392i0;
        this.f21734g = abstractC19854f;
        this.f21735h = abstractC19321u;
        this.f21736i = abstractC19854f2;
        this.f21737j = abstractC19462a;
        this.f21738k = abstractC6563h;
        this.f21739l = abstractC6573i1;
        this.f21740m = abstractC19854f3;
        this.f21741n = abstractC19854f4;
        this.f21742o = c20592g;
        this.f21743p = abstractC7158b;
        this.f21744q = abstractC19032b;
        this.f21745r = abstractC19109u1;
        this.f21746s = abstractC21309b;
        this.f21747t = abstractC26857y;
        this.f21748u = abstractC19854f5;
        this.f21749v = abstractC6448d;
        this.f21750w = abstractC6489q;
        this.f21751x = abstractC6493u;
        this.f21752y = abstractC6491s;
        this.f21753z = abstractC6592n;
        this.f21714A = abstractC6601p0;
        this.f21715B = c6556g;
        this.f21716C = aVar3;
        this.f21717D = abstractC8571b;
        this.f21718E = abstractC19219a0;
        this.f21719F = abstractC6520b1;
        this.f21720G = abstractC7290a;
        this.f21721H = abstractC6599o1;
        this.f21722I = abstractC7283a;
        this.f21723J = abstractC19215b;
        this.f21724K = c7164e;
        this.f21725L = abstractC19222c;
        this.f21726M = abstractC6673a;
        this.f21727N = abstractC7314g0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: A */
    public boolean mo15188A() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x014d, code lost:
        if ((!(r0.length == 0)) != true) goto L42;
     */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p244k.AbstractC6704q.C6705a mo15187B(com.truecaller.messaging.data.types.Message r26, com.truecaller.data.entity.messaging.Participant[] r27) {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6587m0.mo15187B(com.truecaller.messaging.data.types.Message, com.truecaller.data.entity.messaging.Participant[]):e.a.a.k.q$a");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0306  */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle mo15186C(android.content.Intent r27, int r28) {
        /*
            Method dump skipped, instructions count: 787
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6587m0.mo15186C(android.content.Intent, int):android.os.Bundle");
    }

    /* renamed from: D */
    public final ContentProviderResult[] m30732D(ArrayList<ContentProviderOperation> arrayList) {
        try {
            ContentResolver contentResolver = this.f21728a;
            Uri uri = C17891a1.f50888a;
            return contentResolver.applyBatch("com.truecaller", arrayList);
        } catch (OperationApplicationException | RemoteException e) {
            return null;
        }
    }

    /* renamed from: E */
    public final boolean m30731E(String str) {
        boolean z = true;
        if (!s1.z.c.l.a(Environment.getExternalStorageState(), "mounted")) {
            z = false;
        } else if (this.f21717D.mo28365f(str, true)) {
            z = this.f21718E.mo13830c();
        }
        return z;
    }

    /* renamed from: F */
    public final C6702p m30730F(Entity[] entityArr, boolean z) {
        StringBuilder m8728C = C22128a.m8728C("_id=?");
        if (!z) {
            m8728C.append(" AND entity_info2 IN (2, 4, 5)");
        }
        String sb = m8728C.toString();
        s1.z.c.l.d(sb, "StringBuilder().apply(builderAction).toString()");
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (Entity entity : entityArr) {
            arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28296x()).withValue("entity_info2", 1).withSelection(sb, new String[]{String.valueOf(entity.f13306a)}).build());
        }
        ContentProviderResult[] m30732D = m30732D(arrayList);
        if (m30732D == null || m30732D.length != 0) {
            this.f21734g.mo11854a().mo30631c();
            return new C6702p(true, false, false, null);
        }
        return new C6702p(false, false, false, null);
    }

    /* renamed from: G */
    public final List<Uri> m30729G(long j) {
        Cursor query = this.f21728a.query(C8582g0.m28296x(), new String[]{"entity_info1"}, "\n            message_id = ?\n            AND type COLLATE NOCASE NOT IN (?, ?)\n            AND entity_info1 NOT NULL\n        ", new String[]{String.valueOf(j), "text/plain", "text/html"}, null);
        try {
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList.add(Uri.parse(query.getString(0)));
                }
            }
            th = null;
            return arrayList;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: H */
    public final List<Uri> m30728H(long j) {
        ContentResolver contentResolver = this.f21728a;
        Uri m28296x = C8582g0.m28296x();
        Cursor query = contentResolver.query(m28296x, new String[]{"entity_info5"}, "message_id = " + j + " AND type LIKE 'application/vnd.truecaller.linkpreview%' AND entity_info5 IS NOT NULL", null, null);
        try {
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList.add(Uri.parse(query.getString(0)));
                }
            }
            th = null;
            return arrayList;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0f6c, code lost:
        if (r28 != false) goto L261;
     */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0ac1  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0ac9  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0ad6  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0b06  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0b67  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0b6d  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0b7b  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0b85  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0ba9  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0bf8  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0bfd  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0c02  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0c07  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0c0c  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0c11  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0c16  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0c35  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0c76  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0d3a A[LOOP:2: B:230:0x0d30->B:232:0x0d3a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0e62  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0f83  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0fe8  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x10a6  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x10ab  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x10b1  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x10d9  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x1122  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x1136  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x11c4  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x11f4  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x1201  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x1238  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x1251  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x127a  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x127f  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x129e  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x12c5  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x13a0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x015d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x15ec  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x161b  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x1649  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x1651  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x167d  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x1685  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x171d  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0aa0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0f64 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0316  */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m30727I(com.truecaller.api.services.messenger.p138v1.events.Event r27, int r28, boolean r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 6062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6587m0.m30727I(com.truecaller.api.services.messenger.v1.events.Event, int, boolean, boolean):void");
    }

    /* renamed from: J */
    public final boolean m30726J(Participant participant) {
        String str = participant.f11570c;
        boolean z = false;
        if (str != null) {
            if (participant.f11569b == 0) {
                z = true;
            }
            String str2 = null;
            if (!z) {
                participant = null;
            }
            if (participant != null) {
                str2 = participant.f11572e;
            }
            return C12864a2.m22540r(this.f21740m.mo11854a().mo30788d(str, str2).mo11831c());
        }
        return false;
    }

    /* renamed from: K */
    public final boolean m30725K() {
        boolean z;
        String mo30993t2 = this.f21733f.mo30993t2();
        int hashCode = mo30993t2.hashCode();
        if (hashCode == -244809062) {
            z = false;
            if (mo30993t2.equals("wifiOrMobile")) {
                z = this.f21735h.mo13429d();
            }
        } else if (hashCode != 3649301) {
            z = false;
        } else {
            z = false;
            if (mo30993t2.equals(AnalyticsConstants.WIFI)) {
                z = false;
                if (this.f21735h.mo13429d()) {
                    z = false;
                    if (!this.f21735h.mo13428e()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: L */
    public final boolean m30724L(BinaryEntity binaryEntity) {
        ContentResolver contentResolver = this.f21728a;
        Uri m28296x = C8582g0.m28296x();
        s1.z.c.l.d(m28296x, "MessageEntitiesTable.getContentUri()");
        boolean z = true;
        Integer m13700D = C19286f.m13700D(contentResolver, m28296x, "edited", "_id = ?", new String[]{String.valueOf(binaryEntity.f13306a)});
        if (m13700D == null || m13700D.intValue() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: M */
    public final boolean m30723M(Event.ReactionSent reactionSent) {
        Peer recipient = reactionSent.getRecipient();
        s1.z.c.l.d(recipient, "recipient");
        boolean z = false;
        if (recipient.getTypeCase() != Peer.TypeCase.GROUP) {
            return false;
        }
        ContentResolver contentResolver = this.f21728a;
        Uri m28338C = C8582g0.m28338C();
        s1.z.c.l.d(m28338C, "ImGroupInfoTable.getContentUri()");
        Peer recipient2 = reactionSent.getRecipient();
        s1.z.c.l.d(recipient2, "recipient");
        Peer.Group group = recipient2.getGroup();
        s1.z.c.l.d(group, "recipient.group");
        String id = group.getId();
        s1.z.c.l.d(id, "recipient.group.id");
        Integer m13700D = C19286f.m13700D(contentResolver, m28338C, "notification_settings", "im_group_id = ?", new String[]{id});
        if ((m13700D != null && m13700D.intValue() == 1) || (m13700D != null && m13700D.intValue() == 2)) {
            z = true;
        }
        return z;
    }

    /* renamed from: N */
    public final void m30722N(Mention[] mentionArr, boolean z, Participant participant) {
        int i;
        if (mentionArr.length == 0) {
            return;
        }
        if (participant.f11569b == 4) {
            AbstractC6448d abstractC6448d = this.f21749v;
            String str = participant.f11572e;
            s1.z.c.l.d(str, "participant.normalizedAddress");
            i = abstractC6448d.mo30935h(str);
        } else {
            i = 2;
        }
        for (Mention mention : mentionArr) {
            String str2 = this.f21719F.mo30819b(mention.getImId()) ? "phonebook" : "publicName";
            String str3 = z ? "incoming" : "outgoing";
            AbstractC19462a abstractC19462a = this.f21737j;
            AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("ImGroupMention");
            c19504b.m13263d(AnalyticsConstants.CONTACT, str2);
            c19504b.m13263d(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, str3);
            c19504b.m13265b("numMentions", mentionArr.length);
            c19504b.m13265b("numMembers", i);
            AbstractC19502g m13266a = c19504b.m13266a();
            s1.z.c.l.d(m13266a, "AnalyticsEvent.Builder(A…                 .build()");
            abstractC19462a.mo13271e(m13266a);
        }
    }

    /* renamed from: O */
    public final void m30721O() {
        AbstractC19462a abstractC19462a = this.f21737j;
        LinkedHashMap m8655X = C22128a.m8655X("ImWithLinkReceived", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        s1.z.c.l.e("hasPreview", AnalyticsConstants.NAME);
        m8655X.put("hasPreview", String.valueOf(true));
        s1.z.c.l.e("previewNeedsFetch", AnalyticsConstants.NAME);
        m8655X.put("previewNeedsFetch", String.valueOf(false));
        s1.z.c.l.e("previewFetchLatency", AnalyticsConstants.NAME);
        linkedHashMap.put("previewFetchLatency", Double.valueOf(0));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("ImWithLinkReceived");
        m15852a.m15849c(linkedHashMap);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        s1.z.c.l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19462a.mo13275a(build);
    }

    /* renamed from: P */
    public final void m30720P(Message message, String str, boolean z) {
        boolean z2;
        Entity[] entityArr = message.f13394o;
        s1.z.c.l.d(entityArr, "message.entities");
        int length = entityArr.length;
        int i = 0;
        while (true) {
            z2 = false;
            if (i >= length) {
                break;
            } else if (entityArr[i].mo34996o()) {
                z2 = true;
                break;
            } else {
                i++;
            }
        }
        if (z2) {
            String str2 = z ? "incoming" : "outgoing";
            AbstractC19462a abstractC19462a = this.f21737j;
            LinkedHashMap m8655X = C22128a.m8655X("LocationMessagePreview", "type");
            C22128a.m8684N0("LocationMessagePreview", C22128a.m8649Z("message_id", AnalyticsConstants.NAME, str, "value", m8655X, "message_id", str, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, AnalyticsConstants.NAME, str2, "value", HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, str2), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
        }
    }

    /* renamed from: Q */
    public final void m30719Q(Event event, int i, boolean z, boolean z2) {
        Event.OriginalEvent original = event.getOriginal();
        s1.z.c.l.d(original, "event.original");
        int apiVersion = original.getApiVersion();
        if (this.f21739l.mo30755e(apiVersion)) {
            Event.OriginalEvent original2 = event.getOriginal();
            s1.z.c.l.d(original2, "event.original");
            Event parseFrom = Event.parseFrom(original2.getEvent());
            s1.z.c.l.d(parseFrom, "Event.parseFrom(event.original.event)");
            m30727I(parseFrom, i, z, z2);
            return;
        }
        this.f21741n.mo11854a().mo30604a(event, apiVersion, i);
        Event.IncompatibleEvent incompatibleEvent = event.getIncompatibleEvent();
        s1.z.c.l.d(incompatibleEvent, "event.incompatibleEvent");
        if (incompatibleEvent.getIgnorable()) {
            this.f21739l.mo30757c(apiVersion);
            this.f21733f.mo30972x3(true);
            return;
        }
        this.f21733f.mo31005r0(apiVersion);
        AbstractC19462a abstractC19462a = this.f21737j;
        LinkedHashMap m8655X = C22128a.m8655X("ImForceUpgradeEvent", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int mo30758b = this.f21739l.mo30758b();
        s1.z.c.l.e("clientVersion", AnalyticsConstants.NAME);
        linkedHashMap.put("clientVersion", Double.valueOf(mo30758b));
        s1.z.c.l.e("apiVersion", AnalyticsConstants.NAME);
        linkedHashMap.put("apiVersion", Double.valueOf(apiVersion));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("ImForceUpgradeEvent");
        m15852a.m15849c(linkedHashMap);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        s1.z.c.l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19462a.mo13275a(build);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: R */
    public final Uri m30718R(BinaryEntity binaryEntity) throws IOException {
        boolean z;
        if (!this.f21717D.mo28368c(binaryEntity.f13173i)) {
            String str = binaryEntity.f13307b;
            s1.z.c.l.e(str, "contentType");
            if (!r.n("tenor/gif", str, true)) {
                String str2 = binaryEntity.f13307b;
                s1.z.c.l.e(str2, "contentType");
                String[] strArr = Entity.f13304g;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (r.n(str2, strArr[i], true)) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
                if (!z) {
                    String str3 = binaryEntity.f13307b;
                    s1.z.c.l.e(str3, "contentType");
                    if (!r.n("application/vnd.truecaller.location", str3, true)) {
                        InputStream openInputStream = this.f21728a.openInputStream(binaryEntity.f13173i);
                        if (openInputStream == null) {
                            throw new IOException();
                        }
                        try {
                            k m15256L0 = C18334g0.m15256L0(this.f21717D, binaryEntity.f13306a, binaryEntity.f13307b, false, 0, new C6588a(openInputStream), 8, null);
                            C25225a.m4016G(openInputStream, null);
                            return (Uri) m15256L0.a;
                        } finally {
                            try {
                                throw th;
                            } catch (Throwable th) {
                            }
                        }
                    }
                }
            }
        }
        return binaryEntity.f13173i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x010f, code lost:
        if (r21 != null) goto L30;
     */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.messaging.data.types.Mention[] m30717S(com.truecaller.api.services.messenger.p138v1.models.MessageContent r12, java.util.Map<java.lang.String, com.truecaller.api.services.messenger.p138v1.models.UserInfo> r13) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6587m0.m30717S(com.truecaller.api.services.messenger.v1.models.MessageContent, java.util.Map):com.truecaller.messaging.data.types.Mention[]");
    }

    /* renamed from: T */
    public final ImTransportInfo m30716T(ImTransportInfo imTransportInfo, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("info6", Integer.valueOf(i));
        this.f21728a.update(C8582g0.m28305o(2), contentValues, "_id=?", new String[]{String.valueOf(imTransportInfo.f13728a)});
        ImTransportInfo.C4257a m34906a = imTransportInfo.m34906a();
        m34906a.f13755i = i;
        return m34906a.m34905a();
    }

    /* renamed from: U */
    public final AbstractC6696o m30715U(Message message, InputMessageContent.C3271b c3271b, InputPeer inputPeer, C6651y1 c6651y1) {
        C20458b.C20459a mo20911c;
        String str = ((ImTransportInfo) message.f13393n).f13729b;
        EditMessage.Request.C3034a newBuilder = EditMessage.Request.newBuilder();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setMessageId(str);
        InputMessageContent build = c3271b.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setContent(build);
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setRecipient(inputPeer);
        String str2 = ((ImTransportInfo) message.f13393n).f13742o;
        if (str2 != null) {
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setForwardingId(str2);
        }
        boolean z = message.f13365A;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setHidePhoneNumber(z);
        EditMessage.Request build2 = newBuilder.build();
        if (c6651y1 != null && this.f21723J.mo13874B2()) {
            Thread.sleep(5000L);
        }
        EditMessage.Response response = null;
        mo20911c = this.f21729b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a != null) {
            p3.a.d dVar = ((c) c20459a).a;
            p0<EditMessage.Request, EditMessage.Response> p0Var = C20458b.f57543x;
            p0<EditMessage.Request, EditMessage.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<EditMessage.Request, EditMessage.Response> p0Var3 = C20458b.f57543x;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "EditMessage");
                            b.e = true;
                            EditMessage.Request defaultInstance = EditMessage.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(EditMessage.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57543x = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            response = (EditMessage.Response) p3.a.q1.e.a(dVar, p0Var2, ((c) c20459a).b, build2);
        }
        if (c6651y1 != null) {
            this.f21714A.mo30680c(c6651y1);
        }
        if (response != null) {
            long j = message.f13380a;
            String str3 = ((ImTransportInfo) message.f13393n).f13729b;
            s1.z.c.l.e(str3, "rawId");
            ImTransportInfo imTransportInfo = new ImTransportInfo(j, str3, 0, 0, 0, 0, 0, 0, 0, 0L, null, 0L, 0, 0, null, null, 0, AdError.MEDIATION_ERROR_CODE, null);
            AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f21730c.get()).mo11854a();
            Message.C4209b m35024b = message.m35024b();
            m35024b.f13427g = 1;
            m35024b.f13431k = 2;
            m35024b.f13434n = imTransportInfo;
            m35024b.m35008e(Long.valueOf(message.f13380a));
            w3.b.a.b bVar = new w3.b.a.b();
            s1.z.c.l.d(bVar, "DateTime.now()");
            m35024b.f13420O = ((w3.b.a.e0.e) bVar).a;
            abstractC6233m.mo31694d0(m35024b.m35012a(), false);
            return new AbstractC6696o.C6700d(str);
        }
        return new AbstractC6696o.C6698b("INTERNAL_CLIENT.NOT_AUTHORIZED");
    }

    /* renamed from: V */
    public final AbstractC6696o m30714V(Message message, InputMessageContent.C3271b c3271b, InputPeer inputPeer, C6651y1 c6651y1) {
        C20458b.C20459a mo20911c;
        SendMessage.Response response;
        SendMessage.Request.C3100a newBuilder = SendMessage.Request.newBuilder();
        InputMessageContent build = c3271b.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setContent(build);
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setRecipient(inputPeer);
        long j = ((ImTransportInfo) message.f13393n).f13737j;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setRandomId(j);
        boolean z = message.f13365A;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setHidePhoneNumber(z);
        if (this.f21742o.m10982W().isEnabled() && this.f21733f.mo31159P3() && C10480a.m26081D1(message)) {
            Urgency urgency = Urgency.URGENT;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setUrgency(urgency);
        }
        SendMessage.Request build2 = newBuilder.build();
        if (c6651y1 != null && this.f21723J.mo13874B2()) {
            Thread.sleep(5000L);
        }
        mo20911c = this.f21729b.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a != null) {
            p3.a.d dVar = ((c) c20459a).a;
            p0<SendMessage.Request, SendMessage.Response> p0Var = C20458b.f57523d;
            p0<SendMessage.Request, SendMessage.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20458b.class) {
                    try {
                        p0<SendMessage.Request, SendMessage.Response> p0Var3 = C20458b.f57523d;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.messenger.v1.Messenger", "SendMessage");
                            b.e = true;
                            SendMessage.Request defaultInstance = SendMessage.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(SendMessage.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20458b.f57523d = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            response = (SendMessage.Response) p3.a.q1.e.a(dVar, p0Var2, ((c) c20459a).b, build2);
        } else {
            response = null;
        }
        if (c6651y1 != null) {
            this.f21714A.mo30680c(c6651y1);
        }
        if (response != null) {
            Schema schema = C17508e1.f49132e;
            C17508e1.C17510b c17510b = new C17508e1.C17510b(null);
            String messageId = response.getMessageId();
            c17510b.validate(c17510b.fields()[2], messageId);
            c17510b.f49140a = messageId;
            c17510b.fieldSetFlags()[2] = true;
            String str = message.f13396q;
            c17510b.validate(c17510b.fields()[3], str);
            c17510b.f49141b = str;
            c17510b.fieldSetFlags()[3] = true;
            this.f21736i.mo11854a().mo13111a(c17510b.build());
            String messageId2 = response.getMessageId();
            s1.z.c.l.d(messageId2, "response.messageId");
            s1.z.c.l.e(messageId2, "rawId");
            ImTransportInfo imTransportInfo = new ImTransportInfo(message.f13380a, messageId2, C10480a.m25931m(message), 2, 2, 0, 0, 0, 0, 0L, null, 0L, 0, 0, response.getForwardingId(), null, 0, 1, null);
            AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f21730c.get()).mo11854a();
            Message.C4209b m35024b = message.m35024b();
            m35024b.f13431k = 2;
            m35024b.f13434n = imTransportInfo;
            m35024b.f13408C = response.getSeq();
            m35024b.f13427g = 1;
            abstractC6233m.mo31694d0(m35024b.m35012a(), false);
            Mention[] mentionArr = message.f13395p;
            s1.z.c.l.d(mentionArr, "message.mentions");
            Participant participant = message.f13382c;
            s1.z.c.l.d(participant, "message.participant");
            m30722N(mentionArr, false, participant);
            String messageId3 = response.getMessageId();
            s1.z.c.l.d(messageId3, "response.messageId");
            m30720P(message, messageId3, false);
            return new AbstractC6696o.C6700d(response.getMessageId());
        }
        return new AbstractC6696o.C6698b("INTERNAL_CLIENT.NOT_AUTHORIZED");
    }

    /* renamed from: W */
    public final C6651y1 m30713W(Message message, BinaryEntity binaryEntity, boolean z) {
        InputUserTypingKind inputUserTypingKind;
        if (binaryEntity.mo34892w()) {
            inputUserTypingKind = z ? InputUserTypingKind.VIDEO_UPLOADING : InputUserTypingKind.VIDEO;
        } else if (binaryEntity.mo34896e()) {
            inputUserTypingKind = InputUserTypingKind.VOICE_SENDING;
        } else if (binaryEntity.mo34999h()) {
            inputUserTypingKind = z ? InputUserTypingKind.ANIMATION_UPLOADING : InputUserTypingKind.ANIMATION;
        } else if (binaryEntity.mo34895l()) {
            inputUserTypingKind = z ? InputUserTypingKind.IMAGE_UPLOADING : InputUserTypingKind.IMAGE;
        } else if (binaryEntity.f13184t) {
            inputUserTypingKind = z ? InputUserTypingKind.FILE_UPLOADING : InputUserTypingKind.FILE;
        } else if (!binaryEntity.mo34893t()) {
            return null;
        } else {
            inputUserTypingKind = z ? InputUserTypingKind.VCARD_UPLOADING : InputUserTypingKind.VCARD;
        }
        AbstractC6601p0 abstractC6601p0 = this.f21714A;
        Participant participant = message.f13382c;
        s1.z.c.l.d(participant, "message.participant");
        return abstractC6601p0.mo30679d(participant, message.f13365A, inputUserTypingKind);
    }

    /* renamed from: X */
    public final void m30712X(ArrayList<ContentProviderOperation> arrayList, long j, Mention[] mentionArr) {
        s1.z.c.l.e(arrayList, "operations");
        s1.z.c.l.e(mentionArr, "mentions");
        for (Mention mention : mentionArr) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("im_id", mention.getImId());
            contentValues.put("m_offset", Integer.valueOf(mention.getOffset()));
            contentValues.put("m_length", Integer.valueOf(mention.getLength()));
            contentValues.put("public_name", mention.getPublicName());
            contentValues.put("private_name", mention.getPrivateName());
            contentValues.put("message_id", Long.valueOf(j));
            arrayList.add(ContentProviderOperation.newInsert(C8582g0.m28301s()).withValues(contentValues).build());
        }
    }

    /* renamed from: Y */
    public final void m30711Y(ArrayList<ContentProviderOperation> arrayList, long j, Entity[] entityArr) {
        Uri uri;
        s1.z.c.l.e(arrayList, "operations");
        s1.z.c.l.e(entityArr, "entities");
        ArrayList arrayList2 = new ArrayList(entityArr.length);
        for (Entity entity : entityArr) {
            ContentValues contentValues = new ContentValues();
            entity.mo34994c(contentValues);
            if (!entity.mo34894r()) {
                contentValues.put("entity_info1", Uri.EMPTY.toString());
            }
            int size = arrayList.size();
            arrayList.add(ContentProviderOperation.newInsert(C8582g0.m28296x()).withValues(contentValues).withValue("message_id", Long.valueOf(j)).build());
            arrayList2.add(new k(entity, Integer.valueOf(size)));
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList2.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            Entity entity2 = (Entity) ((k) next).a;
            if (!(entity2 instanceof BinaryEntity) || entity2.mo34997n()) {
                z = false;
            }
            if (z) {
                arrayList3.add(next);
            }
        }
        ArrayList arrayList4 = new ArrayList(C25225a.m4004J(arrayList3, 10));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            k kVar = (k) it2.next();
            Entity entity3 = (Entity) kVar.a;
            int intValue = ((Number) kVar.b).intValue();
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_attachments"));
            Objects.requireNonNull(entity3, "null cannot be cast to non-null type com.truecaller.messaging.data.types.BinaryEntity");
            BinaryEntity binaryEntity = (BinaryEntity) entity3;
            ContentProviderOperation.Builder withValue = newInsert.withValue("uri", binaryEntity.f13173i.toString());
            if (binaryEntity instanceof ImageEntity) {
                uri = ((ImageEntity) binaryEntity).f13349x;
            } else if (binaryEntity instanceof VideoEntity) {
                uri = ((VideoEntity) binaryEntity).f13483y;
            } else {
                String str = binaryEntity.f13307b;
                s1.z.c.l.e(str, "contentType");
                uri = (r.n("tenor/gif", str, true) || !(binaryEntity instanceof GifEntity)) ? null : ((GifEntity) binaryEntity).f13349x;
            }
            byte[] bArr = null;
            if (uri != null) {
                try {
                    InputStream openInputStream = this.f21728a.openInputStream(uri);
                    bArr = null;
                    if (openInputStream != null) {
                        BufferedInputStream bufferedInputStream = openInputStream instanceof BufferedInputStream ? (BufferedInputStream) openInputStream : new BufferedInputStream(openInputStream, 8192);
                        bArr = C25225a.m3838t2(bufferedInputStream);
                        C25225a.m4016G(bufferedInputStream, null);
                    }
                } catch (IOException e) {
                    bArr = null;
                }
            }
            arrayList4.add(withValue.withValue("thumbnail", bArr).withValueBackReference("entity_id", intValue).build());
        }
        s1.u.i.P0(arrayList4, arrayList);
    }

    /* renamed from: Z */
    public final C6702p m30710Z(Message message) {
        List<Uri> list;
        boolean z;
        TransportInfo transportInfo = message.f13393n;
        s1.z.c.l.d(transportInfo, "message.getTransportInfo<ImTransportInfo>()");
        ImTransportInfo imTransportInfo = (ImTransportInfo) transportInfo;
        Cursor query = this.f21728a.query(C8582g0.m28305o(2), new String[]{"_id", "info7"}, "raw_id = ?", new String[]{imTransportInfo.f13729b}, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long j = query.getLong(query.getColumnIndexOrThrow("_id"));
                    boolean z2 = query.getLong(query.getColumnIndexOrThrow("info7")) > 0;
                    ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                    if (z2) {
                        list = m30729G(j);
                        arrayList.add(ContentProviderOperation.newDelete(C8582g0.m28296x()).withSelection("message_id=?", new String[]{String.valueOf(j)}).build());
                        Entity[] entityArr = message.f13394o;
                        s1.z.c.l.d(entityArr, "message.entities");
                        m30711Y(arrayList, j, entityArr);
                        arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28305o(2)).withSelection("_id=?", new String[]{String.valueOf(message.f13380a)}).withValue("info7", Integer.valueOf(imTransportInfo.f13736i)).build());
                    } else {
                        Entity[] entityArr2 = message.f13394o;
                        s1.z.c.l.d(entityArr2, "message.entities");
                        int length = entityArr2.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = false;
                                break;
                            } else if (entityArr2[i].mo34997n()) {
                                z = true;
                                break;
                            } else {
                                i++;
                            }
                        }
                        if (z) {
                            list = m30728H(j);
                            Entity[] entityArr3 = message.f13394o;
                            s1.z.c.l.d(entityArr3, "message.entities");
                            ArrayList arrayList2 = new ArrayList();
                            for (Entity entity : entityArr3) {
                                if (entity.mo34997n()) {
                                    arrayList2.add(entity);
                                }
                            }
                            Object[] array = arrayList2.toArray(new Entity[0]);
                            if (array == null) {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                            }
                            m30711Y(arrayList, j, (Entity[]) array);
                        } else {
                            list = null;
                        }
                        if (message.f13366B > 0) {
                            arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28305o(2)).withSelection("raw_id=?", new String[]{imTransportInfo.f13729b}).withValue("reply_to_msg_id", Long.valueOf(message.f13366B)).build());
                        }
                        arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28296x()).withSelection("message_id=? AND entity_info2=?", new String[]{String.valueOf(j), "5"}).withValue("entity_info2", Integer.valueOf((!m30725K() || !m30731E(null)) ? 4 : 1)).build());
                    }
                    ContentProviderResult[] m30732D = m30732D(arrayList);
                    if (m30732D != null) {
                        if (!(m30732D.length == 0)) {
                            if (z2 && list != null) {
                                for (Uri uri : list) {
                                    C19286f.m13693K(this.f21728a, uri);
                                }
                            }
                            this.f21734g.mo11854a().mo30631c();
                            th = null;
                            return new C6702p(true, false, false, null);
                        }
                    }
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return new C6702p(false, false, false, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x0a2e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0482  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x05cd  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x061e  */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p244k.C6702p mo15185a(com.truecaller.messaging.data.types.Message r19) {
        /*
            Method dump skipped, instructions count: 2673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6587m0.mo15185a(com.truecaller.messaging.data.types.Message):e.a.a.k.p");
    }

    /* renamed from: a0 */
    public final Participant m30709a0(Participant participant) {
        int i;
        Participant participant2 = participant;
        if (participant.m35448l()) {
            String str = participant.f11570c;
            if (str != null) {
                ContentResolver contentResolver = this.f21728a;
                Uri m15709b = C17891a1.C17892a.m15709b();
                s1.z.c.l.d(m15709b, "AggregatedContactTable.getContentUri()");
                s1.z.c.l.d(str, "it");
                Integer m13700D = C19286f.m13700D(contentResolver, m15709b, "contact_badges", "contact_im_id=?", new String[]{str});
                if (m13700D != null) {
                    i = m13700D.intValue();
                    Participant.C3848b m35454e = participant.m35454e();
                    m35454e.f11615v = i;
                    participant2 = m35454e.m35443a();
                    s1.z.c.l.d(participant2, "buildUpon().setBadges(badges).build()");
                }
            }
            i = participant.f11585r;
            Participant.C3848b m35454e2 = participant.m35454e();
            m35454e2.f11615v = i;
            participant2 = m35454e2.m35443a();
            s1.z.c.l.d(participant2, "buildUpon().setBadges(badges).build()");
        }
        return participant2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04a5  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0831 A[Catch: RuntimeException -> 0x092a, i1 -> 0x0937, c2 -> 0x0acc, CancellationException -> 0x0aed, TRY_ENTER, TryCatch #12 {c2 -> 0x0acc, blocks: (B:231:0x0811, B:238:0x0831, B:240:0x083e, B:248:0x0888, B:250:0x089b, B:252:0x08a7, B:253:0x08ba, B:256:0x08c8, B:261:0x08f6, B:263:0x08fe, B:265:0x0919, B:275:0x0943, B:276:0x094b, B:277:0x0951, B:278:0x09d1, B:280:0x09dd, B:282:0x09ec, B:284:0x09f8, B:286:0x0a07, B:288:0x0a0f, B:290:0x0a1e, B:295:0x0a4c, B:297:0x0a54, B:298:0x0a5c, B:299:0x0a62, B:302:0x0a75, B:304:0x0a80, B:306:0x0a86, B:308:0x0a98, B:312:0x0aa9), top: B:384:0x0811 }] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x08a7 A[Catch: RuntimeException -> 0x092a, i1 -> 0x0937, c2 -> 0x0acc, CancellationException -> 0x0aed, LOOP:4: B:249:0x0899->B:252:0x08a7, LOOP_END, TRY_ENTER, TRY_LEAVE, TryCatch #12 {c2 -> 0x0acc, blocks: (B:231:0x0811, B:238:0x0831, B:240:0x083e, B:248:0x0888, B:250:0x089b, B:252:0x08a7, B:253:0x08ba, B:256:0x08c8, B:261:0x08f6, B:263:0x08fe, B:265:0x0919, B:275:0x0943, B:276:0x094b, B:277:0x0951, B:278:0x09d1, B:280:0x09dd, B:282:0x09ec, B:284:0x09f8, B:286:0x0a07, B:288:0x0a0f, B:290:0x0a1e, B:295:0x0a4c, B:297:0x0a54, B:298:0x0a5c, B:299:0x0a62, B:302:0x0a75, B:304:0x0a80, B:306:0x0a86, B:308:0x0a98, B:312:0x0aa9), top: B:384:0x0811 }] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x08c8 A[Catch: RuntimeException -> 0x092a, i1 -> 0x0937, c2 -> 0x0acc, CancellationException -> 0x0aed, TRY_ENTER, TRY_LEAVE, TryCatch #12 {c2 -> 0x0acc, blocks: (B:231:0x0811, B:238:0x0831, B:240:0x083e, B:248:0x0888, B:250:0x089b, B:252:0x08a7, B:253:0x08ba, B:256:0x08c8, B:261:0x08f6, B:263:0x08fe, B:265:0x0919, B:275:0x0943, B:276:0x094b, B:277:0x0951, B:278:0x09d1, B:280:0x09dd, B:282:0x09ec, B:284:0x09f8, B:286:0x0a07, B:288:0x0a0f, B:290:0x0a1e, B:295:0x0a4c, B:297:0x0a54, B:298:0x0a5c, B:299:0x0a62, B:302:0x0a75, B:304:0x0a80, B:306:0x0a86, B:308:0x0a98, B:312:0x0aa9), top: B:384:0x0811 }] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0943 A[Catch: RuntimeException -> 0x092a, i1 -> 0x0937, c2 -> 0x0acc, CancellationException -> 0x0aed, TRY_ENTER, TryCatch #12 {c2 -> 0x0acc, blocks: (B:231:0x0811, B:238:0x0831, B:240:0x083e, B:248:0x0888, B:250:0x089b, B:252:0x08a7, B:253:0x08ba, B:256:0x08c8, B:261:0x08f6, B:263:0x08fe, B:265:0x0919, B:275:0x0943, B:276:0x094b, B:277:0x0951, B:278:0x09d1, B:280:0x09dd, B:282:0x09ec, B:284:0x09f8, B:286:0x0a07, B:288:0x0a0f, B:290:0x0a1e, B:295:0x0a4c, B:297:0x0a54, B:298:0x0a5c, B:299:0x0a62, B:302:0x0a75, B:304:0x0a80, B:306:0x0a86, B:308:0x0a98, B:312:0x0aa9), top: B:384:0x0811 }] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x09dd A[Catch: RuntimeException -> 0x092a, i1 -> 0x0937, c2 -> 0x0acc, CancellationException -> 0x0aed, TRY_ENTER, TRY_LEAVE, TryCatch #12 {c2 -> 0x0acc, blocks: (B:231:0x0811, B:238:0x0831, B:240:0x083e, B:248:0x0888, B:250:0x089b, B:252:0x08a7, B:253:0x08ba, B:256:0x08c8, B:261:0x08f6, B:263:0x08fe, B:265:0x0919, B:275:0x0943, B:276:0x094b, B:277:0x0951, B:278:0x09d1, B:280:0x09dd, B:282:0x09ec, B:284:0x09f8, B:286:0x0a07, B:288:0x0a0f, B:290:0x0a1e, B:295:0x0a4c, B:297:0x0a54, B:298:0x0a5c, B:299:0x0a62, B:302:0x0a75, B:304:0x0a80, B:306:0x0a86, B:308:0x0a98, B:312:0x0aa9), top: B:384:0x0811 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x09ec A[Catch: c2 -> 0x0acc, RuntimeException -> 0x0ad0, i1 -> 0x0ade, CancellationException -> 0x0aed, TRY_ENTER, TRY_LEAVE, TryCatch #7 {RuntimeException -> 0x0ad0, blocks: (B:248:0x0888, B:250:0x089b, B:253:0x08ba, B:278:0x09d1, B:282:0x09ec, B:286:0x0a07, B:288:0x0a0f), top: B:377:0x0888 }] */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0bce  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x051e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x047e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x0877 A[EDGE_INSN: B:413:0x0877->B:247:0x0877 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x094b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02ae  */
    /* JADX WARN: Type inference failed for: r0v408, types: [e.a.a.k.a.y1] */
    /* JADX WARN: Type inference failed for: r0v417, types: [e.a.a.k.a.p0] */
    /* JADX WARN: Type inference failed for: r0v472, types: [e.a.a.k.a.p0] */
    /* JADX WARN: Type inference failed for: r0v502, types: [e.a.a.k.a.p0] */
    /* JADX WARN: Type inference failed for: r1v107, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r24v0, types: [e.a.a.k.a.m0] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p244k.AbstractC6696o mo15184b(com.truecaller.messaging.data.types.Message r25) {
        /*
            Method dump skipped, instructions count: 3230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6587m0.mo15184b(com.truecaller.messaging.data.types.Message):e.a.a.k.o");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: c */
    public int mo15183c(Message message) {
        s1.z.c.l.e(message, "message");
        return 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: d */
    public boolean mo15182d(Message message, Entity entity, boolean z) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(entity, "entity");
        AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f21730c.get()).mo11854a();
        Message.C4209b m35024b = message.m35024b();
        m35024b.m35011b();
        m35024b.m35006g(entity);
        ImTransportInfo imTransportInfo = new ImTransportInfo(0L, "", 0, 0, 0, 0, 0, 0, 0, 0L, null, 0L, 0, 0, null, null, 0, z ? 8 : 4, null);
        m35024b.f13431k = 2;
        m35024b.f13434n = imTransportInfo;
        abstractC6233m.mo31694d0(m35024b.m35012a(), false);
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: e */
    public boolean mo15181e(Message message) {
        s1.z.c.l.e(message, "message");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: f */
    public boolean mo15180f(Message message, Entity entity) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(entity, "entity");
        AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f21730c.get()).mo11854a();
        Message.C4209b m35024b = message.m35024b();
        m35024b.m35011b();
        m35024b.m35006g(entity);
        ImTransportInfo imTransportInfo = new ImTransportInfo(0L, "", 0, 0, 0, 0, 0, 0, 0, 0L, null, 0L, 0, 0, null, null, 0, 7, null);
        m35024b.f13431k = 2;
        m35024b.f13434n = imTransportInfo;
        abstractC6233m.mo31694d0(m35024b.m35012a(), false);
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: g */
    public boolean mo15179g() {
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public String getName() {
        return "im";
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return 2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(w3.b.a.b bVar) {
        s1.z.c.l.e(bVar, "time");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: i */
    public boolean mo15178i(Message message) {
        s1.z.c.l.e(message, "message");
        if (this.f21739l.mo30754f()) {
            return false;
        }
        return message.m35020f();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: j */
    public w3.b.a.b mo14985j() {
        w3.b.a.b bVar = new w3.b.a.b();
        s1.z.c.l.d(bVar, "DateTime.now()");
        return bVar;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: k */
    public long mo15177k(long j) {
        return j;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: l */
    public String mo15176l(String str) {
        s1.z.c.l.e(str, "simToken");
        return "-1";
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: m */
    public long mo14984m(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, w3.b.a.b bVar, w3.b.a.b bVar2, int i, List<ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d) {
        s1.z.c.l.e(abstractC6691j, "threadInfoCache");
        s1.z.c.l.e(abstractC6694m, "participantCache");
        s1.z.c.l.e(abstractC6139g0, "cursor");
        s1.z.c.l.e(bVar, "timeTo");
        s1.z.c.l.e(bVar2, "timeFrom");
        s1.z.c.l.e(list, "operations");
        s1.z.c.l.e(abstractC19244l0, "trace");
        s1.z.c.l.e(c10545d, "messagesToClassify");
        return Long.MIN_VALUE;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: n */
    public boolean mo15175n(C6713w c6713w) {
        boolean z;
        s1.z.c.l.e(c6713w, "transaction");
        if (!c6713w.mo30534c()) {
            String str = c6713w.f22101a;
            Uri uri = C17891a1.f50888a;
            if (s1.z.c.l.a(str, "com.truecaller")) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: o */
    public boolean mo15174o(TransportInfo transportInfo, C6593n0 c6593n0, boolean z, Set set) {
        C6593n0 c6593n02 = c6593n0;
        s1.z.c.l.e(transportInfo, "info");
        s1.z.c.l.e(c6593n02, "transaction");
        s1.z.c.l.e(set, "messagesToDelete");
        c6593n02.m30536a(c6593n02.m30533d(C8582g0.m28340A(transportInfo.mo34879u())).m30531a());
        List<Uri> m30729G = m30729G(transportInfo.mo34879u());
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) m30729G).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            boolean z2 = true;
            if (this.f21717D.mo28370a((Uri) next)) {
                z2 = z;
            }
            if (z2) {
                arrayList.add(next);
            }
        }
        s1.z.c.l.e(arrayList, "uris");
        s1.u.i.b(c6593n02.f21767d, arrayList);
        set.add(Long.valueOf(transportInfo.mo34879u()));
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: p */
    public boolean mo15173p(C6593n0 c6593n0) {
        int i;
        C6593n0 c6593n02 = c6593n0;
        s1.z.c.l.e(c6593n02, "transaction");
        List<C6613r> list = c6593n02.f21768e;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Long valueOf = Long.valueOf(((C6613r) obj).f21851b);
            Object obj2 = linkedHashMap.get(valueOf);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(valueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        Collection values = linkedHashMap.values();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = values.iterator();
        while (true) {
            boolean z = false;
            if (!it.hasNext()) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    k kVar = (k) it2.next();
                    boolean booleanValue = ((Boolean) kVar.a).booleanValue();
                    C6613r c6613r = (C6613r) kVar.b;
                    if (booleanValue) {
                        c6593n02.f21769f.add(Long.valueOf(c6613r.f21850a));
                        i = 2;
                    } else {
                        i = 5;
                    }
                    int i2 = i;
                    C6713w.C6715b.C6716a m30532e = c6593n02.m30532e(C8582g0.m28305o(2));
                    long j = c6613r.f21850a;
                    m30532e.f22111d = "_id=?";
                    m30532e.f22112e = new String[]{String.valueOf(j)};
                    m30532e.f22110c.put("info4", Integer.valueOf(i2));
                    w3.b.a.b bVar = new w3.b.a.b();
                    s1.z.c.l.d(bVar, "DateTime.now()");
                    m30532e.f22110c.put("info10", Long.valueOf(((w3.b.a.e0.e) bVar).a));
                    c6593n02.m30536a(m30532e.m30531a());
                }
                ContentProviderResult[] mo30530a = this.f21732e.mo30530a(c6593n02);
                s1.z.c.l.d(mo30530a, "transactionExecutor.execute(transaction)");
                if (!(mo30530a.length == 0)) {
                    for (Uri uri : c6593n02.f21767d) {
                        C19286f.m13693K(this.f21728a, uri);
                    }
                    for (Number number : c6593n02.f21769f) {
                        this.f21751x.mo30860b(InputReportType.READ, number.longValue());
                    }
                    z = true;
                }
                return z;
            }
            List F0 = s1.u.i.F0((List) it.next(), new C6572i0());
            ArrayList arrayList3 = new ArrayList(C25225a.m4004J(F0, 10));
            int i3 = 0;
            for (Object obj3 : F0) {
                if (i3 < 0) {
                    s1.u.i.N0();
                    throw null;
                }
                arrayList3.add(new k(Boolean.valueOf(i3 == 0), (C6613r) obj3));
                i3++;
            }
            s1.u.i.b(arrayList2, arrayList3);
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: q */
    public void mo15172q(BinaryEntity binaryEntity) {
        List<f> unmodifiableList;
        List<f> unmodifiableList2;
        s1.z.c.l.e(binaryEntity, "entity");
        if (binaryEntity.mo34892w()) {
            this.f21744q.mo14224b(binaryEntity);
        }
        C6579k c6579k = (C6579k) this.f21738k;
        Objects.requireNonNull(c6579k);
        s1.z.c.l.e(binaryEntity, "entity");
        long j = binaryEntity.f13306a;
        e0 e0Var = c6579k.f21688c;
        Long valueOf = Long.valueOf(j);
        u3.r rVar = e0Var.a;
        synchronized (rVar) {
            ArrayDeque<e.a> arrayDeque = rVar.b;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(arrayDeque, 10));
            for (e.a aVar : arrayDeque) {
                arrayList.add(aVar.c);
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
            s1.z.c.l.b(unmodifiableList, "Collections.unmodifiable…yncCalls.map { it.call })");
        }
        for (f fVar : unmodifiableList) {
            if (s1.z.c.l.a(fVar.request().c(), valueOf)) {
                fVar.cancel();
            }
        }
        u3.r rVar2 = e0Var.a;
        synchronized (rVar2) {
            ArrayDeque arrayDeque2 = rVar2.d;
            ArrayDeque<e.a> arrayDeque3 = rVar2.c;
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayDeque3, 10));
            for (e.a aVar2 : arrayDeque3) {
                arrayList2.add(aVar2.c);
            }
            unmodifiableList2 = Collections.unmodifiableList(s1.u.i.l0(arrayDeque2, arrayList2));
            s1.z.c.l.b(unmodifiableList2, "Collections.unmodifiable…yncCalls.map { it.call })");
        }
        for (f fVar2 : unmodifiableList2) {
            if (s1.z.c.l.a(fVar2.request().c(), valueOf)) {
                fVar2.cancel();
            }
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: r */
    public boolean mo15171r() {
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: s */
    public boolean mo15170s(Message message, int i, C6593n0 c6593n0) {
        C6593n0 c6593n02 = c6593n0;
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(c6593n02, "transaction");
        C6713w.C6715b.C6716a m30532e = c6593n02.m30532e(C8582g0.m28340A(message.f13380a));
        m30532e.f22110c.put(UpdateKey.STATUS, Integer.valueOf(i));
        c6593n02.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: t */
    public void mo15169t(long j) {
        C26842r.C26843a m1268f = new C26842r.C26843a(RetryImMessageWorker.class).m1268f(Math.max(j - System.currentTimeMillis(), 0L), TimeUnit.MILLISECONDS);
        HashMap hashMap = new HashMap();
        hashMap.put("to_date", Long.valueOf(j));
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        m1268f.f75127c.f74906e = c26829f;
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        m1268f.f75127c.f74911j = new C26825d(c26826a);
        C26842r m1272b = m1268f.m1272b();
        s1.z.c.l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        this.f21747t.m1279i("RetryImMessage", EnumC26832h.REPLACE, m1272b);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: u */
    public boolean mo15168u(TransportInfo transportInfo, long j, long j2, C6593n0 c6593n0, boolean z) {
        boolean z2;
        C6593n0 c6593n02 = c6593n0;
        s1.z.c.l.e(transportInfo, "info");
        s1.z.c.l.e(c6593n02, "transaction");
        if (!(transportInfo instanceof ImTransportInfo)) {
            AssertionUtil.AlwaysFatal.fail("Wrong transport info type");
            z2 = false;
        } else {
            ImTransportInfo imTransportInfo = (ImTransportInfo) transportInfo;
            C6713w.C6715b.C6716a m30532e = c6593n02.m30532e(C8582g0.m28340A(imTransportInfo.f13728a));
            m30532e.f22110c.put("read", (Integer) 1);
            if (z) {
                m30532e.f22110c.put("seen", (Integer) 1);
            }
            c6593n02.m30536a(m30532e.m30531a());
            int i = imTransportInfo.f13730c;
            if ((i & 1) == 0 && imTransportInfo.f13734g != 5) {
                if ((i & 2) == 0) {
                    C6713w.C6715b.C6716a m30532e2 = c6593n02.m30532e(C8582g0.m28305o(2));
                    long j3 = imTransportInfo.f13728a;
                    m30532e2.f22111d = "_id=?";
                    m30532e2.f22112e = new String[]{String.valueOf(j3)};
                    m30532e2.f22110c.put("info4", (Integer) 2);
                    w3.b.a.b bVar = new w3.b.a.b();
                    s1.z.c.l.d(bVar, "DateTime.now()");
                    m30532e2.f22110c.put("info10", Long.valueOf(((w3.b.a.e0.e) bVar).a));
                    c6593n02.m30536a(m30532e2.m30531a());
                    c6593n02.f21769f.add(Long.valueOf(imTransportInfo.f13728a));
                } else {
                    c6593n02.f21768e.add(new C6613r(imTransportInfo.f13728a, j, j2));
                }
                this.f21733f.mo31096c(new w3.b.a.b());
            }
            z2 = true;
        }
        return z2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: v */
    public boolean mo15167v(Message message) {
        boolean z;
        s1.z.c.l.e(message, "message");
        if (mo15178i(message)) {
            Participant participant = message.f13382c;
            s1.z.c.l.d(participant, "message.participant");
            if (mo15165x(participant)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: w */
    public C6593n0 mo15166w() {
        return new C6593n0();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: x */
    public boolean mo15165x(Participant participant) {
        s1.z.c.l.e(participant, "participant");
        boolean z = false;
        if (this.f21739l.mo30754f()) {
            return false;
        }
        if (participant.m35450i() || participant.f11569b == 4) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: y */
    public boolean mo15164y(TransportInfo transportInfo, C6593n0 c6593n0) {
        C6593n0 c6593n02 = c6593n0;
        s1.z.c.l.e(transportInfo, "info");
        s1.z.c.l.e(c6593n02, "transaction");
        C6713w.C6715b.C6716a m30532e = c6593n02.m30532e(C8582g0.m28340A(transportInfo.mo34879u()));
        m30532e.f22110c.put("seen", (Integer) 1);
        c6593n02.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: z */
    public boolean mo15163z(String str, C6676e c6676e) {
        s1.z.c.l.e(str, "text");
        s1.z.c.l.e(c6676e, "result");
        c6676e.m30585a(0, 0, 0, 2);
        return false;
    }
}
