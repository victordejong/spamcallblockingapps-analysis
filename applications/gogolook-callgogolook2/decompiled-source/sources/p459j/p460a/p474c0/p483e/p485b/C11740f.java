package p459j.p460a.p474c0.p483e.p485b;

import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import p459j.p460a.p474c0.p483e.p484a.AbstractC11723a;
import p459j.p460a.p474c0.p483e.p484a.C11726c;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0019\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0094@ø\u0001��¢\u0006\u0002\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/domain/ScanSmsUrlUseCase;", "Lgogolook/callgogolook2/messaging/scan/domain/UseCase;", "Lgogolook/callgogolook2/messaging/scan/data/SmsMessage;", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResult;", "smsUrlScanRepository", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanRepository;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V", "execute", "parameters", "(Lgogolook/callgogolook2/messaging/scan/data/SmsMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.b.f */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/f.class */
public final class C11740f extends AbstractC11743h<SmsMessage, C11726c> {

    /* renamed from: b */
    public final AbstractC11723a f26333b;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/domain/ScanSmsUrlUseCase", m472f = "ScanSmsUrlUseCase.kt", m471l = {16, 18, 19}, m470m = "execute")
    /* renamed from: j.a.c0.e.b.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/f$a.class */
    public static final class C11741a extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f26334a;

        /* renamed from: b */
        public int f26335b;

        /* renamed from: d */
        public Object f26337d;

        /* renamed from: e */
        public Object f26338e;

        /* renamed from: f */
        public Object f26339f;

        /* renamed from: g */
        public Object f26340g;

        public C11741a(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f26334a = obj;
            this.f26335b |= Integer.MIN_VALUE;
            return C11740f.this.mo8391a((SmsMessage) null, (AbstractC15044d<? super C11726c>) this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11740f(AbstractC11723a aVar, CoroutineDispatcher coroutineDispatcher) {
        super(coroutineDispatcher);
        C15149k.m377b(aVar, "smsUrlScanRepository");
        C15149k.m377b(coroutineDispatcher, "ioDispatcher");
        this.f26333b = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011c  */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo8391a(gogolook.callgogolook2.messaging.scan.data.SmsMessage r6, p626l.p634w.AbstractC15044d<? super p459j.p460a.p474c0.p483e.p484a.C11726c> r7) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p483e.p485b.C11740f.mo8391a(gogolook.callgogolook2.messaging.scan.data.SmsMessage, l.w.d):java.lang.Object");
    }
}
