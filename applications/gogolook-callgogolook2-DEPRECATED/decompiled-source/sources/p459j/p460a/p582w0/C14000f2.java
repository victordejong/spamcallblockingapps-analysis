package p459j.p460a.p582w0;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import gogolook.callgogolook2.MyApplication;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p459j.p460a.p582w0.p590x4.EnumC14294n;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p631e0.C14966w;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\r\u001a\u00020\u000eH\u0007R0\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@BX\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lgogolook/callgogolook2/util/GoogleUtils;", "", "()V", "<set-?>", "", "adId", "adId$annotations", "getAdId", "()Ljava/lang/String;", "setAdId", "(Ljava/lang/String;)V", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "initAdId", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.f2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/f2.class */
public final class C14000f2 {

    /* renamed from: a */
    public static volatile String f31414a;

    /* renamed from: c */
    public static final C14000f2 f31416c = new C14000f2();

    /* renamed from: b */
    public static final Mutex f31415b = MutexKt.Mutex$default(false, 1, null);

    /* renamed from: j.a.w0.f2$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/f2$a.class */
    public static final class C14001a extends AbstractC15037a implements CoroutineExceptionHandler {
        public C14001a(AbstractC15049g.AbstractC15054c cVar) {
            super(cVar);
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(AbstractC15049g gVar, Throwable th) {
            EnumC14294n.ads_get_google_advertising_id_exception.m1834a();
            C14080m2.m2612a(th);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/util/GoogleUtils$initAdId$1", m472f = "GoogleUtils.kt", m471l = {34, 48}, m470m = "invokeSuspend")
    /* renamed from: j.a.w0.f2$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/f2$b.class */
    public static final class C14002b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f31417a;

        /* renamed from: b */
        public Object f31418b;

        /* renamed from: c */
        public int f31419c;

        /* renamed from: d */
        public int f31420d;

        public C14002b(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C14002b bVar = new C14002b(dVar);
            bVar.f31417a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C14002b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Finally extract failed */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Mutex mutex;
            Object a = C15064c.m478a();
            int i = this.f31420d;
            boolean z = false;
            if (i != 0) {
                if (i == 1) {
                    mutex = (Mutex) this.f31418b;
                    if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C14000f2 f2Var = C14000f2.f31416c;
                Mutex mutex2 = C14000f2.f31415b;
                this.f31418b = mutex2;
                this.f31419c = 0;
                this.f31420d = 1;
                mutex = mutex2;
                if (mutex2.lock(null, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(MyApplication.m29013o());
                C15149k.m383a((Object) advertisingIdInfo, "AdvertisingIdClient.getA…ation.getGlobalContext())");
                String id = advertisingIdInfo.getId();
                if (id != null) {
                    if (!C14966w.m724a((CharSequence) id)) {
                        z = true;
                    }
                    if (!C15066b.m474a(z).booleanValue()) {
                        id = null;
                    }
                    if (id != null) {
                        C14000f2.f31414a = id;
                        C14092n3.m2583b("gaid", id);
                        C14989s sVar = C14989s.f33022a;
                    }
                }
                mutex.unlock(null);
                return C14989s.f33022a;
            } catch (Throwable th) {
                mutex.unlock(null);
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static final String m2905a() {
        String str = f31414a;
        if (str == null) {
            str = C14092n3.m2584a("gaid", "");
        }
        return str;
    }

    /* renamed from: b */
    public static final void m2902b() {
        if (!f31415b.isLocked()) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), new C14001a(CoroutineExceptionHandler.Key), null, new C14002b(null), 2, null);
        }
    }
}
