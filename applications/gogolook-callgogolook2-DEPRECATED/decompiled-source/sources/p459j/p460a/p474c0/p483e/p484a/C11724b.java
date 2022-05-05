package p459j.p460a.p474c0.p483e.p484a;

import androidx.annotation.WorkerThread;
import gogolook.callgogolook2.gson.SmsScanConfig;
import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p572v0.AbstractC13701b;
import p459j.p460a.p572v0.p573c.AbstractC13717l;
import p459j.p460a.p572v0.p574d.C13724a;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p589f5.C14005a;
import p626l.C14989s;
import p626l.p632u.C15021m;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ8\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u0013H\u0002J'\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0097@ø\u0001��¢\u0006\u0002\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH\u0097@ø\u0001��¢\u0006\u0002\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0015H\u0097@ø\u0001��¢\u0006\u0002\u0010!R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanRepositoryImpl;", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanRepository;", "urlScanner", "Lgogolook/callgogolook2/urlscan/UrlScanner;", "urlScanRemoteConfigDataSource", "Lgogolook/callgogolook2/urlscan/data/UrlScanRemoteConfigDataSource;", "smsUrlScanResultLocalDataSource", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResultLocalDataSource;", "(Lgogolook/callgogolook2/urlscan/UrlScanner;Lgogolook/callgogolook2/urlscan/data/UrlScanRemoteConfigDataSource;Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResultLocalDataSource;)V", "buildUrlScanRequest", "Lgogolook/callgogolook2/urlscan/request/ScanRequest;", "url", "", "senderAddress", "urlPatternConfig", "Lgogolook/callgogolook2/gson/SmsScanConfig;", "maxRedirectCheckTimes", "", "adoptedSources", "", "getResultsByTimeRange", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResult;", "startTimestamp", "", "endTimestamp", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "scan", "message", "Lgogolook/callgogolook2/messaging/scan/data/SmsMessage;", "(Lgogolook/callgogolook2/messaging/scan/data/SmsMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "storeResult", "", "result", "(Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.a.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/a/b.class */
public final class C11724b implements AbstractC11723a {

    /* renamed from: a */
    public final AbstractC13701b f26298a;

    /* renamed from: b */
    public final AbstractC13717l f26299b;

    /* renamed from: c */
    public final AbstractC11727d f26300c;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/data/SmsUrlScanRepositoryImpl", m472f = "SmsUrlScanRepository.kt", m471l = {48, 58}, m470m = "scan")
    /* renamed from: j.a.c0.e.a.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/a/b$a.class */
    public static final class C11725a extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f26301a;

        /* renamed from: b */
        public int f26302b;

        /* renamed from: d */
        public Object f26304d;

        /* renamed from: e */
        public Object f26305e;

        /* renamed from: f */
        public Object f26306f;

        /* renamed from: g */
        public Object f26307g;

        /* renamed from: h */
        public Object f26308h;

        /* renamed from: i */
        public Object f26309i;

        /* renamed from: j */
        public Object f26310j;

        /* renamed from: k */
        public Object f26311k;

        /* renamed from: l */
        public Object f26312l;

        /* renamed from: m */
        public int f26313m;

        /* renamed from: n */
        public int f26314n;

        public C11725a(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f26301a = obj;
            this.f26302b |= Integer.MIN_VALUE;
            return C11724b.this.mo8416a((SmsMessage) null, this);
        }
    }

    public C11724b(AbstractC13701b bVar, AbstractC13717l lVar, AbstractC11727d dVar) {
        C15149k.m377b(bVar, "urlScanner");
        C15149k.m377b(lVar, "urlScanRemoteConfigDataSource");
        C15149k.m377b(dVar, "smsUrlScanResultLocalDataSource");
        this.f26298a = bVar;
        this.f26299b = lVar;
        this.f26300c = dVar;
    }

    /* renamed from: a */
    public final C13724a m8414a(String str, String str2, SmsScanConfig smsScanConfig, int i, List<String> list) {
        C13724a.C13725a aVar = new C13724a.C13725a(str);
        aVar.m3591a(i);
        List<String> list2 = null;
        List<String> b = smsScanConfig != null ? smsScanConfig.m28186b() : null;
        if (b == null) {
            b = C15021m.m565a();
        }
        aVar.m3587b(b);
        if (smsScanConfig != null) {
            list2 = smsScanConfig.m28184d();
        }
        if (list2 == null) {
            list2 = C15021m.m565a();
        }
        aVar.m3586c(list2);
        aVar.m3588a(list);
        C14005a.C14007b bVar = new C14005a.C14007b(2, 0, 0, null, null, null, null, 0, 0, 0L, null, 2046, null);
        bVar.m2858d(str2);
        String l = C14108o4.m2474l(str2);
        C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(senderAddress)");
        bVar.m2861c(l);
        aVar.m3589a(bVar);
        return aVar.m3592a();
    }

    @Override // p459j.p460a.p474c0.p483e.p484a.AbstractC11723a
    @WorkerThread
    /* renamed from: a */
    public Object mo8417a(long j, long j2, AbstractC15044d<? super List<C11726c>> dVar) {
        return this.f26300c.mo8408a(j, j2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0227  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x01d9 -> B:31:0x01e1). Please submit an issue!!! */
    @Override // p459j.p460a.p474c0.p483e.p484a.AbstractC11723a
    @androidx.annotation.WorkerThread
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo8416a(gogolook.callgogolook2.messaging.scan.data.SmsMessage r8, p626l.p634w.AbstractC15044d<? super p459j.p460a.p474c0.p483e.p484a.C11726c> r9) {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p483e.p484a.C11724b.mo8416a(gogolook.callgogolook2.messaging.scan.data.SmsMessage, l.w.d):java.lang.Object");
    }

    @Override // p459j.p460a.p474c0.p483e.p484a.AbstractC11723a
    @WorkerThread
    /* renamed from: a */
    public Object mo8415a(C11726c cVar, AbstractC15044d<? super C14989s> dVar) {
        this.f26300c.mo8407a(cVar);
        return C14989s.f33022a;
    }
}
