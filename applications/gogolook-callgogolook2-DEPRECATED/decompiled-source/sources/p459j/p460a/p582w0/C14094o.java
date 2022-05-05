package p459j.p460a.p582w0;

import android.content.Context;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import java.util.HashSet;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import p081h.p119d.p120a.C5776l;
import p459j.p460a.p461a0.C11048f;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p541n0.C13048c;
import p459j.p460a.p541n0.C13110i;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\rH\u0007J\b\u0010\u000f\u001a\u00020\rH\u0007J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0007J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0007J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0007J\u001c\u0010\u0018\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0007J\u001c\u0010\u001a\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u001b\u001a\u00020\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0007J\u0012\u0010\u001c\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010 \u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u000bH\u0007J\u0012\u0010#\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0007R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\bX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, m815d2 = {"Lgogolook/callgogolook2/util/CacheManager;", "", "()V", "contactIds", "Lgogolook/callgogolook2/loader/MemoryCache;", "", "contactNames", "contactsWithoutPhoto", "Ljava/util/HashSet;", "countryCode", "isCacheable", "", "asyncClearNumCache", "", "clearContactCache", "clearMemCache", "getContactId", "number", "getContactName", "getCountryCode", "hasContactId", "hasContactName", "isContactWithoutPhoto", "id", "putContactId", "name", "putContactName", "putContactWithoutPhoto", "removeContact", "resetCacheOnMainThread", "context", "Landroid/content/Context;", "resetCacheOnWorkerThread", "setCacheable", "cacheable", "setCountryCode", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.o */
/* loaded from: classes3-dex2jar.jar:j/a/w0/o.class */
public final class C14094o {

    /* renamed from: a */
    public static boolean f31567a;

    /* renamed from: b */
    public static final C11048f<String> f31568b = new C11048f<>();

    /* renamed from: c */
    public static final C11048f<String> f31569c = new C11048f<>();

    /* renamed from: d */
    public static final HashSet<String> f31570d = new HashSet<>();

    /* renamed from: e */
    public static String f31571e;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/util/CacheManager$asyncClearNumCache$1", m472f = "CacheManager.kt", m471l = {134}, m470m = "invokeSuspend")
    /* renamed from: j.a.w0.o$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o$a.class */
    public static final class C14095a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f31572a;

        /* renamed from: b */
        public int f31573b;

        public C14095a(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C14095a aVar = new C14095a(dVar);
            aVar.f31572a = (CoroutineScope) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C14095a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f31573b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                C11052i.m10328e().m10354a();
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    static {
        new C14094o();
    }

    /* renamed from: a */
    public static final String m2566a(String str) {
        return f31569c.m10360b(str);
    }

    /* renamed from: a */
    public static final void m2568a() {
        BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new C14095a(null), 3, null);
    }

    @MainThread
    /* renamed from: a */
    public static final void m2567a(Context context) {
        C15149k.m377b(context, "context");
        C5776l.m24484a(context).m24475b();
    }

    /* renamed from: a */
    public static final void m2565a(String str, String str2) {
        if (f31567a) {
            f31569c.m10361a(str, str2);
        }
    }

    /* renamed from: a */
    public static final void m2564a(boolean z) {
        f31567a = z;
    }

    /* renamed from: b */
    public static final String m2561b(String str) {
        return f31568b.m10360b(str);
    }

    /* renamed from: b */
    public static final void m2563b() {
        f31568b.m10363a();
        f31569c.m10363a();
        f31570d.clear();
    }

    @WorkerThread
    /* renamed from: b */
    public static final void m2562b(Context context) {
        C15149k.m377b(context, "context");
        m2559c();
        C11052i.m10328e().m10354a();
        C5776l.m24484a(context).m24486a();
        C13048c.m4713a(context);
        C13110i.m4576d();
    }

    /* renamed from: b */
    public static final void m2560b(String str, String str2) {
        if (f31567a) {
            f31568b.m10361a(str, str2);
        }
    }

    /* renamed from: c */
    public static final void m2559c() {
        m2563b();
        f31571e = null;
    }

    /* renamed from: c */
    public static final boolean m2558c(String str) {
        return f31569c.m10362a(str);
    }

    /* renamed from: d */
    public static final String m2557d() {
        return f31571e;
    }

    /* renamed from: d */
    public static final boolean m2556d(String str) {
        return f31568b.m10362a(str);
    }

    /* renamed from: e */
    public static final boolean m2555e(String str) {
        return f31570d.contains(str);
    }

    /* renamed from: f */
    public static final void m2554f(String str) {
        if (f31567a) {
            f31570d.add(str);
        }
    }

    /* renamed from: g */
    public static final void m2553g(String str) {
        f31569c.m10359c(str);
        f31568b.m10359c(str);
    }

    /* renamed from: h */
    public static final void m2552h(String str) {
        f31571e = str;
    }
}
