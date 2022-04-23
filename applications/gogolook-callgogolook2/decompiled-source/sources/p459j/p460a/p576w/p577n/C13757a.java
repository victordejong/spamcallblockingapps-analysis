package p459j.p460a.p576w.p577n;

import gogolook.callgogolook2.gson.IapPageProductInfo;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p459j.p460a.p568u.C13640c;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, m815d2 = {"Lgogolook/callgogolook2/iap/data/IapFirebaseRemoteConfigDataSource;", "Lgogolook/callgogolook2/iap/data/IapRemoteConfigDataSource;", "firebaseRemoteConfig", "Lgogolook/callgogolook2/firebase/FirebaseRemoteConfigManager;", "(Lgogolook/callgogolook2/firebase/FirebaseRemoteConfigManager;)V", "getPromoInfo", "Lgogolook/callgogolook2/gson/IapPageProductInfo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.n.a */
/* loaded from: classes2-dex2jar.jar:j/a/w/n/a.class */
public final class C13757a implements AbstractC13759b {

    /* renamed from: a */
    public final C13640c f30869a;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/firebase/FirebaseRemoteConfigExtKt$getConfig$2", m472f = "FirebaseRemoteConfigExt.kt", m471l = {11}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.n.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/a$a.class */
    public static final class C13758a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super IapPageProductInfo>, Object> {

        /* renamed from: a */
        public CoroutineScope f30870a;

        /* renamed from: b */
        public int f30871b;

        /* renamed from: c */
        public final /* synthetic */ String f30872c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13758a(String str, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30872c = str;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13758a aVar = new C13758a(this.f30872c, dVar);
            aVar.f30870a = (CoroutineScope) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super IapPageProductInfo> dVar) {
            return ((C13758a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            C15064c.m478a();
            if (this.f30871b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                try {
                    String d = C13640c.m3745d().m3744d(this.f30872c);
                    obj2 = null;
                    if (d != null) {
                        obj2 = new C10099e().m13388a().m30982a(d, (Class<Object>) IapPageProductInfo.class);
                    }
                } catch (C10108n e) {
                    obj2 = null;
                }
                return obj2;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    public C13757a(C13640c cVar) {
        C15149k.m377b(cVar, "firebaseRemoteConfig");
        this.f30869a = cVar;
    }

    @Override // p459j.p460a.p576w.p577n.AbstractC13759b
    /* renamed from: a */
    public Object mo3502a(AbstractC15044d<? super IapPageProductInfo> dVar) {
        return BuildersKt.withContext(Dispatchers.getDefault(), new C13758a("iap_page_product_info", null), dVar);
    }
}
