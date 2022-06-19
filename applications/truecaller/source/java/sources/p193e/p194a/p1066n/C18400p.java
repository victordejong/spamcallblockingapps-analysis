package p193e.p194a.p1066n;

import android.content.Context;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.BackupFile;
import com.truecaller.backup.BackupResult;
import com.truecaller.backup.account.BackedUpAccountData;
import com.truecaller.log.AssertionUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.p1057c1.C18071l0;
import p193e.p194a.p1066n.p1067j2.AbstractC18352a;
import p193e.p194a.p1066n.p1067j2.C18353b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p413i.AbstractC8451c;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.n.p */
/* loaded from: classes5-dex2jar.jar:e/a/n/p.class */
public final class C18400p implements AbstractC18380m {

    /* renamed from: a */
    public final Context f51965a;

    /* renamed from: b */
    public final AbstractC18419r0 f51966b;

    /* renamed from: c */
    public final AbstractC18448x0 f51967c;

    /* renamed from: d */
    public final AbstractC18420r1 f51968d;

    /* renamed from: e */
    public final AbstractC18249a1 f51969e;

    /* renamed from: f */
    public final f f51970f;

    /* renamed from: g */
    public final AbstractC18320e f51971g;

    /* renamed from: h */
    public final AbstractC8432l f51972h;

    /* renamed from: i */
    public final AbstractC8541a f51973i;

    /* renamed from: j */
    public final AbstractC18342i0 f51974j;

    /* renamed from: k */
    public final AbstractC18352a f51975k;

    /* renamed from: l */
    public final AbstractC18367l1 f51976l;

    @e(c = "com.truecaller.backup.BackupManagerImplV2$getBackedUpAccount$2", f = "BackupManagerImplV2.kt", l = {83}, m = "invokeSuspend")
    /* renamed from: e.a.n.p$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/p$a.class */
    public static final class C18401a extends i implements p<i0, d<? super k<? extends BackupResult, ? extends BackedUpAccountData>>, Object> {

        /* renamed from: e */
        public int f51977e;

        /* renamed from: g */
        public final /* synthetic */ long f51979g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18401a(long j, d dVar) {
            super(2, dVar);
            C18400p.this = r5;
            this.f51979g = j;
        }

        /* renamed from: i */
        public final d<s> m15064i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18401a(this.f51979g, dVar);
        }

        /* renamed from: k */
        public final Object m15063k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18401a(this.f51979g, dVar).m15062s(s.a);
        }

        /* renamed from: s */
        public final Object m15062s(Object obj) {
            a aVar = a.a;
            int i = this.f51977e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18352a abstractC18352a = C18400p.this.f51975k;
                long j = this.f51979g;
                this.f51977e = 1;
                Object m15141b = ((C18353b) abstractC18352a).m15141b(j, this);
                obj = m15141b;
                if (m15141b == aVar) {
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

    @e(c = "com.truecaller.backup.BackupManagerImplV2", f = "BackupManagerImplV2.kt", l = {93, 96, 100, 104}, m = "performBackup")
    /* renamed from: e.a.n.p$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/p$b.class */
    public static final class C18402b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51980d;

        /* renamed from: e */
        public int f51981e;

        /* renamed from: g */
        public Object f51983g;

        /* renamed from: h */
        public boolean f51984h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18402b(d dVar) {
            super(dVar);
            C18400p.this = r4;
        }

        /* renamed from: s */
        public final Object m15061s(Object obj) {
            this.f51980d = obj;
            this.f51981e |= Integer.MIN_VALUE;
            return C18400p.this.m15067n(false, this);
        }
    }

    @e(c = "com.truecaller.backup.BackupManagerImplV2$performFullBackup$2", f = "BackupManagerImplV2.kt", l = {55}, m = "invokeSuspend")
    /* renamed from: e.a.n.p$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/p$c.class */
    public static final class C18403c extends i implements p<i0, d<? super BackupResult>, Object> {

        /* renamed from: e */
        public int f51985e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18403c(d dVar) {
            super(2, dVar);
            C18400p.this = r5;
        }

        /* renamed from: i */
        public final d<s> m15060i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18403c(dVar);
        }

        /* renamed from: k */
        public final Object m15059k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18403c(dVar).m15058s(s.a);
        }

        /* renamed from: s */
        public final Object m15058s(Object obj) {
            a aVar = a.a;
            int i = this.f51985e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C18400p c18400p = C18400p.this;
                this.f51985e = 1;
                Object m15067n = c18400p.m15067n(false, this);
                obj = m15067n;
                if (m15067n == aVar) {
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

    @e(c = "com.truecaller.backup.BackupManagerImplV2$performFullBackupWithTransaction$2", f = "BackupManagerImplV2.kt", l = {59}, m = "invokeSuspend")
    /* renamed from: e.a.n.p$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/p$d.class */
    public static final class C18404d extends i implements p<i0, d<? super BackupResult>, Object> {

        /* renamed from: e */
        public int f51987e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18404d(d dVar) {
            super(2, dVar);
            C18400p.this = r5;
        }

        /* renamed from: i */
        public final d<s> m15057i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18404d(dVar);
        }

        /* renamed from: k */
        public final Object m15056k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18404d(dVar).m15055s(s.a);
        }

        /* renamed from: s */
        public final Object m15055s(Object obj) {
            a aVar = a.a;
            int i = this.f51987e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C18400p c18400p = C18400p.this;
                this.f51987e = 1;
                Object m15067n = c18400p.m15067n(true, this);
                obj = m15067n;
                if (m15067n == aVar) {
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

    @e(c = "com.truecaller.backup.BackupManagerImplV2$performFullRestore$2", f = "BackupManagerImplV2.kt", l = {63}, m = "invokeSuspend")
    /* renamed from: e.a.n.p$e */
    /* loaded from: classes5-dex2jar.jar:e/a/n/p$e.class */
    public static final class C18405e extends i implements p<i0, d<? super BackupResult>, Object> {

        /* renamed from: e */
        public int f51989e;

        /* renamed from: g */
        public final /* synthetic */ String f51991g;

        @e(c = "com.truecaller.backup.BackupManagerImplV2$performFullRestore$2$1", f = "BackupManagerImplV2.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.n.p$e$a */
        /* loaded from: classes5-dex2jar.jar:e/a/n/p$e$a.class */
        public static final class C18406a extends i implements p<BackupResult, d<? super s>, Object> {
            public C18406a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m15051i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C18406a(dVar);
            }

            /* renamed from: k */
            public final Object m15050k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                return sVar;
            }

            /* renamed from: s */
            public final Object m15049s(Object obj) {
                C25225a.m3932a3(obj);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18405e(String str, d dVar) {
            super(2, dVar);
            C18400p.this = r5;
            this.f51991g = str;
        }

        /* renamed from: i */
        public final d<s> m15054i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18405e(this.f51991g, dVar);
        }

        /* renamed from: k */
        public final Object m15053k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18405e(this.f51991g, dVar).m15052s(s.a);
        }

        /* renamed from: s */
        public final Object m15052s(Object obj) {
            a aVar = a.a;
            int i = this.f51989e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C18400p c18400p = C18400p.this;
                String str = this.f51991g;
                C18406a c18406a = new C18406a(null);
                this.f51989e = 1;
                Object m15066o = c18400p.m15066o(str, false, c18406a, this);
                obj = m15066o;
                if (m15066o == aVar) {
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

    @e(c = "com.truecaller.backup.BackupManagerImplV2$performFullRestoreWithTransaction$2", f = "BackupManagerImplV2.kt", l = {70, 71}, m = "invokeSuspend")
    /* renamed from: e.a.n.p$f */
    /* loaded from: classes5-dex2jar.jar:e/a/n/p$f.class */
    public static final class C18407f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f51992e;

        /* renamed from: g */
        public final /* synthetic */ String f51994g;

        /* renamed from: h */
        public final /* synthetic */ p f51995h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18407f(String str, p pVar, d dVar) {
            super(2, dVar);
            C18400p.this = r5;
            this.f51994g = str;
            this.f51995h = pVar;
        }

        /* renamed from: i */
        public final d<s> m15048i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18407f(this.f51994g, this.f51995h, dVar);
        }

        /* renamed from: k */
        public final Object m15047k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18407f(this.f51994g, this.f51995h, dVar).m15046s(s.a);
        }

        /* renamed from: s */
        public final Object m15046s(Object obj) {
            a aVar = a.a;
            int i = this.f51992e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C18400p c18400p = C18400p.this;
                String str = this.f51994g;
                p<? super BackupResult, ? super d<? super s>, ? extends Object> pVar = this.f51995h;
                this.f51992e = 1;
                Object m15066o = c18400p.m15066o(str, true, pVar, this);
                obj = m15066o;
                if (m15066o == aVar) {
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
            BackupResult backupResult = (BackupResult) obj;
            p pVar2 = this.f51995h;
            this.f51992e = 2;
            if (pVar2.k(backupResult, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.backup.BackupManagerImplV2", f = "BackupManagerImplV2.kt", l = {159, 162, 176, 178, 179, 182, 182, 186}, m = "restoreDatabase")
    /* renamed from: e.a.n.p$g */
    /* loaded from: classes5-dex2jar.jar:e/a/n/p$g.class */
    public static final class C18408g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51996d;

        /* renamed from: e */
        public int f51997e;

        /* renamed from: g */
        public Object f51999g;

        /* renamed from: h */
        public Object f52000h;

        /* renamed from: i */
        public Object f52001i;

        /* renamed from: j */
        public boolean f52002j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18408g(d dVar) {
            super(dVar);
            C18400p.this = r4;
        }

        /* renamed from: s */
        public final Object m15045s(Object obj) {
            this.f51996d = obj;
            this.f51997e |= Integer.MIN_VALUE;
            return C18400p.this.m15066o(null, false, null, this);
        }
    }

    @e(c = "com.truecaller.backup.BackupManagerImplV2$uploadDatabaseFileToDrive$uploadResult$1", f = "BackupManagerImplV2.kt", l = {136}, m = "invokeSuspend")
    /* renamed from: e.a.n.p$h */
    /* loaded from: classes5-dex2jar.jar:e/a/n/p$h.class */
    public static final class C18409h extends i implements p<i0, d<? super BackupResult>, Object> {

        /* renamed from: e */
        public int f52003e;

        /* renamed from: g */
        public final /* synthetic */ c0 f52005g;

        /* renamed from: h */
        public final /* synthetic */ c0 f52006h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18409h(c0 c0Var, c0 c0Var2, d dVar) {
            super(2, dVar);
            C18400p.this = r5;
            this.f52005g = c0Var;
            this.f52006h = c0Var2;
        }

        /* renamed from: i */
        public final d<s> m15044i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18409h(this.f52005g, this.f52006h, dVar);
        }

        /* renamed from: k */
        public final Object m15043k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18409h(this.f52005g, this.f52006h, dVar).m15042s(s.a);
        }

        /* renamed from: s */
        public final Object m15042s(Object obj) {
            a aVar = a.a;
            int i = this.f52003e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18249a1 abstractC18249a1 = C18400p.this.f51969e;
                String str = (String) this.f52005g.a;
                FileInputStream fileInputStream = (FileInputStream) this.f52006h.a;
                Map<String, String> m3938Z1 = C25225a.m3938Z1(new k("dbVersion", String.valueOf(210)));
                this.f52003e = 1;
                Object mo15335e = abstractC18249a1.mo15335e(str, fileInputStream, m3938Z1, this);
                obj = mo15335e;
                if (mo15335e == aVar) {
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

    @Inject
    public C18400p(Context context, AbstractC18419r0 abstractC18419r0, AbstractC18448x0 abstractC18448x0, AbstractC18420r1 abstractC18420r1, AbstractC18249a1 abstractC18249a1, @Named("IO") f fVar, AbstractC18320e abstractC18320e, AbstractC8432l abstractC8432l, AbstractC8541a abstractC8541a, AbstractC18342i0 abstractC18342i0, AbstractC18352a abstractC18352a, AbstractC18367l1 abstractC18367l1) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC18419r0, "callLogBackupManager");
        l.e(abstractC18448x0, "contactsBackupManager");
        l.e(abstractC18420r1, "messagingBackupManager");
        l.e(abstractC18249a1, "driveManager");
        l.e(fVar, "asyncContext");
        l.e(abstractC18320e, "backupAvailabilityProvider");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC18342i0, "backupUtil");
        l.e(abstractC18352a, "accountBackupManager");
        l.e(abstractC18367l1, "mediaBackupManager");
        this.f51965a = context;
        this.f51966b = abstractC18419r0;
        this.f51967c = abstractC18448x0;
        this.f51968d = abstractC18420r1;
        this.f51969e = abstractC18249a1;
        this.f51970f = fVar;
        this.f51971g = abstractC18320e;
        this.f51972h = abstractC8432l;
        this.f51973i = abstractC8541a;
        this.f51974j = abstractC18342i0;
        this.f51975k = abstractC18352a;
        this.f51976l = abstractC18367l1;
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: a */
    public void mo15080a() {
        this.f51969e.mo15339a();
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: b */
    public Object mo15079b(Fragment fragment, d<? super Boolean> dVar) {
        return this.f51969e.mo15338b(fragment, dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: c */
    public Object mo15078c(Fragment fragment, d<? super Boolean> dVar) {
        return this.f51969e.mo15337c(fragment, dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: d */
    public Object mo15077d(d<? super s> dVar) {
        Object mo15336d = this.f51969e.mo15336d(dVar);
        return mo15336d == a.a ? mo15336d : s.a;
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: e */
    public Object mo15076e(String str, p<? super BackupResult, ? super d<? super s>, ? extends Object> pVar, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f51970f, new C18407f(null, pVar, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: f */
    public Object mo15075f(long j, d<? super k<? extends BackupResult, BackedUpAccountData>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f51970f, new C18401a(j, null), dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: g */
    public Object mo15074g(String str, d<? super BackupResult> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f51970f, new C18405e(null, null), dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: h */
    public Object mo15073h(long j, d<? super Long> dVar) {
        return this.f51969e.mo15333g(this.f51974j.mo15159b(BackupFile.ACCOUNT, j), dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: i */
    public Object mo15072i(d<? super BackupResult> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f51970f, new C18403c(null), dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    public boolean isEnabled() {
        return this.f51971g.mo15284a() && this.f51972h.mo28580d() && this.f51973i.getBoolean("backup_enabled");
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: j */
    public Object mo15071j(String str, d<? super Long> dVar) {
        String mo15160a = this.f51974j.mo15160a(BackupFile.DB, str);
        return mo15160a != null ? this.f51969e.mo15333g(mo15160a, dVar) : new Long(0L);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: k */
    public Object mo15070k(d<? super BackupResult> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f51970f, new C18404d(null), dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: l */
    public void mo15069l() {
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00c8 -> B:18:0x0044). Please submit an issue!!! */
    /* renamed from: m */
    public final BackupResult m15068m(InputStream inputStream) {
        File databasePath = this.f51965a.getDatabasePath("tc.db");
        if (databasePath != null) {
            if (!this.f51965a.deleteDatabase("tc.db")) {
                return BackupResult.ErrorDBDeletion;
            }
            try {
                databasePath.createNewFile();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(databasePath);
                    try {
                        try {
                            C25225a.m3960U(inputStream, fileOutputStream, 0, 2);
                            try {
                                fileOutputStream.close();
                            } catch (IOException e) {
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e2) {
                                }
                            }
                            C18071l0 c18071l0 = C18071l0.f50995f;
                            synchronized (C18071l0.class) {
                                try {
                                    AbstractC8451c.f26158f.set(true);
                                    C18071l0.f50995f = null;
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            this.f51966b.mo15030a();
                            this.f51967c.mo14966a();
                            this.f51968d.mo15027a();
                            return BackupResult.Success;
                        } catch (IOException e3) {
                            AssertionUtil.reportThrowableButNeverCrash(e3);
                            databasePath.delete();
                            BackupResult backupResult = BackupResult.ErrorIO;
                            try {
                                fileOutputStream.close();
                            } catch (IOException e4) {
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e5) {
                                }
                            }
                            return backupResult;
                        }
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                        }
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e7) {
                            }
                        }
                        throw th2;
                    }
                } catch (FileNotFoundException e8) {
                    return BackupResult.ErrorDBFileNotFound;
                }
            } catch (IOException e9) {
                return BackupResult.ErrorIO;
            }
        }
        return BackupResult.ErrorDBFileNotFound;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0148, code lost:
        if (r13 == com.truecaller.backup.BackupResult.Skipped) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01bf  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m15067n(boolean r7, s1.w.d<? super com.truecaller.backup.BackupResult> r8) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18400p.m15067n(boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:2|(2:4|(4:6|8|132|9))|7|8|132|9|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x03a0, code lost:
        r0 = r6.f51974j;
        r10.f51999g = r8;
        r10.f52000h = null;
        r10.f52001i = null;
        r10.f51997e = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x03c8, code lost:
        if (r0.mo15155f(r10) == r0) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x03cd, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00c7, code lost:
        r8 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0120, code lost:
        r8 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02e5  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m15066o(java.lang.String r6, boolean r7, s1.z.b.p<? super com.truecaller.backup.BackupResult, ? super s1.w.d<? super s1.s>, ? extends java.lang.Object> r8, s1.w.d<? super com.truecaller.backup.BackupResult> r9) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18400p.m15066o(java.lang.String, boolean, s1.z.b.p, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0092 -> B:11:0x005e). Please submit an issue!!! */
    /* renamed from: p */
    public final BackupResult m15065p(File file) {
        c0 c0Var = new c0();
        String mo15160a = this.f51974j.mo15160a(BackupFile.DB, null);
        if (mo15160a != null) {
            c0Var.a = mo15160a;
            c0 c0Var2 = new c0();
            try {
                c0Var2.a = new FileInputStream(file);
                try {
                    BackupResult backupResult = (BackupResult) s1.a.a.a.v0.f.d.c3((f) null, new C18409h(c0Var, c0Var2, null), 1, (Object) null);
                    FileInputStream fileInputStream = (FileInputStream) c0Var2.a;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                        }
                    }
                    BackupResult backupResult2 = BackupResult.Success;
                    if (backupResult != backupResult2) {
                        return backupResult;
                    }
                    this.f51967c.mo14965b();
                    return backupResult2;
                } catch (Throwable th) {
                    FileInputStream fileInputStream2 = (FileInputStream) c0Var2.a;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e2) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e3) {
                return BackupResult.ErrorDBFileNotFound;
            }
        }
        return BackupResult.ErrorFileName;
    }
}
