package p193e.p194a.p1066n;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.BackupDto;
import com.truecaller.backup.BackupFile;
import com.truecaller.common.network.util.AuthRequirement;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.log.AssertionUtil;
import java.io.File;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.p1057c1.C18071l0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.a2;
import q3.a.i0;
import s1.f0.h;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import x3.a0;
/* renamed from: e.a.n.j0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/j0.class */
public final class C18346j0 implements AbstractC18342i0 {

    /* renamed from: a */
    public final h f51806a = new h("^\\++");

    /* renamed from: b */
    public final f f51807b;

    /* renamed from: c */
    public final f f51808c;

    /* renamed from: d */
    public final Provider<Intent> f51809d;

    /* renamed from: e */
    public final Context f51810e;

    /* renamed from: f */
    public final AbstractC8541a f51811f;

    /* renamed from: g */
    public final AbstractC8438a f51812g;

    /* renamed from: h */
    public final AbstractC19462a f51813h;

    @e(c = "com.truecaller.backup.BackupUtilImpl$maybeFetchAndStoreBackupDate$2", f = "BackupUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.n.j0$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/j0$a.class */
    public static final class C18347a extends i implements p<i0, d<? super Long>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f51815f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18347a(String str, d dVar) {
            super(2, dVar);
            C18346j0.this = r5;
            this.f51815f = str;
        }

        /* renamed from: i */
        public final d<s> m15152i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18347a(this.f51815f, dVar);
        }

        /* renamed from: k */
        public final Object m15151k(Object obj, Object obj2) {
            Long l;
            BackupDto backupDto;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18346j0 c18346j0 = C18346j0.this;
            String str = this.f51815f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            try {
                C8365b c8365b = new C8365b();
                c8365b.m28639a(KnownEndpoints.BACKUP);
                c8365b.m28634f(AbstractC18435u.class);
                C8385b c8385b = new C8385b();
                c8385b.m28628b(AuthRequirement.REQUIRED, str);
                c8365b.m28636d(C8363a.m28642a(c8385b));
                a0 execute = ((AbstractC18435u) c8365b.m28637c(AbstractC18435u.class)).m14988a().execute();
                Long l2 = (execute == null || (backupDto = (BackupDto) execute.b) == null) ? null : new Long(backupDto.m35887a());
                String str2 = "Backup timestamp is fetched. Timestamp: " + l2;
                l = null;
                if (l2 != null) {
                    c18346j0.f51811f.putLong("key_backup_fetched_timestamp", l2.longValue());
                    l = l2;
                }
            } catch (IOException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                l = null;
            }
            return l;
        }

        /* renamed from: s */
        public final Object m15150s(Object obj) {
            Long l;
            BackupDto backupDto;
            C25225a.m3932a3(obj);
            try {
                String str = this.f51815f;
                C8365b c8365b = new C8365b();
                c8365b.m28639a(KnownEndpoints.BACKUP);
                c8365b.m28634f(AbstractC18435u.class);
                C8385b c8385b = new C8385b();
                c8385b.m28628b(AuthRequirement.REQUIRED, str);
                c8365b.m28636d(C8363a.m28642a(c8385b));
                a0 execute = ((AbstractC18435u) c8365b.m28637c(AbstractC18435u.class)).m14988a().execute();
                Long l2 = (execute == null || (backupDto = (BackupDto) execute.b) == null) ? null : new Long(backupDto.m35887a());
                String str2 = "Backup timestamp is fetched. Timestamp: " + l2;
                l = null;
                if (l2 != null) {
                    C18346j0.this.f51811f.putLong("key_backup_fetched_timestamp", l2.longValue());
                    l = l2;
                }
            } catch (IOException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                l = null;
            }
            return l;
        }
    }

    @e(c = "com.truecaller.backup.BackupUtilImpl", f = "BackupUtil.kt", l = {124, 134}, m = "prepareDatabaseToRestore")
    /* renamed from: e.a.n.j0$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/j0$b.class */
    public static final class C18348b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51816d;

        /* renamed from: e */
        public int f51817e;

        /* renamed from: g */
        public Object f51819g;

        /* renamed from: h */
        public int f51820h;

        /* renamed from: i */
        public int f51821i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18348b(d dVar) {
            super(dVar);
            C18346j0.this = r4;
        }

        /* renamed from: s */
        public final Object m15149s(Object obj) {
            this.f51816d = obj;
            this.f51817e |= Integer.MIN_VALUE;
            return C18346j0.this.mo15154g(this);
        }
    }

    @e(c = "com.truecaller.backup.BackupUtilImpl$restartApp$2", f = "BackupUtil.kt", l = {171, 173}, m = "invokeSuspend")
    /* renamed from: e.a.n.j0$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/j0$c.class */
    public static final class C18349c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f51822e;

        @e(c = "com.truecaller.backup.BackupUtilImpl$restartApp$2$1", f = "BackupUtil.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.n.j0$c$a */
        /* loaded from: classes5-dex2jar.jar:e/a/n/j0$c$a.class */
        public static final class C18350a extends i implements p<i0, d<? super s>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18350a(d dVar) {
                super(2, dVar);
                C18349c.this = r5;
            }

            /* renamed from: i */
            public final d<s> m15145i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C18350a(dVar);
            }

            /* renamed from: k */
            public final Object m15144k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C18349c c18349c = C18349c.this;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                C18346j0 c18346j0 = C18346j0.this;
                c18346j0.f51810e.startActivity((Intent) c18346j0.f51809d.get());
                Runtime.getRuntime().exit(0);
                return sVar;
            }

            /* renamed from: s */
            public final Object m15143s(Object obj) {
                C25225a.m3932a3(obj);
                C18346j0 c18346j0 = C18346j0.this;
                c18346j0.f51810e.startActivity((Intent) c18346j0.f51809d.get());
                Runtime.getRuntime().exit(0);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18349c(d dVar) {
            super(2, dVar);
            C18346j0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m15148i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18349c(dVar);
        }

        /* renamed from: k */
        public final Object m15147k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18349c(dVar).m15146s(s.a);
        }

        /* renamed from: s */
        public final Object m15146s(Object obj) {
            a aVar = a.a;
            int i = this.f51822e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f51822e = 1;
                if (s1.a.a.a.v0.f.d.D0(1000L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            f fVar = C18346j0.this.f51808c;
            C18350a c18350a = new C18350a(null);
            this.f51822e = 2;
            if (s1.a.a.a.v0.f.d.a4(fVar, c18350a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @Inject
    public C18346j0(@Named("IO") f fVar, @Named("UI") f fVar2, @Named("backupAppRestart") Provider<Intent> provider, Context context, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC19462a abstractC19462a) {
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(provider, "appRestartIntent");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f51807b = fVar;
        this.f51808c = fVar2;
        this.f51809d = provider;
        this.f51810e = context;
        this.f51811f = abstractC8541a;
        this.f51812g = abstractC8438a;
        this.f51813h = abstractC19462a;
    }

    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: O0 */
    public String mo15161O0() {
        Account m39128I;
        GoogleSignInAccount m39129b = GoogleSignIn.m39129b(this.f51810e);
        return (m39129b == null || (m39128I = m39129b.m39128I()) == null) ? null : m39128I.name;
    }

    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: a */
    public String mo15160a(BackupFile backupFile, String str) {
        l.e(backupFile, "backupFile");
        if (str == null) {
            str = this.f51812g.getString("profileNumber");
        }
        if (str != null) {
            return this.f51806a.e(str, "") + backupFile.getNameSuffix();
        }
        return null;
    }

    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: b */
    public String mo15159b(BackupFile backupFile, long j) {
        l.e(backupFile, "backupFile");
        return j + backupFile.getNameSuffix();
    }

    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: c */
    public File mo15158c() {
        try {
            Cursor rawQuery = mo15157d().rawQuery("PRAGMA wal_checkpoint(FULL)", null);
            l.d(rawQuery, "cursor");
            rawQuery.getCount();
            try {
                rawQuery.close();
            } catch (IOException e) {
            }
        } catch (Exception e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        }
        return this.f51810e.getDatabasePath("tc.db");
    }

    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: d */
    public SQLiteDatabase mo15157d() {
        C18071l0 m15500j = C18071l0.m15500j(this.f51810e, C18071l0.m15501d(), this.f51813h);
        l.d(m15500j, "TruecallerDatabaseHelper…ableHelpers(), analytics)");
        SQLiteDatabase writableDatabase = m15500j.getWritableDatabase();
        l.d(writableDatabase, "TruecallerDatabaseHelper…        .writableDatabase");
        return writableDatabase;
    }

    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: e */
    public Object mo15156e(String str, d<? super Long> dVar) {
        long j = this.f51811f.getLong("key_backup_fetched_timestamp", 0L);
        return j > 0 ? new Long(j) : s1.a.a.a.v0.f.d.a4(this.f51807b, new C18347a(str, null), dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: f */
    public Object mo15155f(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(a2.a, new C18349c(null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x015d -> B:49:0x01b5). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x01af -> B:49:0x01b5). Please submit an issue!!! */
    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15154g(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18346j0.mo15154g(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1066n.AbstractC18342i0
    /* renamed from: h */
    public <T> T mo15153h(s1.z.b.a<? extends T> aVar) {
        l.e(aVar, "block");
        SQLiteDatabase mo15157d = mo15157d();
        mo15157d.beginTransaction();
        try {
            T t = (T) ((C18396o) aVar).invoke();
            mo15157d.setTransactionSuccessful();
            return t;
        } finally {
            mo15157d.endTransaction();
        }
    }
}
