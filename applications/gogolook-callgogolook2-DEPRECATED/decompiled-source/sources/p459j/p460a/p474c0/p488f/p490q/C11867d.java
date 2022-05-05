package p459j.p460a.p474c0.p488f.p490q;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DelayKt;
import p459j.p460a.p474c0.p475c.p478y.C11636q;
import p459j.p460a.p474c0.p488f.C11837k;
import p459j.p460a.p474c0.p488f.p489p.AbstractC11844a;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p587d5.C13975b;
import p459j.p460a.p582w0.p587d5.C13980g;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14234c;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p632u.C15022n;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15159u;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002J'\u0010\u000e\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0082@ø\u0001��¢\u0006\u0002\u0010\u0010J\u0011\u0010\u0011\u001a\u00020\u0012H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/job/HistoryBatchInferSmsJob;", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob;", "callback", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;", "(Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;)V", "delayIfNeeded", "", "handleSkipInferList", "", "inferHelper", "Lgogolook/callgogolook2/messaging/sms/job/InferHelper;", "skipInferList", "", "Lgogolook/callgogolook2/messaging/datamodel/data/UnfilteredMessageData;", "handleToBeInferList", "toBeInferList", "(Lgogolook/callgogolook2/messaging/sms/job/InferHelper;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startWork", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "SmsFilterReadyEvent", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.q.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d.class */
public final class C11867d extends AbstractC11893j {

    /* renamed from: j.a.c0.f.q.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d$a.class */
    public static final class C11868a {
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/HistoryBatchInferSmsJob$delayIfNeeded$1", m472f = "HistoryBatchInferSmsJob.kt", m471l = {142, 149}, m470m = "invokeSuspend")
    /* renamed from: j.a.c0.f.q.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d$b.class */
    public static final class C11869b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26614a;

        /* renamed from: b */
        public int f26615b;

        public C11869b(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11869b bVar = new C11869b(dVar);
            bVar.f26614a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11869b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f26615b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13565v g = C13565v.m3921g();
                C15149k.m383a((Object) g, "DevelopMode.getInstance()");
                if (g.m23335b() && C13975b.f31383a.m9462a("develop_mode_batch_infer_delay", C15066b.m474a(false))) {
                    this.f26615b = 1;
                    if (DelayKt.delay(180000L, this) == a) {
                        return a;
                    }
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.c0.f.q.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d$c.class */
    public static final class C11870c implements AbstractC11844a.AbstractC11845a {

        /* renamed from: a */
        public final /* synthetic */ C13930d f26616a;

        /* renamed from: b */
        public final /* synthetic */ C15159u f26617b;

        /* renamed from: c */
        public final /* synthetic */ C15162x f26618c;

        /* renamed from: d */
        public final /* synthetic */ CancellableContinuation f26619d;

        /* renamed from: e */
        public final /* synthetic */ List f26620e;

        /* renamed from: f */
        public final /* synthetic */ C11876e f26621f;

        public C11870c(C13930d dVar, C15159u uVar, C15162x xVar, CancellableContinuation cancellableContinuation, List list, C11876e eVar) {
            this.f26616a = dVar;
            this.f26617b = uVar;
            this.f26618c = xVar;
            this.f26619d = cancellableContinuation;
            this.f26620e = list;
            this.f26621f = eVar;
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        /* renamed from: a */
        public void mo7962a(AbstractC11893j.AbstractC11894a.C11896b bVar) {
            C15149k.m377b(bVar, "result");
            if (bVar instanceof C11876e.C11877a) {
                C11876e.C11877a aVar = (C11876e.C11877a) bVar;
                int size = aVar.m8000a().size();
                C14080m2.m2616a("sms] filter} HistoryBatchInferSmsJob - onInferSuccess, success count: " + size);
                this.f26621f.m8008a(aVar);
                C15162x xVar = this.f26618c;
                xVar.f33150a = xVar.f33150a + size;
            }
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        /* renamed from: a */
        public void mo7961a(List<String> list) {
            C15149k.m377b(list, "keyList");
            this.f26617b.f33147a = true;
            C14080m2.m2616a("sms] filter} HistoryBatchInferSmsJob - onInferFailed, fail count: " + list.size());
            this.f26621f.m8005a(list);
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        public void onComplete() {
            this.f26616a.m3017f();
            C11837k.m8068a("History_Batch_Infer_Complete_Status", !this.f26617b.f33147a, this.f26620e.size(), this.f26618c.f33150a, this.f26616a.m3025a());
            CancellableContinuation cancellableContinuation = this.f26619d;
            C14979k.C14980a aVar = C14979k.f33013a;
            C14979k.m657a(true);
            cancellableContinuation.resumeWith(true);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/HistoryBatchInferSmsJob", m472f = "HistoryBatchInferSmsJob.kt", m471l = {29, 66, 71, 72, 73}, m470m = "startWork")
    /* renamed from: j.a.c0.f.q.d$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d$d.class */
    public static final class C11871d extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f26622a;

        /* renamed from: b */
        public int f26623b;

        /* renamed from: d */
        public Object f26625d;

        /* renamed from: e */
        public Object f26626e;

        /* renamed from: f */
        public Object f26627f;

        /* renamed from: g */
        public Object f26628g;

        /* renamed from: h */
        public Object f26629h;

        /* renamed from: i */
        public Object f26630i;

        /* renamed from: j */
        public Object f26631j;

        /* renamed from: k */
        public int f26632k;

        /* renamed from: l */
        public int f26633l;

        public C11871d(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f26622a = obj;
            this.f26623b |= Integer.MIN_VALUE;
            return C11867d.this.mo4042a(this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/HistoryBatchInferSmsJob$startWork$2", m472f = "HistoryBatchInferSmsJob.kt", m471l = {62}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.c0.f.q.d$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d$e.class */
    public static final class C11872e extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Deferred<? extends Boolean>>, Object> {

        /* renamed from: a */
        public CoroutineScope f26634a;

        /* renamed from: b */
        public int f26635b;

        /* renamed from: d */
        public final /* synthetic */ C11876e f26637d;

        /* renamed from: e */
        public final /* synthetic */ List f26638e;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/HistoryBatchInferSmsJob$startWork$2$1", m472f = "HistoryBatchInferSmsJob.kt", m471l = {62, 62}, m470m = "invokeSuspend")
        /* renamed from: j.a.c0.f.q.d$e$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d$e$a.class */
        public static final class C11873a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Boolean>, Object> {

            /* renamed from: a */
            public CoroutineScope f26639a;

            /* renamed from: b */
            public int f26640b;

            public C11873a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C11873a aVar = new C11873a(dVar);
                aVar.f26639a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Boolean> dVar) {
                return ((C11873a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f26640b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C11872e eVar = C11872e.this;
                    C11867d dVar = C11867d.this;
                    C11876e eVar2 = eVar.f26637d;
                    List<C11636q> list = eVar.f26638e;
                    this.f26640b = 1;
                    Object a2 = dVar.m8017a(eVar2, list, this);
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
        public C11872e(C11876e eVar, List list, AbstractC15044d dVar) {
            super(2, dVar);
            this.f26637d = eVar;
            this.f26638e = list;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11872e eVar = new C11872e(this.f26637d, this.f26638e, dVar);
            eVar.f26634a = (CoroutineScope) obj;
            return eVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Deferred<? extends Boolean>> dVar) {
            return ((C11872e) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Deferred async$default;
            C15064c.m478a();
            if (this.f26635b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                async$default = BuildersKt__Builders_commonKt.async$default(this.f26634a, null, null, new C11873a(null), 3, null);
                return async$default;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/HistoryBatchInferSmsJob$startWork$3", m472f = "HistoryBatchInferSmsJob.kt", m471l = {68}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "Lkotlinx/coroutines/Deferred;", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.c0.f.q.d$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d$f.class */
    public static final class C11874f extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Deferred<? extends Boolean>>, Object> {

        /* renamed from: a */
        public CoroutineScope f26642a;

        /* renamed from: b */
        public int f26643b;

        /* renamed from: d */
        public final /* synthetic */ C11876e f26645d;

        /* renamed from: e */
        public final /* synthetic */ List f26646e;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/job/HistoryBatchInferSmsJob$startWork$3$1", m472f = "HistoryBatchInferSmsJob.kt", m471l = {68}, m470m = "invokeSuspend")
        /* renamed from: j.a.c0.f.q.d$f$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/d$f$a.class */
        public static final class C11875a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Boolean>, Object> {

            /* renamed from: a */
            public CoroutineScope f26647a;

            /* renamed from: b */
            public int f26648b;

            public C11875a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C11875a aVar = new C11875a(dVar);
                aVar.f26647a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Boolean> dVar) {
                return ((C11875a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                C15064c.m478a();
                if (this.f26648b != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (!(obj instanceof C14979k.C14981b)) {
                    C11874f fVar = C11874f.this;
                    return C15066b.m474a(C11867d.this.m8018a(fVar.f26645d, fVar.f26646e));
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11874f(C11876e eVar, List list, AbstractC15044d dVar) {
            super(2, dVar);
            this.f26645d = eVar;
            this.f26646e = list;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11874f fVar = new C11874f(this.f26645d, this.f26646e, dVar);
            fVar.f26642a = (CoroutineScope) obj;
            return fVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Deferred<? extends Boolean>> dVar) {
            return ((C11874f) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Deferred async$default;
            C15064c.m478a();
            if (this.f26643b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                async$default = BuildersKt__Builders_commonKt.async$default(this.f26642a, null, null, new C11875a(null), 3, null);
                return async$default;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11867d(AbstractC11893j.AbstractC11897b bVar) {
        super(bVar);
        C15149k.m377b(bVar, "callback");
    }

    /* renamed from: a */
    public final /* synthetic */ Object m8017a(C11876e eVar, List<C11636q> list, AbstractC15044d<? super Boolean> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        C15159u uVar = new C15159u();
        uVar.f33147a = false;
        C15162x xVar = new C15162x();
        xVar.f33150a = 0;
        if (!C13980g.f31390a.m9463a("sms_filter_infer_start_time")) {
            C13980g.f31390a.m9459a("sms_filter_infer_start_time", (String) C15066b.m475a(System.currentTimeMillis()));
        }
        AbstractC14238e.C14239a.m2086a(new C14234c("Start_History_Batch_Infer"), null, 1, null);
        C13930d dVar2 = new C13930d();
        dVar2.m3018e();
        AbstractC11844a a = new C11876e().m8009a(new C11870c(dVar2, uVar, xVar, cancellableContinuationImpl, list, eVar));
        if (a != null) {
            a.mo8038a(list);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x04d7  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x04c6  */
    @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo4042a(p626l.p634w.AbstractC15044d<? super p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11894a> r8) {
        /*
            Method dump skipped, instructions count: 1273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.p490q.C11867d.mo4042a(l.w.d):java.lang.Object");
    }

    /* renamed from: a */
    public final boolean m8018a(C11876e eVar, List<C11636q> list) {
        ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
        for (C11636q qVar : list) {
            arrayList.add(qVar.m8742b());
        }
        eVar.m8002b(arrayList);
        return true;
    }

    /* renamed from: b */
    public final void m8016b() {
        BuildersKt__BuildersKt.runBlocking$default(null, new C11869b(null), 1, null);
    }
}
