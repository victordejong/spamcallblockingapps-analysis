package p459j.p460a.p474c0.p488f.p490q;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11883f;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000eH\u0016J\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\"H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R!\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n��R!\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u000b\u001a\u0004\b\u0010\u0010\t¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/job/ChannelProcessor;", "Lgogolook/callgogolook2/messaging/sms/job/JobProcessor;", "coroutineContextProvider", "Lgogolook/callgogolook2/messaging/sms/job/CoroutineContextProvider;", "(Lgogolook/callgogolook2/messaging/sms/job/CoroutineContextProvider;)V", "deferredSmsJobChannel", "Lkotlinx/coroutines/channels/Channel;", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob;", "getDeferredSmsJobChannel", "()Lkotlinx/coroutines/channels/Channel;", "deferredSmsJobChannel$delegate", "Lkotlin/Lazy;", "enqueuedJobIds", "Ljava/util/concurrent/ConcurrentHashMap;", "", "realTimeSmsJobChannel", "getRealTimeSmsJobChannel", "realTimeSmsJobChannel$delegate", "cancelAllJobs", "", "divideResult", "callback", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;", "result", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$Result;", "isJobEnqueued", "", "id", "processDeferredJob", "request", "Lgogolook/callgogolook2/messaging/sms/job/DeferredSmsJobRequest;", "processRealTimeJob", "Lgogolook/callgogolook2/messaging/sms/job/RealTimeSmsJobRequest;", "processSmsJob", "Lgogolook/callgogolook2/messaging/sms/job/SmsJobRequest;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.q.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a.class */
public final class C11852a implements AbstractC11883f {

    /* renamed from: e */
    public static final /* synthetic */ AbstractC14906i[] f26566e;

    /* renamed from: a */
    public final ConcurrentHashMap<String, String> f26567a = new ConcurrentHashMap<>();

    /* renamed from: b */
    public final AbstractC14974f f26568b = C14975g.m662a(C11862f.f26610a);

    /* renamed from: c */
    public final AbstractC14974f f26569c = C14975g.m662a(C11853a.f26571a);

    /* renamed from: d */
    public final AbstractC11863b f26570d;

    /* renamed from: j.a.c0.f.q.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$a.class */
    public static final class C11853a extends AbstractC15150l implements AbstractC15107a<Channel<AbstractC11893j>> {

        /* renamed from: a */
        public static final C11853a f26571a = new C11853a();

        public C11853a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Channel<AbstractC11893j> invoke() {
            return ChannelKt.Channel(-2);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/ChannelProcessor$processDeferredJob$1", m472f = "ChannelProcessor.kt", m471l = {48}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.c0.f.q.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$b.class */
    public static final class C11854b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26572a;

        /* renamed from: b */
        public int f26573b;

        /* renamed from: d */
        public final /* synthetic */ C11864c f26575d;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/ChannelProcessor$processDeferredJob$1$1", m472f = "ChannelProcessor.kt", m471l = {50, 54}, m470m = "invokeSuspend")
        /* renamed from: j.a.c0.f.q.a$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$b$a.class */
        public static final class C11855a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f26576a;

            /* renamed from: b */
            public int f26577b;

            public C11855a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C11855a aVar = new C11855a(dVar);
                aVar.f26576a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C11855a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f26577b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C11852a.this.m8028a(this.f26576a, "send to deferred job channel");
                    C11852a.this.f26567a.put(C11854b.this.f26575d.m7978a().m7971a(), C11854b.this.f26575d.m7978a().m7971a());
                    Channel a2 = C11852a.this.m8034a();
                    AbstractC11893j f = C11854b.this.f26575d.m8022b().m8021f();
                    this.f26577b = 1;
                    if (a2.send(f, this) == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11854b(C11864c cVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f26575d = cVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11854b bVar = new C11854b(this.f26575d, dVar);
            bVar.f26572a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11854b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f26573b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                CoroutineScope coroutineScope = this.f26572a;
                C11852a aVar = C11852a.this;
                aVar.m8028a(coroutineScope, "send to deferred job channel, jobId: " + this.f26575d.m7978a().m7971a());
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, new CoroutineName("QueueDeferredJob").plus(this.f26575d.m7978a().m7968b()), null, new C11855a(null), 2, null);
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/ChannelProcessor$processDeferredJob$2", m472f = "ChannelProcessor.kt", m471l = {57, 59}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.c0.f.q.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$c.class */
    public static final class C11856c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26579a;

        /* renamed from: b */
        public Object f26580b;

        /* renamed from: c */
        public int f26581c;

        /* renamed from: e */
        public final /* synthetic */ C11864c f26583e;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/ChannelProcessor$processDeferredJob$2$1$1", m472f = "ChannelProcessor.kt", m471l = {60, 63}, m470m = "invokeSuspend")
        /* renamed from: j.a.c0.f.q.a$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$c$a.class */
        public static final class C11857a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f26584a;

            /* renamed from: b */
            public Object f26585b;

            /* renamed from: c */
            public Object f26586c;

            /* renamed from: d */
            public int f26587d;

            /* renamed from: e */
            public final /* synthetic */ AbstractC11893j f26588e;

            /* renamed from: f */
            public final /* synthetic */ C11856c f26589f;

            /* renamed from: g */
            public final /* synthetic */ CoroutineScope f26590g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11857a(AbstractC11893j jVar, AbstractC15044d dVar, C11856c cVar, CoroutineScope coroutineScope) {
                super(2, dVar);
                this.f26588e = jVar;
                this.f26589f = cVar;
                this.f26590g = coroutineScope;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C11857a aVar = new C11857a(this.f26588e, dVar, this.f26589f, this.f26590g);
                aVar.f26584a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C11857a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object obj2;
                C11852a aVar;
                AbstractC11893j.AbstractC11897b bVar;
                Object a = C15064c.m478a();
                int i = this.f26587d;
                if (i != 0) {
                    if (i == 1) {
                        bVar = (AbstractC11893j.AbstractC11897b) this.f26586c;
                        aVar = (C11852a) this.f26585b;
                        if (!(obj instanceof C14979k.C14981b)) {
                            obj2 = obj;
                        } else {
                            throw ((C14979k.C14981b) obj).f33014a;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C11852a.this.m8028a(this.f26584a, "receive from deferred job channel");
                    aVar = C11852a.this;
                    AbstractC11893j.AbstractC11897b a2 = this.f26588e.m7980a();
                    AbstractC11893j jVar = this.f26588e;
                    this.f26585b = aVar;
                    this.f26586c = a2;
                    this.f26587d = 1;
                    obj2 = jVar.mo4042a(this);
                    if (obj2 == a) {
                        return a;
                    }
                    bVar = a2;
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                aVar.m8029a(bVar, (AbstractC11893j.AbstractC11894a) obj2);
                C11852a.this.f26567a.remove(this.f26589f.f26583e.m7978a().m7971a());
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11856c(C11864c cVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f26583e = cVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11856c cVar = new C11856c(this.f26583e, dVar);
            cVar.f26579a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11856c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object a = C15064c.m478a();
            int i = this.f26581c;
            if (i != 0) {
                if (i == 1) {
                    coroutineScope = (CoroutineScope) this.f26580b;
                    if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                coroutineScope = this.f26579a;
                Channel a2 = C11852a.this.m8034a();
                this.f26580b = coroutineScope;
                this.f26581c = 1;
                obj = a2.receive(this);
                if (obj == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            C11852a aVar = C11852a.this;
            aVar.m8028a(coroutineScope, "receive from deferred job channel, idId: " + this.f26583e.m7978a().m7971a());
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, new CoroutineName("ReceiveDeferredJob").plus(this.f26583e.m7978a().m7968b()), null, new C11857a((AbstractC11893j) obj, null, this, coroutineScope), 2, null);
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/ChannelProcessor$processRealTimeJob$1", m472f = "ChannelProcessor.kt", m471l = {70}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.c0.f.q.a$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$d.class */
    public static final class C11858d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26591a;

        /* renamed from: b */
        public int f26592b;

        /* renamed from: d */
        public final /* synthetic */ C11885g f26594d;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/ChannelProcessor$processRealTimeJob$1$1", m472f = "ChannelProcessor.kt", m471l = {72, 76}, m470m = "invokeSuspend")
        /* renamed from: j.a.c0.f.q.a$d$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$d$a.class */
        public static final class C11859a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f26595a;

            /* renamed from: b */
            public int f26596b;

            public C11859a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C11859a aVar = new C11859a(dVar);
                aVar.f26595a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C11859a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f26596b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C11852a.this.m8028a(this.f26595a, "send to real time single channel");
                    C11852a.this.f26567a.put(C11858d.this.f26594d.m7978a().m7971a(), C11858d.this.f26594d.m7978a().m7971a());
                    Channel b = C11852a.this.m8027b();
                    AbstractC11893j f = C11858d.this.f26594d.m7988b().m7987f();
                    this.f26596b = 1;
                    if (b.send(f, this) == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11858d(C11885g gVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f26594d = gVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11858d dVar2 = new C11858d(this.f26594d, dVar);
            dVar2.f26591a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11858d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f26592b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                CoroutineScope coroutineScope = this.f26591a;
                C11852a aVar = C11852a.this;
                aVar.m8028a(coroutineScope, "send to real time single channel, jobId: " + this.f26594d.m7978a().m7971a());
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, new CoroutineName("QueueRealTimeSubJob").plus(this.f26594d.m7978a().m7968b()), null, new C11859a(null), 2, null);
                return C14989s.f33022a;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/ChannelProcessor$processRealTimeJob$2", m472f = "ChannelProcessor.kt", m471l = {79, 81}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.c0.f.q.a$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$e.class */
    public static final class C11860e extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26598a;

        /* renamed from: b */
        public Object f26599b;

        /* renamed from: c */
        public int f26600c;

        /* renamed from: e */
        public final /* synthetic */ C11885g f26602e;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/ChannelProcessor$processRealTimeJob$2$1$1", m472f = "ChannelProcessor.kt", m471l = {82, 85}, m470m = "invokeSuspend")
        /* renamed from: j.a.c0.f.q.a$e$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$e$a.class */
        public static final class C11861a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f26603a;

            /* renamed from: b */
            public Object f26604b;

            /* renamed from: c */
            public Object f26605c;

            /* renamed from: d */
            public int f26606d;

            /* renamed from: e */
            public final /* synthetic */ AbstractC11893j f26607e;

            /* renamed from: f */
            public final /* synthetic */ C11860e f26608f;

            /* renamed from: g */
            public final /* synthetic */ CoroutineScope f26609g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11861a(AbstractC11893j jVar, AbstractC15044d dVar, C11860e eVar, CoroutineScope coroutineScope) {
                super(2, dVar);
                this.f26607e = jVar;
                this.f26608f = eVar;
                this.f26609g = coroutineScope;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C11861a aVar = new C11861a(this.f26607e, dVar, this.f26608f, this.f26609g);
                aVar.f26603a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C11861a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object obj2;
                C11852a aVar;
                AbstractC11893j.AbstractC11897b bVar;
                Object a = C15064c.m478a();
                int i = this.f26606d;
                if (i != 0) {
                    if (i == 1) {
                        bVar = (AbstractC11893j.AbstractC11897b) this.f26605c;
                        aVar = (C11852a) this.f26604b;
                        if (!(obj instanceof C14979k.C14981b)) {
                            obj2 = obj;
                        } else {
                            throw ((C14979k.C14981b) obj).f33014a;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C11852a.this.m8028a(this.f26603a, "receive from real time single channel");
                    aVar = C11852a.this;
                    AbstractC11893j.AbstractC11897b a2 = this.f26607e.m7980a();
                    AbstractC11893j jVar = this.f26607e;
                    this.f26604b = aVar;
                    this.f26605c = a2;
                    this.f26606d = 1;
                    obj2 = jVar.mo4042a(this);
                    if (obj2 == a) {
                        return a;
                    }
                    bVar = a2;
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                aVar.m8029a(bVar, (AbstractC11893j.AbstractC11894a) obj2);
                C11852a.this.f26567a.remove(this.f26608f.f26602e.m7978a().m7971a());
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11860e(C11885g gVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f26602e = gVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11860e eVar = new C11860e(this.f26602e, dVar);
            eVar.f26598a = (CoroutineScope) obj;
            return eVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11860e) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object a = C15064c.m478a();
            int i = this.f26600c;
            if (i != 0) {
                if (i == 1) {
                    coroutineScope = (CoroutineScope) this.f26599b;
                    if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                coroutineScope = this.f26598a;
                Channel b = C11852a.this.m8027b();
                this.f26599b = coroutineScope;
                this.f26600c = 1;
                obj = b.receive(this);
                if (obj == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            C11852a aVar = C11852a.this;
            aVar.m8028a(coroutineScope, "receive from real time single channel, jobId: " + this.f26602e.m7978a().m7971a());
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, new CoroutineName("ReceiveRealTimeSubJob").plus(this.f26602e.m7978a().m7968b()), null, new C11861a((AbstractC11893j) obj, null, this, coroutineScope), 2, null);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.c0.f.q.a$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/a$f.class */
    public static final class C11862f extends AbstractC15150l implements AbstractC15107a<Channel<AbstractC11893j>> {

        /* renamed from: a */
        public static final C11862f f26610a = new C11862f();

        public C11862f() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Channel<AbstractC11893j> invoke() {
            return ChannelKt.Channel(0);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11852a.class), "realTimeSmsJobChannel", "getRealTimeSmsJobChannel()Lkotlinx/coroutines/channels/Channel;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11852a.class), "deferredSmsJobChannel", "getDeferredSmsJobChannel()Lkotlinx/coroutines/channels/Channel;");
        C15131a0.m412a(sVar2);
        f26566e = new AbstractC14906i[]{sVar, sVar2};
    }

    public C11852a(AbstractC11863b bVar) {
        C15149k.m377b(bVar, "coroutineContextProvider");
        this.f26570d = bVar;
    }

    /* renamed from: a */
    public final Channel<AbstractC11893j> m8034a() {
        AbstractC14974f fVar = this.f26569c;
        AbstractC14906i iVar = f26566e[1];
        return (Channel) fVar.getValue();
    }

    /* renamed from: a */
    public final void m8031a(C11864c cVar) {
        BuildersKt__Builders_commonKt.launch$default(this.f26570d.mo7982a(), new CoroutineName("QueueDeferredJob").plus(this.f26570d.mo7981b()), null, new C11854b(cVar, null), 2, null);
        BuildersKt__Builders_commonKt.launch$default(this.f26570d.mo7982a(), new CoroutineName("ReceiveDeferredJob").plus(this.f26570d.mo7981b()), null, new C11856c(cVar, null), 2, null);
    }

    /* renamed from: a */
    public final void m8030a(C11885g gVar) {
        BuildersKt__Builders_commonKt.launch$default(this.f26570d.mo7982a(), new CoroutineName("QueueRealTimeJob").plus(this.f26570d.mo7981b()), null, new C11858d(gVar, null), 2, null);
        BuildersKt__Builders_commonKt.launch$default(this.f26570d.mo7982a(), new CoroutineName("ReceiveRealTimeJob").plus(this.f26570d.mo7981b()), null, new C11860e(gVar, null), 2, null);
    }

    /* renamed from: a */
    public final void m8029a(AbstractC11893j.AbstractC11897b bVar, AbstractC11893j.AbstractC11894a aVar) {
        if (aVar instanceof AbstractC11893j.AbstractC11894a.C11896b) {
            bVar.mo3874a(aVar);
        } else if (aVar instanceof AbstractC11893j.AbstractC11894a.C11895a) {
            bVar.mo3873b(aVar);
        }
    }

    @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11883f
    /* renamed from: a */
    public void mo7993a(AbstractC11899l lVar) {
        C15149k.m377b(lVar, "request");
        if (lVar instanceof C11885g) {
            m8030a((C11885g) lVar);
        } else if (lVar instanceof C11864c) {
            m8031a((C11864c) lVar);
        }
    }

    /* renamed from: a */
    public void m8028a(CoroutineScope coroutineScope, String str) {
        C15149k.m377b(coroutineScope, "scope");
        C15149k.m377b(str, "methodName");
        AbstractC11883f.C11884a.m7991a(this, coroutineScope, str);
    }

    @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11883f
    /* renamed from: a */
    public boolean mo7992a(String str) {
        C15149k.m377b(str, "id");
        return this.f26567a.contains(str);
    }

    /* renamed from: b */
    public final Channel<AbstractC11893j> m8027b() {
        AbstractC14974f fVar = this.f26568b;
        AbstractC14906i iVar = f26566e[0];
        return (Channel) fVar.getValue();
    }
}
