package p193e.p194a.p291a3;

import com.truecaller.blocking.FilterMatch;
import com.truecaller.blocking.FiltersContract;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p837h0.AbstractC14835j;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a3.b */
/* loaded from: classes6-dex2jar.jar:e/a/a3/b.class */
public final class C7420b implements AbstractC7419a {

    /* renamed from: a */
    public final a<AbstractC14835j> f23564a;

    /* renamed from: b */
    public final f f23565b;

    @e(c = "com.truecaller.blocking.BlockManagerImpl$blockNumbers$2", f = "BlockManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a3.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a3/b$a.class */
    public static final class C7421a extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f23567f;

        /* renamed from: g */
        public final /* synthetic */ String f23568g;

        /* renamed from: h */
        public final /* synthetic */ String f23569h;

        /* renamed from: i */
        public final /* synthetic */ String f23570i;

        /* renamed from: j */
        public final /* synthetic */ boolean f23571j;

        /* renamed from: k */
        public final /* synthetic */ FiltersContract.Filters.WildCardType f23572k;

        /* renamed from: l */
        public final /* synthetic */ FiltersContract.Filters.EntityType f23573l;

        /* renamed from: m */
        public final /* synthetic */ Long f23574m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7421a(List list, String str, String str2, String str3, boolean z, FiltersContract.Filters.WildCardType wildCardType, FiltersContract.Filters.EntityType entityType, Long l, d dVar) {
            super(2, dVar);
            C7420b.this = r5;
            this.f23567f = list;
            this.f23568g = str;
            this.f23569h = str2;
            this.f23570i = str3;
            this.f23571j = z;
            this.f23572k = wildCardType;
            this.f23573l = entityType;
            this.f23574m = l;
        }

        /* renamed from: i */
        public final d<s> m29660i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7421a(this.f23567f, this.f23568g, this.f23569h, this.f23570i, this.f23571j, this.f23572k, this.f23573l, this.f23574m, dVar);
        }

        /* renamed from: k */
        public final Object m29659k(Object obj, Object obj2) {
            return m29660i(obj, (d) obj2).m29658s(s.a);
        }

        /* renamed from: s */
        public final Object m29658s(Object obj) {
            C25225a.m3932a3(obj);
            return new Integer(((AbstractC14835j) C7420b.this.f23564a.get()).mo19587i(this.f23567f, this.f23568g, this.f23569h, this.f23570i, this.f23571j, this.f23572k, this.f23573l, this.f23574m));
        }
    }

    @e(c = "com.truecaller.blocking.BlockManagerImpl$blockNumbersAndNames$2", f = "BlockManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a3.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/a3/b$b.class */
    public static final class C7422b extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f23576f;

        /* renamed from: g */
        public final /* synthetic */ String f23577g;

        /* renamed from: h */
        public final /* synthetic */ String f23578h;

        /* renamed from: i */
        public final /* synthetic */ boolean f23579i;

        /* renamed from: j */
        public final /* synthetic */ FiltersContract.Filters.WildCardType f23580j;

        /* renamed from: k */
        public final /* synthetic */ FiltersContract.Filters.EntityType f23581k;

        /* renamed from: l */
        public final /* synthetic */ Long f23582l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7422b(List list, String str, String str2, boolean z, FiltersContract.Filters.WildCardType wildCardType, FiltersContract.Filters.EntityType entityType, Long l, d dVar) {
            super(2, dVar);
            C7420b.this = r5;
            this.f23576f = list;
            this.f23577g = str;
            this.f23578h = str2;
            this.f23579i = z;
            this.f23580j = wildCardType;
            this.f23581k = entityType;
            this.f23582l = l;
        }

        /* renamed from: i */
        public final d<s> m29657i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7422b(this.f23576f, this.f23577g, this.f23578h, this.f23579i, this.f23580j, this.f23581k, this.f23582l, dVar);
        }

        /* renamed from: k */
        public final Object m29656k(Object obj, Object obj2) {
            return m29657i(obj, (d) obj2).m29655s(s.a);
        }

        /* renamed from: s */
        public final Object m29655s(Object obj) {
            C25225a.m3932a3(obj);
            return new Integer(((AbstractC14835j) C7420b.this.f23564a.get()).mo19588h(this.f23576f, this.f23577g, this.f23578h, this.f23579i, this.f23580j, this.f23581k, this.f23582l));
        }
    }

    @e(c = "com.truecaller.blocking.BlockManagerImpl$findAllFilterActionsForNumber$2", f = "BlockManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a3.b$c */
    /* loaded from: classes6-dex2jar.jar:e/a/a3/b$c.class */
    public static final class C7423c extends i implements p<i0, d<? super Collection<FilterMatch>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f23584f;

        /* renamed from: g */
        public final /* synthetic */ String f23585g;

        /* renamed from: h */
        public final /* synthetic */ boolean f23586h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7423c(String str, String str2, boolean z, d dVar) {
            super(2, dVar);
            C7420b.this = r5;
            this.f23584f = str;
            this.f23585g = str2;
            this.f23586h = z;
        }

        /* renamed from: i */
        public final d<s> m29654i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7423c(this.f23584f, this.f23585g, this.f23586h, dVar);
        }

        /* renamed from: k */
        public final Object m29653k(Object obj, Object obj2) {
            return m29654i(obj, (d) obj2).m29652s(s.a);
        }

        /* renamed from: s */
        public final Object m29652s(Object obj) {
            C25225a.m3932a3(obj);
            return ((AbstractC14835j) C7420b.this.f23564a.get()).mo19586j(this.f23584f, this.f23585g, this.f23586h);
        }
    }

    @e(c = "com.truecaller.blocking.BlockManagerImpl", f = "BlockManagerImpl.kt", l = {22}, m = "findFilterActionForNumber")
    /* renamed from: e.a.a3.b$d */
    /* loaded from: classes6-dex2jar.jar:e/a/a3/b$d.class */
    public static final class C7424d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23587d;

        /* renamed from: e */
        public int f23588e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7424d(d dVar) {
            super(dVar);
            C7420b.this = r4;
        }

        /* renamed from: s */
        public final Object m29651s(Object obj) {
            this.f23587d = obj;
            this.f23588e |= Integer.MIN_VALUE;
            return C7420b.this.mo29665a(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.blocking.BlockManagerImpl$findFilterActionForNumber$2", f = "BlockManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a3.b$e */
    /* loaded from: classes6-dex2jar.jar:e/a/a3/b$e.class */
    public static final class C7425e extends i implements p<i0, d<? super FilterMatch>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f23591f;

        /* renamed from: g */
        public final /* synthetic */ String f23592g;

        /* renamed from: h */
        public final /* synthetic */ boolean f23593h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7425e(String str, String str2, boolean z, d dVar) {
            super(2, dVar);
            C7420b.this = r5;
            this.f23591f = str;
            this.f23592g = str2;
            this.f23593h = z;
        }

        /* renamed from: i */
        public final d<s> m29650i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7425e(this.f23591f, this.f23592g, this.f23593h, dVar);
        }

        /* renamed from: k */
        public final Object m29649k(Object obj, Object obj2) {
            return m29650i(obj, (d) obj2).m29648s(s.a);
        }

        /* renamed from: s */
        public final Object m29648s(Object obj) {
            C25225a.m3932a3(obj);
            return ((AbstractC14835j) C7420b.this.f23564a.get()).mo19590f(this.f23591f, null, null, this.f23592g, false, this.f23593h);
        }
    }

    @e(c = "com.truecaller.blocking.BlockManagerImpl$unblockNumbers$2", f = "BlockManagerImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a3.b$f */
    /* loaded from: classes6-dex2jar.jar:e/a/a3/b$f.class */
    public static final class C7426f extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f23595f;

        /* renamed from: g */
        public final /* synthetic */ String f23596g;

        /* renamed from: h */
        public final /* synthetic */ String f23597h;

        /* renamed from: i */
        public final /* synthetic */ String f23598i;

        /* renamed from: j */
        public final /* synthetic */ boolean f23599j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7426f(List list, String str, String str2, String str3, boolean z, d dVar) {
            super(2, dVar);
            C7420b.this = r5;
            this.f23595f = list;
            this.f23596g = str;
            this.f23597h = str2;
            this.f23598i = str3;
            this.f23599j = z;
        }

        /* renamed from: i */
        public final d<s> m29647i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7426f(this.f23595f, this.f23596g, this.f23597h, this.f23598i, this.f23599j, dVar);
        }

        /* renamed from: k */
        public final Object m29646k(Object obj, Object obj2) {
            return m29647i(obj, (d) obj2).m29645s(s.a);
        }

        /* renamed from: s */
        public final Object m29645s(Object obj) {
            C25225a.m3932a3(obj);
            return new Integer(((AbstractC14835j) C7420b.this.f23564a.get()).mo19594b(this.f23595f, this.f23596g, null, this.f23597h, this.f23598i, this.f23599j));
        }
    }

    @Inject
    public C7420b(a<AbstractC14835j> aVar, @Named("IO") f fVar) {
        l.e(aVar, "filterManager");
        l.e(fVar, "asyncContext");
        this.f23564a = aVar;
        this.f23565b = fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    @Override // p193e.p194a.p291a3.AbstractC7419a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29665a(java.lang.String r9, java.lang.String r10, boolean r11, s1.w.d<? super com.truecaller.blocking.FilterMatch> r12) {
        /*
            r8 = this;
            r0 = r12
            boolean r0 = r0 instanceof p193e.p194a.p291a3.C7420b.C7424d
            if (r0 == 0) goto L2f
            r0 = r12
            e.a.a3.b$d r0 = (p193e.p194a.p291a3.C7420b.C7424d) r0
            r13 = r0
            r0 = r13
            int r0 = r0.f23588e
            r14 = r0
            r0 = r14
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2f
            r0 = r13
            r1 = r14
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23588e = r1
            r0 = r13
            r12 = r0
            goto L3b
        L2f:
            e.a.a3.b$d r0 = new e.a.a3.b$d
            r1 = r0
            r2 = r8
            r3 = r12
            r1.<init>(r3)
            r12 = r0
        L3b:
            r0 = r12
            java.lang.Object r0 = r0.f23587d
            r13 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r15 = r0
            r0 = r12
            int r0 = r0.f23588e
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L6e
            r0 = r14
            r1 = 1
            if (r0 != r1) goto L64
            r0 = r13
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r13
            r9 = r0
            goto La0
        L64:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6e:
            r0 = r13
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            s1.w.f r0 = r0.f23565b
            r13 = r0
            e.a.a3.b$e r0 = new e.a.a3.b$e
            r1 = r0
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = 0
            r1.<init>(r3, r4, r5, r6)
            r9 = r0
            r0 = r12
            r1 = 1
            r0.f23588e = r1
            r0 = r13
            r1 = r9
            r2 = r12
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = r15
            if (r0 != r1) goto La0
            r0 = r15
            return r0
        La0:
            r0 = r9
            java.lang.String r1 = "withContext(asyncContext… adjustForSettings)\n    }"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p291a3.C7420b.mo29665a(java.lang.String, java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p291a3.AbstractC7419a
    /* renamed from: b */
    public Object mo29664b(List<k<String, Integer>> list, String str, String str2, String str3, FiltersContract.Filters.EntityType entityType, boolean z, FiltersContract.Filters.WildCardType wildCardType, Long l, d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f23565b, new C7421a(list, str, str2, str3, z, wildCardType, entityType, l, null), dVar);
    }

    @Override // p193e.p194a.p291a3.AbstractC7419a
    /* renamed from: c */
    public Object mo29663c(List<k<String, Integer>> list, String str, String str2, String str3, boolean z, d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f23565b, new C7426f(list, str, str2, str3, z, null), dVar);
    }

    @Override // p193e.p194a.p291a3.AbstractC7419a
    /* renamed from: d */
    public Object mo29662d(List<k<k<String, String>, Integer>> list, String str, String str2, boolean z, FiltersContract.Filters.WildCardType wildCardType, FiltersContract.Filters.EntityType entityType, Long l, d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f23565b, new C7422b(list, str, str2, z, wildCardType, entityType, l, null), dVar);
    }

    @Override // p193e.p194a.p291a3.AbstractC7419a
    /* renamed from: e */
    public Object mo29661e(String str, String str2, boolean z, d<? super Collection<FilterMatch>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f23565b, new C7423c(str, str2, z, null), dVar);
    }
}
