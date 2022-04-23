package gogolook.callgogolook2.messaging.sms;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p459j.p460a.p474c0.p488f.p490q.C11864c;
import p459j.p460a.p474c0.p488f.p490q.C11867d;
import p459j.p460a.p474c0.p488f.p490q.C11898k;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.p587d5.C13980g;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\t\u001a\u00020\nH\u0082@ø\u0001��¢\u0006\u0002\u0010\u000bJ\u0011\u0010\f\u001a\u00020\nH\u0096@ø\u0001��¢\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/HistoryBatchInferSmsWorker;", "Landroidx/work/CoroutineWorker;", "context", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "getContext", "()Landroid/content/Context;", "doBatchInfer", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "doWork", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/HistoryBatchInferSmsWorker.class */
public final class HistoryBatchInferSmsWorker extends CoroutineWorker {

    /* renamed from: gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/HistoryBatchInferSmsWorker$a.class */
    public static final class C4674a implements AbstractC11893j.AbstractC11897b {

        /* renamed from: a */
        public final /* synthetic */ CancellableContinuation f11371a;

        public C4674a(CancellableContinuation cancellableContinuation) {
            this.f11371a = cancellableContinuation;
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
        /* renamed from: a */
        public void mo3874a(AbstractC11893j.AbstractC11894a aVar) {
            C15149k.m377b(aVar, "result");
            if (!C12758e.m5410f()) {
                C13980g.f31390a.m9459a("has_history_sms_infer_completed", (String) true);
                if (C12758e.m5411e()) {
                    C12758e.m5403m();
                }
            }
            CancellableContinuation cancellableContinuation = this.f11371a;
            ListenableWorker.Result success = ListenableWorker.Result.success();
            C14979k.C14980a aVar2 = C14979k.f33013a;
            C14979k.m657a(success);
            cancellableContinuation.resumeWith(success);
        }

        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j.AbstractC11897b
        /* renamed from: b */
        public void mo3873b(AbstractC11893j.AbstractC11894a aVar) {
            C15149k.m377b(aVar, "exception");
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/HistoryBatchInferSmsWorker", m472f = "HistoryBatchInferSmsWorker.kt", m471l = {19, 26}, m470m = "doWork")
    /* renamed from: gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/HistoryBatchInferSmsWorker$b.class */
    public static final class C4675b extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f11372a;

        /* renamed from: b */
        public int f11373b;

        /* renamed from: d */
        public Object f11375d;

        public C4675b(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f11372a = obj;
            this.f11373b |= Integer.MIN_VALUE;
            return HistoryBatchInferSmsWorker.this.doWork(this);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/sms/HistoryBatchInferSmsWorker$doWork$2", m472f = "HistoryBatchInferSmsWorker.kt", m471l = {19, 22}, m470m = "invokeSuspend")
    /* renamed from: gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/sms/HistoryBatchInferSmsWorker$c.class */
    public static final class C4676c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super ListenableWorker.Result>, Object> {

        /* renamed from: a */
        public CoroutineScope f11376a;

        /* renamed from: b */
        public int f11377b;

        public C4676c(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C4676c cVar = new C4676c(dVar);
            cVar.f11376a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super ListenableWorker.Result> dVar) {
            return ((C4676c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            ListenableWorker.Result result;
            Object a = C15064c.m478a();
            int i = this.f11377b;
            try {
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    HistoryBatchInferSmsWorker historyBatchInferSmsWorker = HistoryBatchInferSmsWorker.this;
                    this.f11377b = 1;
                    Object a2 = historyBatchInferSmsWorker.m27452a(this);
                    obj = a2;
                    if (a2 == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                result = (ListenableWorker.Result) obj;
            } catch (Throwable th) {
                C13973d4.m2952a(new Exception("Unknown reason exception: " + th.getMessage()));
                result = ListenableWorker.Result.failure();
            }
            return result;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HistoryBatchInferSmsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        C15149k.m377b(context, "context");
        C15149k.m377b(workerParameters, "params");
    }

    /* renamed from: a */
    public final /* synthetic */ Object m27452a(AbstractC15044d<? super ListenableWorker.Result> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        C11864c.C11865a aVar = new C11864c.C11865a(new C11867d(new C4674a(cancellableContinuationImpl)));
        aVar.m7976a(Dispatchers.getIO());
        C11898k.m7979a(aVar.m7977a());
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006d  */
    @Override // androidx.work.CoroutineWorker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(p626l.p634w.AbstractC15044d<? super androidx.work.ListenableWorker.Result> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker.C4675b
            if (r0 == 0) goto L_0x0025
            r0 = r6
            gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker$b r0 = (gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker.C4675b) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f11373b
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f11373b = r1
            r0 = r7
            r6 = r0
            goto L_0x002f
        L_0x0025:
            gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker$b r0 = new gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L_0x002f:
            r0 = r6
            java.lang.Object r0 = r0.f11372a
            r7 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r9 = r0
            r0 = r6
            int r0 = r0.f11373b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0063
            r0 = r6
            java.lang.Object r0 = r0.f11375d
            gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker r0 = (gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker) r0
            r6 = r0
            r0 = r7
            boolean r0 = r0 instanceof p626l.C14979k.C14981b
            if (r0 != 0) goto L_0x005b
            r0 = r7
            r6 = r0
            goto L_0x0099
        L_0x005b:
            r0 = r7
            l.k$b r0 = (p626l.C14979k.C14981b) r0
            java.lang.Throwable r0 = r0.f33014a
            throw r0
        L_0x0063:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006d:
            r0 = r7
            boolean r0 = r0 instanceof p626l.C14979k.C14981b
            if (r0 != 0) goto L_0x00a1
            gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker$c r0 = new gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker$c
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = r5
            r0.f11375d = r1
            r0 = r6
            r1 = 1
            r0.f11373b = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = kotlinx.coroutines.CoroutineScopeKt.coroutineScope(r0, r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L_0x0099
            r0 = r9
            return r0
        L_0x0099:
            r0 = r6
            java.lang.String r1 = "coroutineScope {\n       …failure()\n        }\n    }"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r6
            return r0
        L_0x00a1:
            r0 = r7
            l.k$b r0 = (p626l.C14979k.C14981b) r0
            java.lang.Throwable r0 = r0.f33014a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.sms.HistoryBatchInferSmsWorker.doWork(l.w.d):java.lang.Object");
    }
}
