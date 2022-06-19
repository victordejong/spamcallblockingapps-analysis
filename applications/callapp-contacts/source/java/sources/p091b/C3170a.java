package p091b;

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
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.C18341g;
import kotlin.p521c.p522a.C18308b;
import kotlin.p521c.p522a.EnumC18307a;
import kotlin.p521c.p523b.p524a.AbstractC18320e;
import kotlin.p521c.p523b.p524a.AbstractC18326j;
import kotlinx.coroutines.AbstractC20149ak;
import kotlinx.coroutines.AbstractC20163as;
import kotlinx.coroutines.AbstractC20205bk;
import kotlinx.coroutines.AbstractC20218bv;
import kotlinx.coroutines.C20168av;
import kotlinx.coroutines.C20172az;
import kotlinx.coroutines.C20194bd;
import kotlinx.coroutines.C20210bn;
import kotlinx.coroutines.C20211bo;
import kotlinx.coroutines.C20254d;
import kotlinx.coroutines.C20260h;
import kotlinx.coroutines.C20304j;
import kotlinx.coroutines.C20309o;
import kotlinx.coroutines.EnumC20150al;
import kotlinx.coroutines.RunnableC20248cq;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.p569a.C20134b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m4298d2 = {"Lcoroutinesrunner/CoroutinesRunner;", "", "()V", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: b.a */
/* loaded from: classes-dex2jar.jar:b/a.class */
public final class C3170a {

    /* renamed from: a */
    public static final C3171a f11528a = new C3171a(null);

    /* renamed from: b */
    private static final AbstractC20205bk f11529b = C20210bn.m983a(new ThreadPoolExecutor(Runtime.getRuntime().availableProcessors(), Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue()));

    /* renamed from: c */
    private static final AbstractC20205bk f11530c = C20210bn.m983a(new ThreadPoolExecutor(Math.max(2, Runtime.getRuntime().availableProcessors() / 2), Math.max(2, Runtime.getRuntime().availableProcessors() / 2), 60, TimeUnit.SECONDS, new LinkedBlockingQueue()));

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u001e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015J4\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0010\u001a\u00020\u00112\u001e\u0010\u001b\u001a\u001a\u0012\b\u0012\u00060\u001dj\u0002`\u001e0\u001cj\f\u0012\b\u0012\u00060\u001dj\u0002`\u001e`\u001fJ.\u0010 \u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u001e\u0010\u001b\u001a\u001a\u0012\b\u0012\u00060\u001dj\u0002`\u001e0\u001cj\f\u0012\b\u0012\u00060\u001dj\u0002`\u001e`\u001fJ\u000e\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ$\u0010\"\u001a\b\u0012\u0004\u0012\u00020\n0#2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010%\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006¨\u0006&"}, m4298d2 = {"Lcoroutinesrunner/CoroutinesRunner$Companion;", "", "()V", "syncThreadPool", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "getSyncThreadPool", "()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "threadPool", "getThreadPool", "await", "", "task", "Lcom/callapp/contacts/manager/task/Task;", "timeout", "", "loadAsync", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "loader", "Lcom/callapp/contacts/loader/api/ContactDataLoader;", "loadContext", "Lcom/callapp/contacts/loader/api/LoadContext;", "loadWithoutUpdate", "Lcom/callapp/contacts/loader/EagerContactLoader;", "runAsyncTasks", "", "Lkotlinx/coroutines/Job;", "runnables", "Ljava/util/ArrayList;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "Lkotlin/collections/ArrayList;", "runSyncTasks", "runTask", "scheduleTask", "Lkotlinx/coroutines/Deferred;", "waittime", "updateAfterLoadDone", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: b.a$a */
    /* loaded from: classes-dex2jar.jar:b/a$a.class */
    public static final class C3171a {

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {83}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$await$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$a */
        /* loaded from: classes-dex2jar.jar:b/a$a$a.class */
        public static final class C3172a extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11531a;

            /* renamed from: b */
            final /* synthetic */ Task f11532b;

            /* renamed from: c */
            final /* synthetic */ long f11533c;

            /* renamed from: d */
            private /* synthetic */ Object f11534d;

            @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {84}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$await$1$1")
            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
            /* renamed from: b.a$a$a$1 */
            /* loaded from: classes-dex2jar.jar:b/a$a$a$1.class */
            public static final class C31731 extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

                /* renamed from: a */
                int f11535a;

                /* renamed from: b */
                final /* synthetic */ C18490ab.C18495e f11536b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C31731(C18490ab.C18495e c18495e, AbstractC18332d abstractC18332d) {
                    super(2, abstractC18332d);
                    this.f11536b = c18495e;
                }

                @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
                /* renamed from: a */
                public final Object mo57a(Object obj) {
                    EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                    int i = this.f11535a;
                    if (i == 0) {
                        C18542p.m3835a(obj);
                        this.f11535a = 1;
                        if (((AbstractC20163as) this.f11536b.f63589a).mo1072a(this) == enumC18307a) {
                            return enumC18307a;
                        }
                    } else if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        C18542p.m3835a(obj);
                    }
                    return C20128v.f66529a;
                }

                @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
                /* renamed from: a */
                public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                    C18524p.m3840d(completion, "completion");
                    return new C31731(this.f11536b, completion);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                    return ((C31731) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
                }
            }

            @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$await$1$d$1")
            @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
            /* renamed from: b.a$a$a$a */
            /* loaded from: classes-dex2jar.jar:b/a$a$a$a.class */
            public static final class C3174a extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

                /* renamed from: a */
                int f11537a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C3174a(AbstractC18332d abstractC18332d) {
                    super(2, abstractC18332d);
                    C3172a.this = r5;
                }

                @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
                /* renamed from: a */
                public final Object mo57a(Object obj) {
                    EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                    if (this.f11537a == 0) {
                        C18542p.m3835a(obj);
                        C3172a.this.f11532b.run();
                        return C20128v.f66529a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }

                @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
                /* renamed from: a */
                public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                    C18524p.m3840d(completion, "completion");
                    return new C3174a(completion);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                    return ((C3174a) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3172a(Task task, long j, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11532b = task;
                this.f11533c = j;
            }

            /* JADX WARN: Type inference failed for: r1v2, types: [T, kotlinx.coroutines.as] */
            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                ?? m802b;
                EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                int i = this.f11531a;
                if (i == 0) {
                    C18542p.m3835a(obj);
                    AbstractC20149ak abstractC20149ak = (AbstractC20149ak) this.f11534d;
                    C18490ab.C18495e c18495e = new C18490ab.C18495e();
                    m802b = C20304j.m802b(abstractC20149ak, null, null, new C3174a(null), 3);
                    c18495e.f63589a = m802b;
                    long j = this.f11533c;
                    C31731 c31731 = new C31731(c18495e, null);
                    this.f11531a = 1;
                    if (j <= 0) {
                        throw new TimeoutCancellationException("Timed out immediately");
                    }
                    RunnableC20248cq runnableC20248cq = new RunnableC20248cq(j, this);
                    runnableC20248cq.mo969a((Function1<? super Throwable, C20128v>) new C20194bd(C20168av.m1069a(runnableC20248cq.f66770g.mo787b()).mo826a(runnableC20248cq.f66703e, runnableC20248cq, runnableC20248cq.f66538a)));
                    Object m1098a = C20134b.m1098a(runnableC20248cq, runnableC20248cq, c31731);
                    if (m1098a == EnumC18307a.COROUTINE_SUSPENDED) {
                        C18524p.m3840d(this, "frame");
                    }
                    if (m1098a == enumC18307a) {
                        return enumC18307a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C18542p.m3835a(obj);
                }
                return C20128v.f66529a;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                C3172a c3172a = new C3172a(this.f11532b, this.f11533c, completion);
                c3172a.f11534d = obj;
                return c3172a;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3172a) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$loadAsync$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$b */
        /* loaded from: classes-dex2jar.jar:b/a$a$b.class */
        public static final class C3175b extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11539a;

            /* renamed from: b */
            final /* synthetic */ ContactDataLoader f11540b;

            /* renamed from: c */
            final /* synthetic */ LoadContext f11541c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3175b(ContactDataLoader contactDataLoader, LoadContext loadContext, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11540b = contactDataLoader;
                this.f11541c = loadContext;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                if (this.f11539a == 0) {
                    C18542p.m3835a(obj);
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        this.f11540b.mo28873a(this.f11541c, false);
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.f11540b.toString());
                        sb.append(".load() took ");
                        sb.append(System.currentTimeMillis() - currentTimeMillis);
                        CLog.m27606a("ContactLoader");
                    } catch (Throwable th) {
                        CLog.m27609a(C3170a.class, th);
                    }
                    return C20128v.f66529a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                return new C3175b(this.f11540b, this.f11541c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3175b) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$loadWithoutUpdate$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$c */
        /* loaded from: classes-dex2jar.jar:b/a$a$c.class */
        public static final class C3176c extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11542a;

            /* renamed from: b */
            final /* synthetic */ EagerContactLoader f11543b;

            /* renamed from: c */
            final /* synthetic */ LoadContext f11544c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3176c(EagerContactLoader eagerContactLoader, LoadContext loadContext, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11543b = eagerContactLoader;
                this.f11544c = loadContext;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                if (this.f11542a == 0) {
                    C18542p.m3835a(obj);
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        this.f11543b.m28951c(this.f11544c);
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.f11543b.toString());
                        sb.append(".loadWithoutUpdate() took ");
                        sb.append(System.currentTimeMillis() - currentTimeMillis);
                        CLog.m27606a("ContactLoader");
                    } catch (Throwable th) {
                        CLog.m27609a(C3170a.class, th);
                    }
                    return C20128v.f66529a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                return new C3176c(this.f11543b, this.f11544c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3176c) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$runAsyncTasks$jobs$1$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$d */
        /* loaded from: classes-dex2jar.jar:b/a$a$d.class */
        public static final class C3177d extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11545a;

            /* renamed from: b */
            final /* synthetic */ Runnable f11546b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C3177d(Runnable runnable, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11546b = runnable;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                if (this.f11545a == 0) {
                    C18542p.m3835a(obj);
                    try {
                        this.f11546b.run();
                    } catch (Throwable th) {
                        CLog.m27609a(C3170a.class, th);
                    }
                    return C20128v.f66529a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                return new C3177d(this.f11546b, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3177d) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {119}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$runSyncTasks$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$e */
        /* loaded from: classes-dex2jar.jar:b/a$a$e.class */
        public static final class C3178e extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11547a;

            /* renamed from: b */
            final /* synthetic */ C18490ab.C18495e f11548b;

            /* renamed from: c */
            final /* synthetic */ ArrayList f11549c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C3178e(C18490ab.C18495e c18495e, ArrayList arrayList, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11548b = c18495e;
                this.f11549c = arrayList;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                int i = this.f11547a;
                if (i == 0) {
                    C18542p.m3835a(obj);
                    this.f11547a = 1;
                    if (C20254d.m905a((List) this.f11548b.f63589a, this) == enumC18307a) {
                        return enumC18307a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C18542p.m3835a(obj);
                }
                this.f11549c.clear();
                return C20128v.f66529a;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                return new C3178e(this.f11548b, this.f11549c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3178e) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$runSyncTasks$results$1$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$f */
        /* loaded from: classes-dex2jar.jar:b/a$a$f.class */
        public static final class C3179f extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11550a;

            /* renamed from: b */
            final /* synthetic */ Runnable f11551b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C3179f(Runnable runnable, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11551b = runnable;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                if (this.f11550a == 0) {
                    C18542p.m3835a(obj);
                    try {
                        this.f11551b.run();
                    } catch (Throwable th) {
                        CLog.m27609a(C3170a.class, th);
                    }
                    return C20128v.f66529a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                return new C3179f(this.f11551b, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3179f) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$runTask$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$g */
        /* loaded from: classes-dex2jar.jar:b/a$a$g.class */
        public static final class C3180g extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11552a;

            /* renamed from: b */
            final /* synthetic */ Task f11553b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C3180g(Task task, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11553b = task;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                if (this.f11552a == 0) {
                    C18542p.m3835a(obj);
                    this.f11553b.run();
                    return C20128v.f66529a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                return new C3180g(this.f11553b, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3180g) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {72}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$scheduleTask$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$h */
        /* loaded from: classes-dex2jar.jar:b/a$a$h.class */
        public static final class C3181h extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11554a;

            /* renamed from: b */
            final /* synthetic */ long f11555b;

            /* renamed from: c */
            final /* synthetic */ Task f11556c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C3181h(long j, Task task, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11555b = j;
                this.f11556c = task;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                Object obj2;
                Object obj3 = EnumC18307a.COROUTINE_SUSPENDED;
                int i = this.f11554a;
                if (i == 0) {
                    C18542p.m3835a(obj);
                    long j = this.f11555b;
                    this.f11554a = 1;
                    if (j <= 0) {
                        obj2 = C20128v.f66529a;
                    } else {
                        C20309o c20309o = new C20309o(C18308b.m4100a(this), 1);
                        c20309o.m780e();
                        C20309o c20309o2 = c20309o;
                        if (j < Long.MAX_VALUE) {
                            C20168av.m1069a(c20309o2.mo787b()).mo825a(j, c20309o2);
                        }
                        Object m778g = c20309o.m778g();
                        obj2 = m778g;
                        if (m778g == EnumC18307a.COROUTINE_SUSPENDED) {
                            C18524p.m3840d(this, "frame");
                            obj2 = m778g;
                        }
                    }
                    if (obj2 == obj3) {
                        return obj3;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C18542p.m3835a(obj);
                }
                this.f11556c.run();
                return C20128v.f66529a;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                return new C3181h(this.f11555b, this.f11556c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3181h) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        @AbstractC18320e(m4089b = "CoroutinesRunner.kt", m4088c = {}, m4087d = "invokeSuspend", m4086e = "coroutinesrunner.CoroutinesRunner$Companion$updateAfterLoadDone$1")
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: b.a$a$i */
        /* loaded from: classes-dex2jar.jar:b/a$a$i.class */
        public static final class C3182i extends AbstractC18326j implements Function2<AbstractC20149ak, AbstractC18332d<? super C20128v>, Object> {

            /* renamed from: a */
            int f11557a;

            /* renamed from: b */
            final /* synthetic */ EagerContactLoader f11558b;

            /* renamed from: c */
            final /* synthetic */ LoadContext f11559c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3182i(EagerContactLoader eagerContactLoader, LoadContext loadContext, AbstractC18332d abstractC18332d) {
                super(2, abstractC18332d);
                this.f11558b = eagerContactLoader;
                this.f11559c = loadContext;
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final Object mo57a(Object obj) {
                EnumC18307a enumC18307a = EnumC18307a.COROUTINE_SUSPENDED;
                if (this.f11557a == 0) {
                    C18542p.m3835a(obj);
                    try {
                        this.f11558b.m28950d(this.f11559c);
                    } catch (Throwable th) {
                        CLog.m27609a(C3170a.class, th);
                    }
                    return C20128v.f66529a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
            /* renamed from: a */
            public final AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
                C18524p.m3840d(completion, "completion");
                return new C3182i(this.f11558b, this.f11559c, completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AbstractC20149ak abstractC20149ak, AbstractC18332d<? super C20128v> abstractC18332d) {
                return ((C3182i) mo4095a(abstractC20149ak, abstractC18332d)).mo57a(C20128v.f66529a);
            }
        }

        private C3171a() {
        }

        public /* synthetic */ C3171a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static List<AbstractC20218bv> m39247a(AbstractC18335f coroutineContext, ArrayList<Runnable> runnables) {
            AbstractC20218bv m898b;
            C18524p.m3840d(coroutineContext, "coroutineContext");
            C18524p.m3840d(runnables, "runnables");
            ArrayList<Runnable> arrayList = runnables;
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) arrayList, 10));
            for (Runnable runnable : arrayList) {
                m898b = C20260h.m898b(C20211bo.f66659a, coroutineContext, EnumC20150al.DEFAULT, new C3177d(runnable, null));
                arrayList2.add(m898b);
            }
            return arrayList2;
        }

        /* renamed from: a */
        public static AbstractC20163as<C20128v> m39248a(Task task, long j, AbstractC18335f coroutineContext) {
            AbstractC20163as<C20128v> m802b;
            C18524p.m3840d(task, "task");
            C18524p.m3840d(coroutineContext, "coroutineContext");
            m802b = C20304j.m802b(C20211bo.f66659a, coroutineContext, null, new C3181h(j, task, null), 2);
            return m802b;
        }

        /* renamed from: a */
        public static void m39249a(Task task) {
            C18524p.m3840d(task, "task");
            C20260h.m898b(C20211bo.f66659a, C20172az.m1061a(), EnumC20150al.DEFAULT, new C3180g(task, null));
        }

        /* JADX WARN: Type inference failed for: r1v5, types: [java.util.List, T] */
        /* renamed from: b */
        public static void m39246b(AbstractC18335f coroutineContext, ArrayList<Runnable> runnables) {
            AbstractC20163as m802b;
            C18524p.m3840d(coroutineContext, "coroutineContext");
            C18524p.m3840d(runnables, "runnables");
            C18490ab.C18495e c18495e = new C18490ab.C18495e();
            ArrayList<Runnable> arrayList = runnables;
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) arrayList, 10));
            for (Runnable runnable : arrayList) {
                m802b = C20304j.m802b(C20211bo.f66659a, coroutineContext, null, new C3179f(runnable, null), 2);
                arrayList2.add(m802b);
            }
            c18495e.f63589a = arrayList2;
            C20260h.m902a(C18341g.f63443a, new C3178e(c18495e, runnables, null));
        }
    }
}
