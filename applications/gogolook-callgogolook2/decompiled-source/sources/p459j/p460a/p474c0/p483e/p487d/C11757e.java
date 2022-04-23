package p459j.p460a.p474c0.p483e.p487d;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import com.mopub.common.Constants;
import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import gogolook.callgogolook2.p074ad.AdRequestState;
import gogolook.callgogolook2.p074ad.AdRequestingRepo;
import gogolook.callgogolook2.p074ad.AdUnit;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p474c0.p483e.p484a.C11726c;
import p459j.p460a.p474c0.p483e.p485b.AbstractC11735d;
import p459j.p460a.p474c0.p483e.p485b.C11731b;
import p459j.p460a.p474c0.p483e.p485b.C11739e;
import p459j.p460a.p474c0.p483e.p485b.C11740f;
import p459j.p460a.p474c0.p483e.p485b.C11742g;
import p459j.p460a.p474c0.p483e.p487d.AbstractC11765h;
import p459j.p460a.p474c0.p483e.p487d.AbstractC11799s;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p572v0.p573c.EnumC13715k;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p612z.C14596a;
import p626l.C14978j;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p632u.C15021m;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p655o.C15254h;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\u0018�� j2\u00020\u0001:\u0001jB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001a\u0010I\u001a\u0004\u0018\u00010J2\u0006\u0010K\u001a\u00020\u001b2\u0006\u0010L\u001a\u00020MH\u0002J\b\u0010N\u001a\u00020OH\u0002J\b\u0010P\u001a\u00020OH\u0002J\u000e\u0010Q\u001a\u00020O2\u0006\u0010R\u001a\u00020\u001bJ\u0016\u0010S\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f2\u0006\u0010T\u001a\u00020\u000bJ\u0006\u0010U\u001a\u00020\u0007J\u000e\u0010V\u001a\u00020O2\u0006\u0010R\u001a\u00020\u001bJ\b\u0010W\u001a\u00020OH\u0002J\u0006\u0010X\u001a\u00020OJ\u0012\u0010Y\u001a\u00020O2\b\b\u0002\u0010Z\u001a\u00020[H\u0002J\u0006\u0010\\\u001a\u00020OJ\b\u0010]\u001a\u00020OH\u0014J\u0006\u0010^\u001a\u00020OJ\u0010\u0010_\u001a\u00020O2\b\u0010`\u001a\u0004\u0018\u00010aJ\u0006\u0010b\u001a\u00020OJ\u0006\u0010c\u001a\u00020OJ\u001c\u0010d\u001a\b\u0012\u0004\u0012\u00020\u00170e2\f\u0010f\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0016H\u0002J\u0016\u0010g\u001a\u00020O2\u0006\u0010h\u001a\u00020\u00102\u0006\u0010i\u001a\u00020@R:\u0010\t\u001a.\u0012\u0004\u0012\u00020\u000b\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f0\nj\u0016\u0012\u0004\u0012\u00020\u000b\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f`\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\fX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\fX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00140\fX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\fX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\fX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0017\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00100\u001d8F¢\u0006\u0006\u001a\u0004\b\"\u0010 R(\u0010$\u001a\u0004\u0018\u00010\u000b2\b\u0010#\u001a\u0004\u0018\u00010\u000b@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R(\u0010*\u001a\u0004\u0018\u00010)2\b\u0010#\u001a\u0004\u0018\u00010)@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R(\u00100\u001a\u0004\u0018\u00010/2\b\u0010#\u001a\u0004\u0018\u00010/@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0017\u00105\u001a\b\u0012\u0004\u0012\u00020\u00120\u001d8F¢\u0006\u0006\u001a\u0004\b6\u0010 R\u001d\u00107\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00140\u001d8F¢\u0006\u0006\u001a\u0004\b8\u0010 R\u001d\u00109\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u001d8F¢\u0006\u0006\u001a\u0004\b:\u0010 R\u0017\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00190\u001d8F¢\u0006\u0006\u001a\u0004\b<\u0010 R\u0010\u0010=\u001a\u0004\u0018\u00010>X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R<\u0010A\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020@0?2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020@0?@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u0010\u0010F\u001a\u0004\u0018\u00010>X\u0082\u000e¢\u0006\u0002\n��R\u0017\u0010G\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001d8F¢\u0006\u0006\u001a\u0004\bH\u0010 ¨\u0006k"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;", "Landroidx/lifecycle/ViewModel;", "scanSmsUrlUseCase", "Lgogolook/callgogolook2/messaging/scan/domain/ScanSmsUrlUseCase;", "getSmsUrlScanHistoryByDayUseCase", "Lgogolook/callgogolook2/messaging/scan/domain/GetSmsUrlScanHistoryByDayUseCase;", "adRepo", "Lgogolook/callgogolook2/ad/AdRequestingRepo;", "(Lgogolook/callgogolook2/messaging/scan/domain/ScanSmsUrlUseCase;Lgogolook/callgogolook2/messaging/scan/domain/GetSmsUrlScanHistoryByDayUseCase;Lgogolook/callgogolook2/ad/AdRequestingRepo;)V", "_adObjectMap", "Ljava/util/HashMap;", "", "Landroidx/lifecycle/MutableLiveData;", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "Lkotlin/collections/HashMap;", "_clickedAdEvent", "Lgogolook/callgogolook2/ad/AdUnit;", "_navigation", "Lgogolook/callgogolook2/messaging/scan/ui/Navigation;", "_openUrl", "Lgogolook/callgogolook2/livedata/DataWrapper;", "_resultViewDataList", "", "Lgogolook/callgogolook2/adapter/ViewData;", "_scanCompleted", "", "_showWarning", "Lgogolook/callgogolook2/urlscan/data/UrlScanResult$ScanResult;", "adRequestState", "Landroidx/lifecycle/LiveData;", "Lgogolook/callgogolook2/ad/AdRequestState;", "getAdRequestState", "()Landroidx/lifecycle/LiveData;", "clickedAdEvent", "getClickedAdEvent", "<set-?>", "fromSource", "getFromSource", "()Ljava/lang/String;", "setFromSource", "(Ljava/lang/String;)V", "Lgogolook/callgogolook2/messaging/scan/data/SmsMessage;", "message", "getMessage", "()Lgogolook/callgogolook2/messaging/scan/data/SmsMessage;", "setMessage", "(Lgogolook/callgogolook2/messaging/scan/data/SmsMessage;)V", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResult;", "messageScanResult", "getMessageScanResult", "()Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResult;", "setMessageScanResult", "(Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResult;)V", NotificationCompat.CATEGORY_NAVIGATION, "getNavigation", "openUrl", "getOpenUrl", "resultViewDataList", "getResultViewDataList", "scanCompleted", "getScanCompleted", "scanJob", "Lkotlinx/coroutines/Job;", "Lkotlin/Pair;", "", "scanningPageTimeoutConfig", "getScanningPageTimeoutConfig", "()Lkotlin/Pair;", "setScanningPageTimeoutConfig", "(Lkotlin/Pair;)V", "scanningPageTimeoutJob", "showWarning", "getShowWarning", "buildUrlScanResultViewData", "Lgogolook/callgogolook2/messaging/scan/ui/UrlScanResultViewData;", "result", "viewShapeType", "Lgogolook/callgogolook2/messaging/scan/ui/ScanResultViewData$ViewShapeType;", "cancelScanJob", "", "cancelScanningPageTimeoutJob", "confirmOpenMaliciousResult", "scanResult", "getAdObjectLiveData", "adUnitName", "getAdRepo", "handleClickedScanResult", "initScanningPageTimeout", "loadResults", "navigateToErrorPage", "errorType", "Lgogolook/callgogolook2/messaging/scan/ui/Navigation$ErrorType;", "notifyScanningAnimationEnd", "onCleared", "onClose", "parseIntent", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "scan", "scheduleScanningPageTimeout", "transformUrlScanResultsToViewDataList", "", "results", "tryToSetupAdObject", "adUnit", "containerChildCount", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/e.class */
public final class C11757e extends ViewModel {

    /* renamed from: h */
    public String f26375h;

    /* renamed from: i */
    public SmsMessage f26376i;

    /* renamed from: j */
    public C11726c f26377j;

    /* renamed from: l */
    public Job f26379l;

    /* renamed from: m */
    public Job f26380m;

    /* renamed from: n */
    public final C11740f f26381n;

    /* renamed from: o */
    public final C11731b f26382o;

    /* renamed from: p */
    public final AdRequestingRepo f26383p;

    /* renamed from: a */
    public final MutableLiveData<AbstractC11765h> f26368a = new MutableLiveData<>();

    /* renamed from: b */
    public final MutableLiveData<Boolean> f26369b = new MutableLiveData<>();

    /* renamed from: c */
    public final MutableLiveData<List<AbstractC12391a>> f26370c = new MutableLiveData<>();

    /* renamed from: d */
    public final MutableLiveData<AbstractC13719n.C13721b> f26371d = new MutableLiveData<>();

    /* renamed from: e */
    public final MutableLiveData<C14596a<String>> f26372e = new MutableLiveData<>();

    /* renamed from: f */
    public final MutableLiveData<AdUnit> f26373f = new MutableLiveData<>();

    /* renamed from: g */
    public final HashMap<String, MutableLiveData<AbstractC6207d>> f26374g = new HashMap<>(2);

    /* renamed from: k */
    public C14978j<Integer, Integer> f26378k = new C14978j<>(3000, 30000);

    /* renamed from: j.a.c0.e.d.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/e$a.class */
    public static final class C11758a {
        public C11758a() {
        }

        public /* synthetic */ C11758a(C15145g gVar) {
            this();
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel$loadResults$1", m472f = "MessageScanViewModel.kt", m471l = {170, MatroskaExtractor.ID_PIXEL_WIDTH}, m470m = "invokeSuspend")
    /* renamed from: j.a.c0.e.d.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/e$b.class */
    public static final class C11759b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26384a;

        /* renamed from: b */
        public Object f26385b;

        /* renamed from: c */
        public Object f26386c;

        /* renamed from: d */
        public int f26387d;

        /* renamed from: e */
        public int f26388e;

        public C11759b(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11759b bVar = new C11759b(dVar);
            bVar.f26384a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11759b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            List list;
            int i;
            Object a = C15064c.m478a();
            int i2 = this.f26388e;
            if (i2 != 0) {
                if (i2 == 1) {
                    i = this.f26387d;
                    list = (List) this.f26386c;
                    C11726c cVar = (C11726c) this.f26385b;
                    if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C11726c h = C11757e.this.m8345h();
                if (h != null) {
                    list = C11757e.this.m8357a(h.m8410d());
                    if (list.isEmpty()) {
                        C11757e.m8363a(C11757e.this, null, 1, null);
                    } else {
                        C11731b bVar = C11757e.this.f26382o;
                        Integer a2 = C15066b.m476a(30);
                        this.f26385b = h;
                        this.f26386c = list;
                        this.f26387d = 0;
                        this.f26388e = 1;
                        obj = bVar.m8390b(a2, this);
                        if (obj == a) {
                            return a;
                        }
                        i = 0;
                    }
                } else {
                    C11757e.m8363a(C11757e.this, null, 1, null);
                }
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            list.add(new C11811u(i, (C11742g) C11739e.m8399a((AbstractC11735d) obj, new C11742g(0, 0, 0, 0, 0, 0, 63, null)), 1, null));
            C11757e.this.f26370c.setValue(list);
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel$scan$1$1", m472f = "MessageScanViewModel.kt", m471l = {139, 142}, m470m = "invokeSuspend")
    /* renamed from: j.a.c0.e.d.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/e$c.class */
    public static final class C11760c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26390a;

        /* renamed from: b */
        public int f26391b;

        /* renamed from: c */
        public final /* synthetic */ SmsMessage f26392c;

        /* renamed from: d */
        public final /* synthetic */ C11757e f26393d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11760c(SmsMessage smsMessage, AbstractC15044d dVar, C11757e eVar) {
            super(2, dVar);
            this.f26392c = smsMessage;
            this.f26393d = eVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11760c cVar = new C11760c(this.f26392c, dVar, this.f26393d);
            cVar.f26390a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11760c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f26391b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C11740f fVar = this.f26393d.f26381n;
                SmsMessage smsMessage = this.f26392c;
                this.f26391b = 1;
                Object b = fVar.m8390b(smsMessage, this);
                obj = b;
                if (b == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            AbstractC11735d dVar = (AbstractC11735d) obj;
            if (dVar instanceof AbstractC11735d.C11738c) {
                this.f26393d.f26377j = (C11726c) ((AbstractC11735d.C11738c) dVar).m8400a();
                this.f26393d.f26369b.setValue(C15066b.m474a(true));
            } else if (dVar instanceof AbstractC11735d.C11736a) {
                AbstractC11735d.C11736a aVar = (AbstractC11735d.C11736a) dVar;
                Exception a2 = aVar.m8401a();
                if ((a2 instanceof C15254h) || (a2 instanceof ConnectException) || (a2 instanceof UnknownHostException) || (a2 instanceof UnknownServiceException)) {
                    this.f26393d.m8361a(AbstractC11765h.EnumC11768c.NETWORK);
                } else if (a2 instanceof CancellationException) {
                    C14080m2.m2612a((Throwable) aVar.m8401a());
                } else {
                    C11757e.m8363a(this.f26393d, null, 1, null);
                }
            }
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel$scheduleScanningPageTimeout$1", m472f = "MessageScanViewModel.kt", m471l = {264, 266}, m470m = "invokeSuspend")
    /* renamed from: j.a.c0.e.d.e$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/e$d.class */
    public static final class C11761d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26394a;

        /* renamed from: b */
        public int f26395b;

        public C11761d(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11761d dVar2 = new C11761d(dVar);
            dVar2.f26394a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11761d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f26395b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                this.f26395b = 1;
                if (DelayKt.delay(C11757e.this.m8340m().m658d().intValue(), this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            C11757e.this.m8361a(AbstractC11765h.EnumC11768c.TIMEOUT);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.c0.e.d.e$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/e$e.class */
    public static final class C11762e implements AbstractC6207d.AbstractC6208a {

        /* renamed from: b */
        public final /* synthetic */ AdUnit f26398b;

        public C11762e(AdUnit adUnit) {
            this.f26398b = adUnit;
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        /* renamed from: a */
        public void mo5002a() {
            C11757e.this.f26373f.setValue(this.f26398b);
            C11757e.this.m8353c().mo28833g(this.f26398b);
        }

        @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
        public void onAdImpression() {
            C11757e.this.m8353c().mo28835e(this.f26398b);
        }
    }

    static {
        new C11758a(null);
    }

    public C11757e(C11740f fVar, C11731b bVar, AdRequestingRepo adRequestingRepo) {
        C15149k.m377b(fVar, "scanSmsUrlUseCase");
        C15149k.m377b(bVar, "getSmsUrlScanHistoryByDayUseCase");
        C15149k.m377b(adRequestingRepo, "adRepo");
        this.f26381n = fVar;
        this.f26382o = bVar;
        this.f26383p = adRequestingRepo;
        m8338o();
    }

    /* renamed from: a */
    public static /* synthetic */ void m8363a(C11757e eVar, AbstractC11765h.EnumC11768c cVar, int i, Object obj) {
        if ((i & 1) != 0) {
            cVar = AbstractC11765h.EnumC11768c.UNKNOWN;
        }
        eVar.m8361a(cVar);
    }

    /* renamed from: a */
    public final MutableLiveData<AbstractC6207d> m8358a(String str) {
        C15149k.m377b(str, "adUnitName");
        if (!this.f26374g.containsKey(str)) {
            this.f26374g.put(str, new MutableLiveData<>());
        }
        MutableLiveData<AbstractC6207d> mutableLiveData = this.f26374g.get(str);
        if (mutableLiveData != null) {
            return mutableLiveData;
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: a */
    public final AbstractC11814w m8359a(AbstractC13719n.C13721b bVar, AbstractC11799s.EnumC11800a aVar) {
        int i = C11763f.f26399a[bVar.m3605c().ordinal()];
        return i != 1 ? i != 2 ? null : new C11816y(bVar, aVar) : new C11755c(bVar, aVar);
    }

    /* renamed from: a */
    public final List<AbstractC12391a> m8357a(List<AbstractC13719n.C13721b> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (list.size() == 1) {
            AbstractC11814w a = m8359a(list.get(0), AbstractC11799s.EnumC11800a.SINGLE);
            if (a != null) {
                arrayList.add(a);
            }
        } else {
            for (Object obj : list) {
                if (i >= 0) {
                    AbstractC11814w a2 = m8359a((AbstractC13719n.C13721b) obj, i == 0 ? AbstractC11799s.EnumC11800a.MULTI_TOP : i == list.size() - 1 ? AbstractC11799s.EnumC11800a.MULTI_BOTTOM : AbstractC11799s.EnumC11800a.MULTI_MIDDLE);
                    if (a2 != null) {
                        arrayList.add(a2);
                    }
                    i++;
                } else {
                    C15021m.m558c();
                    throw null;
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m8369a() {
        this.f26377j = null;
        this.f26369b.setValue(false);
        Job job = this.f26379l;
        if (job != null) {
            if (!(!job.isCancelled())) {
                job = null;
            }
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
        }
        this.f26379l = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
        if (r5 != null) goto L_0x0069;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8368a(android.content.Intent r5) {
        /*
            r4 = this;
            r0 = r4
            androidx.lifecycle.MutableLiveData<j.a.c0.e.d.h> r0 = r0.f26368a
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x005e
            r0 = r5
            android.os.Bundle r0 = r0.getExtras()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x005e
            r0 = r4
            r1 = r5
            java.lang.String r2 = "gogolook.callgogolook2.messaging.scan.ui.FROM_SOURCE"
            java.lang.String r1 = r1.getString(r2)
            r0.f26375h = r1
            r0 = r4
            r1 = r5
            java.lang.String r2 = "gogolook.callgogolook2.messaging.scan.ui.MESSAGE_SCAN"
            android.os.Parcelable r1 = r1.getParcelable(r2)
            gogolook.callgogolook2.messaging.scan.data.SmsMessage r1 = (gogolook.callgogolook2.messaging.scan.data.SmsMessage) r1
            r0.f26376i = r1
            r0 = r4
            j.a.c0.e.a.c r0 = r0.f26377j
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0053
            r0 = r5
            if (r0 == 0) goto L_0x0040
            r0 = r5
            gogolook.callgogolook2.messaging.scan.data.SmsMessage r0 = r0.m8412b()
            r5 = r0
            goto L_0x0042
        L_0x0040:
            r0 = 0
            r5 = r0
        L_0x0042:
            r0 = r5
            r1 = r4
            gogolook.callgogolook2.messaging.scan.data.SmsMessage r1 = r1.f26376i
            boolean r0 = p626l.p641z.p643d.C15149k.m384a(r0, r1)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0052
            goto L_0x0053
        L_0x0052:
            return
        L_0x0053:
            j.a.c0.e.d.h$e r0 = p459j.p460a.p474c0.p483e.p487d.AbstractC11765h.C11770e.f26410a
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x005e
            goto L_0x0069
        L_0x005e:
            j.a.c0.e.d.h$b r0 = new j.a.c0.e.d.h$b
            r1 = r0
            j.a.c0.e.d.h$c r2 = p459j.p460a.p474c0.p483e.p487d.AbstractC11765h.EnumC11768c.UNKNOWN
            r1.<init>(r2)
            r5 = r0
        L_0x0069:
            r0 = r6
            r1 = r5
            r0.setValue(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p483e.p487d.C11757e.m8368a(android.content.Intent):void");
    }

    /* renamed from: a */
    public final void m8367a(AdUnit adUnit, int i) {
        AbstractC6207d b;
        C15149k.m377b(adUnit, "adUnit");
        if (i <= 0 && (b = m8353c().mo28838b(adUnit)) != null) {
            m8353c().mo28840a(adUnit, b);
            b.mo23569a((AbstractC6207d.AbstractC6208a) new C11762e(adUnit));
            m8358a(adUnit.m28821a()).setValue(b);
        }
    }

    /* renamed from: a */
    public final void m8361a(AbstractC11765h.EnumC11768c cVar) {
        m8356b();
        this.f26368a.setValue(new AbstractC11765h.C11767b(cVar));
    }

    /* renamed from: a */
    public final void m8360a(AbstractC13719n.C13721b bVar) {
        C15149k.m377b(bVar, "scanResult");
        this.f26372e.setValue(new C14596a<>(bVar.m3604d()));
    }

    /* renamed from: b */
    public final void m8356b() {
        Job job = this.f26380m;
        if (job != null) {
            if (!(!job.isCancelled())) {
                job = null;
            }
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
        }
        this.f26380m = null;
    }

    /* renamed from: b */
    public final void m8354b(AbstractC13719n.C13721b bVar) {
        C15149k.m377b(bVar, "scanResult");
        if (bVar.m3607a() == EnumC13715k.MALICIOUS) {
            this.f26371d.setValue(bVar);
        } else {
            this.f26372e.setValue(new C14596a<>(bVar.m3604d()));
        }
    }

    /* renamed from: c */
    public final AdRequestingRepo m8353c() {
        return this.f26383p;
    }

    /* renamed from: d */
    public final LiveData<AdRequestState> m8351d() {
        return this.f26383p.mo28844a();
    }

    /* renamed from: e */
    public final LiveData<AdUnit> m8349e() {
        return this.f26373f;
    }

    /* renamed from: f */
    public final String m8347f() {
        return this.f26375h;
    }

    /* renamed from: g */
    public final SmsMessage m8346g() {
        return this.f26376i;
    }

    /* renamed from: h */
    public final C11726c m8345h() {
        return this.f26377j;
    }

    /* renamed from: i */
    public final LiveData<AbstractC11765h> m8344i() {
        return this.f26368a;
    }

    /* renamed from: j */
    public final LiveData<C14596a<String>> m8343j() {
        return this.f26372e;
    }

    /* renamed from: k */
    public final LiveData<List<AbstractC12391a>> m8342k() {
        return this.f26370c;
    }

    /* renamed from: l */
    public final LiveData<Boolean> m8341l() {
        return this.f26369b;
    }

    /* renamed from: m */
    public final C14978j<Integer, Integer> m8340m() {
        return this.f26378k;
    }

    /* renamed from: n */
    public final LiveData<AbstractC13719n.C13721b> m8339n() {
        return this.f26371d;
    }

    /* renamed from: o */
    public final void m8338o() {
        List<Integer> a = C13640c.m3745d().m3751a("sms_url_scan_time_limit", new Integer[]{3000, 30000});
        if (a.size() >= 2) {
            Integer num = a.get(0);
            C15149k.m383a((Object) num, "timeoutList[0]");
            int intValue = num.intValue();
            Integer num2 = a.get(1);
            C15149k.m383a((Object) num2, "timeoutList[1]");
            int intValue2 = num2.intValue();
            if (intValue >= 0 && intValue2 >= 0) {
                this.f26378k = intValue > intValue2 ? new C14978j<>(Integer.valueOf(intValue2), Integer.valueOf(intValue)) : new C14978j<>(Integer.valueOf(intValue), Integer.valueOf(intValue2));
            }
        }
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        m8356b();
        m8369a();
        m8353c().mo28837c(AdUnit.SMS_SCANNING_PAGE);
        m8353c().mo28837c(AdUnit.SMS_SCAN_RESULT_STICKY);
    }

    /* renamed from: p */
    public final void m8337p() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C11759b(null), 3, null);
    }

    /* renamed from: q */
    public final void m8336q() {
        if (this.f26377j != null) {
            m8356b();
            this.f26368a.setValue(AbstractC11765h.C11769d.f26409a);
        }
    }

    /* renamed from: r */
    public final void m8335r() {
        this.f26368a.setValue(AbstractC11765h.C11766a.f26403a);
    }

    /* renamed from: s */
    public final void m8334s() {
        C14989s sVar;
        Job launch$default;
        SmsMessage smsMessage = this.f26376i;
        if (smsMessage != null) {
            if (smsMessage.m27502q().isEmpty()) {
                sVar = null;
            } else {
                m8369a();
                launch$default = BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C11760c(smsMessage, null, this), 3, null);
                this.f26379l = launch$default;
                sVar = C14989s.f33022a;
            }
            if (sVar != null) {
                return;
            }
        }
        m8363a(this, null, 1, null);
        C14989s sVar2 = C14989s.f33022a;
    }

    /* renamed from: t */
    public final void m8333t() {
        Job launch$default;
        m8356b();
        launch$default = BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C11761d(null), 3, null);
        this.f26380m = launch$default;
    }
}
