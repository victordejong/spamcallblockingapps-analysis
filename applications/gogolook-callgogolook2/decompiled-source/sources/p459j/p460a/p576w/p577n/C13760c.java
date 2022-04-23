package p459j.p460a.p576w.p577n;

import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p459j.p460a.p513i.AbstractC12402b;
import p459j.p460a.p513i.AbstractC12404c;
import p459j.p460a.p513i.C12407e;
import p459j.p460a.p541n0.C13085e;
import p459j.p460a.p576w.p578o.C13799f;
import p459j.p460a.p576w.p578o.C13800g;
import p459j.p460a.p576w.p578o.C13804j;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14324z0;
import p459j.p460a.p582w0.p587d5.C13976c;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p655o.C15299r;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� &2\u00020\u0001:\u0002&'B\u0005¢\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eJ)\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u0015H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J.\u0010\u001e\u001a\u00020\n2\b\b\u0002\u0010\u001f\u001a\u00020 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eJ\u001b\u0010#\u001a\u0004\u0018\u00010\n2\u0006\u0010$\u001a\u00020\u0013H\u0082@ø\u0001��¢\u0006\u0002\u0010%R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006("}, m815d2 = {"Lgogolook/callgogolook2/iap/data/IapRemoteDataManager;", "", "()V", "iapRemoteDataSource", "Lgogolook/callgogolook2/api/IapRemoteDataSource;", "getIapRemoteDataSource", "()Lgogolook/callgogolook2/api/IapRemoteDataSource;", "iapRemoteDataSource$delegate", "Lkotlin/Lazy;", "checkSubscriptionStatus", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "remoteDataSource", "Lgogolook/callgogolook2/api/BaseRemoteDataSource;", "Lgogolook/callgogolook2/api/GgpApiService;", "fetchAndSavePlan", "Lkotlin/Pair;", "", "Lgogolook/callgogolook2/iap/model/Plans;", "timeOut", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchPlan", "isStatusChanged", "", "newStatus", "Lgogolook/callgogolook2/iap/model/SubscriptionStatus;", "oriStatusRealmObject", "Lgogolook/callgogolook2/realm/obj/iap/SubscriptionStatusRealmObject;", "refreshUserIapStatus", "scope", "Lkotlinx/coroutines/CoroutineScope;", "callback", "Lgogolook/callgogolook2/iap/data/IapRemoteDataManager$GetUserIapStatusCallback;", "savePlans", "plans", "(Lgogolook/callgogolook2/iap/model/Plans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "GetUserIapStatusCallback", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.n.c */
/* loaded from: classes2-dex2jar.jar:j/a/w/n/c.class */
public final class C13760c {

    /* renamed from: b */
    public static final /* synthetic */ AbstractC14906i[] f30873b;

    /* renamed from: c */
    public static volatile C13760c f30874c;

    /* renamed from: d */
    public static final C13761a f30875d = new C13761a(null);

    /* renamed from: a */
    public final AbstractC14974f f30876a = C14975g.m662a(C13768g.f30899a);

    /* renamed from: j.a.w.n.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$a.class */
    public static final class C13761a {
        public C13761a() {
        }

        public /* synthetic */ C13761a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C13760c m3487a() {
            C13760c cVar = C13760c.f30874c;
            if (cVar == null) {
                synchronized (this) {
                    cVar = C13760c.f30874c;
                    if (cVar == null) {
                        cVar = new C13760c();
                        C13760c.f30874c = cVar;
                    }
                }
            }
            return cVar;
        }
    }

    /* renamed from: j.a.w.n.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$b.class */
    public interface AbstractC13762b {
        /* renamed from: a */
        void mo1469a(boolean z);
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager$checkSubscriptionStatus$1", m472f = "IapRemoteDataManager.kt", m471l = {94, 98, 102, 108}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.w.n.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$c.class */
    public static final class C13763c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30877a;

        /* renamed from: b */
        public Object f30878b;

        /* renamed from: c */
        public Object f30879c;

        /* renamed from: d */
        public Object f30880d;

        /* renamed from: e */
        public boolean f30881e;

        /* renamed from: f */
        public int f30882f;

        /* renamed from: h */
        public final /* synthetic */ AbstractC12402b f30884h;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager$checkSubscriptionStatus$1$result$1", m472f = "IapRemoteDataManager.kt", m471l = {95, 95}, m470m = "invokeSuspend")
        /* renamed from: j.a.w.n.c$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$c$a.class */
        public static final class C13764a extends AbstractC15078m implements AbstractC15122p<AbstractC12404c, AbstractC15044d<? super C15299r<C13804j>>, Object> {

            /* renamed from: a */
            public AbstractC12404c f30885a;

            /* renamed from: b */
            public int f30886b;

            public C13764a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13764a aVar = new C13764a(dVar);
                aVar.f30885a = (AbstractC12404c) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(AbstractC12404c cVar, AbstractC15044d<? super C15299r<C13804j>> dVar) {
                return ((C13764a) create(cVar, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f30886b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    AbstractC12404c cVar = this.f30885a;
                    this.f30886b = 1;
                    Object a2 = cVar.m6233a(this);
                    obj = a2;
                    if (a2 == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13763c(AbstractC12402b bVar, AbstractC15044d dVar) {
            super(2, dVar);
            C13760c.this = r5;
            this.f30884h = bVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13763c cVar = new C13763c(this.f30884h, dVar);
            cVar.f30877a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13763c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0133  */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 409
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p577n.C13760c.C13763c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager", m472f = "IapRemoteDataManager.kt", m471l = {127, 132, 140}, m470m = "fetchAndSavePlan")
    /* renamed from: j.a.w.n.c$d */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$d.class */
    public static final class C13765d extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f30887a;

        /* renamed from: b */
        public int f30888b;

        /* renamed from: d */
        public Object f30890d;

        /* renamed from: e */
        public Object f30891e;

        /* renamed from: f */
        public Object f30892f;

        /* renamed from: g */
        public long f30893g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13765d(AbstractC15044d dVar) {
            super(dVar);
            C13760c.this = r4;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f30887a = obj;
            this.f30888b |= Integer.MIN_VALUE;
            return C13760c.this.m3500a(0L, this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager$fetchAndSavePlan$result$1", m472f = "IapRemoteDataManager.kt", m471l = {128, 128}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.n.c$e */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$e.class */
    public static final class C13766e extends AbstractC15078m implements AbstractC15122p<AbstractC12404c, AbstractC15044d<? super C15299r<C13800g>>, Object> {

        /* renamed from: a */
        public AbstractC12404c f30894a;

        /* renamed from: b */
        public int f30895b;

        public C13766e(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13766e eVar = new C13766e(dVar);
            eVar.f30894a = (AbstractC12404c) obj;
            return eVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(AbstractC12404c cVar, AbstractC15044d<? super C15299r<C13800g>> dVar) {
            return ((C13766e) create(cVar, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30895b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                AbstractC12404c cVar = this.f30894a;
                String n = C14017g4.m2810n();
                C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
                this.f30895b = 1;
                Object b = cVar.m6232b(n, this);
                obj = b;
                if (b == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return obj;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager$fetchPlan$1", m472f = "IapRemoteDataManager.kt", m471l = {122, 124}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.n.c$f */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$f.class */
    public static final class C13767f extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30896a;

        /* renamed from: b */
        public int f30897b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13767f(AbstractC15044d dVar) {
            super(2, dVar);
            C13760c.this = r5;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13767f fVar = new C13767f(dVar);
            fVar.f30896a = (CoroutineScope) obj;
            return fVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13767f) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30897b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13760c cVar = C13760c.this;
                this.f30897b = 1;
                if (C13760c.m3498a(cVar, 0L, this, 1, (Object) null) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.w.n.c$g */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$g.class */
    public static final class C13768g extends AbstractC15150l implements AbstractC15107a<C12407e> {

        /* renamed from: a */
        public static final C13768g f30899a = new C13768g();

        public C13768g() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12407e invoke() {
            return new C12407e(0L, 1, null);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager$refreshUserIapStatus$1", m472f = "IapRemoteDataManager.kt", m471l = {51, 57, 65, 76}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.w.n.c$h */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$h.class */
    public static final class C13769h extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30900a;

        /* renamed from: b */
        public Object f30901b;

        /* renamed from: c */
        public Object f30902c;

        /* renamed from: d */
        public Object f30903d;

        /* renamed from: e */
        public int f30904e;

        /* renamed from: g */
        public final /* synthetic */ AbstractC12402b f30906g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC13762b f30907h;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager$refreshUserIapStatus$1$2", m472f = "IapRemoteDataManager.kt", m471l = {72}, m470m = "invokeSuspend")
        /* renamed from: j.a.w.n.c$h$a */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$h$a.class */
        public static final class C13770a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f30908a;

            /* renamed from: b */
            public int f30909b;

            public C13770a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13770a aVar = new C13770a(dVar);
                aVar.f30908a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C13770a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                C15064c.m478a();
                if (this.f30909b != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C14037j3.m2731a().mo2704a(new C14324z0(!AdUtils.m28802g()));
                    return C14989s.f33022a;
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            }
        }

        @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager$refreshUserIapStatus$1$result$1", m472f = "IapRemoteDataManager.kt", m471l = {53, 53}, m470m = "invokeSuspend")
        /* renamed from: j.a.w.n.c$h$b */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$h$b.class */
        public static final class C13771b extends AbstractC15078m implements AbstractC15122p<AbstractC12404c, AbstractC15044d<? super C15299r<C13800g>>, Object> {

            /* renamed from: a */
            public AbstractC12404c f30910a;

            /* renamed from: b */
            public int f30911b;

            /* renamed from: c */
            public final /* synthetic */ String f30912c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13771b(String str, AbstractC15044d dVar) {
                super(2, dVar);
                this.f30912c = str;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13771b bVar = new C13771b(this.f30912c, dVar);
                bVar.f30910a = (AbstractC12404c) obj;
                return bVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(AbstractC12404c cVar, AbstractC15044d<? super C15299r<C13800g>> dVar) {
                return ((C13771b) create(cVar, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f30911b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    AbstractC12404c cVar = this.f30910a;
                    String str = this.f30912c;
                    C15149k.m383a((Object) str, "region");
                    this.f30911b = 1;
                    Object a2 = cVar.m6234a(str, this);
                    obj = a2;
                    if (a2 == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13769h(AbstractC12402b bVar, AbstractC13762b bVar2, AbstractC15044d dVar) {
            super(2, dVar);
            C13760c.this = r5;
            this.f30906g = bVar;
            this.f30907h = bVar2;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13769h hVar = new C13769h(this.f30906g, this.f30907h, dVar);
            hVar.f30900a = (CoroutineScope) obj;
            return hVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13769h) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x0181  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x018c  */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 469
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p577n.C13760c.C13769h.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRemoteDataManager$savePlans$2", m472f = "IapRemoteDataManager.kt", m471l = {165}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.n.c$i */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/c$i.class */
    public static final class C13772i extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30913a;

        /* renamed from: b */
        public int f30914b;

        /* renamed from: c */
        public final /* synthetic */ C13800g f30915c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13772i(C13800g gVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30915c = gVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13772i iVar = new C13772i(this.f30915c, dVar);
            iVar.f30913a = (CoroutineScope) obj;
            return iVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13772i) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C14989s sVar;
            C15064c.m478a();
            if (this.f30914b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                List<C13799f> a = this.f30915c.m3423a();
                if (a != null) {
                    C13085e.m4636c(a);
                    sVar = C14989s.f33022a;
                } else {
                    sVar = null;
                }
                return sVar;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13760c.class), "iapRemoteDataSource", "getIapRemoteDataSource()Lgogolook/callgogolook2/api/IapRemoteDataSource;");
        C15131a0.m412a(sVar);
        f30873b = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static /* synthetic */ Object m3498a(C13760c cVar, long j, AbstractC15044d dVar, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 60;
        }
        return cVar.m3500a(j, dVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static /* synthetic */ void m3496a(C13760c cVar, CoroutineDispatcher coroutineDispatcher, AbstractC12402b bVar, int i, Object obj) {
        if ((i & 2) != 0) {
            bVar = null;
        }
        cVar.m3491a(coroutineDispatcher, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static /* synthetic */ void m3495a(C13760c cVar, CoroutineScope coroutineScope, AbstractC13762b bVar, AbstractC12402b bVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineScope = CoroutineScopeKt.MainScope();
        }
        if ((i & 2) != 0) {
            bVar = null;
        }
        if ((i & 4) != 0) {
            bVar2 = null;
        }
        cVar.m3490a(coroutineScope, bVar, bVar2);
    }

    /* renamed from: c */
    public static final C13760c m3488c() {
        return f30875d.m3487a();
    }

    /* renamed from: a */
    public final C12407e m3501a() {
        AbstractC14974f fVar = this.f30876a;
        AbstractC14906i iVar = f30873b[0];
        return (C12407e) fVar.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3500a(long r6, p626l.p634w.AbstractC15044d<? super p626l.C14978j<java.lang.Integer, p459j.p460a.p576w.p578o.C13800g>> r8) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p577n.C13760c.m3500a(long, l.w.d):java.lang.Object");
    }

    /* renamed from: a */
    public final /* synthetic */ Object m3494a(C13800g gVar, AbstractC15044d<? super C14989s> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13772i(gVar, null), dVar);
    }

    /* renamed from: a */
    public final void m3492a(CoroutineDispatcher coroutineDispatcher) {
        C15149k.m377b(coroutineDispatcher, "dispatcher");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineDispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), null, null, new C13767f(null), 3, null);
    }

    /* renamed from: a */
    public final void m3491a(CoroutineDispatcher coroutineDispatcher, AbstractC12402b<AbstractC12404c> bVar) {
        C15149k.m377b(coroutineDispatcher, "dispatcher");
        if (bVar == null) {
            bVar = m3501a();
        }
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineDispatcher.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), null, null, new C13763c(bVar, null), 3, null);
    }

    /* renamed from: a */
    public final void m3490a(CoroutineScope coroutineScope, AbstractC13762b bVar, AbstractC12402b<AbstractC12404c> bVar2) {
        C15149k.m377b(coroutineScope, "scope");
        if (bVar2 == null) {
            bVar2 = m3501a();
        }
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C13769h(bVar2, bVar, null), 3, null);
    }

    /* renamed from: a */
    public final boolean m3493a(C13804j jVar, SubscriptionStatusRealmObject subscriptionStatusRealmObject) {
        if (!C13976c.f31384a.m9463a("iap_subscription_status")) {
            return true;
        }
        boolean z = true;
        if (jVar.m3400c() == subscriptionStatusRealmObject.getStatus()) {
            z = C14021h2.f31457a.m2791a(jVar, subscriptionStatusRealmObject);
        }
        return z;
    }
}
