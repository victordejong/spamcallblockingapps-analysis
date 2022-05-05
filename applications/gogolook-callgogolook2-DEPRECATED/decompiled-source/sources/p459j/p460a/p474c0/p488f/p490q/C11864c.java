package p459j.p460a.p474c0.p488f.p490q;

import kotlin.Metadata;
import p459j.p460a.p474c0.p488f.p490q.AbstractC11899l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\u0018�� \f2\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002:\u0002\u000b\fB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0011\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020��H\u0096\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/job/DeferredSmsJobRequest;", "Lgogolook/callgogolook2/messaging/sms/job/SmsJobRequest;", "", "builder", "Lgogolook/callgogolook2/messaging/sms/job/DeferredSmsJobRequest$Builder;", "(Lgogolook/callgogolook2/messaging/sms/job/DeferredSmsJobRequest$Builder;)V", "getBuilder", "()Lgogolook/callgogolook2/messaging/sms/job/DeferredSmsJobRequest$Builder;", "compareTo", "", "other", "Builder", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.q.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/c.class */
public final class C11864c extends AbstractC11899l implements Comparable<C11864c> {

    /* renamed from: c */
    public static final C11866b f26611c = new C11866b(null);

    /* renamed from: b */
    public final C11865a f26612b;

    /* renamed from: j.a.c0.f.q.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/c$a.class */
    public static final class C11865a extends AbstractC11899l.AbstractC11900a<C11865a, C11864c> {

        /* renamed from: e */
        public final AbstractC11893j f26613e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11865a(AbstractC11893j jVar) {
            super(jVar.getClass());
            C15149k.m377b(jVar, "job");
            this.f26613e = jVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p459j.p460a.p474c0.p488f.p490q.AbstractC11899l.AbstractC11900a
        /* renamed from: b */
        public C11864c mo7975b() {
            return new C11864c(this);
        }

        /* renamed from: f */
        public final AbstractC11893j m8021f() {
            return this.f26613e;
        }
    }

    /* renamed from: j.a.c0.f.q.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/c$b.class */
    public static final class C11866b {
        public C11866b() {
        }

        public /* synthetic */ C11866b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C11864c m8020a(AbstractC11893j jVar) {
            C15149k.m377b(jVar, "job");
            return new C11865a(jVar).m7977a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11864c(C11865a aVar) {
        super(aVar.m7974c(), aVar.m7972e());
        C15149k.m377b(aVar, "builder");
        this.f26612b = aVar;
    }

    /* renamed from: a */
    public static final C11864c m8023a(AbstractC11893j jVar) {
        return f26611c.m8020a(jVar);
    }

    /* renamed from: a */
    public int compareTo(C11864c cVar) {
        C15149k.m377b(cVar, "other");
        return (this.f26612b.m7973d() > cVar.f26612b.m7973d() ? 1 : (this.f26612b.m7973d() == cVar.f26612b.m7973d() ? 0 : -1));
    }

    /* renamed from: b */
    public final C11865a m8022b() {
        return this.f26612b;
    }
}
