package gogolook.callgogolook2.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.HandlerThread;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p509g0.p510a.AbstractC12385a;
import p459j.p460a.p582w0.C14217x3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\u0018�� 42\u00020\u0001:\u000245B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010+\u001a\u00020,H\u0002J\b\u0010-\u001a\u00020,H\u0002J\b\u0010.\u001a\u00020,H\u0002J\b\u0010/\u001a\u00020,H\u0002J\b\u00100\u001a\u00020,H\u0002J\b\u00101\u001a\u00020,H\u0002J\u0006\u00102\u001a\u00020,J\u0006\u00103\u001a\u00020,R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n��R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n��\u001a\u0004\b#\u0010$R\u001d\u0010%\u001a\u0004\u0018\u00010&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u0017\u001a\u0004\b'\u0010(R\u000e\u0010*\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��¨\u00066"}, m815d2 = {"Lgogolook/callgogolook2/network/NetworkRetryHelper;", "", "context", "Landroid/content/Context;", "retryStrategies", "", "Lgogolook/callgogolook2/network/strategy/IRetryStrategy;", "onActionListener", "Lgogolook/callgogolook2/network/NetworkRetryHelper$OnActionListener;", "(Landroid/content/Context;Ljava/util/List;Lgogolook/callgogolook2/network/NetworkRetryHelper$OnActionListener;)V", "connectivityReceiver", "Landroid/content/BroadcastReceiver;", "getContext", "()Landroid/content/Context;", "countDownInterval", "", "countDownTimer", "Landroid/os/CountDownTimer;", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "handler$delegate", "Lkotlin/Lazy;", "handlerThread", "Landroid/os/HandlerThread;", "getHandlerThread", "()Landroid/os/HandlerThread;", "handlerThread$delegate", "isStopped", "", "getOnActionListener", "()Lgogolook/callgogolook2/network/NetworkRetryHelper$OnActionListener;", "phoneStateListener", "Landroid/telephony/PhoneStateListener;", "getRetryStrategies", "()Ljava/util/List;", "telephonyManager", "Landroid/telephony/TelephonyManager;", "getTelephonyManager", "()Landroid/telephony/TelephonyManager;", "telephonyManager$delegate", "totalCountDown", "destroyConnectivityReceiver", "", "destroyCountDownTimer", "destroyPhoneStateListener", "initConnectivityReceiver", "initCountDownTimer", "initPhoneStateListener", "start", "stop", "Companion", "OnActionListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper.class */
public final class NetworkRetryHelper {

    /* renamed from: m */
    public static final /* synthetic */ AbstractC14906i[] f12049m;

    /* renamed from: a */
    public boolean f12050a;

    /* renamed from: d */
    public CountDownTimer f12053d;

    /* renamed from: e */
    public BroadcastReceiver f12054e;

    /* renamed from: f */
    public PhoneStateListener f12055f;

    /* renamed from: j */
    public final Context f12059j;

    /* renamed from: k */
    public final List<AbstractC12385a> f12060k;

    /* renamed from: l */
    public final AbstractC4891b f12061l;

    /* renamed from: b */
    public long f12051b = 30000;

    /* renamed from: c */
    public long f12052c = 1000;

    /* renamed from: g */
    public final AbstractC14974f f12056g = C14975g.m662a(C4895f.f12065a);

    /* renamed from: h */
    public final AbstractC14974f f12057h = C14975g.m662a(new C4894e());

    /* renamed from: i */
    public final AbstractC14974f f12058i = C14975g.m662a(new C4901i());

    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$a.class */
    public static final class C4890a {
        public C4890a() {
        }

        public /* synthetic */ C4890a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$b.class */
    public interface AbstractC4891b {
        /* renamed from: a */
        void mo10301a(AbstractC12385a aVar);
    }

    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$c.class */
    public static final class RunnableC4892c implements Runnable {
        public RunnableC4892c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            CountDownTimer countDownTimer = NetworkRetryHelper.this.f12053d;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            NetworkRetryHelper.this.f12053d = null;
        }
    }

    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$d.class */
    public static final class RunnableC4893d implements Runnable {
        public RunnableC4893d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            TelephonyManager i;
            PhoneStateListener phoneStateListener = NetworkRetryHelper.this.f12055f;
            if (!(phoneStateListener == null || (i = NetworkRetryHelper.this.m26811i()) == null)) {
                i.listen(phoneStateListener, 0);
            }
            NetworkRetryHelper.this.f12055f = null;
        }
    }

    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$e.class */
    public static final class C4894e extends AbstractC15150l implements AbstractC15107a<Handler> {
        public C4894e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Handler invoke() {
            return new Handler(NetworkRetryHelper.this.m26817f().getLooper());
        }
    }

    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$f.class */
    public static final class C4895f extends AbstractC15150l implements AbstractC15107a<HandlerThread> {

        /* renamed from: a */
        public static final C4895f f12065a = new C4895f();

        public C4895f() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final HandlerThread invoke() {
            return new HandlerThread("NetworkRetryHelper-HandlerThread");
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m815d2 = {"<anonymous>", "", "run", "gogolook/callgogolook2/network/NetworkRetryHelper$initCountDownTimer$2$1"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$g.class */
    public static final class RunnableC4896g implements Runnable {

        /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$g$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$g$a.class */
        public static final class CountDownTimerC4897a extends CountDownTimer {
            public CountDownTimerC4897a(long j, long j2) {
                super(j, j2);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (!NetworkRetryHelper.this.f12050a) {
                    for (AbstractC12385a aVar : NetworkRetryHelper.this.m26813h()) {
                        boolean z = true;
                        if ((aVar.mo6255a() & 1) == 0) {
                            z = false;
                        }
                        AbstractC12385a aVar2 = null;
                        AbstractC12385a aVar3 = z ? aVar : null;
                        if (aVar3 != null) {
                            if (aVar3.mo6252a(NetworkRetryHelper.this.f12051b)) {
                                aVar2 = aVar3;
                            }
                            if (aVar2 != null) {
                                NetworkRetryHelper.this.m26815g().mo10301a(aVar);
                            }
                        }
                    }
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                if (!NetworkRetryHelper.this.f12050a) {
                    for (AbstractC12385a aVar : NetworkRetryHelper.this.m26813h()) {
                        boolean z = true;
                        if ((aVar.mo6255a() & 1) == 0) {
                            z = false;
                        }
                        AbstractC12385a aVar2 = null;
                        AbstractC12385a aVar3 = z ? aVar : null;
                        if (aVar3 != null) {
                            if (aVar3.mo6252a(NetworkRetryHelper.this.f12051b - j)) {
                                aVar2 = aVar3;
                            }
                            if (aVar2 != null) {
                                NetworkRetryHelper.this.m26815g().mo10301a(aVar);
                            }
                        }
                    }
                }
            }
        }

        public RunnableC4896g() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            NetworkRetryHelper networkRetryHelper = NetworkRetryHelper.this;
            CountDownTimerC4897a aVar = new CountDownTimerC4897a(networkRetryHelper.f12051b, NetworkRetryHelper.this.f12052c);
            aVar.start();
            networkRetryHelper.f12053d = aVar;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m815d2 = {"<anonymous>", "", "run", "gogolook/callgogolook2/network/NetworkRetryHelper$initPhoneStateListener$2$1"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$h.class */
    public static final class RunnableC4898h implements Runnable {

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001d\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0007¸\u0006��"}, m815d2 = {"gogolook/callgogolook2/network/NetworkRetryHelper$initPhoneStateListener$2$1$1", "Landroid/telephony/PhoneStateListener;", "onDataConnectionStateChanged", "", IapProductRealmObject.STATE, "", "networkType", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
        /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$h$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$h$a.class */
        public static final class C4899a extends PhoneStateListener {

            /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$h$a$a */
            /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$h$a$a.class */
            public static final class RunnableC4900a implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ AbstractC12385a f12070a;

                /* renamed from: b */
                public final /* synthetic */ C4899a f12071b;

                public RunnableC4900a(AbstractC12385a aVar, C4899a aVar2, int i, int i2) {
                    this.f12070a = aVar;
                    this.f12071b = aVar2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    NetworkRetryHelper.this.m26815g().mo10301a(this.f12070a);
                }
            }

            public C4899a() {
            }

            @Override // android.telephony.PhoneStateListener
            public void onDataConnectionStateChanged(int i, int i2) {
                if (!NetworkRetryHelper.this.f12050a) {
                    for (AbstractC12385a aVar : NetworkRetryHelper.this.m26813h()) {
                        AbstractC12385a aVar2 = (aVar.mo6255a() & 2) != 0 ? aVar : null;
                        if (aVar2 != null) {
                            if (!aVar2.mo6253a(i, i2)) {
                                aVar2 = null;
                            }
                            if (aVar2 != null) {
                                NetworkRetryHelper.this.m26819e().post(new RunnableC4900a(aVar, this, i, i2));
                            }
                        }
                    }
                }
            }
        }

        public RunnableC4898h() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            NetworkRetryHelper networkRetryHelper = NetworkRetryHelper.this;
            C4899a aVar = new C4899a();
            TelephonyManager i = NetworkRetryHelper.this.m26811i();
            if (i != null) {
                i.listen(aVar, 64);
            }
            networkRetryHelper.f12055f = aVar;
        }
    }

    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$i.class */
    public static final class C4901i extends AbstractC15150l implements AbstractC15107a<TelephonyManager> {
        public C4901i() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final TelephonyManager invoke() {
            Object systemService = NetworkRetryHelper.this.m26821d().getSystemService("phone");
            Object obj = systemService;
            if (!(systemService instanceof TelephonyManager)) {
                obj = null;
            }
            return (TelephonyManager) obj;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(NetworkRetryHelper.class), "handlerThread", "getHandlerThread()Landroid/os/HandlerThread;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(NetworkRetryHelper.class), "handler", "getHandler()Landroid/os/Handler;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(NetworkRetryHelper.class), "telephonyManager", "getTelephonyManager()Landroid/telephony/TelephonyManager;");
        C15131a0.m412a(sVar3);
        f12049m = new AbstractC14906i[]{sVar, sVar2, sVar3};
        new C4890a(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public NetworkRetryHelper(Context context, List<? extends AbstractC12385a> list, AbstractC4891b bVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(list, "retryStrategies");
        C15149k.m377b(bVar, "onActionListener");
        this.f12059j = context;
        this.f12060k = list;
        this.f12061l = bVar;
    }

    /* renamed from: a */
    public final void m26829a() {
        BroadcastReceiver broadcastReceiver = this.f12054e;
        if (broadcastReceiver != null) {
            this.f12059j.unregisterReceiver(broadcastReceiver);
        }
        this.f12054e = null;
    }

    /* renamed from: b */
    public final void m26825b() {
        m26819e().post(new RunnableC4892c());
    }

    /* renamed from: c */
    public final void m26823c() {
        m26819e().post(new RunnableC4893d());
    }

    /* renamed from: d */
    public final Context m26821d() {
        return this.f12059j;
    }

    /* renamed from: e */
    public final Handler m26819e() {
        AbstractC14974f fVar = this.f12057h;
        AbstractC14906i iVar = f12049m[1];
        return (Handler) fVar.getValue();
    }

    /* renamed from: f */
    public final HandlerThread m26817f() {
        AbstractC14974f fVar = this.f12056g;
        AbstractC14906i iVar = f12049m[0];
        return (HandlerThread) fVar.getValue();
    }

    /* renamed from: g */
    public final AbstractC4891b m26815g() {
        return this.f12061l;
    }

    /* renamed from: h */
    public final List<AbstractC12385a> m26813h() {
        return this.f12060k;
    }

    /* renamed from: i */
    public final TelephonyManager m26811i() {
        AbstractC14974f fVar = this.f12058i;
        AbstractC14906i iVar = f12049m[2];
        return (TelephonyManager) fVar.getValue();
    }

    /* renamed from: j */
    public final void m26810j() {
        Object obj;
        if (this.f12054e == null) {
            Iterator<T> it = this.f12060k.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if ((((AbstractC12385a) obj).mo6255a() & 4) != 0) {
                    break;
                }
            }
            if (((AbstractC12385a) obj) != null) {
                BroadcastReceiver networkRetryHelper$initConnectivityReceiver$$inlined$let$lambda$1 = new BroadcastReceiver() { // from class: gogolook.callgogolook2.network.NetworkRetryHelper$initConnectivityReceiver$$inlined$let$lambda$1

                    /* renamed from: gogolook.callgogolook2.network.NetworkRetryHelper$initConnectivityReceiver$$inlined$let$lambda$1$a */
                    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/network/NetworkRetryHelper$initConnectivityReceiver$$inlined$let$lambda$1$a.class */
                    public static final class RunnableC4903a implements Runnable {

                        /* renamed from: a */
                        public final /* synthetic */ AbstractC12385a f12074a;

                        /* renamed from: b */
                        public final /* synthetic */ C4902xc57f02a8 f12075b;

                        public RunnableC4903a(AbstractC12385a aVar, C4902xc57f02a8 networkRetryHelper$initConnectivityReceiver$$inlined$let$lambda$1, boolean z) {
                            this.f12074a = aVar;
                            this.f12075b = networkRetryHelper$initConnectivityReceiver$$inlined$let$lambda$1;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            NetworkRetryHelper.this.m26815g().mo10301a(this.f12074a);
                        }
                    }

                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        boolean h = C14217x3.m2137h(context);
                        if (!NetworkRetryHelper.this.f12050a) {
                            for (AbstractC12385a aVar : NetworkRetryHelper.this.m26813h()) {
                                AbstractC12385a aVar2 = (aVar.mo6255a() & 4) != 0 ? aVar : null;
                                if (aVar2 != null) {
                                    if (!aVar2.mo6251a(h)) {
                                        aVar2 = null;
                                    }
                                    if (aVar2 != null) {
                                        NetworkRetryHelper.this.m26819e().post(new RunnableC4903a(aVar, this, h));
                                    }
                                }
                            }
                        }
                    }
                };
                this.f12059j.registerReceiver(networkRetryHelper$initConnectivityReceiver$$inlined$let$lambda$1, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.f12054e = networkRetryHelper$initConnectivityReceiver$$inlined$let$lambda$1;
            }
        }
    }

    /* renamed from: k */
    public final void m26809k() {
        Object obj;
        if (this.f12053d == null) {
            Iterator<T> it = this.f12060k.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                boolean z = true;
                if ((((AbstractC12385a) obj).mo6255a() & 1) == 0) {
                    z = false;
                }
                if (z) {
                    break;
                }
            }
            if (((AbstractC12385a) obj) != null) {
                m26819e().post(new RunnableC4896g());
            }
        }
    }

    /* renamed from: l */
    public final void m26808l() {
        Object obj;
        if (this.f12055f == null) {
            Iterator<T> it = this.f12060k.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if ((((AbstractC12385a) obj).mo6255a() & 2) != 0) {
                    break;
                }
            }
            if (((AbstractC12385a) obj) != null) {
                m26819e().post(new RunnableC4898h());
            }
        }
    }

    /* renamed from: m */
    public final void m26807m() {
        synchronized (this) {
            m26817f().start();
            m26808l();
            m26810j();
            m26809k();
        }
    }

    /* renamed from: n */
    public final void m26806n() {
        synchronized (this) {
            if (!this.f12050a) {
                this.f12050a = true;
                m26825b();
                m26829a();
                m26823c();
                m26817f().quit();
            }
        }
    }
}
