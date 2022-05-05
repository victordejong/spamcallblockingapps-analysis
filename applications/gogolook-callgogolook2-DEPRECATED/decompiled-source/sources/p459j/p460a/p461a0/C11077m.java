package p459j.p460a.p461a0;

import android.content.Context;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CallDialogSearchRetryConfig;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.network.NetworkRetryHelper;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p081h.p160h.p179e.p180a.p187n.AbstractC6391b;
import p081h.p160h.p179e.p180a.p187n.C6384a;
import p081h.p160h.p179e.p180a.p187n.C6392c;
import p459j.p460a.p461a0.AbstractC11043c;
import p459j.p460a.p509g0.p510a.AbstractC12385a;
import p459j.p460a.p509g0.p510a.C12387b;
import p459j.p460a.p509g0.p510a.C12389c;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p564s.C13598x;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14187u1;
import p459j.p460a.p582w0.p590x4.C14275i;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p632u.C15021m;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� (2\u00020\u00012\u00020\u0002:\u0001(B)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014H\u0002J\b\u0010\"\u001a\u00020#H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\bH\u0002J\u0010\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020'H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u001b\u001a\u00020\u001cX\u0096D¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001e¨\u0006)"}, m815d2 = {"Lgogolook/callgogolook2/loader/ServerInfoLoader;", "Lgogolook/callgogolook2/loader/INumberInfoLoader;", "Lgogolook/callgogolook2/network/NetworkRetryHelper$OnActionListener;", "numSearchConfig", "Lcom/gogolook/whoscallsdk/core/num/WCNumSearchConfig;", "searchRetryConfig", "Lgogolook/callgogolook2/gson/CallDialogSearchRetryConfig;", "e164", "", "listener", "Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;", "(Lcom/gogolook/whoscallsdk/core/num/WCNumSearchConfig;Lgogolook/callgogolook2/gson/CallDialogSearchRetryConfig;Ljava/lang/String;Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;)V", "hasResponse", "", "getListener", "()Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;", "setListener", "(Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;)V", "networkClassUpgraded", "retryCount", "", "retryEvent", "Lgogolook/callgogolook2/util/analytics/CallDialogSearchRetryEventHelper;", "retryHelper", "Lgogolook/callgogolook2/network/NetworkRetryHelper;", "subscription", "Lrx/Subscription;", "timeoutMillis", "", "getTimeoutMillis", "()J", "convertInfoSource", "Lgogolook/callgogolook2/gson/NumberInfo$InfoSource;", "status", "load", "", NovaHomeBadger.TAG, "onAction", "strategy", "Lgogolook/callgogolook2/network/strategy/IRetryStrategy;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a0.m */
/* loaded from: classes2-dex2jar.jar:j/a/a0/m.class */
public final class C11077m implements AbstractC11043c, NetworkRetryHelper.AbstractC4891b {

    /* renamed from: a */
    public final long f24926a = 12000;

    /* renamed from: b */
    public NetworkRetryHelper f24927b;

    /* renamed from: c */
    public C14275i f24928c;

    /* renamed from: d */
    public Subscription f24929d;

    /* renamed from: e */
    public int f24930e;

    /* renamed from: f */
    public boolean f24931f;

    /* renamed from: g */
    public boolean f24932g;

    /* renamed from: h */
    public final C6392c f24933h;

    /* renamed from: i */
    public final CallDialogSearchRetryConfig f24934i;

    /* renamed from: j */
    public final String f24935j;

    /* renamed from: k */
    public AbstractC11043c.AbstractC11044a f24936k;

    /* renamed from: j.a.a0.m$a */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/m$a.class */
    public static final class C11078a {
        public C11078a() {
        }

        public /* synthetic */ C11078a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.a0.m$b */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/m$b.class */
    public static final class C11079b<T> implements Action1<Object> {
        public C11079b() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            Subscription subscription;
            if (obj instanceof C14187u1) {
                NetworkRetryHelper networkRetryHelper = C11077m.this.f24927b;
                if (networkRetryHelper != null) {
                    networkRetryHelper.m26806n();
                }
                C14275i iVar = C11077m.this.f24928c;
                if (iVar != null) {
                    iVar.m1932b();
                }
                Subscription subscription2 = C11077m.this.f24929d;
                if (subscription2 != null && !subscription2.isUnsubscribed() && (subscription = C11077m.this.f24929d) != null) {
                    subscription.unsubscribe();
                }
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/loader/ServerInfoLoader$load$2", m472f = "ServerInfoLoader.kt", m471l = {115, 117}, m470m = "invokeSuspend")
    /* renamed from: j.a.a0.m$c */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/m$c.class */
    public static final class C11080c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f24938a;

        /* renamed from: b */
        public int f24939b;

        public C11080c(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11080c cVar = new C11080c(dVar);
            cVar.f24938a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11080c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C14989s sVar;
            Object a = C15064c.m478a();
            int i = this.f24939b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                long a2 = C13598x.m3860g().m3868a(C11077m.class);
                this.f24939b = 1;
                if (DelayKt.delay(a2, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            AbstractC11043c.AbstractC11044a listener = C11077m.this.getListener();
            if (listener != null) {
                NumberInfo b = C13598x.m3860g().m3865b(C11077m.class);
                C15149k.m383a((Object) b, "FakeDataManager.getInsta…erInfoLoader::class.java)");
                listener.mo10314a(b);
                sVar = C14989s.f33022a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    /* renamed from: j.a.a0.m$d */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/m$d.class */
    public static final class C11081d extends AbstractC6391b {

        /* renamed from: b */
        public final /* synthetic */ String f24942b;

        public C11081d(String str) {
            this.f24942b = str;
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        public void mo7788a() {
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        public void mo4669a(int i) {
            AbstractC11043c.AbstractC11044a listener = C11077m.this.getListener();
            if (listener != null) {
                NumberInfo numberInfo = new NumberInfo();
                numberInfo.m28365a(i != -403 ? i == 503 ? NumberInfo.ErrorReason.SERVER_BUSY : i > 0 ? NumberInfo.ErrorReason.SERVER_ERROR : NumberInfo.ErrorReason.NO_NETWORK : NumberInfo.ErrorReason.NETWORK_RESTRICTED);
                listener.mo10313b(numberInfo);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
            if (r13 != null) goto L_0x002d;
         */
        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo4668a(int r8, com.gogolook.whoscallsdk.core.num.data.NumInfo r9) throws java.lang.Exception {
            /*
                r7 = this;
                r0 = r7
                j.a.a0.m r0 = p459j.p460a.p461a0.C11077m.this
                gogolook.callgogolook2.network.NetworkRetryHelper r0 = p459j.p460a.p461a0.C11077m.m10296d(r0)
                if (r0 == 0) goto L_0x0076
                long r0 = android.os.SystemClock.elapsedRealtime()
                r10 = r0
                android.os.Bundle r0 = new android.os.Bundle
                r1 = r0
                r1.<init>()
                r12 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0029
                r0 = r9
                java.lang.String r0 = r0.num
                r13 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0029
                goto L_0x002d
            L_0x0029:
                java.lang.String r0 = ""
                r13 = r0
            L_0x002d:
                r0 = r12
                java.lang.String r1 = "number"
                r2 = r13
                r0.putString(r1, r2)
                r0 = r12
                java.lang.String r1 = "status"
                r2 = r8
                r0.putInt(r1, r2)
                r0 = r7
                j.a.a0.m r0 = p459j.p460a.p461a0.C11077m.this
                j.a.w0.x4.i r0 = p459j.p460a.p461a0.C11077m.m10297c(r0)
                r13 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0057
                r0 = r13
                r1 = r7
                java.lang.String r1 = r1.f24942b
                r2 = r12
                r0.m1933a(r1, r2)
            L_0x0057:
                r0 = r7
                j.a.a0.m r0 = p459j.p460a.p461a0.C11077m.this
                gogolook.callgogolook2.network.NetworkRetryHelper r0 = p459j.p460a.p461a0.C11077m.m10296d(r0)
                r13 = r0
                r0 = r13
                if (r0 == 0) goto L_0x006a
                r0 = r13
                r0.m26806n()
            L_0x006a:
                r0 = r12
                java.lang.String r1 = "check_spent"
                long r2 = android.os.SystemClock.elapsedRealtime()
                r3 = r10
                long r2 = r2 - r3
                r0.putLong(r1, r2)
            L_0x0076:
                r0 = r7
                j.a.a0.m r0 = p459j.p460a.p461a0.C11077m.this
                boolean r0 = p459j.p460a.p461a0.C11077m.m10305a(r0)
                if (r0 != 0) goto L_0x00b8
                r0 = r7
                j.a.a0.m r0 = p459j.p460a.p461a0.C11077m.this
                r1 = 1
                p459j.p460a.p461a0.C11077m.m10302a(r0, r1)
                gogolook.callgogolook2.gson.NumberInfo r0 = new gogolook.callgogolook2.gson.NumberInfo
                r1 = r0
                r1.<init>()
                r13 = r0
                r0 = r13
                r1 = r9
                r0.m28366a(r1)
                r0 = r13
                r1 = r7
                j.a.a0.m r1 = p459j.p460a.p461a0.C11077m.this
                r2 = r8
                gogolook.callgogolook2.gson.NumberInfo$InfoSource r1 = p459j.p460a.p461a0.C11077m.m10304a(r1, r2)
                r0.m28364a(r1)
                r0 = r7
                j.a.a0.m r0 = p459j.p460a.p461a0.C11077m.this
                j.a.a0.c$a r0 = r0.getListener()
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x00b8
                r0 = r9
                r1 = r13
                r0.mo10314a(r1)
            L_0x00b8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p461a0.C11077m.C11081d.mo4668a(int, com.gogolook.whoscallsdk.core.num.data.NumInfo):void");
        }

        @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
        /* renamed from: b */
        public void mo7787b() {
        }
    }

    /* renamed from: j.a.a0.m$e */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/m$e.class */
    public static final class C11082e<T> implements Single.OnSubscribe<T> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC12385a f24944b;

        public C11082e(AbstractC12385a aVar) {
            this.f24944b = aVar;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super C14989s> singleSubscriber) {
            C11077m mVar = C11077m.this;
            StringBuilder sb = new StringBuilder();
            sb.append(this.f24944b.getTag());
            sb.append('-');
            C11077m mVar2 = C11077m.this;
            mVar2.f24930e++;
            sb.append(mVar2.f24930e);
            mVar.m10300a(sb.toString());
            singleSubscriber.onSuccess(C14989s.f33022a);
        }
    }

    /* renamed from: j.a.a0.m$f */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/m$f.class */
    public static final class C11083f<T> implements Action1<C14989s> {

        /* renamed from: a */
        public static final C11083f f24945a = new C11083f();

        /* renamed from: a */
        public final void call(C14989s sVar) {
        }
    }

    /* renamed from: j.a.a0.m$g */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/m$g.class */
    public static final class C11084g<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C11084g f24946a = new C11084g();

        /* renamed from: a */
        public final void call(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    static {
        new C11078a(null);
    }

    public C11077m(C6392c cVar, CallDialogSearchRetryConfig callDialogSearchRetryConfig, String str, AbstractC11043c.AbstractC11044a aVar) {
        C15149k.m377b(cVar, "numSearchConfig");
        C15149k.m377b(str, "e164");
        this.f24933h = cVar;
        this.f24934i = callDialogSearchRetryConfig;
        this.f24935j = str;
        this.f24936k = aVar;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    /* renamed from: a */
    public long mo10308a() {
        return this.f24926a;
    }

    /* renamed from: a */
    public final NumberInfo.InfoSource m10307a(int i) {
        switch (i) {
            case 200:
                return NumberInfo.InfoSource.SERVER;
            case 201:
                return NumberInfo.InfoSource.MEMORY_CACHE;
            case 202:
                return NumberInfo.InfoSource.DB_CACHE;
            default:
                return NumberInfo.InfoSource.NONE;
        }
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    /* renamed from: a */
    public void mo10306a(AbstractC11043c.AbstractC11044a aVar) {
        this.f24936k = aVar;
    }

    @Override // gogolook.callgogolook2.network.NetworkRetryHelper.AbstractC4891b
    /* renamed from: a */
    public void mo10301a(AbstractC12385a aVar) {
        C15149k.m377b(aVar, "strategy");
        if (aVar instanceof C12389c) {
            this.f24931f = true;
        } else if (this.f24931f && (aVar instanceof C12387b)) {
            return;
        }
        Single.create(new C11082e(aVar)).timeout(mo10308a(), TimeUnit.MILLISECONDS).subscribeOn(Schedulers.m0io()).subscribe(C11083f.f24945a, C11084g.f24946a);
    }

    /* renamed from: a */
    public final void m10300a(String str) {
        C14275i iVar = this.f24928c;
        if (iVar != null) {
            iVar.m1934a(str);
        }
        String str2 = this.f24935j;
        String n = C14017g4.m2810n();
        C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
        C6384a.m22868a(str2, n, new C11081d(str), this.f24933h);
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    public AbstractC11043c.AbstractC11044a getListener() {
        return this.f24936k;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    public void load() {
        AbstractC11043c.AbstractC11044a listener = getListener();
        if (listener != null) {
            listener.onStart();
        }
        CallDialogSearchRetryConfig callDialogSearchRetryConfig = this.f24934i;
        if (callDialogSearchRetryConfig != null) {
            Integer b = callDialogSearchRetryConfig.m28552b();
            int intValue = b != null ? b.intValue() : 3000;
            Integer c = callDialogSearchRetryConfig.m28551c();
            int intValue2 = c != null ? c.intValue() : 1;
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            this.f24927b = new NetworkRetryHelper(o, C15021m.m557c(new C12389c(), new C12387b(intValue, 0, intValue2)), this);
            NetworkRetryHelper networkRetryHelper = this.f24927b;
            if (networkRetryHelper != null) {
                networkRetryHelper.m26807m();
            }
            this.f24928c = new C14275i();
            C14275i iVar = this.f24928c;
            if (iVar != null) {
                iVar.m1935a();
            }
            this.f24929d = C14037j3.m2731a().mo2703a((Action1) new C11079b());
        }
        C13565v g = C13565v.m3921g();
        C15149k.m383a((Object) g, "DevelopMode.getInstance()");
        if (!g.m23335b() || !CallStats.m28533i()) {
            m10300a("first");
        } else {
            BuildersKt__BuildersKt.runBlocking$default(null, new C11080c(null), 1, null);
        }
    }
}
