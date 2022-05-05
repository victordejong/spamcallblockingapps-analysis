package p459j.p460a.p461a0;

import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import p459j.p460a.p461a0.AbstractC11043c;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p564s.C13598x;
import p459j.p460a.p582w0.C14063l4;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\fX\u0096D¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/loader/OfflineDbLoader;", "Lgogolook/callgogolook2/loader/INumberInfoLoader;", "e164", "", "listener", "Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;", "(Ljava/lang/String;Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;)V", "getListener", "()Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;", "setListener", "(Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;)V", "timeoutMillis", "", "getTimeoutMillis", "()J", "load", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a0.k */
/* loaded from: classes2-dex2jar.jar:j/a/a0/k.class */
public final class C11068k implements AbstractC11043c {

    /* renamed from: a */
    public final long f24912a = 2000;

    /* renamed from: b */
    public final String f24913b;

    /* renamed from: c */
    public AbstractC11043c.AbstractC11044a f24914c;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/loader/OfflineDbLoader$load$1", m472f = "OfflineDbLoader.kt", m471l = {20, 22}, m470m = "invokeSuspend")
    /* renamed from: j.a.a0.k$a */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/k$a.class */
    public static final class C11069a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f24915a;

        /* renamed from: b */
        public int f24916b;

        public C11069a(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11069a aVar = new C11069a(dVar);
            aVar.f24915a = (CoroutineScope) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11069a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C14989s sVar;
            Object a = C15064c.m478a();
            int i = this.f24916b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                long a2 = C13598x.m3860g().m3868a(C11068k.class);
                this.f24916b = 1;
                if (DelayKt.delay(a2, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            AbstractC11043c.AbstractC11044a listener = C11068k.this.getListener();
            if (listener != null) {
                NumberInfo b = C13598x.m3860g().m3865b(C11068k.class);
                C15149k.m383a((Object) b, "FakeDataManager.getInsta…lineDbLoader::class.java)");
                listener.mo10314a(b);
                sVar = C14989s.f33022a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    public C11068k(String str, AbstractC11043c.AbstractC11044a aVar) {
        C15149k.m377b(str, "e164");
        this.f24913b = str;
        this.f24914c = aVar;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    /* renamed from: a */
    public long mo10308a() {
        return this.f24912a;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    /* renamed from: a */
    public void mo10306a(AbstractC11043c.AbstractC11044a aVar) {
        this.f24914c = aVar;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    public AbstractC11043c.AbstractC11044a getListener() {
        return this.f24914c;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    public void load() {
        AbstractC11043c.AbstractC11044a listener = getListener();
        if (listener != null) {
            listener.onStart();
        }
        C13565v g = C13565v.m3921g();
        C15149k.m383a((Object) g, "DevelopMode.getInstance()");
        if (!g.m23335b() || !CallStats.m28533i()) {
            AbstractC11043c.AbstractC11044a listener2 = getListener();
            if (listener2 != null) {
                NumberInfo b = C14063l4.m2672b(this.f24913b);
                C15149k.m383a((Object) b, "UtilsOfflineDb.getNumberInfo(e164)");
                listener2.mo10314a(b);
                return;
            }
            return;
        }
        BuildersKt__BuildersKt.runBlocking$default(null, new C11069a(null), 1, null);
    }
}
