package p193e.p194a.p1066n;

import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p851h5.AbstractC14967y;
import p193e.p194a.p851h5.C14945l;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.s;
import s1.u.i;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.u;
/* renamed from: e.a.n.b0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/b0.class */
public final class C18259b0 extends AbstractC20576b<AbstractC18453z> implements AbstractC18450y {

    /* renamed from: p */
    public static final /* synthetic */ l[] f51597p = {d0.c(new u(C18259b0.class, "hasSMSPermissions", "<v#0>", 0))};

    /* renamed from: b */
    public final y f51598b = d.j((p1) null, 1, (Object) null);

    /* renamed from: c */
    public final List<C13197i0> f51599c = i.T(new C13197i0[]{new C13197i0(0, (int) C2752R.string.backup_settings_frequency_never, (String) null, (Object) 0L), new C13197i0(0, (int) C2752R.string.backup_settings_frequency_daily, (String) null, (Object) 24L), new C13197i0(0, (int) C2752R.string.backup_settings_frequency_weekly, (String) null, (Object) 168L), new C13197i0(0, (int) C2752R.string.backup_settings_frequency_monthly, (String) null, (Object) 720L)});

    /* renamed from: d */
    public final List<C13197i0> f51600d = i.T(new C13197i0[]{new C13197i0(0, (int) C2752R.string.backup_settings_backup_over_wifi, (String) null, (Object) 2), new C13197i0(0, (int) C2752R.string.backup_settings_backup_over_wifi_or_cellular, (String) null, (Object) 1)});

    /* renamed from: e */
    public final Context f51601e;

    /* renamed from: f */
    public final f f51602f;

    /* renamed from: g */
    public final f f51603g;

    /* renamed from: h */
    public final AbstractC18380m f51604h;

    /* renamed from: i */
    public final AbstractC19321u f51605i;

    /* renamed from: j */
    public final AbstractC8541a f51606j;

    /* renamed from: k */
    public final AbstractC19462a f51607k;

    /* renamed from: l */
    public final AbstractC19854f<AbstractC19463a0> f51608l;

    /* renamed from: m */
    public final AbstractC14965w f51609m;

    /* renamed from: n */
    public final AbstractC6392i0 f51610n;

    /* renamed from: o */
    public final AbstractC14967y f51611o;

    @e(c = "com.truecaller.backup.BackupSettingsPresenter", f = "BackupSettingsPresenter.kt", l = {291}, m = "maybeShowRestoreOnboardingScreen")
    /* renamed from: e.a.n.b0$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b0$a.class */
    public static final class C18260a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51612d;

        /* renamed from: e */
        public int f51613e;

        /* renamed from: g */
        public Object f51615g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18260a(s1.w.d dVar) {
            super(dVar);
            C18259b0.this = r4;
        }

        /* renamed from: s */
        public final Object m15373s(Object obj) {
            this.f51612d = obj;
            this.f51613e |= Integer.MIN_VALUE;
            return C18259b0.this.m15377Ij(this);
        }
    }

    @e(c = "com.truecaller.backup.BackupSettingsPresenter$maybeShowRestoreOnboardingScreen$lastBackupTime$1", f = "BackupSettingsPresenter.kt", l = {291}, m = "invokeSuspend")
    /* renamed from: e.a.n.b0$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b0$b.class */
    public static final class C18261b extends s1.w.k.a.i implements p<i0, s1.w.d<? super Long>, Object> {

        /* renamed from: e */
        public int f51616e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18261b(s1.w.d dVar) {
            super(2, dVar);
            C18259b0.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m15372i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18261b(dVar);
        }

        /* renamed from: k */
        public final Object m15371k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C18261b(dVar).m15370s(s.a);
        }

        /* renamed from: s */
        public final Object m15370s(Object obj) {
            a aVar = a.a;
            int i = this.f51616e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18380m abstractC18380m = C18259b0.this.f51604h;
                this.f51616e = 1;
                Object S = n.S(abstractC18380m, (String) null, this, 1, (Object) null);
                obj = S;
                if (S == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.backup.BackupSettingsPresenter$onAccountOptionSelected$1", f = "BackupSettingsPresenter.kt", l = {184}, m = "invokeSuspend")
    /* renamed from: e.a.n.b0$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b0$c.class */
    public static final class C18262c extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f51618e;

        /* renamed from: g */
        public final /* synthetic */ String f51620g;

        /* renamed from: h */
        public final /* synthetic */ Fragment f51621h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18262c(String str, Fragment fragment, s1.w.d dVar) {
            super(2, dVar);
            C18259b0.this = r5;
            this.f51620g = str;
            this.f51621h = fragment;
        }

        /* renamed from: i */
        public final s1.w.d<s> m15369i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18262c(this.f51620g, this.f51621h, dVar);
        }

        /* renamed from: k */
        public final Object m15368k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C18262c(this.f51620g, this.f51621h, dVar).m15367s(s.a);
        }

        /* renamed from: s */
        public final Object m15367s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f51618e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (!s1.z.c.l.a(this.f51620g, "")) {
                    return sVar;
                }
                AbstractC18380m abstractC18380m = C18259b0.this.f51604h;
                Fragment fragment = this.f51621h;
                this.f51618e = 1;
                Object mo15078c = abstractC18380m.mo15078c(fragment, this);
                obj = mo15078c;
                if (mo15078c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                C18259b0.this.f51606j.remove("key_backup_last_success");
                n.B0(ViewActionEvent.f9985d.m35937a("settings_screen", ViewActionEvent.BackupAction.ACCOUNT_CHANGE), C18259b0.this.f51607k);
            } else {
                C18259b0.this.f51606j.putBoolean("backup_enabled", false);
            }
            C18259b0 c18259b0 = C18259b0.this;
            l[] lVarArr = C18259b0.f51597p;
            c18259b0.m15376Jj();
            return sVar;
        }
    }

    @e(c = "com.truecaller.backup.BackupSettingsPresenter$onBackupNowPressed$1", f = "BackupSettingsPresenter.kt", l = {174}, m = "invokeSuspend")
    /* renamed from: e.a.n.b0$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b0$d.class */
    public static final class C18263d extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f51622e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18263d(s1.w.d dVar) {
            super(2, dVar);
            C18259b0.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m15366i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18263d(dVar);
        }

        /* renamed from: k */
        public final Object m15365k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C18263d(dVar).m15364s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00c1  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m15364s(java.lang.Object r5) {
            /*
                r4 = this;
                s1.s r0 = s1.s.a
                r6 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r7 = r0
                r0 = r4
                int r0 = r0.f51622e
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L2a
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L20
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto La3
            L20:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L2a:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                com.truecaller.analytics.common.event.ViewActionEvent$a r0 = com.truecaller.analytics.common.event.ViewActionEvent.f9985d
                java.lang.String r1 = "settings_screen"
                com.truecaller.analytics.common.event.ViewActionEvent$BackupAction r2 = com.truecaller.analytics.common.event.ViewActionEvent.BackupAction.BACKUP_NOW
                com.truecaller.analytics.common.event.ViewActionEvent r0 = r0.m35937a(r1, r2)
                r1 = r4
                e.a.n.b0 r1 = p193e.p194a.p1066n.C18259b0.this
                e.a.q2.a r1 = r1.f51607k
                e.m.d.y.n.B0(r0, r1)
                r0 = r4
                e.a.n.b0 r0 = p193e.p194a.p1066n.C18259b0.this
                e.a.p5.u r0 = r0.f51605i
                boolean r0 = r0.mo13429d()
                if (r0 != 0) goto L69
                r0 = r4
                e.a.n.b0 r0 = p193e.p194a.p1066n.C18259b0.this
                PV r0 = r0.f57683a
                e.a.n.z r0 = (p193e.p194a.p1066n.AbstractC18453z) r0
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L67
                r0 = r5
                r0.mo14939t1()
            L67:
                r0 = r6
                return r0
            L69:
                r0 = r4
                e.a.n.b0 r0 = p193e.p194a.p1066n.C18259b0.this
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 29
                if (r0 >= r1) goto L7f
                r0 = 1
                r8 = r0
                goto L82
            L7f:
                r0 = 0
                r8 = r0
            L82:
                r0 = r8
                if (r0 == 0) goto Lab
                r0 = r4
                e.a.n.b0 r0 = p193e.p194a.p1066n.C18259b0.this
                r5 = r0
                r0 = r4
                r1 = 1
                r0.f51622e = r1
                r0 = r5
                r1 = r4
                java.lang.Object r0 = r0.m15374Lj(r1)
                r9 = r0
                r0 = r9
                r5 = r0
                r0 = r9
                r1 = r7
                if (r0 != r1) goto La3
                r0 = r7
                return r0
            La3:
                r0 = r5
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
            Lab:
                r0 = r4
                e.a.n.b0 r0 = p193e.p194a.p1066n.C18259b0.this
                r5 = r0
                s1.a.l[] r0 = p193e.p194a.p1066n.C18259b0.f51597p
                r9 = r0
                r0 = r5
                PV r0 = r0.f57683a
                e.a.n.z r0 = (p193e.p194a.p1066n.AbstractC18453z) r0
                r5 = r0
                r0 = r5
                if (r0 == 0) goto Lc7
                r0 = r5
                r0.mo14953Hm()
            Lc7:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18259b0.C18263d.m15364s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.backup.BackupSettingsPresenter$onSmsPermissionButtonPressed$1", f = "BackupSettingsPresenter.kt", l = {198}, m = "invokeSuspend")
    /* renamed from: e.a.n.b0$e */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b0$e.class */
    public static final class C18264e extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f51624e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18264e(s1.w.d dVar) {
            super(2, dVar);
            C18259b0.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m15363i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18264e(dVar);
        }

        /* renamed from: k */
        public final Object m15362k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C18264e(dVar).m15361s(s.a);
        }

        /* renamed from: s */
        public final Object m15361s(Object obj) {
            AbstractC18453z abstractC18453z;
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f51624e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C18259b0 c18259b0 = C18259b0.this;
                AbstractC14967y abstractC14967y = c18259b0.f51611o;
                String[] mo19356a = c18259b0.f51609m.mo19356a();
                this.f51624e = 1;
                Object mo19334f = abstractC14967y.mo19334f((String[]) Arrays.copyOf(mo19356a, mo19356a.length), this);
                obj = mo19334f;
                if (mo19334f == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            l lVar = C18259b0.f51597p[0];
            C14945l c14945l = (C14945l) obj;
            c14945l.m19393a(lVar);
            if (c14945l.m19393a(lVar) && C18259b0.this.f51606j.getBoolean("backup_enabled")) {
                AbstractC18453z abstractC18453z2 = (AbstractC18453z) C18259b0.this.f57683a;
                if (abstractC18453z2 != null) {
                    abstractC18453z2.mo14951Nt(false);
                }
                if (C18259b0.this.f51610n.mo31097b4(0L) == 0 && (abstractC18453z = (AbstractC18453z) C18259b0.this.f57683a) != null) {
                    abstractC18453z.mo14938wm();
                }
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.backup.BackupSettingsPresenter$reflectSettingsState$1", f = "BackupSettingsPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.n.b0$f */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b0$f.class */
    public static final class C18265f extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18265f(s1.w.d dVar) {
            super(2, dVar);
            C18259b0.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m15360i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18265f(dVar);
        }

        /* renamed from: k */
        public final Object m15359k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C18265f c18265f = new C18265f(dVar);
            s sVar = s.a;
            c18265f.m15358s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m15358s(Object obj) {
            C13197i0 c13197i0;
            h1 h1Var = h1.a;
            C25225a.m3932a3(obj);
            boolean z = C18259b0.this.f51606j.getBoolean("backup_enabled");
            AbstractC18453z abstractC18453z = (AbstractC18453z) C18259b0.this.f57683a;
            if (abstractC18453z != null) {
                abstractC18453z.mo14949Qm(z);
            }
            AbstractC18453z abstractC18453z2 = (AbstractC18453z) C18259b0.this.f57683a;
            if (abstractC18453z2 != null) {
                abstractC18453z2.mo14947Wj(z);
            }
            AbstractC18453z abstractC18453z3 = (AbstractC18453z) C18259b0.this.f57683a;
            if (abstractC18453z3 != null) {
                abstractC18453z3.mo14942i8(z);
            }
            AbstractC18453z abstractC18453z4 = (AbstractC18453z) C18259b0.this.f57683a;
            if (abstractC18453z4 != null) {
                abstractC18453z4.mo14941mj(z);
            }
            AbstractC18453z abstractC18453z5 = (AbstractC18453z) C18259b0.this.f57683a;
            if (abstractC18453z5 != null) {
                abstractC18453z5.mo14946eb(z);
            }
            boolean z2 = C18259b0.this.f51606j.getBoolean("backup_videos_enabled");
            AbstractC18453z abstractC18453z6 = (AbstractC18453z) C18259b0.this.f57683a;
            if (abstractC18453z6 != null) {
                abstractC18453z6.mo14954Ct(z2);
            }
            long j = C18259b0.this.f51606j.getLong("key_backup_last_success", -1L);
            if (j == -1) {
                C18259b0 c18259b0 = C18259b0.this;
                d.H(h1Var, c18259b0.f51602f.plus(c18259b0.f51598b), (j0) null, new C18248a0(c18259b0, null), 2, (Object) null);
            } else {
                C18259b0 c18259b02 = C18259b0.this;
                d.w2(h1Var, c18259b02.f51603g, (j0) null, new C18275c0(c18259b02, j, null), 2, (Object) null);
            }
            long j2 = C18259b0.this.f51606j.getLong("key_backup_frequency_hours", -1L);
            C13197i0 c13197i02 = j2 == 0 ? C18259b0.this.f51599c.get(0) : j2 == 24 ? C18259b0.this.f51599c.get(1) : j2 == 168 ? C18259b0.this.f51599c.get(2) : j2 == 720 ? C18259b0.this.f51599c.get(3) : C18259b0.this.f51599c.get(2);
            C18259b0 c18259b03 = C18259b0.this;
            AbstractC18453z abstractC18453z7 = (AbstractC18453z) c18259b03.f57683a;
            if (abstractC18453z7 != null) {
                abstractC18453z7.mo14936zc(c18259b03.f51599c, c13197i02);
            }
            C13197i0 c13197i03 = C18259b0.this.f51606j.getInt("backupNetworkType", 1) != 2 ? C18259b0.this.f51600d.get(1) : C18259b0.this.f51600d.get(0);
            C18259b0 c18259b04 = C18259b0.this;
            AbstractC18453z abstractC18453z8 = (AbstractC18453z) c18259b04.f57683a;
            if (abstractC18453z8 != null) {
                abstractC18453z8.mo14952Iy(c18259b04.f51600d, c13197i03);
            }
            C18259b0 c18259b05 = C18259b0.this;
            String string = c18259b05.f51601e.getString(C2752R.string.backup_settings_account_change_account);
            s1.z.c.l.d(string, "presenterContext.getStri…s_account_change_account)");
            AbstractC18453z abstractC18453z9 = (AbstractC18453z) c18259b05.f57683a;
            String mo14950O0 = abstractC18453z9 != null ? abstractC18453z9.mo14950O0() : null;
            ArrayList arrayList = new ArrayList();
            C13197i0 c13197i04 = new C13197i0(0, string, (String) null, "");
            if (mo14950O0 == null) {
                c13197i0 = c13197i04;
            } else {
                c13197i0 = new C13197i0(0, mo14950O0, (String) null, mo14950O0);
                arrayList.add(c13197i0);
            }
            arrayList.add(c13197i04);
            AbstractC18453z abstractC18453z10 = (AbstractC18453z) c18259b05.f57683a;
            if (abstractC18453z10 != null) {
                abstractC18453z10.mo14937yh(arrayList, c13197i0);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.backup.BackupSettingsPresenter", f = "BackupSettingsPresenter.kt", l = {339}, m = "requestStoragePermissions")
    /* renamed from: e.a.n.b0$g */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b0$g.class */
    public static final class C18266g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51627d;

        /* renamed from: e */
        public int f51628e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18266g(s1.w.d dVar) {
            super(dVar);
            C18259b0.this = r4;
        }

        /* renamed from: s */
        public final Object m15357s(Object obj) {
            this.f51627d = obj;
            this.f51628e |= Integer.MIN_VALUE;
            return C18259b0.this.m15374Lj(this);
        }
    }

    @e(c = "com.truecaller.backup.BackupSettingsPresenter$toggleBackup$1", f = "BackupSettingsPresenter.kt", l = {105, 108, 111}, m = "invokeSuspend")
    /* renamed from: e.a.n.b0$h */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b0$h.class */
    public static final class C18267h extends s1.w.k.a.i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f51630e;

        /* renamed from: g */
        public final /* synthetic */ boolean f51632g;

        /* renamed from: h */
        public final /* synthetic */ Fragment f51633h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18267h(boolean z, Fragment fragment, s1.w.d dVar) {
            super(2, dVar);
            C18259b0.this = r5;
            this.f51632g = z;
            this.f51633h = fragment;
        }

        /* renamed from: i */
        public final s1.w.d<s> m15356i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18267h(this.f51632g, this.f51633h, dVar);
        }

        /* renamed from: k */
        public final Object m15355k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C18267h(this.f51632g, this.f51633h, dVar).m15354s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:46:0x0130  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x013c  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x015b  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m15354s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 551
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18259b0.C18267h.m15354s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C18259b0(Context context, @Named("IO") f fVar, @Named("UI") f fVar2, AbstractC18380m abstractC18380m, AbstractC19321u abstractC19321u, AbstractC8541a abstractC8541a, AbstractC19462a abstractC19462a, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC14965w abstractC14965w, AbstractC6392i0 abstractC6392i0, AbstractC14967y abstractC14967y) {
        s1.z.c.l.e(context, "presenterContext");
        s1.z.c.l.e(fVar, "asyncContext");
        s1.z.c.l.e(fVar2, "uiContext");
        s1.z.c.l.e(abstractC18380m, "backupManager");
        s1.z.c.l.e(abstractC19321u, "networkUtil");
        s1.z.c.l.e(abstractC8541a, "coreSettings");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC19854f, "eventsTracker");
        s1.z.c.l.e(abstractC14965w, "tcPermissionsUtil");
        s1.z.c.l.e(abstractC6392i0, "messagingSettings");
        s1.z.c.l.e(abstractC14967y, "tcPermissionsView");
        this.f51601e = context;
        this.f51602f = fVar;
        this.f51603g = fVar2;
        this.f51604h = abstractC18380m;
        this.f51605i = abstractC19321u;
        this.f51606j = abstractC8541a;
        this.f51607k = abstractC19462a;
        this.f51608l = abstractC19854f;
        this.f51609m = abstractC14965w;
        this.f51610n = abstractC6392i0;
        this.f51611o = abstractC14967y;
    }

    /* renamed from: Hj */
    public static final void m15378Hj(C18259b0 c18259b0, boolean z) {
        String str = z ? "Enabled" : "Disabled";
        AbstractC19462a abstractC19462a = c18259b0.f51607k;
        HashMap hashMap = new HashMap();
        hashMap.put("Context", "settings_screen");
        hashMap.put("Setting", "Backup");
        hashMap.put("State", str);
        C22128a.m8711G0("SettingChanged", null, hashMap, null, "AnalyticsEvent.Builder(A…\n                .build()", abstractC19462a);
        c18259b0.f51608l.mo11854a().mo13111a(n.B(z, "settings_screen"));
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: Ee */
    public void mo14976Ee() {
        m15376Jj();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d1  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m15377Ij(s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18259b0.m15377Ij(s1.w.d):java.lang.Object");
    }

    /* renamed from: Jj */
    public final p1 m15376Jj() {
        return d.w2(h1.a, this.f51603g, (j0) null, new C18265f(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: K9 */
    public void mo14975K9(Fragment fragment) {
        s1.z.c.l.e(fragment, "fragment");
        mo14967z8(fragment, true);
    }

    /* renamed from: Kj */
    public final void m15375Kj() {
        AbstractC18453z abstractC18453z = (AbstractC18453z) this.f57683a;
        if (abstractC18453z != null) {
            abstractC18453z.mo14951Nt(this.f51606j.getBoolean("backup_enabled") && !this.f51609m.mo19347j());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005b  */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m15374Lj(s1.w.d<? super java.lang.Boolean> r9) {
        /*
            r8 = this;
            r0 = r9
            boolean r0 = r0 instanceof p193e.p194a.p1066n.C18259b0.C18266g
            if (r0 == 0) goto L25
            r0 = r9
            e.a.n.b0$g r0 = (p193e.p194a.p1066n.C18259b0.C18266g) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f51628e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f51628e = r1
            r0 = r10
            r9 = r0
            goto L2f
        L25:
            e.a.n.b0$g r0 = new e.a.n.b0$g
            r1 = r0
            r2 = r8
            r3 = r9
            r1.<init>(r3)
            r9 = r0
        L2f:
            r0 = r9
            java.lang.Object r0 = r0.f51627d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r9
            int r0 = r0.f51628e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L5b
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r9 = r0
            goto Lae
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5b:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            e.a.h5.y r0 = r0.f51611o
            r13 = r0
            com.truecaller.tcpermissions.PermissionRequestOptions r0 = new com.truecaller.tcpermissions.PermissionRequestOptions
            r1 = r0
            r2 = 0
            r3 = 0
            java.lang.Integer r4 = new java.lang.Integer
            r5 = r4
            r6 = 2131887169(0x7f120441, float:1.9408937E38)
            r5.<init>(r6)
            r5 = 3
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            r0 = r8
            e.a.h5.w r0 = r0.f51609m
            java.lang.String[] r0 = r0.mo19340q()
            r14 = r0
            r0 = r14
            r1 = r14
            int r1 = r1.length
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
            java.lang.String[] r0 = (java.lang.String[]) r0
            r14 = r0
            r0 = r9
            r1 = 1
            r0.f51628e = r1
            r0 = r13
            r1 = r10
            r2 = r14
            r3 = r9
            java.lang.Object r0 = r0.mo19338b(r1, r2, r3)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = r12
            if (r0 != r1) goto Lae
            r0 = r12
            return r0
        Lae:
            r0 = r9
            e.a.h5.l r0 = (p193e.p194a.p851h5.C14945l) r0
            boolean r0 = r0.f42679a
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18259b0.m15374Lj(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: W4 */
    public void mo14974W4(int i) {
        if (this.f51606j.getInt("backupNetworkType", 1) == i) {
            return;
        }
        this.f51606j.putInt("backupNetworkType", i);
        AbstractC18453z abstractC18453z = (AbstractC18453z) this.f57683a;
        if (abstractC18453z != null) {
            abstractC18453z.mo14938wm();
        }
        AbstractC19462a abstractC19462a = this.f51607k;
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("SettingChanged");
        c19504b.m13263d("Context", "settings_screen");
        c19504b.m13263d("Setting", "BackupOver");
        c19504b.m13265b("State", i);
        AbstractC19502g m13266a = c19504b.m13266a();
        s1.z.c.l.d(m13266a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(m13266a);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.n.z, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18453z abstractC18453z) {
        AbstractC18453z abstractC18453z2 = abstractC18453z;
        s1.z.c.l.e(abstractC18453z2, "presenterView");
        this.f57683a = abstractC18453z2;
        m15376Jj();
        m15375Kj();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        AbstractC18453z abstractC18453z = null;
        if (abstractC18453z != null) {
            abstractC18453z.mo14940p();
        }
        d.T(this.f51598b, (CancellationException) null, 1, (Object) null);
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    public void onResume() {
        m15375Kj();
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: r2 */
    public n0<s> mo14973r2(Fragment fragment, String str) {
        s1.z.c.l.e(fragment, "fragment");
        s1.z.c.l.e(str, "selectedOption");
        return d.H(h1.a, this.f51602f.plus(this.f51598b), (j0) null, new C18262c(str, fragment, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: r8 */
    public void mo14972r8(int i, int i2, Intent intent) {
        if (i != 4321) {
            return;
        }
        this.f51604h.mo15080a();
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: rj */
    public void mo14971rj(long j) {
        if (this.f51606j.getLong("key_backup_frequency_hours", -1L) == j) {
            return;
        }
        this.f51606j.putLong("key_backup_frequency_hours", j);
        AbstractC19462a abstractC19462a = this.f51607k;
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("SettingChanged");
        c19504b.m13263d("Context", "settings_screen");
        c19504b.m13263d("Setting", "BackupFrequency");
        c19504b.m13264c("State", j);
        AbstractC19502g m13266a = c19504b.m13266a();
        s1.z.c.l.d(m13266a, "AnalyticsEvent.Builder(A…\n                .build()");
        abstractC19462a.mo13271e(m13266a);
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: te */
    public p1 mo14970te() {
        return d.w2(h1.a, this.f51598b.plus(this.f51603g), (j0) null, new C18264e(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: uc */
    public void mo14969uc(boolean z) {
        boolean z2 = this.f51606j.getBoolean("backup_enabled");
        if (z == this.f51606j.getBoolean("backup_videos_enabled")) {
            return;
        }
        if (!z || z2) {
            this.f51606j.putBoolean("backup_videos_enabled", z);
            return;
        }
        this.f51606j.putBoolean("backup_videos_enabled", false);
        AbstractC18453z abstractC18453z = (AbstractC18453z) this.f57683a;
        if (abstractC18453z == null) {
            return;
        }
        abstractC18453z.mo14954Ct(false);
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: xh */
    public void mo14968xh() {
        d.w2(h1.a, this.f51603g, (j0) null, new C18263d(null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1066n.AbstractC18450y
    /* renamed from: z8 */
    public n0<s> mo14967z8(Fragment fragment, boolean z) {
        s1.z.c.l.e(fragment, "fragment");
        return d.H(h1.a, this.f51603g, (j0) null, new C18267h(z, fragment, null), 2, (Object) null);
    }
}
