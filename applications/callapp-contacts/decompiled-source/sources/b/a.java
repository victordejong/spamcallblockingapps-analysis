package b;

import com.callapp.contacts.loader.EagerContactLoader;
import com.callapp.contacts.loader.api.ContactDataLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.CLog;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.c.b.a.j;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ab;
import kotlin.p;
import kotlin.v;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.ak;
import kotlinx.coroutines.as;
import kotlinx.coroutines.av;
import kotlinx.coroutines.az;
import kotlinx.coroutines.bd;
import kotlinx.coroutines.bk;
import kotlinx.coroutines.bn;
import kotlinx.coroutines.bo;
import kotlinx.coroutines.bv;
import kotlinx.coroutines.cq;
import kotlinx.coroutines.o;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcoroutinesrunner/CoroutinesRunner;", "", "()V", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0124a f6247a = new C0124a(null);

    /* renamed from: b  reason: collision with root package name */
    private static final bk f6248b = bn.a(new ThreadPoolExecutor(Runtime.getRuntime().availableProcessors(), Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue()));

    /* renamed from: c  reason: collision with root package name */
    private static final bk f6249c = bn.a(new ThreadPoolExecutor(Math.max(2, Runtime.getRuntime().availableProcessors() / 2), Math.max(2, Runtime.getRuntime().availableProcessors() / 2), 60, TimeUnit.SECONDS, new LinkedBlockingQueue()));

    @Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u001e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015J4\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0010\u001a\u00020\u00112\u001e\u0010\u001b\u001a\u001a\u0012\b\u0012\u00060\u001dj\u0002`\u001e0\u001cj\f\u0012\b\u0012\u00060\u001dj\u0002`\u001e`\u001fJ.\u0010 \u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u001e\u0010\u001b\u001a\u001a\u0012\b\u0012\u00060\u001dj\u0002`\u001e0\u001cj\f\u0012\b\u0012\u00060\u001dj\u0002`\u001e`\u001fJ\u000e\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ$\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0#2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010%\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006¨\u0006&"}, d2 = {"Lcoroutinesrunner/CoroutinesRunner$Companion;", "", "()V", "syncThreadPool", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "getSyncThreadPool", "()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "threadPool", "getThreadPool", "await", "", "task", "Lcom/callapp/contacts/manager/task/Task;", "timeout", "", "loadAsync", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "loader", "Lcom/callapp/contacts/loader/api/ContactDataLoader;", "loadContext", "Lcom/callapp/contacts/loader/api/LoadContext;", "loadWithoutUpdate", "Lcom/callapp/contacts/loader/EagerContactLoader;", "runAsyncTasks", "", "Lkotlinx/coroutines/Job;", "runnables", "Ljava/util/ArrayList;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "Lkotlin/collections/ArrayList;", "runSyncTasks", "runTask", "scheduleTask", "Lkotlinx/coroutines/Deferred;", "waittime", "updateAfterLoadDone", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* renamed from: b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:b/a$a.class */
    public static final class C0124a {

        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {83}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$await$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:b/a$a$a.class */
        public static final class C0125a extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6250a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Task f6251b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ long f6252c;

            /* renamed from: d  reason: collision with root package name */
            private /* synthetic */ Object f6253d;

            /* JADX INFO: Access modifiers changed from: package-private */
            @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {84}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$await$1$1")
            @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
            /* renamed from: b.a$a$a$1  reason: invalid class name */
            /* loaded from: classes-dex2jar.jar:b/a$a$a$1.class */
            public static final class AnonymousClass1 extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f6254a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ ab.e f6255b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(ab.e eVar, kotlin.c.d dVar) {
                    super(2, dVar);
                    this.f6255b = eVar;
                }

                @Override // kotlin.c.b.a.a
                public final Object a(Object obj) {
                    kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                    int i = this.f6254a;
                    if (i == 0) {
                        p.a(obj);
                        this.f6254a = 1;
                        if (((as) this.f6255b.f36780a).a(this) == aVar) {
                            return aVar;
                        }
                    } else if (i == 1) {
                        p.a(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    return v.f38654a;
                }

                @Override // kotlin.c.b.a.a
                public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                    kotlin.jvm.internal.p.d(completion, "completion");
                    return new AnonymousClass1(this.f6255b, completion);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                    return ((AnonymousClass1) a(akVar, dVar)).a(v.f38654a);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$await$1$d$1")
            @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
            /* renamed from: b.a$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:b/a$a$a$a.class */
            public static final class C0126a extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f6256a;

                C0126a(kotlin.c.d dVar) {
                    super(2, dVar);
                }

                @Override // kotlin.c.b.a.a
                public final Object a(Object obj) {
                    kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                    if (this.f6256a == 0) {
                        p.a(obj);
                        C0125a.this.f6251b.run();
                        return v.f38654a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }

                @Override // kotlin.c.b.a.a
                public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                    kotlin.jvm.internal.p.d(completion, "completion");
                    return new C0126a(completion);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                    return ((C0126a) a(akVar, dVar)).a(v.f38654a);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0125a(Task task, long j, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6251b = task;
                this.f6252c = j;
            }

            /* JADX WARN: Type inference failed for: r1v2, types: [T, kotlinx.coroutines.as] */
            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                int i = this.f6250a;
                if (i == 0) {
                    p.a(obj);
                    ak akVar = (ak) this.f6253d;
                    ab.e eVar = new ab.e();
                    eVar.f36780a = kotlinx.coroutines.h.a(akVar, (kotlin.c.f) null, new C0126a(null), 3);
                    long j = this.f6252c;
                    AnonymousClass1 r0 = new AnonymousClass1(eVar, null);
                    this.f6250a = 1;
                    if (j > 0) {
                        cq cqVar = new cq(j, this);
                        cqVar.a((Function1<? super Throwable, v>) new bd(av.a(cqVar.g.b()).a(cqVar.e, cqVar, cqVar.f38663a)));
                        Object a2 = kotlinx.coroutines.a.b.a(cqVar, cqVar, r0);
                        if (a2 == kotlin.c.a.a.COROUTINE_SUSPENDED) {
                            kotlin.jvm.internal.p.d(this, "frame");
                        }
                        if (a2 == aVar) {
                            return aVar;
                        }
                    } else {
                        throw new TimeoutCancellationException("Timed out immediately");
                    }
                } else if (i == 1) {
                    p.a(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return v.f38654a;
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                C0125a aVar = new C0125a(this.f6251b, this.f6252c, completion);
                aVar.f6253d = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((C0125a) a(akVar, dVar)).a(v.f38654a);
            }
        }

        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$loadAsync$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$b */
        /* loaded from: classes-dex2jar.jar:b/a$a$b.class */
        public static final class b extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6258a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ContactDataLoader f6259b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ LoadContext f6260c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(ContactDataLoader contactDataLoader, LoadContext loadContext, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6259b = contactDataLoader;
                this.f6260c = loadContext;
            }

            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                if (this.f6258a == 0) {
                    p.a(obj);
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        this.f6259b.a(this.f6260c, false);
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.f6259b.toString());
                        sb.append(".load() took ");
                        sb.append(System.currentTimeMillis() - currentTimeMillis);
                        CLog.a("ContactLoader");
                    } catch (Throwable th) {
                        CLog.a(a.class, th);
                    }
                    return v.f38654a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                return new b(this.f6259b, this.f6260c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((b) a(akVar, dVar)).a(v.f38654a);
            }
        }

        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$loadWithoutUpdate$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$c */
        /* loaded from: classes-dex2jar.jar:b/a$a$c.class */
        public static final class c extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6261a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ EagerContactLoader f6262b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ LoadContext f6263c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(EagerContactLoader eagerContactLoader, LoadContext loadContext, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6262b = eagerContactLoader;
                this.f6263c = loadContext;
            }

            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                if (this.f6261a == 0) {
                    p.a(obj);
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        this.f6262b.c(this.f6263c);
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.f6262b.toString());
                        sb.append(".loadWithoutUpdate() took ");
                        sb.append(System.currentTimeMillis() - currentTimeMillis);
                        CLog.a("ContactLoader");
                    } catch (Throwable th) {
                        CLog.a(a.class, th);
                    }
                    return v.f38654a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                return new c(this.f6262b, this.f6263c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((c) a(akVar, dVar)).a(v.f38654a);
            }
        }

        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$runAsyncTasks$jobs$1$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$d */
        /* loaded from: classes-dex2jar.jar:b/a$a$d.class */
        static final class d extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6264a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Runnable f6265b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            d(Runnable runnable, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6265b = runnable;
            }

            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                if (this.f6264a == 0) {
                    p.a(obj);
                    try {
                        this.f6265b.run();
                    } catch (Throwable th) {
                        CLog.a(a.class, th);
                    }
                    return v.f38654a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                return new d(this.f6265b, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((d) a(akVar, dVar)).a(v.f38654a);
            }
        }

        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {119}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$runSyncTasks$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$e */
        /* loaded from: classes-dex2jar.jar:b/a$a$e.class */
        static final class e extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6266a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ab.e f6267b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ArrayList f6268c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            e(ab.e eVar, ArrayList arrayList, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6267b = eVar;
                this.f6268c = arrayList;
            }

            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                int i = this.f6266a;
                if (i == 0) {
                    p.a(obj);
                    this.f6266a = 1;
                    if (kotlinx.coroutines.d.a((List) this.f6267b.f36780a, this) == aVar) {
                        return aVar;
                    }
                } else if (i == 1) {
                    p.a(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                this.f6268c.clear();
                return v.f38654a;
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                return new e(this.f6267b, this.f6268c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((e) a(akVar, dVar)).a(v.f38654a);
            }
        }

        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$runSyncTasks$results$1$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$f */
        /* loaded from: classes-dex2jar.jar:b/a$a$f.class */
        static final class f extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6269a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Runnable f6270b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            f(Runnable runnable, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6270b = runnable;
            }

            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                if (this.f6269a == 0) {
                    p.a(obj);
                    try {
                        this.f6270b.run();
                    } catch (Throwable th) {
                        CLog.a(a.class, th);
                    }
                    return v.f38654a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                return new f(this.f6270b, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((f) a(akVar, dVar)).a(v.f38654a);
            }
        }

        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$runTask$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$g */
        /* loaded from: classes-dex2jar.jar:b/a$a$g.class */
        static final class g extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6271a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Task f6272b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            g(Task task, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6272b = task;
            }

            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                if (this.f6271a == 0) {
                    p.a(obj);
                    this.f6272b.run();
                    return v.f38654a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                return new g(this.f6272b, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((g) a(akVar, dVar)).a(v.f38654a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {72}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$scheduleTask$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$h */
        /* loaded from: classes-dex2jar.jar:b/a$a$h.class */
        public static final class h extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6273a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f6274b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Task f6275c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            h(long j, Task task, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6274b = j;
                this.f6275c = task;
            }

            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                Object obj2;
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                int i = this.f6273a;
                if (i == 0) {
                    p.a(obj);
                    long j = this.f6274b;
                    this.f6273a = 1;
                    if (j <= 0) {
                        obj2 = v.f38654a;
                    } else {
                        o oVar = new o(kotlin.c.a.b.a(this), 1);
                        oVar.e();
                        o oVar2 = oVar;
                        if (j < Long.MAX_VALUE) {
                            av.a(oVar2.b()).a(j, oVar2);
                        }
                        Object g = oVar.g();
                        obj2 = g;
                        if (g == kotlin.c.a.a.COROUTINE_SUSPENDED) {
                            kotlin.jvm.internal.p.d(this, "frame");
                            obj2 = g;
                        }
                    }
                    if (obj2 == aVar) {
                        return aVar;
                    }
                } else if (i == 1) {
                    p.a(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                this.f6275c.run();
                return v.f38654a;
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                return new h(this.f6274b, this.f6275c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((h) a(akVar, dVar)).a(v.f38654a);
            }
        }

        @kotlin.c.b.a.e(b = "CoroutinesRunner.kt", c = {}, d = "invokeSuspend", e = "coroutinesrunner.CoroutinesRunner$Companion$updateAfterLoadDone$1")
        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 2})
        /* renamed from: b.a$a$i */
        /* loaded from: classes-dex2jar.jar:b/a$a$i.class */
        public static final class i extends j implements Function2<ak, kotlin.c.d<? super v>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f6276a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ EagerContactLoader f6277b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ LoadContext f6278c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public i(EagerContactLoader eagerContactLoader, LoadContext loadContext, kotlin.c.d dVar) {
                super(2, dVar);
                this.f6277b = eagerContactLoader;
                this.f6278c = loadContext;
            }

            @Override // kotlin.c.b.a.a
            public final Object a(Object obj) {
                kotlin.c.a.a aVar = kotlin.c.a.a.COROUTINE_SUSPENDED;
                if (this.f6276a == 0) {
                    p.a(obj);
                    try {
                        this.f6277b.d(this.f6278c);
                    } catch (Throwable th) {
                        CLog.a(a.class, th);
                    }
                    return v.f38654a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.c.b.a.a
            public final kotlin.c.d<v> a(Object obj, kotlin.c.d<?> completion) {
                kotlin.jvm.internal.p.d(completion, "completion");
                return new i(this.f6277b, this.f6278c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(ak akVar, kotlin.c.d<? super v> dVar) {
                return ((i) a(akVar, dVar)).a(v.f38654a);
            }
        }

        private C0124a() {
        }

        public /* synthetic */ C0124a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static List<bv> a(kotlin.c.f coroutineContext, ArrayList<Runnable> runnables) {
            kotlin.jvm.internal.p.d(coroutineContext, "coroutineContext");
            kotlin.jvm.internal.p.d(runnables, "runnables");
            ArrayList<Runnable> arrayList = runnables;
            ArrayList arrayList2 = new ArrayList(n.a((Iterable) arrayList, 10));
            for (Runnable runnable : arrayList) {
                arrayList2.add(kotlinx.coroutines.h.a(bo.f38751a, coroutineContext, new d(runnable, null)));
            }
            return arrayList2;
        }

        public static as<v> a(Task task, long j, kotlin.c.f coroutineContext) {
            kotlin.jvm.internal.p.d(task, "task");
            kotlin.jvm.internal.p.d(coroutineContext, "coroutineContext");
            return kotlinx.coroutines.h.a(bo.f38751a, coroutineContext, new h(j, task, null), 2);
        }

        public static void a(Task task) {
            kotlin.jvm.internal.p.d(task, "task");
            kotlinx.coroutines.h.a(bo.f38751a, az.a(), new g(task, null));
        }

        /* JADX WARN: Type inference failed for: r1v5, types: [java.util.List, T] */
        public static void b(kotlin.c.f coroutineContext, ArrayList<Runnable> runnables) {
            kotlin.jvm.internal.p.d(coroutineContext, "coroutineContext");
            kotlin.jvm.internal.p.d(runnables, "runnables");
            ab.e eVar = new ab.e();
            ArrayList<Runnable> arrayList = runnables;
            ArrayList arrayList2 = new ArrayList(n.a((Iterable) arrayList, 10));
            for (Runnable runnable : arrayList) {
                arrayList2.add(kotlinx.coroutines.h.a(bo.f38751a, coroutineContext, new f(runnable, null), 2));
            }
            eVar.f36780a = arrayList2;
            kotlinx.coroutines.i.a(null, new e(eVar, runnables, null), 1);
        }
    }
}
