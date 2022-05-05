package p081h.p160h.p179e.p192b.p197f;

import android.content.Context;
import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p081h.p160h.p179e.p192b.C6442a;
import p081h.p160h.p179e.p192b.p195d.C6460a;
import p081h.p160h.p179e.p192b.p196e.AbstractC6462b;
import p081h.p160h.p179e.p192b.p197f.p198d.C6472b;
import p626l.C14976h;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018�� \u00172\u00020\u0001:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0002J5\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u00062\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH��¢\u0006\u0002\b\u0010J\u001e\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00062\u0006\u0010\f\u001a\u00020\u0005H\u0002JE\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0080@ø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/model/ModelManager;", "", "()V", "cacheMap", "Lcom/gogolook/whoscallsdk/ml/cache/CacheMap;", "Lcom/gogolook/whoscallsdk/ml/model/ModelType;", "Lcom/gogolook/whoscallsdk/ml/model/Model;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "createModel", "", "", "modelType", "region", "dispatcherProvider", "Lcom/gogolook/whoscallsdk/ml/dispatcher/DispatcherProvider;", "createModel$whoscallSDK_ml_release", "getModel", "initModel", "context", "Landroid/content/Context;", "initModel$whoscallSDK_ml_release", "(Landroid/content/Context;Lcom/gogolook/whoscallsdk/ml/model/ModelType;Ljava/lang/String;Lcom/gogolook/whoscallsdk/ml/dispatcher/DispatcherProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.b.f.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/f/c.class */
public final class C6466c {

    /* renamed from: c */
    public static volatile C6466c f16105c;

    /* renamed from: d */
    public static final C6467a f16106d = new C6467a(null);

    /* renamed from: a */
    public final C6460a<ModelType, AbstractC6464a<?, ?>> f16107a = new C6460a<>(null, 1, null);

    /* renamed from: b */
    public final Mutex f16108b = MutexKt.Mutex$default(false, 1, null);

    /* renamed from: h.h.e.b.f.c$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/f/c$a.class */
    public static final class C6467a {
        public C6467a() {
        }

        public /* synthetic */ C6467a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C6466c m22509a() {
            C6466c cVar = C6466c.f16105c;
            if (cVar == null) {
                synchronized (this) {
                    cVar = C6466c.f16105c;
                    if (cVar == null) {
                        cVar = new C6466c();
                        C6466c.f16105c = cVar;
                    }
                }
            }
            return cVar;
        }
    }

    @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/model/ModelManager$initModel$2", m472f = "ModelManager.kt", m471l = {59, 90, 79}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0001*\u00020\u0004H\u008a@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "Lcom/gogolook/whoscallsdk/ml/model/Model;", "", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: h.h.e.b.f.c$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/b/f/c$b.class */
    public static final class C6468b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super AbstractC6464a<String, ? extends float[]>>, Object> {

        /* renamed from: a */
        public CoroutineScope f16109a;

        /* renamed from: b */
        public Object f16110b;

        /* renamed from: c */
        public Object f16111c;

        /* renamed from: d */
        public Object f16112d;

        /* renamed from: e */
        public int f16113e;

        /* renamed from: f */
        public int f16114f;

        /* renamed from: h */
        public final /* synthetic */ ModelType f16116h;

        /* renamed from: i */
        public final /* synthetic */ String f16117i;

        /* renamed from: j */
        public final /* synthetic */ AbstractC6462b f16118j;

        /* renamed from: k */
        public final /* synthetic */ Context f16119k;

        @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/model/ModelManager$initModel$2$1$1$1", m472f = "ModelManager.kt", m471l = {70, 73}, m470m = "invokeSuspend")
        /* renamed from: h.h.e.b.f.c$b$a */
        /* loaded from: classes2-dex2jar.jar:h/h/e/b/f/c$b$a.class */
        public static final class C6469a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f16120a;

            /* renamed from: b */
            public int f16121b;

            /* renamed from: c */
            public final /* synthetic */ AbstractC6464a f16122c;

            /* renamed from: d */
            public final /* synthetic */ C6468b f16123d;

            /* renamed from: e */
            public final /* synthetic */ CoroutineScope f16124e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C6469a(AbstractC6464a aVar, AbstractC15044d dVar, C6468b bVar, CoroutineScope coroutineScope) {
                super(2, dVar);
                this.f16122c = aVar;
                this.f16123d = bVar;
                this.f16124e = coroutineScope;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C6469a aVar = new C6469a(this.f16122c, dVar, this.f16123d, this.f16124e);
                aVar.f16120a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C6469a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f16121b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C6442a.m22560a(this.f16120a, "preProcess");
                    AbstractC6464a aVar = this.f16122c;
                    Context context = this.f16123d.f16119k;
                    this.f16121b = 1;
                    if (aVar.mo22491b(context, this) == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return C14989s.f33022a;
            }
        }

        @AbstractC15070f(m473c = "com/gogolook/whoscallsdk/ml/model/ModelManager$initModel$2$1$1$2", m472f = "ModelManager.kt", m471l = {74, 77}, m470m = "invokeSuspend")
        /* renamed from: h.h.e.b.f.c$b$b */
        /* loaded from: classes2-dex2jar.jar:h/h/e/b/f/c$b$b.class */
        public static final class C6470b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f16125a;

            /* renamed from: b */
            public int f16126b;

            /* renamed from: c */
            public final /* synthetic */ AbstractC6464a f16127c;

            /* renamed from: d */
            public final /* synthetic */ C6468b f16128d;

            /* renamed from: e */
            public final /* synthetic */ CoroutineScope f16129e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C6470b(AbstractC6464a aVar, AbstractC15044d dVar, C6468b bVar, CoroutineScope coroutineScope) {
                super(2, dVar);
                this.f16127c = aVar;
                this.f16128d = bVar;
                this.f16129e = coroutineScope;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C6470b bVar = new C6470b(this.f16127c, dVar, this.f16128d, this.f16129e);
                bVar.f16125a = (CoroutineScope) obj;
                return bVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C6470b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f16126b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C6442a.m22560a(this.f16125a, "init");
                    AbstractC6464a aVar = this.f16127c;
                    Context context = this.f16128d.f16119k;
                    this.f16126b = 1;
                    if (aVar.mo22502a(context, (AbstractC15044d<? super C14989s>) this) == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6468b(ModelType modelType, String str, AbstractC6462b bVar, Context context, AbstractC15044d dVar) {
            super(2, dVar);
            this.f16116h = modelType;
            this.f16117i = str;
            this.f16118j = bVar;
            this.f16119k = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C6468b bVar = new C6468b(this.f16116h, this.f16117i, this.f16118j, this.f16119k, dVar);
            bVar.f16109a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super AbstractC6464a<String, ? extends float[]>> dVar) {
            return ((C6468b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Not initialized variable reg: 15, insn: 0x0252: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:103:0x0252 */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Mutex mutex;
            AbstractC6464a<String, float[]> aVar;
            CoroutineScope coroutineScope;
            int i;
            Deferred async$default;
            Deferred async$default2;
            Mutex mutex2;
            Object a = C15064c.m478a();
            int i2 = this.f16114f;
            try {
                if (i2 != 0) {
                    if (i2 == 1) {
                        i = this.f16113e;
                        mutex2 = (Mutex) this.f16111c;
                        coroutineScope = (CoroutineScope) this.f16110b;
                        if (obj instanceof C14979k.C14981b) {
                            throw ((C14979k.C14981b) obj).f33014a;
                        }
                    } else if (i2 == 2) {
                        aVar = (AbstractC6464a) this.f16112d;
                        AbstractC6464a aVar2 = (AbstractC6464a) this.f16111c;
                        mutex2 = (Mutex) this.f16110b;
                        if (!(obj instanceof C14979k.C14981b)) {
                            return aVar;
                        }
                        throw ((C14979k.C14981b) obj).f33014a;
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    coroutineScope = this.f16109a;
                    mutex2 = C6466c.this.f16108b;
                    this.f16110b = coroutineScope;
                    this.f16111c = mutex2;
                    this.f16113e = 0;
                    this.f16114f = 1;
                    if (mutex2.lock(null, this) == a) {
                        return a;
                    }
                    i = 0;
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                AbstractC6464a a2 = C6466c.this.m22514a(this.f16116h);
                if (a2 == null || !a2.mo22488c()) {
                    C6442a.m22561a(coroutineScope);
                    AbstractC6464a<String, float[]> a3 = C6466c.this.m22513a(this.f16116h, this.f16117i, this.f16118j);
                    if (a3 != null) {
                        async$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, new CoroutineName("preProcessAsync").plus(this.f16118j.mo22525a()), null, new C6469a(a3, null, this, coroutineScope), 2, null);
                        async$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope, new CoroutineName("initAsync").plus(this.f16118j.mo22525a()), null, new C6470b(a3, null, this, coroutineScope), 2, null);
                        List c = C15021m.m557c(async$default, async$default2);
                        this.f16110b = mutex;
                        this.f16113e = i;
                        this.f16111c = a2;
                        this.f16112d = a3;
                        this.f16114f = 2;
                        if (AwaitKt.awaitAll(c, this) == a) {
                            return a;
                        }
                        aVar = a3;
                    } else {
                        aVar = null;
                    }
                    return aVar;
                }
                C6442a.m22561a(coroutineScope);
                StringBuilder sb = new StringBuilder();
                sb.append("Hit model ");
                sb.append(a2);
                sb.append(" in cache.");
                sb.toString();
                return a2;
            } finally {
                mutex.unlock(null);
            }
        }
    }

    /* renamed from: a */
    public final AbstractC6464a<String, float[]> m22514a(ModelType modelType) {
        boolean z = modelType instanceof ModelType.SmsFilterRemote;
        AbstractC6464a<String, float[]> aVar = null;
        if (z || C15149k.m384a(modelType, ModelType.SmsFilterLocal.INSTANCE)) {
            AbstractC6464a<?, ?> a = this.f16107a.m22532a((C6460a<ModelType, AbstractC6464a<?, ?>>) modelType);
            AbstractC6464a<String, float[]> aVar2 = a;
            if (!(a instanceof AbstractC6464a)) {
                aVar2 = null;
            }
            aVar = aVar2;
        } else if (!(modelType instanceof ModelType.NotAModel)) {
            throw new C14976h();
        }
        return aVar;
    }

    /* renamed from: a */
    public final AbstractC6464a<String, float[]> m22513a(ModelType modelType, String str, AbstractC6462b bVar) {
        AbstractC6464a<String, float[]> aVar;
        C15149k.m377b(modelType, "modelType");
        C15149k.m377b(str, "region");
        C15149k.m377b(bVar, "dispatcherProvider");
        if (modelType instanceof ModelType.SmsFilterRemote) {
            AbstractC6464a<String, float[]> b = new C6472b().m22507b(new C6465b(modelType, str, bVar));
            this.f16107a.m22531a((C6460a<ModelType, AbstractC6464a<?, ?>>) modelType, (ModelType) b);
            aVar = b;
        } else if (modelType instanceof ModelType.SmsFilterLocal) {
            AbstractC6464a<String, float[]> a = new C6472b().m22508a(new C6465b(modelType, str, bVar));
            this.f16107a.m22531a((C6460a<ModelType, AbstractC6464a<?, ?>>) modelType, (ModelType) a);
            aVar = a;
        } else if (modelType instanceof ModelType.NotAModel) {
            aVar = null;
        } else {
            throw new C14976h();
        }
        return aVar;
    }

    /* renamed from: a */
    public final Object m22515a(Context context, ModelType modelType, String str, AbstractC6462b bVar, AbstractC15044d<? super AbstractC6464a<String, ? extends float[]>> dVar) {
        return BuildersKt.withContext(bVar.mo22525a(), new C6468b(modelType, str, bVar, context, null), dVar);
    }
}
