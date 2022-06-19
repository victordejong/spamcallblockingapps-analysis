package p193e.p194a.p1066n;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.backup.BackupResult;
import com.truecaller.backup.analyitcs.BackupTaskEvent;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p678d4.AbstractC12595a;
import p193e.p194a.p849h4.AbstractC14920n;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.b0;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.y;
/* renamed from: e.a.n.c2 */
/* loaded from: classes5-dex2jar.jar:e/a/n/c2.class */
public final class C18283c2 extends AbstractC20574a<AbstractC18269b2> implements AbstractC18250a2 {

    /* renamed from: d */
    public final f f51678d;

    /* renamed from: e */
    public final f f51679e;

    /* renamed from: f */
    public final AbstractC18380m f51680f;

    /* renamed from: g */
    public final AbstractC18380m f51681g;

    /* renamed from: h */
    public final C20592g f51682h;

    /* renamed from: i */
    public final AbstractC18319d2 f51683i;

    /* renamed from: j */
    public final AbstractC19462a f51684j;

    /* renamed from: k */
    public final AbstractC18345j f51685k;

    /* renamed from: l */
    public final AbstractC12595a f51686l;

    /* renamed from: m */
    public final AbstractC19222c f51687m;

    /* renamed from: n */
    public final AbstractC14920n f51688n;

    /* renamed from: o */
    public final AbstractC8541a f51689o;

    @e(c = "com.truecaller.backup.RestoreServicePresenter", f = "RestoreServicePresenter.kt", l = {73, 76, 90}, m = "handleDatabaseRestoreResult")
    /* renamed from: e.a.n.c2$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c2$a.class */
    public static final class C18284a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51690d;

        /* renamed from: e */
        public int f51691e;

        /* renamed from: g */
        public Object f51693g;

        /* renamed from: h */
        public Object f51694h;

        /* renamed from: i */
        public Object f51695i;

        /* renamed from: j */
        public Object f51696j;

        /* renamed from: k */
        public Object f51697k;

        /* renamed from: l */
        public long f51698l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18284a(d dVar) {
            super(dVar);
            C18283c2.this = r4;
        }

        /* renamed from: s */
        public final Object m15308s(Object obj) {
            this.f51690d = obj;
            this.f51691e |= Integer.MIN_VALUE;
            return C18283c2.this.m15311Ij(null, 0L, this);
        }
    }

    @e(c = "com.truecaller.backup.RestoreServicePresenter$handleDatabaseRestoreResult$2", f = "RestoreServicePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.n.c2$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c2$b.class */
    public static final class C18285b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f51700f;

        /* renamed from: g */
        public final /* synthetic */ y f51701g;

        /* renamed from: h */
        public final /* synthetic */ b0 f51702h;

        /* renamed from: i */
        public final /* synthetic */ long f51703i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18285b(c0 c0Var, y yVar, b0 b0Var, long j, d dVar) {
            super(2, dVar);
            C18283c2.this = r5;
            this.f51700f = c0Var;
            this.f51701g = yVar;
            this.f51702h = b0Var;
            this.f51703i = j;
        }

        /* renamed from: i */
        public final d<s> m15307i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18285b(this.f51700f, this.f51701g, this.f51702h, this.f51703i, dVar);
        }

        /* renamed from: k */
        public final Object m15306k(Object obj, Object obj2) {
            return m15307i(obj, (d) obj2).m15305s(s.a);
        }

        /* renamed from: s */
        public final Object m15305s(Object obj) {
            s sVar;
            C25225a.m3932a3(obj);
            String mo19425a = C18283c2.this.f51688n.mo19425a("backup");
            AbstractC18269b2 abstractC18269b2 = (AbstractC18269b2) C18283c2.this.f57683a;
            if (abstractC18269b2 != null) {
                abstractC18269b2.mo15347f(((BackupResult) this.f51700f.a) == BackupResult.Success);
            }
            C18283c2.this.f51689o.putString("restoreDataBackupResult", ((BackupResult) this.f51700f.a).name());
            int ordinal = ((BackupResult) this.f51700f.a).ordinal();
            if (ordinal != 0) {
                if (ordinal != 17) {
                    AbstractC18269b2 abstractC18269b22 = (AbstractC18269b2) C18283c2.this.f57683a;
                    if (abstractC18269b22 != null) {
                        abstractC18269b22.mo15344i(mo19425a);
                    }
                } else {
                    C18283c2 c18283c2 = C18283c2.this;
                    AbstractC18269b2 abstractC18269b23 = (AbstractC18269b2) c18283c2.f57683a;
                    if (abstractC18269b23 != null) {
                        abstractC18269b23.mo15349d(mo19425a, c18283c2.f51686l.mo22844c());
                    }
                }
            } else if (this.f51701g.a) {
                AbstractC18269b2 abstractC18269b24 = (AbstractC18269b2) C18283c2.this.f57683a;
                if (abstractC18269b24 != null) {
                    abstractC18269b24.mo15345h(mo19425a);
                }
            } else {
                AbstractC18269b2 abstractC18269b25 = (AbstractC18269b2) C18283c2.this.f57683a;
                if (abstractC18269b25 != null) {
                    abstractC18269b25.mo15348e(mo19425a);
                }
                AbstractC18269b2 abstractC18269b26 = (AbstractC18269b2) C18283c2.this.f57683a;
                if (abstractC18269b26 != null) {
                    abstractC18269b26.mo15352a(C2752R.string.restore_done_message);
                }
            }
            C18283c2 c18283c22 = C18283c2.this;
            BackupResult backupResult = (BackupResult) this.f51700f.a;
            long j = this.f51702h.a;
            long j2 = this.f51703i;
            Objects.requireNonNull(c18283c22);
            l.e(backupResult, "result");
            n.B0(new BackupTaskEvent(BackupTaskEvent.Type.RESTORE, backupResult, j - j2, null, null, null), c18283c22.f51684j);
            AbstractC18269b2 abstractC18269b27 = (AbstractC18269b2) C18283c2.this.f57683a;
            if (abstractC18269b27 != null) {
                abstractC18269b27.mo15351b();
                sVar = s.a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.backup.RestoreServicePresenter$onStartCommand$1", f = "RestoreServicePresenter.kt", l = {41}, m = "invokeSuspend")
    /* renamed from: e.a.n.c2$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c2$c.class */
    public static final class C18286c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f51704e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18286c(d dVar) {
            super(2, dVar);
            C18283c2.this = r5;
        }

        /* renamed from: i */
        public final d<s> m15304i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18286c(dVar);
        }

        /* renamed from: k */
        public final Object m15303k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18286c(dVar).m15302s(s.a);
        }

        /* renamed from: s */
        public final Object m15302s(Object obj) {
            a aVar = a.a;
            int i = this.f51704e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C18283c2 c18283c2 = C18283c2.this;
                this.f51704e = 1;
                if (c18283c2.m15310Jj(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.backup.RestoreServicePresenter", f = "RestoreServicePresenter.kt", l = {56, 60, 61}, m = "restore")
    /* renamed from: e.a.n.c2$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c2$d.class */
    public static final class C18287d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51706d;

        /* renamed from: e */
        public int f51707e;

        /* renamed from: g */
        public Object f51709g;

        /* renamed from: h */
        public long f51710h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18287d(d dVar) {
            super(dVar);
            C18283c2.this = r4;
        }

        /* renamed from: s */
        public final Object m15301s(Object obj) {
            this.f51706d = obj;
            this.f51707e |= Integer.MIN_VALUE;
            return C18283c2.this.m15310Jj(this);
        }
    }

    @e(c = "com.truecaller.backup.RestoreServicePresenter$restore$2", f = "RestoreServicePresenter.kt", l = {57}, m = "invokeSuspend")
    /* renamed from: e.a.n.c2$e */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c2$e.class */
    public static final class C18288e extends i implements p<BackupResult, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f51711e;

        /* renamed from: f */
        public int f51712f;

        /* renamed from: h */
        public final /* synthetic */ long f51714h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18288e(long j, d dVar) {
            super(2, dVar);
            C18283c2.this = r5;
            this.f51714h = j;
        }

        /* renamed from: i */
        public final d<s> m15300i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C18288e c18288e = new C18288e(this.f51714h, dVar);
            c18288e.f51711e = obj;
            return c18288e;
        }

        /* renamed from: k */
        public final Object m15299k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18288e c18288e = new C18288e(this.f51714h, dVar);
            c18288e.f51711e = obj;
            return c18288e.m15298s(s.a);
        }

        /* renamed from: s */
        public final Object m15298s(Object obj) {
            a aVar = a.a;
            int i = this.f51712f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                BackupResult backupResult = (BackupResult) this.f51711e;
                C18283c2 c18283c2 = C18283c2.this;
                long j = this.f51714h;
                this.f51712f = 1;
                if (c18283c2.m15311Ij(backupResult, j, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18283c2(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC18380m abstractC18380m, @Named("V1") AbstractC18380m abstractC18380m2, C20592g c20592g, AbstractC18319d2 abstractC18319d2, AbstractC19462a abstractC19462a, AbstractC18345j abstractC18345j, AbstractC12595a abstractC12595a, AbstractC19222c abstractC19222c, AbstractC14920n abstractC14920n, AbstractC8541a abstractC8541a) {
        super(fVar2);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC18380m, "backupManager");
        l.e(abstractC18380m2, "backupManagerCompat");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC18319d2, "settingsBackupManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC18345j, "backupListener");
        l.e(abstractC12595a, "appMarketUtil");
        l.e(abstractC19222c, "clock");
        l.e(abstractC14920n, "notificationManager");
        l.e(abstractC8541a, "coreSettings");
        this.f51678d = fVar;
        this.f51679e = fVar2;
        this.f51680f = abstractC18380m;
        this.f51681g = abstractC18380m2;
        this.f51682h = c20592g;
        this.f51683i = abstractC18319d2;
        this.f51684j = abstractC19462a;
        this.f51685k = abstractC18345j;
        this.f51686l = abstractC12595a;
        this.f51687m = abstractC19222c;
        this.f51688n = abstractC14920n;
        this.f51689o = abstractC8541a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02f8  */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v124, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m15311Ij(com.truecaller.backup.BackupResult r11, long r12, s1.w.d<? super s1.s> r14) {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18283c2.m15311Ij(com.truecaller.backup.BackupResult, long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010f  */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m15310Jj(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18283c2.m15310Jj(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1066n.AbstractC18250a2
    /* renamed from: hg */
    public void mo15309hg() {
        String mo19425a = this.f51688n.mo19425a("backup");
        AbstractC18269b2 abstractC18269b2 = (AbstractC18269b2) this.f57683a;
        if (abstractC18269b2 != null) {
            abstractC18269b2.mo15350c(mo19425a);
        }
        AbstractC18269b2 abstractC18269b22 = (AbstractC18269b2) this.f57683a;
        if (abstractC18269b22 != null) {
            abstractC18269b22.mo15346g(mo19425a);
        }
        AbstractC18269b2 abstractC18269b23 = (AbstractC18269b2) this.f57683a;
        if (abstractC18269b23 != null) {
            abstractC18269b23.mo15352a(C2752R.string.restore_notification_restoring);
        }
        s1.a.a.a.v0.f.d.w2(this, this.f51678d, (j0) null, new C18286c(null), 2, (Object) null);
    }
}
