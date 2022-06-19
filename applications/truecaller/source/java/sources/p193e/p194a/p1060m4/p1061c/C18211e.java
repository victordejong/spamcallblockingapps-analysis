package p193e.p194a.p1060m4.p1061c;

import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18228e;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p424n.AbstractC8522a;
import p193e.p194a.p372b0.p424n.AbstractC8525d;
import p193e.p194a.p372b0.p424n.AbstractC8529e;
import p193e.p194a.p372b0.p424n.AbstractC8531g;
import p193e.p194a.p372b0.p424n.AbstractC8532h;
import p193e.p194a.p372b0.p424n.AbstractC8540i;
import p193e.p194a.p372b0.p424n.C8524c;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.q;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.m4.c.e */
/* loaded from: classes12-dex2jar.jar:e/a/m4/c/e.class */
public final class C18211e implements AbstractC8531g {

    /* renamed from: a */
    public final AbstractC18204c f51481a;

    /* renamed from: b */
    public final AbstractC8541a f51482b;

    /* renamed from: c */
    public final AbstractC8438a f51483c;

    /* renamed from: d */
    public final AbstractC8432l f51484d;

    /* renamed from: e */
    public final AbstractC8529e f51485e;

    /* renamed from: f */
    public final AbstractC8621z f51486f;

    /* renamed from: g */
    public final f f51487g;

    /* renamed from: h */
    public final f f51488h;

    /* renamed from: i */
    public final AbstractC18223b f51489i;

    /* renamed from: j */
    public final AbstractC18228e f51490j;

    @e(c = "com.truecaller.profile.data.ProfileRepositoryImpl", f = "ProfileRepositoryImpl.kt", l = {60, 61}, m = "fetchProfile")
    /* renamed from: e.a.m4.c.e$a */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/e$a.class */
    public static final class C18212a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51491d;

        /* renamed from: e */
        public int f51492e;

        /* renamed from: g */
        public Object f51494g;

        /* renamed from: h */
        public Object f51495h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18212a(d dVar) {
            super(dVar);
            C18211e.this = r4;
        }

        /* renamed from: s */
        public final Object m15420s(Object obj) {
            this.f51491d = obj;
            this.f51492e |= Integer.MIN_VALUE;
            return C18211e.this.mo15426a(this);
        }
    }

    @e(c = "com.truecaller.profile.data.ProfileRepositoryImpl$fetchProfileAsync$1", f = "ProfileRepositoryImpl.kt", l = {49}, m = "invokeSuspend")
    /* renamed from: e.a.m4.c.e$b */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/e$b.class */
    public static final class C18213b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f51496e;

        /* renamed from: f */
        public int f51497f;

        /* renamed from: h */
        public final /* synthetic */ AbstractC8522a f51499h;

        @e(c = "com.truecaller.profile.data.ProfileRepositoryImpl$fetchProfileAsync$1$1", f = "ProfileRepositoryImpl.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.m4.c.e$b$a */
        /* loaded from: classes12-dex2jar.jar:e/a/m4/c/e$b$a.class */
        public static final class C18214a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ C8524c f51501f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18214a(C8524c c8524c, d dVar) {
                super(2, dVar);
                C18213b.this = r5;
                this.f51501f = c8524c;
            }

            /* renamed from: i */
            public final d<s> m15416i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C18214a(this.f51501f, dVar);
            }

            /* renamed from: k */
            public final Object m15415k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C18213b c18213b = C18213b.this;
                C8524c c8524c = this.f51501f;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                AbstractC8522a abstractC8522a = c18213b.f51499h;
                if (abstractC8522a != null) {
                    abstractC8522a.m28415a(c8524c);
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m15414s(Object obj) {
                C25225a.m3932a3(obj);
                AbstractC8522a abstractC8522a = C18213b.this.f51499h;
                if (abstractC8522a != null) {
                    abstractC8522a.m28415a(this.f51501f);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18213b(AbstractC8522a abstractC8522a, d dVar) {
            super(2, dVar);
            C18211e.this = r5;
            this.f51499h = abstractC8522a;
        }

        /* renamed from: i */
        public final d<s> m15419i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C18213b c18213b = new C18213b(this.f51499h, dVar);
            c18213b.f51496e = obj;
            return c18213b;
        }

        /* renamed from: k */
        public final Object m15418k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18213b c18213b = new C18213b(this.f51499h, dVar);
            c18213b.f51496e = obj;
            return c18213b.m15417s(s.a);
        }

        /* renamed from: s */
        public final Object m15417s(Object obj) {
            i0 i0Var;
            a aVar = a.a;
            int i = this.f51497f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i0Var = (i0) this.f51496e;
                C18211e c18211e = C18211e.this;
                this.f51496e = i0Var;
                this.f51497f = 1;
                obj = c18211e.mo15426a(this);
                if (obj == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i0Var = (i0) this.f51496e;
                C25225a.m3932a3(obj);
            }
            s1.a.a.a.v0.f.d.w2(i0Var, C18211e.this.f51487g, (j0) null, new C18214a((C8524c) obj, null), 2, (Object) null);
            return s.a;
        }
    }

    @e(c = "com.truecaller.profile.data.ProfileRepositoryImpl", f = "ProfileRepositoryImpl.kt", l = {91, 93, 116}, m = "saveProfile")
    /* renamed from: e.a.m4.c.e$c */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/e$c.class */
    public static final class C18215c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51502d;

        /* renamed from: e */
        public int f51503e;

        /* renamed from: g */
        public Object f51505g;

        /* renamed from: h */
        public Object f51506h;

        /* renamed from: i */
        public Object f51507i;

        /* renamed from: j */
        public boolean f51508j;

        /* renamed from: k */
        public boolean f51509k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18215c(d dVar) {
            super(dVar);
            C18211e.this = r4;
        }

        /* renamed from: s */
        public final Object m15413s(Object obj) {
            this.f51502d = obj;
            this.f51503e |= Integer.MIN_VALUE;
            return C18211e.this.mo15425b(null, false, null, null, false, this);
        }
    }

    @e(c = "com.truecaller.profile.data.ProfileRepositoryImpl$saveProfileAsync$1", f = "ProfileRepositoryImpl.kt", l = {132}, m = "invokeSuspend")
    /* renamed from: e.a.m4.c.e$d */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/e$d.class */
    public static final class C18216d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f51510e;

        /* renamed from: f */
        public int f51511f;

        /* renamed from: h */
        public final /* synthetic */ AbstractC8525d f51513h;

        /* renamed from: i */
        public final /* synthetic */ boolean f51514i;

        /* renamed from: j */
        public final /* synthetic */ Long f51515j;

        /* renamed from: k */
        public final /* synthetic */ Map f51516k;

        /* renamed from: l */
        public final /* synthetic */ boolean f51517l;

        /* renamed from: m */
        public final /* synthetic */ AbstractC8540i f51518m;

        @e(c = "com.truecaller.profile.data.ProfileRepositoryImpl$saveProfileAsync$1$1", f = "ProfileRepositoryImpl.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.m4.c.e$d$a */
        /* loaded from: classes12-dex2jar.jar:e/a/m4/c/e$d$a.class */
        public static final class C18217a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ AbstractC8532h f51520f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C18217a(AbstractC8532h abstractC8532h, d dVar) {
                super(2, dVar);
                C18216d.this = r5;
                this.f51520f = abstractC8532h;
            }

            /* renamed from: i */
            public final d<s> m15409i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C18217a(this.f51520f, dVar);
            }

            /* renamed from: k */
            public final Object m15408k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C18216d c18216d = C18216d.this;
                AbstractC8532h abstractC8532h = this.f51520f;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                AbstractC8540i abstractC8540i = c18216d.f51518m;
                if (abstractC8540i != null) {
                    abstractC8540i.m28412a(abstractC8532h);
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m15407s(Object obj) {
                C25225a.m3932a3(obj);
                AbstractC8540i abstractC8540i = C18216d.this.f51518m;
                if (abstractC8540i != null) {
                    abstractC8540i.m28412a(this.f51520f);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18216d(AbstractC8525d abstractC8525d, boolean z, Long l, Map map, boolean z2, AbstractC8540i abstractC8540i, d dVar) {
            super(2, dVar);
            C18211e.this = r5;
            this.f51513h = abstractC8525d;
            this.f51514i = z;
            this.f51515j = l;
            this.f51516k = map;
            this.f51517l = z2;
            this.f51518m = abstractC8540i;
        }

        /* renamed from: i */
        public final d<s> m15412i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C18216d c18216d = new C18216d(this.f51513h, this.f51514i, this.f51515j, this.f51516k, this.f51517l, this.f51518m, dVar);
            c18216d.f51510e = obj;
            return c18216d;
        }

        /* renamed from: k */
        public final Object m15411k(Object obj, Object obj2) {
            return m15412i(obj, (d) obj2).m15410s(s.a);
        }

        /* renamed from: s */
        public final Object m15410s(Object obj) {
            Object obj2;
            i0 i0Var;
            a aVar = a.a;
            int i = this.f51511f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i0 i0Var2 = (i0) this.f51510e;
                C18211e c18211e = C18211e.this;
                AbstractC8525d abstractC8525d = this.f51513h;
                boolean z = this.f51514i;
                Long l = this.f51515j;
                Map<String, String> map = this.f51516k;
                boolean z2 = this.f51517l;
                this.f51510e = i0Var2;
                this.f51511f = 1;
                obj2 = c18211e.mo15425b(abstractC8525d, z, l, map, z2, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                i0Var = i0Var2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i0Var = (i0) this.f51510e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            s1.a.a.a.v0.f.d.w2(i0Var, C18211e.this.f51487g, (j0) null, new C18217a((AbstractC8532h) obj2, null), 2, (Object) null);
            return s.a;
        }
    }

    @Inject
    public C18211e(AbstractC18204c abstractC18204c, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC8432l abstractC8432l, AbstractC8529e abstractC8529e, AbstractC8621z abstractC8621z, @Named("UI") f fVar, @Named("IO") f fVar2, AbstractC18223b abstractC18223b, AbstractC18228e abstractC18228e) {
        l.e(abstractC18204c, "networkHelper");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8529e, "profileRefreshNotifier");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(fVar, "ui");
        l.e(fVar2, "async");
        l.e(abstractC18223b, "bizProfileLocalFileManager");
        l.e(abstractC18228e, "bizProfileRefreshNotifier");
        this.f51481a = abstractC18204c;
        this.f51482b = abstractC8541a;
        this.f51483c = abstractC8438a;
        this.f51484d = abstractC8432l;
        this.f51485e = abstractC8529e;
        this.f51486f = abstractC8621z;
        this.f51487g = fVar;
        this.f51488h = fVar2;
        this.f51489i = abstractC18223b;
        this.f51490j = abstractC18228e;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0189  */
    @Override // p193e.p194a.p372b0.p424n.AbstractC8531g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15426a(s1.w.d<? super p193e.p194a.p372b0.p424n.C8524c> r18) {
        /*
            Method dump skipped, instructions count: 968
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1060m4.p1061c.C18211e.mo15426a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x04a0  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02fd  */
    @Override // p193e.p194a.p372b0.p424n.AbstractC8531g
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15425b(p193e.p194a.p372b0.p424n.AbstractC8525d r18, boolean r19, java.lang.Long r20, java.util.Map<java.lang.String, java.lang.String> r21, boolean r22, s1.w.d<? super p193e.p194a.p372b0.p424n.AbstractC8532h> r23) {
        /*
            Method dump skipped, instructions count: 1222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1060m4.p1061c.C18211e.mo15425b(e.a.b0.n.d, boolean, java.lang.Long, java.util.Map, boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p372b0.p424n.AbstractC8531g
    /* renamed from: c */
    public void mo15424c(AbstractC8525d abstractC8525d, boolean z, Long l, Map<String, String> map, boolean z2, AbstractC8540i abstractC8540i) {
        l.e(abstractC8525d, "profileImageAction");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f51488h, (j0) null, new C18216d(abstractC8525d, z, l, map, z2, abstractC8540i, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p372b0.p424n.AbstractC8531g
    /* renamed from: d */
    public void mo15423d(AbstractC8522a abstractC8522a) {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f51488h, (j0) null, new C18213b(abstractC8522a, null), 2, (Object) null);
    }

    /* renamed from: e */
    public final Long m15422e(Long l, boolean z) {
        if (!z) {
            String string = this.f51482b.getString("profileTag");
            l = string != null ? q.j(string) : null;
        }
        return l;
    }

    /* renamed from: f */
    public final String m15421f(String str) {
        String str2 = str;
        if (r.y(str, "+", false, 2)) {
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            str2 = str.substring(1);
            l.d(str2, "(this as java.lang.String).substring(startIndex)");
        }
        return str2;
    }
}
