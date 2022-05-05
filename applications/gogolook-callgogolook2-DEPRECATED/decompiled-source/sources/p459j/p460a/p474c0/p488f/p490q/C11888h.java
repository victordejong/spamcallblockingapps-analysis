package p459j.p460a.p474c0.p488f.p490q;

import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import p459j.p460a.p474c0.p475c.p478y.C11636q;
import p459j.p460a.p474c0.p488f.C11837k;
import p459j.p460a.p474c0.p488f.p489p.AbstractC11844a;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11893j;
import p459j.p460a.p521j0.p529x.C12773i;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14234c;
import p626l.C14979k;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\t\u001a\u00020\nH\u0096@ø\u0001��¢\u0006\u0002\u0010\u000bR\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/job/SingleInferSmsJob;", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob;", "messageId", "", "conversationId", "content", "callback", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgogolook/callgogolook2/messaging/sms/job/SmsJob$SmsJobCallback;)V", "startWork", "Lgogolook/callgogolook2/messaging/sms/job/SmsJob$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.q.h */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/h.class */
public final class C11888h extends AbstractC11893j {

    /* renamed from: b */
    public final String f26666b;

    /* renamed from: c */
    public final String f26667c;

    /* renamed from: d */
    public final String f26668d;

    /* renamed from: j.a.c0.f.q.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/h$a.class */
    public static final class C11889a implements AbstractC11844a.AbstractC11845a {

        /* renamed from: a */
        public final /* synthetic */ C13930d f26669a;

        /* renamed from: b */
        public final /* synthetic */ CancellableContinuation f26670b;

        public C11889a(C13930d dVar, CancellableContinuation cancellableContinuation) {
            this.f26669a = dVar;
            this.f26670b = cancellableContinuation;
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        /* renamed from: a */
        public void mo7962a(AbstractC11893j.AbstractC11894a.C11896b bVar) {
            C15149k.m377b(bVar, "result");
            this.f26669a.m3017f();
            C11837k.m8066b(true, this.f26669a.m3025a());
            CancellableContinuation cancellableContinuation = this.f26670b;
            C14979k.C14980a aVar = C14979k.f33013a;
            C14979k.m657a(bVar);
            cancellableContinuation.resumeWith(bVar);
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        /* renamed from: a */
        public void mo7961a(List<String> list) {
            C15149k.m377b(list, "keyList");
            this.f26669a.m3017f();
            C11837k.m8066b(false, this.f26669a.m3025a());
            C12773i.m5372a(0);
            CancellableContinuation cancellableContinuation = this.f26670b;
            AbstractC11893j.AbstractC11894a.C11895a aVar = new AbstractC11893j.AbstractC11894a.C11895a();
            C14979k.C14980a aVar2 = C14979k.f33013a;
            C14979k.m657a(aVar);
            cancellableContinuation.resumeWith(aVar);
        }

        @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a.AbstractC11845a
        public void onComplete() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11888h(String str, String str2, String str3, AbstractC11893j.AbstractC11897b bVar) {
        super(bVar);
        C15149k.m377b(str, "messageId");
        C15149k.m377b(str3, "content");
        C15149k.m377b(bVar, "callback");
        this.f26666b = str;
        this.f26667c = str2;
        this.f26668d = str3;
    }

    @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11893j
    /* renamed from: a */
    public Object mo4042a(AbstractC15044d<? super AbstractC11893j.AbstractC11894a> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        AbstractC14238e.C14239a.m2086a(new C14234c("Start_Single_Infer"), null, 1, null);
        C13930d dVar2 = new C13930d();
        dVar2.m3018e();
        AbstractC11844a a = new C11876e().m8009a(new C11889a(dVar2, cancellableContinuationImpl));
        if (a != null) {
            a.mo8040a(new C11636q(this.f26666b, this.f26667c, false, true, true, this.f26668d));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }
}
