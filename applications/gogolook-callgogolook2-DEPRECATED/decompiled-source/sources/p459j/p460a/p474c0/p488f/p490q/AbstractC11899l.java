package p459j.p460a.p474c0.p488f.p490q;

import java.util.UUID;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018��2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/job/SmsJobRequest;", "", "requestId", "Ljava/util/UUID;", "jobSpec", "Lgogolook/callgogolook2/messaging/sms/job/SmsJobSpec;", "(Ljava/util/UUID;Lgogolook/callgogolook2/messaging/sms/job/SmsJobSpec;)V", "getJobSpec", "()Lgogolook/callgogolook2/messaging/sms/job/SmsJobSpec;", "getRequestId", "", "Builder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.q.l */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/l.class */
public abstract class AbstractC11899l {

    /* renamed from: a */
    public final C11901m f26678a;

    /* renamed from: j.a.c0.f.q.l$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/l$a.class */
    public static abstract class AbstractC11900a<B extends AbstractC11900a<B, S>, S extends AbstractC11899l> {

        /* renamed from: a */
        public CoroutineDispatcher f26679a = Dispatchers.getDefault();

        /* renamed from: b */
        public long f26680b = System.currentTimeMillis();

        /* renamed from: c */
        public UUID f26681c;

        /* renamed from: d */
        public C11901m f26682d;

        public AbstractC11900a(Class<? extends AbstractC11893j> cls) {
            C15149k.m377b(cls, "jobClass");
            UUID randomUUID = UUID.randomUUID();
            C15149k.m383a((Object) randomUUID, "UUID.randomUUID()");
            this.f26681c = randomUUID;
            String uuid = this.f26681c.toString();
            C15149k.m383a((Object) uuid, "buildId.toString()");
            String name = cls.getName();
            C15149k.m383a((Object) name, "jobClass.name");
            this.f26682d = new C11901m(uuid, name, this.f26679a);
        }

        /* renamed from: a */
        public final B m7976a(CoroutineDispatcher coroutineDispatcher) {
            C15149k.m377b(coroutineDispatcher, "dispatcher");
            this.f26679a = coroutineDispatcher;
            return this;
        }

        /* renamed from: a */
        public final S m7977a() {
            this.f26680b = System.currentTimeMillis();
            S b = mo7975b();
            UUID randomUUID = UUID.randomUUID();
            C15149k.m383a((Object) randomUUID, "UUID.randomUUID()");
            this.f26681c = randomUUID;
            C11901m mVar = this.f26682d;
            String uuid = this.f26681c.toString();
            C15149k.m383a((Object) uuid, "buildId.toString()");
            mVar.m7970a(uuid);
            this.f26682d.m7969a(this.f26679a);
            this.f26682d = new C11901m(this.f26682d);
            return b;
        }

        /* renamed from: b */
        public abstract S mo7975b();

        /* renamed from: c */
        public final UUID m7974c() {
            return this.f26681c;
        }

        /* renamed from: d */
        public final long m7973d() {
            return this.f26680b;
        }

        /* renamed from: e */
        public final C11901m m7972e() {
            return this.f26682d;
        }
    }

    public AbstractC11899l(UUID uuid, C11901m mVar) {
        C15149k.m377b(uuid, "requestId");
        C15149k.m377b(mVar, "jobSpec");
        this.f26678a = mVar;
    }

    /* renamed from: a */
    public final C11901m m7978a() {
        return this.f26678a;
    }
}
