package p193e.p194a.p1066n;

import android.content.Context;
import androidx.fragment.app.Fragment;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.BackupResult;
import com.truecaller.log.AssertionUtil;
import e.m.b.y.a.a;
import e.m.b.y.a.c.b;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.m;
import s1.z.c.y;
/* renamed from: e.a.n.c1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/c1.class */
public final class C18276c1 implements AbstractC18249a1 {

    /* renamed from: a */
    public a f51645a;

    /* renamed from: b */
    public d<? super s> f51646b;

    /* renamed from: c */
    public final f f51647c;

    /* renamed from: d */
    public final f f51648d;

    /* renamed from: e */
    public final Context f51649e;

    /* renamed from: f */
    public final AbstractC8541a f51650f;

    /* renamed from: g */
    public final C18335g1 f51651g;

    @e(c = "com.truecaller.backup.DriveManagerImpl", f = "DriveManagerImpl.kt", l = {101, 102}, m = "changeDriveAccount")
    /* renamed from: e.a.n.c1$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c1$a.class */
    public static final class C18277a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51652d;

        /* renamed from: e */
        public int f51653e;

        /* renamed from: g */
        public Object f51655g;

        /* renamed from: h */
        public Object f51656h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18277a(d dVar) {
            super(dVar);
            C18276c1.this = r4;
        }

        /* renamed from: s */
        public final Object m15321s(Object obj) {
            this.f51652d = obj;
            this.f51653e |= Integer.MIN_VALUE;
            return C18276c1.this.mo15337c(null, this);
        }
    }

    /* renamed from: e.a.n.c1$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c1$b.class */
    public static final class C18278b extends m implements l<a, e.m.b.y.a.c.a> {

        /* renamed from: c */
        public final /* synthetic */ String f51658c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18278b(String str) {
            super(1);
            C18276c1.this = r4;
            this.f51658c = str;
        }

        /* renamed from: d */
        public Object m15320d(Object obj) {
            List m;
            a aVar = (a) obj;
            s1.z.c.l.e(aVar, "it");
            C18276c1 c18276c1 = C18276c1.this;
            a.b bVar = new a.b(aVar);
            a.b.c cVar = new a.b.c(bVar);
            Objects.requireNonNull(bVar.a);
            s1.z.c.l.d(cVar, "it.files().list()");
            cVar.w(c18276c1.m15326n() ? "drive" : "appDataFolder");
            cVar.v("name contains '" + this.f51658c + "' and trashed = false");
            cVar.t("modifiedTime desc");
            cVar.s("files/id, files/name, files/mimeType, files/modifiedTime, files/appProperties, files/capabilities/canEdit");
            cVar.u(1);
            b bVar2 = (b) cVar.j();
            return (bVar2 == null || (m = bVar2.m()) == null) ? null : (e.m.b.y.a.c.a) i.D(m);
        }
    }

    @e(c = "com.truecaller.backup.DriveManagerImpl", f = "DriveManagerImpl.kt", l = {75, 78}, m = "signIn")
    /* renamed from: e.a.n.c1$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c1$c.class */
    public static final class C18279c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51659d;

        /* renamed from: e */
        public int f51660e;

        /* renamed from: g */
        public Object f51662g;

        /* renamed from: h */
        public Object f51663h;

        /* renamed from: i */
        public Object f51664i;

        /* renamed from: j */
        public Object f51665j;

        /* renamed from: k */
        public Object f51666k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18279c(d dVar) {
            super(dVar);
            C18276c1.this = r4;
        }

        /* renamed from: s */
        public final Object m15319s(Object obj) {
            this.f51659d = obj;
            this.f51660e |= Integer.MIN_VALUE;
            return C18276c1.this.mo15338b(null, this);
        }
    }

    @e(c = "com.truecaller.backup.DriveManagerImpl$signIn$2", f = "DriveManagerImpl.kt", l = {80}, m = "invokeSuspend")
    /* renamed from: e.a.n.c1$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c1$d.class */
    public static final class C18280d extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f51667e;

        /* renamed from: f */
        public int f51668f;

        /* renamed from: h */
        public final /* synthetic */ Fragment f51670h;

        /* renamed from: i */
        public final /* synthetic */ c0 f51671i;

        /* renamed from: j */
        public final /* synthetic */ c0 f51672j;

        /* renamed from: k */
        public final /* synthetic */ Context f51673k;

        /* renamed from: l */
        public final /* synthetic */ y f51674l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18280d(Fragment fragment, c0 c0Var, c0 c0Var2, Context context, y yVar, d dVar) {
            super(2, dVar);
            C18276c1.this = r5;
            this.f51670h = fragment;
            this.f51671i = c0Var;
            this.f51672j = c0Var2;
            this.f51673k = context;
            this.f51674l = yVar;
        }

        /* renamed from: i */
        public final d<s> m15318i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18280d(this.f51670h, this.f51671i, this.f51672j, this.f51673k, this.f51674l, dVar);
        }

        /* renamed from: k */
        public final Object m15317k(Object obj, Object obj2) {
            return m15318i(obj, (d) obj2).m15316s(s.a);
        }

        /* renamed from: s */
        public final Object m15316s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f51668f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Fragment fragment = this.f51670h;
                if (fragment != null && fragment.isAdded()) {
                    this.f51667e = this;
                    this.f51668f = 1;
                    s1.w.i iVar = new s1.w.i(C25225a.m3844s1(this));
                    C18276c1.this.f51646b = iVar;
                    this.f51670h.startActivityForResult(((GoogleSignInClient) this.f51671i.a).m39125b(), 4321);
                    Object a = iVar.a();
                    if (a == aVar) {
                        s1.z.c.l.e(this, "frame");
                    }
                    if (a == aVar) {
                        return aVar;
                    }
                }
                return s.a;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C18280d c18280d = (C18280d) this.f51667e;
                C25225a.m3932a3(obj);
            }
            this.f51672j.a = C18276c1.this.f51651g.m15189a(this.f51673k);
            this.f51674l.a = C18276c1.this.m15324p((GoogleSignInAccount) this.f51672j.a);
            return s.a;
        }
    }

    @e(c = "com.truecaller.backup.DriveManagerImpl$signOut$2", f = "DriveManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.n.c1$e */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c1$e.class */
    public static final class C18281e extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18281e(d dVar) {
            super(2, dVar);
            C18276c1.this = r5;
        }

        /* renamed from: i */
        public final d<s> m15315i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18281e(dVar);
        }

        /* renamed from: k */
        public final Object m15314k(Object obj, Object obj2) {
            Task<Void> signOut;
            s sVar = s.a;
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C18276c1 c18276c1 = C18276c1.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            if (c18276c1.f51651g.m15189a(c18276c1.f51649e) != null && (signOut = c18276c1.m15330j(c18276c1.f51649e).signOut()) != null) {
                Objects.requireNonNull(c18276c1);
                C18268b1 c18268b1 = new C18268b1(c18276c1);
                s1.z.c.l.e(signOut, "$this$await");
                s1.z.c.l.e(c18268b1, "exceptionCallback");
                try {
                    Tasks.m38514a(signOut);
                } catch (Exception e) {
                    c18268b1.m15353d(e);
                }
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m15313s(Object obj) {
            C25225a.m3932a3(obj);
            C18276c1 c18276c1 = C18276c1.this;
            if (c18276c1.f51651g.m15189a(c18276c1.f51649e) != null) {
                C18276c1 c18276c12 = C18276c1.this;
                Task<Void> signOut = c18276c12.m15330j(c18276c12.f51649e).signOut();
                if (signOut != null) {
                    C18276c1 c18276c13 = C18276c1.this;
                    Objects.requireNonNull(c18276c13);
                    C18268b1 c18268b1 = new C18268b1(c18276c13);
                    s1.z.c.l.e(signOut, "$this$await");
                    s1.z.c.l.e(c18268b1, "exceptionCallback");
                    try {
                        Tasks.m38514a(signOut);
                    } catch (Exception e) {
                        c18268b1.m15353d(e);
                    }
                }
            }
            return s.a;
        }
    }

    /* renamed from: e.a.n.c1$f */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c1$f.class */
    public static final class C18282f extends m implements l<a, BackupResult> {

        /* renamed from: b */
        public final /* synthetic */ k f51676b;

        /* renamed from: c */
        public final /* synthetic */ e.m.b.x.b.b f51677c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18282f(k kVar, e.m.b.x.b.b bVar) {
            super(1);
            this.f51676b = kVar;
            this.f51677c = bVar;
        }

        /* renamed from: d */
        public Object m15312d(Object obj) {
            a aVar = (a) obj;
            s1.z.c.l.e(aVar, "it");
            k kVar = this.f51676b;
            Object obj2 = kVar.a;
            if (obj2 == null) {
                a.b bVar = new a.b(aVar);
                a.b.a aVar2 = new a.b.a(bVar, (e.m.b.y.a.c.a) kVar.b, this.f51677c);
                Objects.requireNonNull(bVar.a);
                aVar2.s("id");
                aVar2.j();
            } else {
                a.b bVar2 = new a.b(aVar);
                a.b.d dVar = new a.b.d(bVar2, (String) obj2, (e.m.b.y.a.c.a) kVar.b, this.f51677c);
                Objects.requireNonNull(bVar2.a);
                dVar.j();
            }
            return BackupResult.Success;
        }
    }

    @Inject
    public C18276c1(@Named("IO") f fVar, @Named("UI") f fVar2, Context context, AbstractC8541a abstractC8541a, C18335g1 c18335g1) {
        s1.z.c.l.e(fVar, "asyncContext");
        s1.z.c.l.e(fVar2, "uiContext");
        s1.z.c.l.e(context, "applicationContext");
        s1.z.c.l.e(abstractC8541a, "coreSettings");
        s1.z.c.l.e(c18335g1, "googleServiceProxy");
        this.f51647c = fVar;
        this.f51648d = fVar2;
        this.f51649e = context;
        this.f51650f = abstractC8541a;
        this.f51651g = c18335g1;
    }

    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: a */
    public void mo15339a() {
        d<? super s> dVar = this.f51646b;
        if (dVar != null) {
            dVar.c(s.a);
        }
        this.f51646b = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ee, code lost:
        if (r12 != null) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x032f  */
    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15338b(androidx.fragment.app.Fragment r11, s1.w.d<? super java.lang.Boolean> r12) {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18276c1.mo15338b(androidx.fragment.app.Fragment, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c7  */
    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15337c(androidx.fragment.app.Fragment r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18276c1.mo15337c(androidx.fragment.app.Fragment, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: d */
    public Object mo15336d(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f51647c, new C18281e(null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0026, code lost:
        if (r9 != null) goto L7;
     */
    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15335e(java.lang.String r9, java.io.InputStream r10, java.util.Map<java.lang.String, java.lang.String> r11, s1.w.d<? super com.truecaller.backup.BackupResult> r12) {
        /*
            r8 = this;
            r0 = r8
            e.m.b.y.a.a r0 = r0.f51645a
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2c
            r0 = r8
            r1 = r12
            r2 = r8
            r3 = r12
            r4 = r9
            r5 = r11
            s1.k r2 = r2.m15327m(r3, r4, r5)
            e.m.b.x.b.v r3 = new e.m.b.x.b.v
            r4 = r3
            java.lang.String r5 = "application/octet-stream"
            r6 = r10
            r4.<init>(r5, r6)
            com.truecaller.backup.BackupResult r0 = r0.m15322r(r1, r2, r3)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L2c
            goto L30
        L2c:
            com.truecaller.backup.BackupResult r0 = com.truecaller.backup.BackupResult.ErrorClient
            r9 = r0
        L30:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18276c1.mo15335e(java.lang.String, java.io.InputStream, java.util.Map, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0025, code lost:
        if (r11 != null) goto L7;
     */
    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15334f(java.lang.String r11, byte[] r12, s1.w.d<? super com.truecaller.backup.BackupResult> r13) {
        /*
            r10 = this;
            r0 = r10
            e.m.b.y.a.a r0 = r0.f51645a
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L2b
            r0 = r10
            r1 = r13
            r2 = r10
            r3 = r13
            r4 = r11
            r5 = 0
            s1.k r2 = r2.m15327m(r3, r4, r5)
            e.m.b.x.b.c r3 = new e.m.b.x.b.c
            r4 = r3
            java.lang.String r5 = "application/json"
            r6 = r12
            r7 = 0
            r8 = r12
            int r8 = r8.length
            r4.<init>(r5, r6, r7, r8)
            com.truecaller.backup.BackupResult r0 = r0.m15322r(r1, r2, r3)
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L2b
            goto L2f
        L2b:
            com.truecaller.backup.BackupResult r0 = com.truecaller.backup.BackupResult.ErrorClient
            r11 = r0
        L2f:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18276c1.mo15334f(java.lang.String, byte[], s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: g */
    public Object mo15333g(String str, d<? super Long> dVar) {
        ?? r8;
        e.m.b.x.d.i o;
        a aVar = this.f51645a;
        if (aVar != null) {
            e.m.b.y.a.c.a m15329k = m15329k(aVar, str);
            Long l = (m15329k == null || (o = m15329k.o()) == null) ? null : new Long(o.a);
            if (l != null) {
                r8 = l.longValue();
                return new Long(r8 == true ? 1L : 0L);
            }
        }
        r8 = false;
        return new Long(r8 == true ? 1L : 0L);
    }

    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: h */
    public Object mo15332h(String str, d<? super InputStream> dVar) {
        InputStream inputStream;
        a aVar = this.f51645a;
        InputStream inputStream2 = null;
        if (aVar != null) {
            e.m.b.y.a.c.a m15329k = m15329k(aVar, str);
            inputStream2 = null;
            if (m15329k != null) {
                String n = m15329k.n();
                s1.z.c.l.d(n, "it.id");
                try {
                    inputStream = new C18318d1(n).m15289d(aVar);
                } catch (Exception e) {
                    m15325o(e);
                    inputStream = null;
                }
                inputStream2 = inputStream;
            }
        }
        return inputStream2;
    }

    @Override // p193e.p194a.p1066n.AbstractC18249a1
    /* renamed from: i */
    public Object mo15331i(String str, d<? super k<? extends InputStream, ? extends Map<String, String>>> dVar) {
        InputStream inputStream;
        a aVar = this.f51645a;
        k kVar = null;
        if (aVar != null) {
            e.m.b.y.a.c.a m15329k = m15329k(aVar, str);
            kVar = null;
            if (m15329k != null) {
                String n = m15329k.n();
                s1.z.c.l.d(n, "file.id");
                try {
                    inputStream = new C18318d1(n).m15289d(aVar);
                } catch (Exception e) {
                    m15325o(e);
                    inputStream = null;
                }
                InputStream inputStream2 = inputStream;
                kVar = null;
                if (inputStream2 != null) {
                    kVar = new k(inputStream2, m15329k.m());
                }
            }
        }
        return kVar;
    }

    /* renamed from: j */
    public final GoogleSignInClient m15330j(Context context) {
        GoogleSignInOptions.Builder builder = new GoogleSignInOptions.Builder(GoogleSignInOptions.f5516l);
        builder.f5534a.add(new Scope(m15328l()));
        builder.f5534a.addAll(Arrays.asList(new Scope[0]));
        builder.m39119b();
        GoogleSignInOptions m39120a = builder.m39120a();
        C18335g1 c18335g1 = this.f51651g;
        s1.z.c.l.d(m39120a, "signInOptions");
        Objects.requireNonNull(c18335g1);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(m39120a, "signInOptions");
        GoogleSignInClient googleSignInClient = new GoogleSignInClient(context, m39120a);
        s1.z.c.l.d(googleSignInClient, "GoogleSignIn.getClient(context, signInOptions)");
        return googleSignInClient;
    }

    /* renamed from: k */
    public final e.m.b.y.a.c.a m15329k(a aVar, String str) {
        e.m.b.y.a.c.a aVar2;
        try {
            aVar2 = new C18278b(str).m15320d(aVar);
        } catch (Exception e) {
            m15325o(e);
            aVar2 = null;
        }
        return aVar2;
    }

    /* renamed from: l */
    public final String m15328l() {
        return m15326n() ? "https://www.googleapis.com/auth/drive.file" : "https://www.googleapis.com/auth/drive.appdata";
    }

    /* renamed from: m */
    public final k<String, e.m.b.y.a.c.a> m15327m(a aVar, String str, Map<String, String> map) {
        k<String, e.m.b.y.a.c.a> kVar;
        e.m.b.y.a.c.a m15329k = m15329k(aVar, str);
        if (m15329k != null) {
            String n = m15329k.n();
            e.m.b.y.a.c.a aVar2 = new e.m.b.y.a.c.a();
            if (map != null) {
                aVar2.p(map);
            }
            kVar = new k<>(n, aVar2);
        } else {
            e.m.b.y.a.c.a aVar3 = new e.m.b.y.a.c.a();
            aVar3.q(str);
            if (!m15326n()) {
                aVar3.r(C25225a.m3962T1("appDataFolder"));
            }
            if (map != null) {
                aVar3.p(map);
            }
            kVar = new k<>((Object) null, aVar3);
        }
        return kVar;
    }

    /* renamed from: n */
    public final boolean m15326n() {
        return this.f51650f.getBoolean("backupForceRootFolder");
    }

    /* renamed from: o */
    public final void m15325o(Exception exc) {
        if (m15323q(exc)) {
            this.f51650f.putBoolean("backupSignInRequired", true);
            this.f51650f.putBoolean("backup_enabled", false);
        }
        AssertionUtil.reportThrowableButNeverCrash(exc);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0057, code lost:
        if (new java.util.HashSet(r7.f5511j).containsAll(r0) != false) goto L7;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m15324p(com.google.android.gms.auth.api.signin.GoogleSignInAccount r7) {
        /*
            r6 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L5d
            r0 = r6
            e.a.n.g1 r0 = r0.f51651g
            r9 = r0
            r0 = 1
            com.google.android.gms.common.api.Scope[] r0 = new com.google.android.gms.common.api.Scope[r0]
            r10 = r0
            r0 = r10
            r1 = 0
            com.google.android.gms.common.api.Scope r2 = new com.google.android.gms.common.api.Scope
            r3 = r2
            r4 = r6
            java.lang.String r4 = r4.m15328l()
            r3.<init>(r4)
            r0[r1] = r2
            r0 = r9
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r10
            java.lang.String r1 = "scopes"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            r1 = 1
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
            com.google.android.gms.common.api.Scope[] r0 = (com.google.android.gms.common.api.Scope[]) r0
            r10 = r0
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r10
            boolean r0 = java.util.Collections.addAll(r0, r1)
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            r2 = r7
            java.util.List<com.google.android.gms.common.api.Scope> r2 = r2.f5511j
            r1.<init>(r2)
            r1 = r9
            boolean r0 = r0.containsAll(r1)
            if (r0 == 0) goto L5d
            goto L5f
        L5d:
            r0 = 0
            r8 = r0
        L5f:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18276c1.m15324p(com.google.android.gms.auth.api.signin.GoogleSignInAccount):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0025, code lost:
        if (r0 != 403) goto L11;
     */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m15323q(java.lang.Exception r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof e.m.b.x.b.r
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L2b
            r0 = r4
            e.m.b.x.b.r r0 = (e.m.b.x.b.r) r0
            int r0 = r0.a
            r7 = r0
            r0 = r6
            r5 = r0
            r0 = r7
            r1 = 401(0x191, float:5.62E-43)
            if (r0 == r1) goto L39
            r0 = r6
            r5 = r0
            r0 = r7
            r1 = 403(0x193, float:5.65E-43)
            if (r0 == r1) goto L39
            goto L37
        L2b:
            r0 = r4
            boolean r0 = r0 instanceof e.m.b.x.a.b.a.a.a.b
            if (r0 == 0) goto L37
            r0 = r6
            r5 = r0
            goto L39
        L37:
            r0 = 0
            r5 = r0
        L39:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18276c1.m15323q(java.lang.Exception):boolean");
    }

    /* renamed from: r */
    public final BackupResult m15322r(a aVar, k<String, e.m.b.y.a.c.a> kVar, e.m.b.x.b.b bVar) {
        BackupResult backupResult;
        try {
            backupResult = (BackupResult) new C18282f(kVar, bVar).m15312d(aVar);
        } catch (Exception e) {
            m15325o(e);
            backupResult = m15323q(e) ? BackupResult.ErrorCommit : BackupResult.ErrorCommitInternet;
        }
        if (backupResult == null) {
            backupResult = BackupResult.ErrorCommit;
        }
        return backupResult;
    }
}
