package p193e.p194a.p1080o.p1097b;

import android.database.sqlite.SQLiteException;
import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1103p.p1106c.AbstractC18842c;
import p193e.p194a.p1080o.p1103p.p1106c.C18843d;
import p193e.p194a.p1080o.p1103p.p1106c.C18845f;
import p193e.p194a.p1080o.p1103p.p1106c.C18846g;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.b.w */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/w.class */
public final class C18757w implements AbstractC18756v, i0 {

    /* renamed from: a */
    public final AbstractC19222c f52690a;

    /* renamed from: b */
    public final AbstractC18842c f52691b;

    /* renamed from: c */
    public final a<AbstractC18700b> f52692c;

    /* renamed from: d */
    public final AbstractC8621z f52693d;

    /* renamed from: e */
    public final f f52694e;

    @e(c = "com.truecaller.contextcall.utils.IncomingCallContextRepositoryImpl$clearCallContext$2", f = "IncomingCallContextRepository.kt", l = {86}, m = "invokeSuspend")
    /* renamed from: e.a.o.b.w$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/w$a.class */
    public static final class C18758a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52695e;

        /* renamed from: g */
        public final /* synthetic */ String f52697g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18758a(String str, d dVar) {
            super(2, dVar);
            C18757w.this = r5;
            this.f52697g = str;
        }

        /* renamed from: i */
        public final d<s> m14542i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18758a(this.f52697g, dVar);
        }

        /* renamed from: k */
        public final Object m14541k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18758a(this.f52697g, dVar).m14540s(s.a);
        }

        /* renamed from: s */
        public final Object m14540s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = s1.w.j.a.a;
            int i = this.f52695e;
            try {
            } catch (SQLiteException e) {
                C17891a1.C17902k.m15587o0(e);
            }
            if (i == 0) {
                C25225a.m3932a3(obj);
                String mo28181j = C18757w.this.f52693d.mo28181j(this.f52697g);
                if (mo28181j != null) {
                    AbstractC18842c abstractC18842c = C18757w.this.f52691b;
                    this.f52695e = 1;
                    C18846g c18846g = (C18846g) abstractC18842c;
                    Object m15625b1 = C17891a1.C17902k.m15625b1(c18846g.f52916c, new C18843d(c18846g, mo28181j, null), this);
                    if (m15625b1 != obj3) {
                        m15625b1 = obj2;
                    }
                    if (m15625b1 == obj3) {
                        return obj3;
                    }
                }
                return obj2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj2;
        }
    }

    @e(c = "com.truecaller.contextcall.utils.IncomingCallContextRepositoryImpl", f = "IncomingCallContextRepository.kt", l = {58, 60}, m = "createCallContext")
    /* renamed from: e.a.o.b.w$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/w$b.class */
    public static final class C18759b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52698d;

        /* renamed from: e */
        public int f52699e;

        /* renamed from: g */
        public Object f52701g;

        /* renamed from: h */
        public Object f52702h;

        /* renamed from: i */
        public Object f52703i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18759b(d dVar) {
            super(dVar);
            C18757w.this = r4;
        }

        /* renamed from: s */
        public final Object m14539s(Object obj) {
            this.f52698d = obj;
            this.f52699e |= Integer.MIN_VALUE;
            return C18757w.this.mo14545b(null, null, null, false, null, this);
        }
    }

    @e(c = "com.truecaller.contextcall.utils.IncomingCallContextRepositoryImpl$getCallContext$2", f = "IncomingCallContextRepository.kt", l = {75}, m = "invokeSuspend")
    /* renamed from: e.a.o.b.w$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/w$c.class */
    public static final class C18760c extends i implements p<i0, d<? super IncomingCallContext>, Object> {

        /* renamed from: e */
        public int f52704e;

        /* renamed from: g */
        public final /* synthetic */ String f52706g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18760c(String str, d dVar) {
            super(2, dVar);
            C18757w.this = r5;
            this.f52706g = str;
        }

        /* renamed from: i */
        public final d<s> m14538i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18760c(this.f52706g, dVar);
        }

        /* renamed from: k */
        public final Object m14537k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18760c(this.f52706g, dVar).m14536s(s.a);
        }

        /* renamed from: s */
        public final Object m14536s(Object obj) {
            IncomingCallContext incomingCallContext;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52704e;
            try {
            } catch (SQLiteException e) {
                C17891a1.C17902k.m15587o0(e);
                incomingCallContext = null;
            }
            if (i == 0) {
                C25225a.m3932a3(obj);
                String mo28181j = C18757w.this.f52693d.mo28181j(this.f52706g);
                incomingCallContext = null;
                if (mo28181j != null) {
                    AbstractC18842c abstractC18842c = C18757w.this.f52691b;
                    this.f52704e = 1;
                    C18846g c18846g = (C18846g) abstractC18842c;
                    Object m15625b1 = C17891a1.C17902k.m15625b1(c18846g.f52916c, new C18845f(c18846g, mo28181j, null), this);
                    obj = m15625b1;
                    if (m15625b1 == aVar) {
                        return aVar;
                    }
                }
                return incomingCallContext;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            incomingCallContext = (IncomingCallContext) obj;
            return incomingCallContext;
        }
    }

    @e(c = "com.truecaller.contextcall.utils.IncomingCallContextRepositoryImpl", f = "IncomingCallContextRepository.kt", l = {65}, m = "saveCallContext")
    /* renamed from: e.a.o.b.w$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/w$d.class */
    public static final class C18761d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52707d;

        /* renamed from: e */
        public int f52708e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18761d(d dVar) {
            super(dVar);
            C18757w.this = r4;
        }

        /* renamed from: s */
        public final Object m14535s(Object obj) {
            this.f52707d = obj;
            this.f52708e |= Integer.MIN_VALUE;
            return C18757w.this.m14543d(null, this);
        }
    }

    @Inject
    public C18757w(AbstractC19222c abstractC19222c, AbstractC18842c abstractC18842c, a<AbstractC18700b> aVar, AbstractC8621z abstractC8621z, @Named("IO") f fVar) {
        l.e(abstractC19222c, "clock");
        l.e(abstractC18842c, "incomingCallContextDbHelper");
        l.e(aVar, "callContextMessageFactory");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(fVar, "asyncCoroutine");
        this.f52690a = abstractC19222c;
        this.f52691b = abstractC18842c;
        this.f52692c = aVar;
        this.f52693d = abstractC8621z;
        this.f52694e = fVar;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18756v
    /* renamed from: a */
    public Object mo14546a(String str, d<? super IncomingCallContext> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f52694e, new C18760c(str, null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x015b  */
    @Override // p193e.p194a.p1080o.p1097b.AbstractC18756v
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14545b(java.lang.String r11, java.lang.String r12, java.lang.String r13, boolean r14, com.truecaller.data.entity.FeatureType r15, s1.w.d<? super com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext> r16) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18757w.mo14545b(java.lang.String, java.lang.String, java.lang.String, boolean, com.truecaller.data.entity.FeatureType, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18756v
    /* renamed from: c */
    public Object mo14544c(String str, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f52694e, new C18758a(str, null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|29|(2:10|(1:12)(2:13|14))(6:15|16|17|(1:19)|20|(2:22|23))|28|26|27))|7|8|29|(0)(0)|28|26|27) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b1, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b2, code lost:
        p193e.p194a.p1053m0.C17891a1.C17902k.m15587o0(r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m14543d(com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext r6, s1.w.d<? super s1.s> r7) {
        /*
            r5 = this;
            s1.s r0 = s1.s.a
            r8 = r0
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p1080o.p1097b.C18757w.C18761d
            if (r0 == 0) goto L30
            r0 = r7
            e.a.o.b.w$d r0 = (p193e.p194a.p1080o.p1097b.C18757w.C18761d) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f52708e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L30
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f52708e = r1
            r0 = r9
            r7 = r0
            goto L3a
        L30:
            e.a.o.b.w$d r0 = new e.a.o.b.w$d
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L3a:
            r0 = r7
            java.lang.Object r0 = r0.f52707d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r7
            int r0 = r0.f52708e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L68
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L5e
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: android.database.sqlite.SQLiteException -> Lb1
            goto Lb6
        L5e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L68:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.o.p.c.c r0 = r0.f52691b     // Catch: android.database.sqlite.SQLiteException -> Lb1
            r11 = r0
            r0 = r7
            r1 = 1
            r0.f52708e = r1     // Catch: android.database.sqlite.SQLiteException -> Lb1
            r0 = r11
            e.a.o.p.c.g r0 = (p193e.p194a.p1080o.p1103p.p1106c.C18846g) r0     // Catch: android.database.sqlite.SQLiteException -> Lb1
            r12 = r0
            r0 = r12
            s1.w.f r0 = r0.f52916c     // Catch: android.database.sqlite.SQLiteException -> Lb1
            r13 = r0
            e.a.o.p.c.h r0 = new e.a.o.p.c.h     // Catch: android.database.sqlite.SQLiteException -> Lb1
            r11 = r0
            r0 = r11
            r1 = r12
            r2 = r6
            r3 = 0
            r0.<init>(r1, r2, r3)     // Catch: android.database.sqlite.SQLiteException -> Lb1
            r0 = r13
            r1 = r11
            r2 = r7
            java.lang.Object r0 = p193e.p194a.p1053m0.C17891a1.C17902k.m15625b1(r0, r1, r2)     // Catch: android.database.sqlite.SQLiteException -> Lb1
            r6 = r0
            r0 = r6
            r1 = r9
            if (r0 != r1) goto La6
            goto La8
        La6:
            r0 = r8
            r6 = r0
        La8:
            r0 = r6
            r1 = r9
            if (r0 != r1) goto Lb6
            r0 = r9
            return r0
        Lb1:
            r6 = move-exception
            r0 = r6
            p193e.p194a.p1053m0.C17891a1.C17902k.m15587o0(r0)
        Lb6:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18757w.m14543d(com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContext, s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f52694e;
    }
}
