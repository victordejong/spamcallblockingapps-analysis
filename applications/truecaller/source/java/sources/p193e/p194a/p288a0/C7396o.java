package p193e.p194a.p288a0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
/* renamed from: e.a.a0.o */
/* loaded from: classes12-dex2jar.jar:e/a/a0/o.class */
public final class C7396o implements AbstractC7395n {

    /* renamed from: a */
    public final AbstractC7390i f23526a;

    @e(c = "com.truecaller.spamcategories.SpamCategoryFetcherImpl", f = "SpamCategoryFetcher.kt", l = {32}, m = "getAll")
    /* renamed from: e.a.a0.o$a */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/o$a.class */
    public static final class C7397a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23527d;

        /* renamed from: e */
        public int f23528e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7397a(d dVar) {
            super(dVar);
            C7396o.this = r4;
        }

        /* renamed from: s */
        public final Object m29689s(Object obj) {
            this.f23527d = obj;
            this.f23528e |= Integer.MIN_VALUE;
            return C7396o.this.mo29693a(this);
        }
    }

    @e(c = "com.truecaller.spamcategories.SpamCategoryFetcherImpl", f = "SpamCategoryFetcher.kt", l = {26}, m = "getAllByContact")
    /* renamed from: e.a.a0.o$b */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/o$b.class */
    public static final class C7398b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23530d;

        /* renamed from: e */
        public int f23531e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7398b(d dVar) {
            super(dVar);
            C7396o.this = r4;
        }

        /* renamed from: s */
        public final Object m29688s(Object obj) {
            this.f23530d = obj;
            this.f23531e |= Integer.MIN_VALUE;
            return C7396o.this.mo29691c(null, this);
        }
    }

    @e(c = "com.truecaller.spamcategories.SpamCategoryFetcherImpl$getAllByContactBlocking$1", f = "SpamCategoryFetcher.kt", l = {20}, m = "invokeSuspend")
    /* renamed from: e.a.a0.o$c */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/o$c.class */
    public static final class C7399c extends i implements p<i0, d<? super List<? extends SpamCategoryModel>>, Object> {

        /* renamed from: e */
        public int f23533e;

        /* renamed from: g */
        public final /* synthetic */ Contact f23535g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7399c(Contact contact, d dVar) {
            super(2, dVar);
            C7396o.this = r5;
            this.f23535g = contact;
        }

        /* renamed from: i */
        public final d<s> m29687i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7399c(this.f23535g, dVar);
        }

        /* renamed from: k */
        public final Object m29686k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7399c(this.f23535g, dVar).m29685s(s.a);
        }

        /* renamed from: s */
        public final Object m29685s(Object obj) {
            a aVar = a.a;
            int i = this.f23533e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C7396o c7396o = C7396o.this;
                Contact contact = this.f23535g;
                this.f23533e = 1;
                Object mo29691c = c7396o.mo29691c(contact, this);
                obj = mo29691c;
                if (mo29691c == aVar) {
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

    @e(c = "com.truecaller.spamcategories.SpamCategoryFetcherImpl", f = "SpamCategoryFetcher.kt", l = {34}, m = "getById")
    /* renamed from: e.a.a0.o$d */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/o$d.class */
    public static final class C7400d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23536d;

        /* renamed from: e */
        public int f23537e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7400d(d dVar) {
            super(dVar);
            C7396o.this = r4;
        }

        /* renamed from: s */
        public final Object m29684s(Object obj) {
            this.f23536d = obj;
            this.f23537e |= Integer.MIN_VALUE;
            return C7396o.this.mo29692b(0L, this);
        }
    }

    @Inject
    public C7396o(AbstractC7390i abstractC7390i) {
        l.e(abstractC7390i, "repository");
        this.f23526a = abstractC7390i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009e A[LOOP:0: B:20:0x0095->B:22:0x009e, LOOP_END] */
    @Override // p193e.p194a.p288a0.AbstractC7395n
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29693a(s1.w.d<? super java.util.List<com.truecaller.data.entity.SpamCategoryModel>> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p288a0.C7396o.C7397a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.a0.o$a r0 = (p193e.p194a.p288a0.C7396o.C7397a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f23528e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23528e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.a0.o$a r0 = new e.a.a0.o$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f23527d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f23528e
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
            goto L7b
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
            e.a.a0.i r0 = r0.f23526a
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f23528e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo29697c(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7b
            r0 = r9
            return r0
        L7b:
            r0 = r6
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r7 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r7
            r3 = 10
            int r2 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4004J(r2, r3)
            r1.<init>(r2)
            r6 = r0
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L95:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lb2
            r0 = r6
            r1 = r7
            java.lang.Object r1 = r1.next()
            com.truecaller.spamcategories.SpamCategory r1 = (com.truecaller.spamcategories.SpamCategory) r1
            com.truecaller.data.entity.SpamCategoryModel r1 = p193e.p194a.p1049l4.C17422k.m16058q0(r1)
            boolean r0 = r0.add(r1)
            goto L95
        Lb2:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p288a0.C7396o.mo29693a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a0  */
    @Override // p193e.p194a.p288a0.AbstractC7395n
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29692b(long r6, s1.w.d<? super com.truecaller.data.entity.SpamCategoryModel> r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p288a0.C7396o.C7400d
            if (r0 == 0) goto L2c
            r0 = r8
            e.a.a0.o$d r0 = (p193e.p194a.p288a0.C7396o.C7400d) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f23537e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23537e = r1
            r0 = r9
            r8 = r0
            goto L36
        L2c:
            e.a.a0.o$d r0 = new e.a.a0.o$d
            r1 = r0
            r2 = r5
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L36:
            r0 = r8
            java.lang.Object r0 = r0.f23536d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f23537e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L67
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L5d
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r8 = r0
            goto L8f
        L5d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L67:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.a0.i r0 = r0.f23526a
            r9 = r0
            r0 = r8
            r1 = 1
            r0.f23537e = r1
            r0 = r9
            r1 = r6
            r2 = r8
            java.lang.Object r0 = r0.mo29696d(r1, r2)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r11
            if (r0 != r1) goto L8f
            r0 = r11
            return r0
        L8f:
            r0 = r8
            com.truecaller.spamcategories.SpamCategory r0 = (com.truecaller.spamcategories.SpamCategory) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto La0
            r0 = r8
            com.truecaller.data.entity.SpamCategoryModel r0 = p193e.p194a.p1049l4.C17422k.m16058q0(r0)
            r8 = r0
            goto La2
        La0:
            r0 = 0
            r8 = r0
        La2:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p288a0.C7396o.mo29692b(long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cd A[LOOP:0: B:25:0x00c2->B:27:0x00cd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e1 A[EDGE_INSN: B:30:0x00e1->B:28:0x00e1 ?: BREAK  , SYNTHETIC] */
    @Override // p193e.p194a.p288a0.AbstractC7395n
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29691c(com.truecaller.data.entity.Contact r6, s1.w.d<? super java.util.List<com.truecaller.data.entity.SpamCategoryModel>> r7) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p288a0.C7396o.mo29691c(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p288a0.AbstractC7395n
    /* renamed from: d */
    public List<SpamCategoryModel> mo29690d(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return (List) s1.a.a.a.v0.f.d.c3((f) null, new C7399c(contact, null), 1, (Object) null);
    }
}
