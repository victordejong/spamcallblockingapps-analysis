package p459j.p460a.p474c0.p483e.p485b;

import gogolook.callgogolook2.p074ad.AdUtils;
import kotlin.Metadata;
import p459j.p460a.p474c0.p483e.p484a.AbstractC11727d;
import p459j.p460a.p474c0.p483e.p485b.AbstractC11735d;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0086\u0002R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/domain/DeleteOutdatedSmsUrlScanHistoryUseCase;", "", "smsUrlScanResultLocalDataSource", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResultLocalDataSource;", "(Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResultLocalDataSource;)V", "currentTimestamp", "", "currentTimestamp$annotations", "()V", "getCurrentTimestamp", "()J", "setCurrentTimestamp", "(J)V", "execute", "", "parameters", "", "invoke", "Lgogolook/callgogolook2/messaging/scan/domain/Result;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.b.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/a.class */
public final class C11729a {

    /* renamed from: a */
    public long f26318a;

    /* renamed from: b */
    public final AbstractC11727d f26319b;

    /* renamed from: j.a.c0.e.b.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/a$a.class */
    public static final class C11730a {
        public C11730a() {
        }

        public /* synthetic */ C11730a(C15145g gVar) {
            this();
        }
    }

    static {
        new C11730a(null);
    }

    public C11729a(AbstractC11727d dVar) {
        C15149k.m377b(dVar, "smsUrlScanResultLocalDataSource");
        this.f26319b = dVar;
    }

    /* renamed from: a */
    public final boolean m8406a(int i) {
        this.f26318a = System.currentTimeMillis();
        return this.f26319b.mo8409a(this.f26318a - (i * AdUtils.ONE_DAY));
    }

    /* renamed from: b */
    public final AbstractC11735d<Boolean> m8405b(int i) {
        AbstractC11735d<Boolean> dVar;
        try {
            dVar = new AbstractC11735d.C11738c<>(Boolean.valueOf(m8406a(i)));
        } catch (Exception e) {
            dVar = new AbstractC11735d.C11736a(e);
        }
        return dVar;
    }
}
