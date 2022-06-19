package p193e.p194a.p1080o.p1103p.p1105b;

import com.truecaller.contextcall.p159db.hiddennumber.HiddenNumber;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18769f;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
/* renamed from: e.a.o.p.b.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e.class */
public final class C18824e implements AbstractC18823d {

    /* renamed from: a */
    public final f f52863a;

    /* renamed from: b */
    public final AbstractC18769f f52864b;

    /* renamed from: c */
    public final AbstractC18814b f52865c;

    /* renamed from: d */
    public final AbstractC8621z f52866d;

    @e(c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl$addHiddenNumber$2", f = "HiddenNumberRepository.kt", l = {60}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.b.e$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e$a.class */
    public static final class C18825a extends i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f52867e;

        /* renamed from: g */
        public final /* synthetic */ String f52869g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18825a(String str, d dVar) {
            super(1, dVar);
            C18824e.this = r5;
            this.f52869g = str;
        }

        /* renamed from: d */
        public final Object m14444d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18825a(this.f52869g, dVar).m14442s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14443l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18825a(this.f52869g, dVar);
        }

        /* renamed from: s */
        public final Object m14442s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f52867e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String mo28181j = C18824e.this.f52866d.mo28181j(this.f52869g);
                if (mo28181j != null) {
                    AbstractC18814b abstractC18814b = C18824e.this.f52865c;
                    HiddenNumber hiddenNumber = new HiddenNumber(mo28181j);
                    this.f52867e = 1;
                    if (abstractC18814b.mo14451d(hiddenNumber, this) == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl$deleteHiddenNumber$2", f = "HiddenNumberRepository.kt", l = {67}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.b.e$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e$b.class */
    public static final class C18826b extends i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f52870e;

        /* renamed from: g */
        public final /* synthetic */ String f52872g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18826b(String str, d dVar) {
            super(1, dVar);
            C18824e.this = r5;
            this.f52872g = str;
        }

        /* renamed from: d */
        public final Object m14441d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18826b(this.f52872g, dVar).m14439s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14440l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18826b(this.f52872g, dVar);
        }

        /* renamed from: s */
        public final Object m14439s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f52870e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String mo28181j = C18824e.this.f52866d.mo28181j(this.f52872g);
                if (mo28181j != null) {
                    AbstractC18814b abstractC18814b = C18824e.this.f52865c;
                    HiddenNumber hiddenNumber = new HiddenNumber(mo28181j);
                    this.f52870e = 1;
                    if (abstractC18814b.mo14453b(hiddenNumber, this) == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl", f = "HiddenNumberRepository.kt", l = {27}, m = "getHiddenContacts")
    /* renamed from: e.a.o.p.b.e$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e$c.class */
    public static final class C18827c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52873d;

        /* renamed from: e */
        public int f52874e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18827c(d dVar) {
            super(dVar);
            C18824e.this = r4;
        }

        /* renamed from: s */
        public final Object m14438s(Object obj) {
            this.f52873d = obj;
            this.f52874e |= Integer.MIN_VALUE;
            return C18824e.this.mo14448b(this);
        }
    }

    @e(c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl$getHiddenContacts$2", f = "HiddenNumberRepository.kt", l = {28, 31}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.b.e$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e$d.class */
    public static final class C18828d extends i implements l<d<? super List<? extends C18813a>>, Object> {

        /* renamed from: e */
        public Object f52876e;

        /* renamed from: f */
        public Object f52877f;

        /* renamed from: g */
        public Object f52878g;

        /* renamed from: h */
        public Object f52879h;

        /* renamed from: i */
        public int f52880i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18828d(d dVar) {
            super(1, dVar);
            C18824e.this = r5;
        }

        /* renamed from: d */
        public final Object m14437d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18828d(dVar).m14435s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14436l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18828d(dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0126  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0157  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x01c4  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0108 -> B:24:0x011a). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m14435s(java.lang.Object r26) {
            /*
                Method dump skipped, instructions count: 458
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1103p.p1105b.C18824e.C18828d.m14435s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl", f = "HiddenNumberRepository.kt", l = {53}, m = "hasAnyHiddenNumber")
    /* renamed from: e.a.o.p.b.e$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e$e.class */
    public static final class C18829e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52882d;

        /* renamed from: e */
        public int f52883e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18829e(d dVar) {
            super(dVar);
            C18824e.this = r4;
        }

        /* renamed from: s */
        public final Object m14434s(Object obj) {
            this.f52882d = obj;
            this.f52883e |= Integer.MIN_VALUE;
            return C18824e.this.mo14449a(this);
        }
    }

    @e(c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl$hasAnyHiddenNumber$2", f = "HiddenNumberRepository.kt", l = {54}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.b.e$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e$f.class */
    public static final class C18830f extends i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f52885e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18830f(d dVar) {
            super(1, dVar);
            C18824e.this = r5;
        }

        /* renamed from: d */
        public final Object m14433d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18830f(dVar).m14431s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14432l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18830f(dVar);
        }

        /* renamed from: s */
        public final Object m14431s(Object obj) {
            a aVar = a.a;
            int i = this.f52885e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18814b abstractC18814b = C18824e.this.f52865c;
                this.f52885e = 1;
                Object mo14450e = abstractC18814b.mo14450e(this);
                obj = mo14450e;
                if (mo14450e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Number) obj).intValue() <= 0) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl", f = "HiddenNumberRepository.kt", l = {71}, m = "isNumberHidden")
    /* renamed from: e.a.o.p.b.e$g */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e$g.class */
    public static final class C18831g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52887d;

        /* renamed from: e */
        public int f52888e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18831g(d dVar) {
            super(dVar);
            C18824e.this = r4;
        }

        /* renamed from: s */
        public final Object m14430s(Object obj) {
            this.f52887d = obj;
            this.f52888e |= Integer.MIN_VALUE;
            return C18824e.this.mo14447c(null, this);
        }
    }

    @e(c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl$isNumberHidden$2", f = "HiddenNumberRepository.kt", l = {73}, m = "invokeSuspend")
    /* renamed from: e.a.o.p.b.e$h */
    /* loaded from: classes8-dex2jar.jar:e/a/o/p/b/e$h.class */
    public static final class C18832h extends i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f52890e;

        /* renamed from: g */
        public final /* synthetic */ String f52892g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18832h(String str, d dVar) {
            super(1, dVar);
            C18824e.this = r5;
            this.f52892g = str;
        }

        /* renamed from: d */
        public final Object m14429d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C18832h(this.f52892g, dVar).m14427s(s.a);
        }

        /* renamed from: l */
        public final d<s> m14428l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C18832h(this.f52892g, dVar);
        }

        /* renamed from: s */
        public final Object m14427s(Object obj) {
            a aVar = a.a;
            int i = this.f52890e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String mo28181j = C18824e.this.f52866d.mo28181j(this.f52892g);
                if (mo28181j == null) {
                    return Boolean.FALSE;
                }
                AbstractC18814b abstractC18814b = C18824e.this.f52865c;
                this.f52890e = 1;
                Object mo14454a = abstractC18814b.mo14454a(mo28181j, this);
                obj = mo14454a;
                if (mo14454a == aVar) {
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
    public C18824e(@Named("IO") f fVar, AbstractC18769f abstractC18769f, AbstractC18814b abstractC18814b, AbstractC8621z abstractC8621z) {
        s1.z.c.l.e(fVar, "ioContext");
        s1.z.c.l.e(abstractC18769f, "support");
        s1.z.c.l.e(abstractC18814b, "hiddenNumberDao");
        s1.z.c.l.e(abstractC8621z, "phoneNumberHelper");
        this.f52863a = fVar;
        this.f52864b = abstractC18769f;
        this.f52865c = abstractC18814b;
        this.f52866d = abstractC8621z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0098  */
    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14449a(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1080o.p1103p.p1105b.C18824e.C18829e
            if (r0 == 0) goto L25
            r0 = r6
            e.a.o.p.b.e$e r0 = (p193e.p194a.p1080o.p1103p.p1105b.C18824e.C18829e) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f52883e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f52883e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.o.p.b.e$e r0 = new e.a.o.p.b.e$e
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f52882d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f52883e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L86
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f52863a
            r10 = r0
            e.a.o.p.b.e$f r0 = new e.a.o.p.b.e$f
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f52883e = r1
            r0 = r10
            r1 = r7
            r2 = r6
            java.lang.Object r0 = p193e.p194a.p1053m0.C17891a1.C17902k.m15625b1(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L86
            r0 = r9
            return r0
        L86:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L98
            r0 = r6
            boolean r0 = r0.booleanValue()
            r11 = r0
            goto L9b
        L98:
            r0 = 0
            r11 = r0
        L9b:
            r0 = r11
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1103p.p1105b.C18824e.mo14449a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0092  */
    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14448b(s1.w.d<? super java.util.List<p193e.p194a.p1080o.p1103p.p1105b.C18813a>> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1080o.p1103p.p1105b.C18824e.C18827c
            if (r0 == 0) goto L25
            r0 = r6
            e.a.o.p.b.e$c r0 = (p193e.p194a.p1080o.p1103p.p1105b.C18824e.C18827c) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f52874e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f52874e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.o.p.b.e$c r0 = new e.a.o.p.b.e$c
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f52873d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f52874e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L86
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f52863a
            r7 = r0
            e.a.o.p.b.e$d r0 = new e.a.o.p.b.e$d
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f52874e = r1
            r0 = r7
            r1 = r10
            r2 = r6
            java.lang.Object r0 = p193e.p194a.p1053m0.C17891a1.C17902k.m15625b1(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L86
            r0 = r9
            return r0
        L86:
            r0 = r6
            java.util.List r0 = (java.util.List) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L92
            goto L96
        L92:
            s1.u.s r0 = s1.u.s.a
            r6 = r0
        L96:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1103p.p1105b.C18824e.mo14448b(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009d  */
    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14447c(java.lang.String r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p1080o.p1103p.p1105b.C18824e.C18831g
            if (r0 == 0) goto L28
            r0 = r8
            e.a.o.p.b.e$g r0 = (p193e.p194a.p1080o.p1103p.p1105b.C18824e.C18831g) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f52888e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f52888e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.o.p.b.e$g r0 = new e.a.o.p.b.e$g
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f52887d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f52888e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r7 = r0
            goto L8b
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            s1.w.f r0 = r0.f52863a
            r9 = r0
            e.a.o.p.b.e$h r0 = new e.a.o.p.b.e$h
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f52888e = r1
            r0 = r9
            r1 = r7
            r2 = r8
            java.lang.Object r0 = p193e.p194a.p1053m0.C17891a1.C17902k.m15625b1(r0, r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r11
            if (r0 != r1) goto L8b
            r0 = r11
            return r0
        L8b:
            r0 = r7
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L9d
            r0 = r7
            boolean r0 = r0.booleanValue()
            r12 = r0
            goto La0
        L9d:
            r0 = 0
            r12 = r0
        La0:
            r0 = r12
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1103p.p1105b.C18824e.mo14447c(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d
    /* renamed from: d */
    public Object mo14446d(String str, d<? super s> dVar) {
        Object m15625b1 = C17891a1.C17902k.m15625b1(this.f52863a, new C18825a(str, null), dVar);
        return m15625b1 == a.a ? m15625b1 : s.a;
    }

    @Override // p193e.p194a.p1080o.p1103p.p1105b.AbstractC18823d
    /* renamed from: e */
    public Object mo14445e(String str, d<? super s> dVar) {
        Object m15625b1 = C17891a1.C17902k.m15625b1(this.f52863a, new C18826b(str, null), dVar);
        return m15625b1 == a.a ? m15625b1 : s.a;
    }
}
