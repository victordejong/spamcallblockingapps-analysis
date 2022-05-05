package p459j.p460a.p474c0.p483e.p485b;

import gogolook.callgogolook2.p074ad.AdConstant;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import p459j.p460a.p474c0.p483e.p484a.AbstractC11723a;
import p459j.p460a.p474c0.p483e.p484a.C11726c;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p626l.C14978j;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u00142\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0019\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0094@ø\u0001��¢\u0006\u0002\u0010\u000bJ\u001c\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0002H\u0002J\u001e\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00022\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/domain/GetSmsUrlScanHistoryByDayUseCase;", "Lgogolook/callgogolook2/messaging/scan/domain/UseCase;", "", "Lgogolook/callgogolook2/messaging/scan/domain/SmsUrlScanHistory;", "smsUrlScanRepository", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanRepository;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V", "execute", "parameters", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTimeRange", "Lkotlin/Pair;", "", AdConstant.KEY_DAYS, "transform", "results", "", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResult;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.b.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/b.class */
public final class C11731b extends AbstractC11743h<Integer, C11742g> {

    /* renamed from: b */
    public final AbstractC11723a f26320b;

    /* renamed from: j.a.c0.e.b.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/b$a.class */
    public static final class C11732a {
        public C11732a() {
        }

        public /* synthetic */ C11732a(C15145g gVar) {
            this();
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/domain/GetSmsUrlScanHistoryByDayUseCase", m472f = "GetSmsUrlScanHistoryByDayUseCase.kt", m471l = {24, 24}, m470m = "execute")
    /* renamed from: j.a.c0.e.b.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/b/b$b.class */
    public static final class C11733b extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f26321a;

        /* renamed from: b */
        public int f26322b;

        /* renamed from: d */
        public Object f26324d;

        /* renamed from: e */
        public Object f26325e;

        /* renamed from: f */
        public int f26326f;

        /* renamed from: g */
        public int f26327g;

        /* renamed from: h */
        public long f26328h;

        /* renamed from: i */
        public long f26329i;

        public C11733b(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f26321a = obj;
            this.f26322b |= Integer.MIN_VALUE;
            return C11731b.this.m8402a(0, this);
        }
    }

    static {
        new C11732a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11731b(AbstractC11723a aVar, CoroutineDispatcher coroutineDispatcher) {
        super(coroutineDispatcher);
        C15149k.m377b(aVar, "smsUrlScanRepository");
        C15149k.m377b(coroutineDispatcher, "ioDispatcher");
        this.f26320b = aVar;
    }

    /* renamed from: a */
    public final C11742g m8403a(int i, List<C11726c> list) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (C11726c cVar : list) {
            String c = cVar.m8412b().m27503c();
            if (c != null) {
                linkedHashSet.add(c);
                Iterator<T> it = cVar.m8410d().iterator();
                int i6 = i5;
                int i7 = i4;
                int i8 = i3;
                int i9 = i2;
                while (true) {
                    i2 = i9;
                    i3 = i8;
                    i4 = i7;
                    i5 = i6;
                    if (it.hasNext()) {
                        int i10 = C11734c.f26330a[((AbstractC13719n.C13721b) it.next()).m3607a().ordinal()];
                        if (i10 == 1) {
                            i9++;
                        } else if (i10 == 2) {
                            i8++;
                        } else if (i10 == 3) {
                            i7++;
                        } else if (i10 == 4) {
                            i6++;
                        }
                    }
                }
            }
        }
        return new C11742g(i, linkedHashSet.size(), i2, i3, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m8402a(int r8, p626l.p634w.AbstractC15044d<? super p459j.p460a.p474c0.p483e.p485b.C11742g> r9) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p483e.p485b.C11731b.m8402a(int, l.w.d):java.lang.Object");
    }

    @Override // p459j.p460a.p474c0.p483e.p485b.AbstractC11743h
    /* renamed from: a */
    public /* bridge */ /* synthetic */ Object mo8391a(Integer num, AbstractC15044d<? super C11742g> dVar) {
        return m8402a(num.intValue(), dVar);
    }

    /* renamed from: a */
    public final C14978j<Long, Long> m8404a(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        return new C14978j<>(Long.valueOf(currentTimeMillis - (i * AdUtils.ONE_DAY)), Long.valueOf(currentTimeMillis));
    }
}
