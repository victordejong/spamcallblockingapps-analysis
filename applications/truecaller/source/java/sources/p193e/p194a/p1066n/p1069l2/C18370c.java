package p193e.p194a.p1066n.p1069l2;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.backup.BackupResult;
import com.truecaller.backup.analyitcs.BackupTaskEvent;
import com.truecaller.backup.worker.BackupWorkResult;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import io.agora.rtc.Constants;
import java.util.concurrent.CancellationException;
import java.util.concurrent.locks.ReentrantLock;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.AbstractC18319d2;
import p193e.p194a.p1066n.AbstractC18380m;
import p193e.p194a.p1066n.AbstractC18435u;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.n.l2.c */
/* loaded from: classes5-dex2jar.jar:e/a/n/l2/c.class */
public final class C18370c extends AbstractC20574a<AbstractC18369b> implements AbstractC18368a {

    /* renamed from: p */
    public static final ReentrantLock f51859p = new ReentrantLock();

    /* renamed from: d */
    public boolean f51860d;

    /* renamed from: e */
    public int f51861e;

    /* renamed from: f */
    public final f f51862f;

    /* renamed from: g */
    public final f f51863g;

    /* renamed from: h */
    public final AbstractC18380m f51864h;

    /* renamed from: i */
    public final C20592g f51865i;

    /* renamed from: j */
    public final AbstractC18319d2 f51866j;

    /* renamed from: k */
    public final AbstractC8541a f51867k;

    /* renamed from: l */
    public final AbstractC19222c f51868l;

    /* renamed from: m */
    public final AbstractC18435u f51869m;

    /* renamed from: n */
    public final AbstractC19462a f51870n;

    /* renamed from: o */
    public final long f51871o;

    @e(c = "com.truecaller.backup.worker.BackupWorkerPresenter", f = "BackupWorkerPresenter.kt", l = {Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 158}, m = "backupAndLog")
    /* renamed from: e.a.n.l2.c$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/l2/c$a.class */
    public static final class C18371a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51872d;

        /* renamed from: e */
        public int f51873e;

        /* renamed from: g */
        public Object f51875g;

        /* renamed from: h */
        public long f51876h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18371a(d dVar) {
            super(dVar);
            C18370c.this = r4;
        }

        /* renamed from: s */
        public final Object m15118s(Object obj) {
            this.f51872d = obj;
            this.f51873e |= Integer.MIN_VALUE;
            return C18370c.this.m15127Ij(this);
        }
    }

    @e(c = "com.truecaller.backup.worker.BackupWorkerPresenter$onWork$1", f = "BackupWorkerPresenter.kt", l = {82}, m = "invokeSuspend")
    /* renamed from: e.a.n.l2.c$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/l2/c$b.class */
    public static final class C18372b extends i implements p<i0, d<? super BackupWorkResult>, Object> {

        /* renamed from: e */
        public int f51877e;

        /* renamed from: g */
        public final /* synthetic */ boolean f51879g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18372b(boolean z, d dVar) {
            super(2, dVar);
            C18370c.this = r5;
            this.f51879g = z;
        }

        /* renamed from: i */
        public final d<s> m15117i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18372b(this.f51879g, dVar);
        }

        /* renamed from: k */
        public final Object m15116k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18372b(this.f51879g, dVar).m15115s(s.a);
        }

        /* renamed from: s */
        public final Object m15115s(Object obj) {
            a aVar = a.a;
            int i = this.f51877e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C18370c c18370c = C18370c.this;
                this.f51877e = 1;
                Object m15124Lj = c18370c.m15124Lj(this);
                obj = m15124Lj;
                if (m15124Lj == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            BackupResult backupResult = (BackupResult) obj;
            if (this.f51879g) {
                return BackupWorkResult.SUCCESS;
            }
            int ordinal = backupResult.ordinal();
            return (ordinal == 0 || ordinal == 1) ? BackupWorkResult.SUCCESS : BackupWorkResult.RETRY;
        }
    }

    @e(c = "com.truecaller.backup.worker.BackupWorkerPresenter", f = "BackupWorkerPresenter.kt", l = {113, 115}, m = "performBackup")
    /* renamed from: e.a.n.l2.c$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/l2/c$c.class */
    public static final class C18373c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51880d;

        /* renamed from: e */
        public int f51881e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18373c(d dVar) {
            super(dVar);
            C18370c.this = r4;
        }

        /* renamed from: s */
        public final Object m15114s(Object obj) {
            this.f51880d = obj;
            this.f51881e |= Integer.MIN_VALUE;
            return C18370c.this.m15124Lj(this);
        }
    }

    @e(c = "com.truecaller.backup.worker.BackupWorkerPresenter", f = "BackupWorkerPresenter.kt", l = {128}, m = "performBackupNow")
    /* renamed from: e.a.n.l2.c$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/l2/c$d.class */
    public static final class C18374d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51883d;

        /* renamed from: e */
        public int f51884e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18374d(d dVar) {
            super(dVar);
            C18370c.this = r4;
        }

        /* renamed from: s */
        public final Object m15113s(Object obj) {
            this.f51883d = obj;
            this.f51884e |= Integer.MIN_VALUE;
            return C18370c.this.m15123Mj(this);
        }
    }

    @e(c = "com.truecaller.backup.worker.BackupWorkerPresenter", f = "BackupWorkerPresenter.kt", l = {145}, m = "performBackupScheduled")
    /* renamed from: e.a.n.l2.c$e */
    /* loaded from: classes5-dex2jar.jar:e/a/n/l2/c$e.class */
    public static final class C18375e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51886d;

        /* renamed from: e */
        public int f51887e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18375e(d dVar) {
            super(dVar);
            C18370c.this = r4;
        }

        /* renamed from: s */
        public final Object m15112s(Object obj) {
            this.f51886d = obj;
            this.f51887e |= Integer.MIN_VALUE;
            return C18370c.this.m15122Nj(this);
        }
    }

    @e(c = "com.truecaller.backup.worker.BackupWorkerPresenter", f = "BackupWorkerPresenter.kt", l = {167, 171, 173, 177, 186, 190, 195}, m = "performFullBackup")
    /* renamed from: e.a.n.l2.c$f */
    /* loaded from: classes5-dex2jar.jar:e/a/n/l2/c$f.class */
    public static final class C18376f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51889d;

        /* renamed from: e */
        public int f51890e;

        /* renamed from: g */
        public Object f51892g;

        /* renamed from: h */
        public Object f51893h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18376f(d dVar) {
            super(dVar);
            C18370c.this = r4;
        }

        /* renamed from: s */
        public final Object m15111s(Object obj) {
            this.f51889d = obj;
            this.f51890e |= Integer.MIN_VALUE;
            return C18370c.this.m15121Oj(this);
        }
    }

    @e(c = "com.truecaller.backup.worker.BackupWorkerPresenter", f = "BackupWorkerPresenter.kt", l = {210}, m = "saveBackupDate")
    /* renamed from: e.a.n.l2.c$g */
    /* loaded from: classes5-dex2jar.jar:e/a/n/l2/c$g.class */
    public static final class C18377g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51894d;

        /* renamed from: e */
        public int f51895e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18377g(d dVar) {
            super(dVar);
            C18370c.this = r4;
        }

        /* renamed from: s */
        public final Object m15110s(Object obj) {
            this.f51894d = obj;
            this.f51895e |= Integer.MIN_VALUE;
            return C18370c.this.m15120Pj(this);
        }
    }

    @e(c = "com.truecaller.backup.worker.BackupWorkerPresenter$showToast$2", f = "BackupWorkerPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.n.l2.c$h */
    /* loaded from: classes5-dex2jar.jar:e/a/n/l2/c$h.class */
    public static final class C18378h extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ int f51898f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18378h(int i, d dVar) {
            super(2, dVar);
            C18370c.this = r5;
            this.f51898f = i;
        }

        /* renamed from: i */
        public final d<s> m15109i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18378h(this.f51898f, dVar);
        }

        /* renamed from: k */
        public final Object m15108k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18370c c18370c = C18370c.this;
            int i = this.f51898f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            ReentrantLock reentrantLock = C18370c.f51859p;
            AbstractC18369b abstractC18369b = (AbstractC18369b) c18370c.f57683a;
            if (abstractC18369b != null) {
                abstractC18369b.mo15132a(i);
            } else {
                sVar = null;
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m15107s(Object obj) {
            s sVar;
            C25225a.m3932a3(obj);
            C18370c c18370c = C18370c.this;
            ReentrantLock reentrantLock = C18370c.f51859p;
            AbstractC18369b abstractC18369b = (AbstractC18369b) c18370c.f57683a;
            if (abstractC18369b != null) {
                abstractC18369b.mo15132a(this.f51898f);
                sVar = s.a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18370c(@Named("IO") f fVar, @Named("UI") f fVar2, @Named("V2") AbstractC18380m abstractC18380m, C20592g c20592g, AbstractC18319d2 abstractC18319d2, AbstractC8541a abstractC8541a, AbstractC19222c abstractC19222c, AbstractC18435u abstractC18435u, AbstractC19462a abstractC19462a, long j) {
        super(fVar);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC18380m, "backupManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC18319d2, "settingsBackupManager");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19222c, "clock");
        l.e(abstractC18435u, "backupRestApi");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f51862f = fVar;
        this.f51863g = fVar2;
        this.f51864h = abstractC18380m;
        this.f51865i = c20592g;
        this.f51866j = abstractC18319d2;
        this.f51867k = abstractC8541a;
        this.f51868l = abstractC19222c;
        this.f51869m = abstractC18435u;
        this.f51870n = abstractC19462a;
        this.f51871o = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f3  */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m15127Ij(s1.w.d<? super com.truecaller.backup.BackupResult> r8) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.p1069l2.C18370c.m15127Ij(s1.w.d):java.lang.Object");
    }

    /* renamed from: Jj */
    public final void m15126Jj(BackupResult backupResult, long j) {
        long j2 = this.f51867k.getLong("key_backup_frequency_hours", 0L);
        BackupTaskEvent.Trigger trigger = this.f51860d ? BackupTaskEvent.Trigger.MANUAL : BackupTaskEvent.Trigger.SCHEDULED;
        int i = this.f51861e;
        l.e(backupResult, "result");
        l.e(trigger, "trigger");
        n.B0(new BackupTaskEvent(BackupTaskEvent.Type.BACKUP, backupResult, j, Long.valueOf(j2), trigger, Integer.valueOf(i)), this.f51870n);
    }

    /* renamed from: Kj */
    public BackupWorkResult m15125Kj(boolean z, int i) {
        BackupWorkResult backupWorkResult;
        this.f51860d = z;
        this.f51861e = i;
        if (i >= 5) {
            m15126Jj(BackupResult.MaxRunAttemptReached, 0L);
            return BackupWorkResult.SUCCESS;
        }
        ReentrantLock reentrantLock = f51859p;
        try {
            if (!reentrantLock.tryLock()) {
                return BackupWorkResult.SUCCESS;
            }
            try {
            } catch (CancellationException e) {
                backupWorkResult = BackupWorkResult.SUCCESS;
                reentrantLock = f51859p;
                reentrantLock.unlock();
                return backupWorkResult;
            } catch (Exception e2) {
                AssertionUtil.reportThrowableButNeverCrash(e2);
                m15126Jj(BackupResult.ErrorWorker, 0L);
                backupWorkResult = BackupWorkResult.RETRY;
                reentrantLock = f51859p;
                reentrantLock.unlock();
                return backupWorkResult;
            }
            if (!this.f51864h.isEnabled()) {
                BackupWorkResult backupWorkResult2 = BackupWorkResult.SUCCESS;
                reentrantLock.unlock();
                return backupWorkResult2;
            }
            backupWorkResult = (BackupWorkResult) s1.a.a.a.v0.f.d.b3(getCoroutineContext(), new C18372b(z, null));
            reentrantLock.unlock();
            return backupWorkResult;
        } catch (Throwable th) {
            f51859p.unlock();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0062  */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m15124Lj(s1.w.d<? super com.truecaller.backup.BackupResult> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1066n.p1069l2.C18370c.C18373c
            if (r0 == 0) goto L23
            r0 = r6
            e.a.n.l2.c$c r0 = (p193e.p194a.p1066n.p1069l2.C18370c.C18373c) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f51881e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L23
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f51881e = r1
            goto L2d
        L23:
            e.a.n.l2.c$c r0 = new e.a.n.l2.c$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r7 = r0
        L2d:
            r0 = r7
            java.lang.Object r0 = r0.f51880d
            r6 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r7
            int r0 = r0.f51881e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L62
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L5b
            r0 = r8
            r1 = 2
            if (r0 != r1) goto L51
            r0 = r6
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto La1
        L51:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5b:
            r0 = r6
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L83
        L62:
            r0 = r6
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            boolean r0 = r0.f51860d
            if (r0 == 0) goto L8b
            r0 = r7
            r1 = 1
            r0.f51881e = r1
            r0 = r5
            r1 = r7
            java.lang.Object r0 = r0.m15123Mj(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L83
            r0 = r9
            return r0
        L83:
            r0 = r6
            com.truecaller.backup.BackupResult r0 = (com.truecaller.backup.BackupResult) r0
            r6 = r0
            goto La6
        L8b:
            r0 = r7
            r1 = 2
            r0.f51881e = r1
            r0 = r5
            r1 = r7
            java.lang.Object r0 = r0.m15122Nj(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto La1
            r0 = r9
            return r0
        La1:
            r0 = r6
            com.truecaller.backup.BackupResult r0 = (com.truecaller.backup.BackupResult) r0
            r6 = r0
        La6:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.p1069l2.C18370c.m15124Lj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* renamed from: Mj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m15123Mj(s1.w.d<? super com.truecaller.backup.BackupResult> r6) {
        /*
            Method dump skipped, instructions count: 187
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.p1069l2.C18370c.m15123Mj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* renamed from: Nj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m15122Nj(s1.w.d<? super com.truecaller.backup.BackupResult> r7) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.p1069l2.C18370c.m15122Nj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02f8  */
    /* renamed from: Oj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m15121Oj(s1.w.d<? super com.truecaller.backup.BackupResult> r6) {
        /*
            Method dump skipped, instructions count: 769
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.p1069l2.C18370c.m15121Oj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|26|(2:10|(1:12)(2:13|14))(4:15|16|17|(2:19|20))|25|23|24))|7|8|26|(0)(0)|25|23|24) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x008e, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0059  */
    /* renamed from: Pj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m15120Pj(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1066n.p1069l2.C18370c.C18377g
            if (r0 == 0) goto L25
            r0 = r6
            e.a.n.l2.c$g r0 = (p193e.p194a.p1066n.p1069l2.C18370c.C18377g) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f51895e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f51895e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.n.l2.c$g r0 = new e.a.n.l2.c$g
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f51894d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r7 = r0
            r0 = r6
            int r0 = r0.f51895e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L59
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L4f
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.io.IOException -> L8e
            goto L93
        L4f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L59:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.b0.o.a r0 = r0.f51867k     // Catch: java.io.IOException -> L8e
            java.lang.String r1 = "key_backup_last_success"
            r2 = r5
            e.a.p5.c r2 = r2.f51868l     // Catch: java.io.IOException -> L8e
            long r2 = r2.mo13819c()     // Catch: java.io.IOException -> L8e
            r0.putLong(r1, r2)     // Catch: java.io.IOException -> L8e
            r0 = r5
            e.a.n.u r0 = r0.f51869m     // Catch: java.io.IOException -> L8e
            r9 = r0
            r0 = r6
            r1 = 1
            r0.f51895e = r1     // Catch: java.io.IOException -> L8e
            r0 = r9
            r1 = r6
            java.lang.Object r0 = r0.m14987b(r1)     // Catch: java.io.IOException -> L8e
            r6 = r0
            r0 = r6
            r1 = r7
            if (r0 != r1) goto L93
            r0 = r7
            return r0
        L8e:
            r6 = move-exception
            r0 = r6
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
        L93:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.p1069l2.C18370c.m15120Pj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Qj */
    public final /* synthetic */ Object m15119Qj(int i, d<? super s> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f51863g, new C18378h(i, null), dVar);
    }
}
