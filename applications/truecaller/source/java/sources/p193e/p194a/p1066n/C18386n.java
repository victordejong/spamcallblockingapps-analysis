package p193e.p194a.p1066n;

import androidx.fragment.app.Fragment;
import com.truecaller.backup.BackupResult;
import com.truecaller.backup.account.BackedUpAccountData;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.n.n */
/* loaded from: classes5-dex2jar.jar:e/a/n/n.class */
public final class C18386n implements AbstractC18380m {

    /* renamed from: a */
    public final f f51924a;

    /* renamed from: b */
    public final AbstractC18249a1 f51925b;

    /* renamed from: c */
    public final AbstractC18439v0 f51926c;

    /* renamed from: d */
    public final AbstractC18410p0 f51927d;

    /* renamed from: e */
    public final AbstractC18322e1 f51928e;

    /* renamed from: f */
    public final AbstractC18320e f51929f;

    /* renamed from: g */
    public final AbstractC8432l f51930g;

    /* renamed from: h */
    public final AbstractC8541a f51931h;

    /* renamed from: i */
    public final AbstractC18342i0 f51932i;

    @e(c = "com.truecaller.backup.BackupManagerImpl", f = "BackupManagerImpl.kt", l = {75}, m = "getLastBackupTime")
    /* renamed from: e.a.n.n$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/n$a.class */
    public static final class C18387a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51933d;

        /* renamed from: e */
        public int f51934e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18387a(d dVar) {
            super(dVar);
            C18386n.this = r4;
        }

        /* renamed from: s */
        public final Object m15097s(Object obj) {
            this.f51933d = obj;
            this.f51934e |= Integer.MIN_VALUE;
            return C18386n.this.mo15071j(null, this);
        }
    }

    @e(c = "com.truecaller.backup.BackupManagerImpl", f = "BackupManagerImpl.kt", l = {51, 54, 55, 56}, m = "performFullRestore")
    /* renamed from: e.a.n.n$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/n$b.class */
    public static final class C18388b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51936d;

        /* renamed from: e */
        public int f51937e;

        /* renamed from: g */
        public Object f51939g;

        /* renamed from: h */
        public Object f51940h;

        /* renamed from: i */
        public Object f51941i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18388b(d dVar) {
            super(dVar);
            C18386n.this = r4;
        }

        /* renamed from: s */
        public final Object m15096s(Object obj) {
            this.f51936d = obj;
            this.f51937e |= Integer.MIN_VALUE;
            return C18386n.this.mo15074g(null, this);
        }
    }

    @e(c = "com.truecaller.backup.BackupManagerImpl$performFullRestore$firstResult$1", f = "BackupManagerImpl.kt", l = {54}, m = "invokeSuspend")
    /* renamed from: e.a.n.n$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/n$c.class */
    public static final class C18389c extends i implements p<i0, d<? super BackupResult>, Object> {

        /* renamed from: e */
        public int f51942e;

        /* renamed from: g */
        public final /* synthetic */ String f51944g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18389c(String str, d dVar) {
            super(2, dVar);
            C18386n.this = r5;
            this.f51944g = str;
        }

        /* renamed from: i */
        public final d<s> m15095i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18389c(this.f51944g, dVar);
        }

        /* renamed from: k */
        public final Object m15094k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18389c(this.f51944g, dVar).m15093s(s.a);
        }

        /* renamed from: s */
        public final Object m15093s(Object obj) {
            a aVar = a.a;
            int i = this.f51942e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18439v0 abstractC18439v0 = C18386n.this.f51926c;
                String str = this.f51944g;
                this.f51942e = 1;
                Object mo14981a = abstractC18439v0.mo14981a(str, this);
                obj = mo14981a;
                if (mo14981a == aVar) {
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

    @e(c = "com.truecaller.backup.BackupManagerImpl$performFullRestore$secondResult$1", f = "BackupManagerImpl.kt", l = {55}, m = "invokeSuspend")
    /* renamed from: e.a.n.n$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/n$d.class */
    public static final class C18390d extends i implements p<i0, d<? super BackupResult>, Object> {

        /* renamed from: e */
        public int f51945e;

        /* renamed from: g */
        public final /* synthetic */ String f51947g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18390d(String str, d dVar) {
            super(2, dVar);
            C18386n.this = r5;
            this.f51947g = str;
        }

        /* renamed from: i */
        public final d<s> m15092i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18390d(this.f51947g, dVar);
        }

        /* renamed from: k */
        public final Object m15091k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18390d(this.f51947g, dVar).m15090s(s.a);
        }

        /* renamed from: s */
        public final Object m15090s(Object obj) {
            a aVar = a.a;
            int i = this.f51945e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18410p0 abstractC18410p0 = C18386n.this.f51927d;
                String str = this.f51947g;
                this.f51945e = 1;
                Object mo15041a = abstractC18410p0.mo15041a(str, this);
                obj = mo15041a;
                if (mo15041a == aVar) {
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

    @e(c = "com.truecaller.backup.BackupManagerImpl$performFullRestore$thirdResult$1", f = "BackupManagerImpl.kt", l = {56}, m = "invokeSuspend")
    /* renamed from: e.a.n.n$e */
    /* loaded from: classes5-dex2jar.jar:e/a/n/n$e.class */
    public static final class C18391e extends i implements p<i0, d<? super BackupResult>, Object> {

        /* renamed from: e */
        public int f51948e;

        /* renamed from: g */
        public final /* synthetic */ String f51950g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18391e(String str, d dVar) {
            super(2, dVar);
            C18386n.this = r5;
            this.f51950g = str;
        }

        /* renamed from: i */
        public final d<s> m15089i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18391e(this.f51950g, dVar);
        }

        /* renamed from: k */
        public final Object m15088k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18391e(this.f51950g, dVar).m15087s(s.a);
        }

        /* renamed from: s */
        public final Object m15087s(Object obj) {
            a aVar = a.a;
            int i = this.f51948e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18322e1 abstractC18322e1 = C18386n.this.f51928e;
                String str = this.f51950g;
                this.f51948e = 1;
                Object mo15282a = abstractC18322e1.mo15282a(str, this);
                obj = mo15282a;
                if (mo15282a == aVar) {
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

    @e(c = "com.truecaller.backup.BackupManagerImpl", f = "BackupManagerImpl.kt", l = {70, 71}, m = "performFullRestoreWithTransaction")
    /* renamed from: e.a.n.n$f */
    /* loaded from: classes5-dex2jar.jar:e/a/n/n$f.class */
    public static final class C18392f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51951d;

        /* renamed from: e */
        public int f51952e;

        /* renamed from: g */
        public Object f51954g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18392f(d dVar) {
            super(dVar);
            C18386n.this = r4;
        }

        /* renamed from: s */
        public final Object m15086s(Object obj) {
            this.f51951d = obj;
            this.f51952e |= Integer.MIN_VALUE;
            return C18386n.this.mo15076e(null, null, this);
        }
    }

    @e(c = "com.truecaller.backup.BackupManagerImpl$removeDuplicateCallLogs$1", f = "BackupManagerImpl.kt", l = {90}, m = "invokeSuspend")
    /* renamed from: e.a.n.n$g */
    /* loaded from: classes5-dex2jar.jar:e/a/n/n$g.class */
    public static final class C18393g extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f51955e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18393g(d dVar) {
            super(2, dVar);
            C18386n.this = r5;
        }

        /* renamed from: i */
        public final d<s> m15085i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18393g(dVar);
        }

        /* renamed from: k */
        public final Object m15084k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18393g(dVar).m15083s(s.a);
        }

        /* renamed from: s */
        public final Object m15083s(Object obj) {
            a aVar = a.a;
            int i = this.f51955e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18410p0 abstractC18410p0 = C18386n.this.f51927d;
                this.f51955e = 1;
                if (abstractC18410p0.mo15040b(this) == aVar) {
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

    @Inject
    public C18386n(@Named("Async") f fVar, AbstractC18249a1 abstractC18249a1, AbstractC18439v0 abstractC18439v0, AbstractC18410p0 abstractC18410p0, AbstractC18322e1 abstractC18322e1, AbstractC18320e abstractC18320e, AbstractC8432l abstractC8432l, AbstractC8541a abstractC8541a, AbstractC18342i0 abstractC18342i0) {
        l.e(fVar, "asyncContext");
        l.e(abstractC18249a1, "driveManager");
        l.e(abstractC18439v0, "contactsBackupManager");
        l.e(abstractC18410p0, "callLogBackupManager");
        l.e(abstractC18322e1, "filtersBackupManager");
        l.e(abstractC18320e, "backupAvailabilityProvider");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC18342i0, "backupUtil");
        this.f51924a = fVar;
        this.f51925b = abstractC18249a1;
        this.f51926c = abstractC18439v0;
        this.f51927d = abstractC18410p0;
        this.f51928e = abstractC18322e1;
        this.f51929f = abstractC18320e;
        this.f51930g = abstractC8432l;
        this.f51931h = abstractC8541a;
        this.f51932i = abstractC18342i0;
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: a */
    public void mo15080a() {
        this.f51925b.mo15339a();
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: b */
    public Object mo15079b(Fragment fragment, d<? super Boolean> dVar) {
        return this.f51925b.mo15338b(fragment, dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: c */
    public Object mo15078c(Fragment fragment, d<? super Boolean> dVar) {
        return this.f51925b.mo15337c(fragment, dVar);
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: d */
    public Object mo15077d(d<? super s> dVar) {
        Object mo15336d = this.f51925b.mo15336d(dVar);
        return mo15336d == a.a ? mo15336d : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b0  */
    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15076e(java.lang.String r6, s1.z.b.p<? super com.truecaller.backup.BackupResult, ? super s1.w.d<? super s1.s>, ? extends java.lang.Object> r7, s1.w.d<? super s1.s> r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p1066n.C18386n.C18392f
            if (r0 == 0) goto L26
            r0 = r8
            e.a.n.n$f r0 = (p193e.p194a.p1066n.C18386n.C18392f) r0
            r6 = r0
            r0 = r6
            int r0 = r0.f51952e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f51952e = r1
            goto L30
        L26:
            e.a.n.n$f r0 = new e.a.n.n$f
            r1 = r0
            r2 = r5
            r3 = r8
            r1.<init>(r3)
            r6 = r0
        L30:
            r0 = r6
            java.lang.Object r0 = r0.f51951d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r6
            int r0 = r0.f51952e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L71
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L62
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L58
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lb3
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L62:
            r0 = r6
            java.lang.Object r0 = r0.f51954g
            s1.z.b.p r0 = (s1.z.b.p) r0
            r7 = r0
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L94
        L71:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r1 = r7
            r0.f51954g = r1
            r0 = r6
            r1 = 1
            r0.f51952e = r1
            r0 = r5
            r1 = 0
            r2 = r6
            java.lang.Object r0 = r0.mo15074g(r1, r2)
            r11 = r0
            r0 = r11
            r8 = r0
            r0 = r11
            r1 = r10
            if (r0 != r1) goto L94
            r0 = r10
            return r0
        L94:
            r0 = r8
            com.truecaller.backup.BackupResult r0 = (com.truecaller.backup.BackupResult) r0
            r8 = r0
            r0 = r6
            r1 = 0
            r0.f51954g = r1
            r0 = r6
            r1 = 2
            r0.f51952e = r1
            r0 = r7
            r1 = r8
            r2 = r6
            java.lang.Object r0 = r0.k(r1, r2)
            r1 = r10
            if (r0 != r1) goto Lb3
            r0 = r10
            return r0
        Lb3:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18386n.mo15076e(java.lang.String, s1.z.b.p, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: f */
    public Object mo15075f(long j, d<? super k<? extends BackupResult, BackedUpAccountData>> dVar) {
        throw new IllegalStateException("BackupManagerV2 should be used instead");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0205  */
    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15074g(java.lang.String r7, s1.w.d<? super com.truecaller.backup.BackupResult> r8) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18386n.mo15074g(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: h */
    public Object mo15073h(long j, d<? super Long> dVar) {
        throw new IllegalStateException("BackupManagerV2 should be used instead");
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: i */
    public Object mo15072i(d<? super BackupResult> dVar) {
        return BackupResult.Success;
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    public boolean isEnabled() {
        return this.f51929f.mo15284a() && this.f51930g.mo28580d() && this.f51931h.getBoolean("backup_enabled");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15071j(java.lang.String r6, s1.w.d<? super java.lang.Long> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p1066n.C18386n.C18387a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.n.n$a r0 = (p193e.p194a.p1066n.C18386n.C18387a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f51934e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f51934e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.n.n$a r0 = new e.a.n.n$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f51933d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f51934e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L94
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.n.i0 r0 = r0.f51932i
            com.truecaller.backup.BackupFile r1 = com.truecaller.backup.BackupFile.CALL_LOG
            r2 = r6
            java.lang.String r0 = r0.mo15160a(r1, r2)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Laa
            r0 = r5
            e.a.n.a1 r0 = r0.f51925b
            r6 = r0
            r0 = r7
            r1 = 1
            r0.f51934e = r1
            r0 = r6
            r1 = r8
            r2 = r7
            java.lang.Object r0 = r0.mo15333g(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L94
            r0 = r10
            return r0
        L94:
            java.lang.Long r0 = new java.lang.Long
            r1 = r0
            r2 = r6
            java.lang.Number r2 = (java.lang.Number) r2
            long r2 = r2.longValue()
            r1.<init>(r2)
            long r0 = r0.longValue()
            r11 = r0
            goto Lad
        Laa:
            r0 = 0
            r11 = r0
        Lad:
            java.lang.Long r0 = new java.lang.Long
            r1 = r0
            r2 = r11
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18386n.mo15071j(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: k */
    public Object mo15070k(d<? super BackupResult> dVar) {
        return BackupResult.Success;
    }

    @Override // p193e.p194a.p1066n.AbstractC18380m
    /* renamed from: l */
    public void mo15069l() {
        s1.a.a.a.v0.f.d.H(h1.a, this.f51924a, (j0) null, new C18393g(null), 2, (Object) null);
    }
}
