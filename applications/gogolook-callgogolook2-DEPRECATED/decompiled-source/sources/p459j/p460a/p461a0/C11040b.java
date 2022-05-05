package p459j.p460a.p461a0;

import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p461a0.AbstractC11045d;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14172t3;
import p459j.p460a.p582w0.C14201w2;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018��  2\u00020\u0001:\u0001 B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\bH\u0014J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u0018\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\bH\u0016J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002J \u0010\u001b\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u001c\u0010\u001b\u001a\u00020\u00102\b\u0010\u000e\u001a\u0004\u0018\u00010\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\bH\u0017J \u0010\u001f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\t\u001a\u00020\nX\u0094D¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006!"}, m815d2 = {"Lgogolook/callgogolook2/loader/DefaultUpdater;", "Lgogolook/callgogolook2/loader/IObserver;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "(Lkotlinx/coroutines/CoroutineScope;)V", "mergedInfoMap", "", "", "Lgogolook/callgogolook2/gson/NumberInfo;", "notifyUpdating", "", "getNotifyUpdating", "()Z", "getMergedInfo", "number", "merge", "", AnimatedVectorDrawableCompat.TARGET, "source", "onError", "reason", "Lgogolook/callgogolook2/gson/NumberInfo$ErrorReason;", "onFinish", "onLoading", "onUpdate", "numberInfo", "removeMergedInfo", "update", UserProfile.KEY_CONTACT_INFO_VALUE, "status", "Lgogolook/callgogolook2/loader/Status;", "updateOnScope", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a0.b */
/* loaded from: classes2-dex2jar.jar:j/a/a0/b.class */
public class C11040b implements AbstractC11045d {

    /* renamed from: a */
    public Map<String, NumberInfo> f24835a;

    /* renamed from: b */
    public final boolean f24836b;

    /* renamed from: c */
    public final CoroutineScope f24837c;

    /* renamed from: j.a.a0.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/b$a.class */
    public static final class C11041a {
        public C11041a() {
        }

        public /* synthetic */ C11041a(C15145g gVar) {
            this();
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/loader/DefaultUpdater$updateOnScope$1", m472f = "DefaultUpdater.kt", m471l = {42}, m470m = "invokeSuspend")
    /* renamed from: j.a.a0.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/b$b.class */
    public static final class C11042b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f24838a;

        /* renamed from: b */
        public int f24839b;

        /* renamed from: d */
        public final /* synthetic */ String f24841d;

        /* renamed from: e */
        public final /* synthetic */ NumberInfo f24842e;

        /* renamed from: f */
        public final /* synthetic */ EnumC11085n f24843f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11042b(String str, NumberInfo numberInfo, EnumC11085n nVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f24841d = str;
            this.f24842e = numberInfo;
            this.f24843f = nVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11042b bVar = new C11042b(this.f24841d, this.f24842e, this.f24843f, dVar);
            bVar.f24838a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11042b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f24839b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                C11040b.this.mo5583a(this.f24841d, this.f24842e, this.f24843f);
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    static {
        new C11041a(null);
    }

    public C11040b() {
        this(null, 1, null);
    }

    public C11040b(CoroutineScope coroutineScope) {
        C15149k.m377b(coroutineScope, "coroutineScope");
        this.f24837c = coroutineScope;
        this.f24835a = new ConcurrentHashMap();
    }

    public /* synthetic */ C11040b(CoroutineScope coroutineScope, int i, C15145g gVar) {
        this((i & 1) != 0 ? new C14172t3(Dispatchers.getDefault()) : coroutineScope);
    }

    /* renamed from: a */
    public void mo5581a(NumberInfo numberInfo, NumberInfo numberInfo2) {
        C15149k.m377b(numberInfo, AnimatedVectorDrawableCompat.TARGET);
        C15149k.m377b(numberInfo2, "source");
        NumberInfo.InfoSource w = numberInfo2.m28289w();
        C15149k.m383a((Object) w, "source.infoSource");
        if (!w.m28280c() || (!numberInfo.m28372X() && !numberInfo.m28321h0())) {
            C14201w2.m2235a(numberInfo, numberInfo2);
        }
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: a */
    public void mo10358a(String str) {
        C15149k.m377b(str, "number");
        m10369b(str, m10368c(str), EnumC11085n.LOADING);
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: a */
    public void mo10357a(String str, NumberInfo.ErrorReason errorReason) {
        C15149k.m377b(str, "number");
        C15149k.m377b(errorReason, "reason");
        NumberInfo c = m10368c(str);
        if (c.m28305o() == null) {
            c.m28365a(errorReason);
        }
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: a */
    public void mo5580a(String str, NumberInfo.InfoSource infoSource, boolean z) {
        AbstractC11045d.C11046a.m10366a(this, str, infoSource, z);
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: a */
    public void mo10356a(String str, NumberInfo numberInfo) {
        C15149k.m377b(str, "number");
        C15149k.m377b(numberInfo, "numberInfo");
        NumberInfo c = m10368c(str);
        C14080m2.m2615a("DefaultUpdater", "onUpdate, number=" + str + UserProfile.CARD_CATE_SEPARATOR + "source=" + numberInfo.m28289w() + UserProfile.CARD_CATE_SEPARATOR + "hasInfo=" + numberInfo.m28372X() + UserProfile.CARD_CATE_SEPARATOR + "hasStatsInfo=" + numberInfo.m28321h0());
        synchronized (c) {
            mo5581a(c, numberInfo);
            C14989s sVar = C14989s.f33022a;
        }
        if (mo5582a()) {
            m10369b(str, C14201w2.m2236a(c), EnumC11085n.UPDATING);
        }
    }

    /* renamed from: a */
    public void mo5583a(String str, NumberInfo numberInfo, EnumC11085n nVar) {
        C15149k.m377b(str, "number");
        C15149k.m377b(numberInfo, UserProfile.KEY_CONTACT_INFO_VALUE);
        C15149k.m377b(nVar, "status");
        mo1836b(str, numberInfo);
    }

    /* renamed from: a */
    public boolean mo5582a() {
        return this.f24836b;
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: b */
    public void mo10355b(String str) {
        C15149k.m377b(str, "number");
        NumberInfo d = m10367d(str);
        if (d == null) {
            d = new NumberInfo();
        }
        C14080m2.m2615a("DefaultUpdater", "onFinish, number=" + str + UserProfile.CARD_CATE_SEPARATOR + "hasInfo=" + d.m28372X() + UserProfile.CARD_CATE_SEPARATOR + "hasStatsInfo=" + d.m28321h0() + UserProfile.CARD_CATE_SEPARATOR + "errorReason=" + d.m28305o());
        if (d.m28305o() == null || d.m28372X() || d.m28321h0()) {
            m10369b(str, d, EnumC11085n.FINISH);
        } else {
            m10369b(str, d, EnumC11085n.ERROR);
        }
    }

    /* renamed from: b */
    public void mo1836b(String str, NumberInfo numberInfo) {
    }

    /* renamed from: b */
    public final void m10369b(String str, NumberInfo numberInfo, EnumC11085n nVar) {
        numberInfo.m28362a(nVar);
        BuildersKt.launch$default(this.f24837c, null, null, new C11042b(str, numberInfo, nVar, null), 3, null);
    }

    /* renamed from: c */
    public final NumberInfo m10368c(String str) {
        NumberInfo numberInfo;
        NumberInfo numberInfo2 = this.f24835a.get(str);
        if (numberInfo2 != null) {
            numberInfo = numberInfo2;
        } else {
            NumberInfo numberInfo3 = new NumberInfo();
            this.f24835a.put(str, numberInfo3);
            numberInfo = numberInfo3;
        }
        return numberInfo;
    }

    /* renamed from: d */
    public final NumberInfo m10367d(String str) {
        return this.f24835a.remove(str);
    }
}
