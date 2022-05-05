package p081h.p203i.p401g;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p081h.p203i.p401g.AbstractC10219a;
import p081h.p203i.p401g.C10247f1;
import p081h.p203i.p401g.C10418l;
/* renamed from: h.i.g.m */
/* loaded from: classes2-dex2jar.jar:h/i/g/m.class */
public final class C10439m extends AbstractC10219a {

    /* renamed from: c */
    public final C10418l.C10420b f23765c;

    /* renamed from: d */
    public final C10465u<C10418l.C10428g> f23766d;

    /* renamed from: e */
    public final C10418l.C10428g[] f23767e;

    /* renamed from: f */
    public final C10247f1 f23768f;

    /* renamed from: g */
    public int f23769g = -1;

    /* renamed from: h.i.g.m$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/m$a.class */
    public class C10440a extends AbstractC10235c<C10439m> {
        public C10440a() {
        }

        @Override // p081h.p203i.p401g.AbstractC10462s0
        /* renamed from: a */
        public C10439m mo11788a(AbstractC10267h hVar, C10459r rVar) throws C10222a0 {
            C10441b b = C10439m.m11831b(C10439m.this.f23765c);
            try {
                b.mo11837a(hVar, rVar);
                return b.mo11825E();
            } catch (C10222a0 e) {
                e.m13078a(b.mo11825E());
                throw e;
            } catch (IOException e2) {
                C10222a0 a0Var = new C10222a0(e2);
                a0Var.m13078a(b.mo11825E());
                throw a0Var;
            }
        }
    }

    /* renamed from: h.i.g.m$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/m$b.class */
    public static final class C10441b extends AbstractC10219a.AbstractC10220a<C10441b> {

        /* renamed from: a */
        public final C10418l.C10420b f23771a;

        /* renamed from: b */
        public C10465u<C10418l.C10428g> f23772b;

        /* renamed from: c */
        public final C10418l.C10428g[] f23773c;

        /* renamed from: d */
        public C10247f1 f23774d;

        public C10441b(C10418l.C10420b bVar) {
            this.f23771a = bVar;
            this.f23772b = C10465u.m11747j();
            this.f23774d = C10247f1.m13020c();
            this.f23773c = new C10418l.C10428g[bVar.mo11841d().m12670B()];
            if (bVar.m11908i().m11996v()) {
                m11819g();
            }
        }

        public /* synthetic */ C10441b(C10418l.C10420b bVar, C10440a aVar) {
            this(bVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        /* renamed from: E */
        public C10439m mo11825E() {
            this.f23772b.m11750g();
            C10418l.C10420b bVar = this.f23771a;
            C10465u<C10418l.C10428g> uVar = this.f23772b;
            C10418l.C10428g[] gVarArr = this.f23773c;
            return new C10439m(bVar, uVar, (C10418l.C10428g[]) Arrays.copyOf(gVarArr, gVarArr.length), this.f23774d);
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public C10441b mo11672a(C10247f1 f1Var) {
            this.f23774d = f1Var;
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public C10441b mo11824a(AbstractC10287j0 j0Var) {
            if (!(j0Var instanceof C10439m)) {
                return (C10441b) super.mo11824a(j0Var);
            }
            C10439m mVar = (C10439m) j0Var;
            if (mVar.f23765c == this.f23771a) {
                m11820f();
                this.f23772b.m11775a(mVar.f23766d);
                mo11668b(mVar.f23768f);
                int i = 0;
                while (true) {
                    C10418l.C10428g[] gVarArr = this.f23773c;
                    if (i >= gVarArr.length) {
                        return this;
                    }
                    if (gVarArr[i] == null) {
                        gVarArr[i] = mVar.f23767e[i];
                    } else if (!(mVar.f23767e[i] == null || this.f23773c[i] == mVar.f23767e[i])) {
                        this.f23772b.m11778a((C10465u<C10418l.C10428g>) this.f23773c[i]);
                        this.f23773c[i] = mVar.f23767e[i];
                    }
                    i++;
                }
            } else {
                throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public C10441b mo11656a(C10418l.C10428g gVar) {
            m11822d(gVar);
            if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                return new C10441b(gVar.m11878m());
            }
            throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public C10441b mo11655a(C10418l.C10428g gVar, Object obj) {
            m11822d(gVar);
            m11820f();
            if (gVar.m11876o() == C10418l.C10428g.EnumC10430b.ENUM) {
                m11823c(gVar, obj);
            }
            C10418l.C10435k f = gVar.m11885f();
            if (f != null) {
                int g = f.m11846g();
                C10418l.C10428g gVar2 = this.f23773c[g];
                if (!(gVar2 == null || gVar2 == gVar)) {
                    this.f23772b.m11778a((C10465u<C10418l.C10428g>) gVar2);
                }
                this.f23773c[g] = gVar;
            } else if (gVar.mo11845a().m11857j() == C10418l.C10431h.EnumC10432a.PROTO3 && !gVar.mo11731X() && gVar.m11879l() != C10418l.C10428g.EnumC10429a.MESSAGE && obj.equals(gVar.m11883h())) {
                this.f23772b.m11778a((C10465u<C10418l.C10428g>) gVar);
                return this;
            }
            this.f23772b.m11764b((C10465u<C10418l.C10428g>) gVar, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: a */
        public Map<C10418l.C10428g, Object> mo11648a() {
            return this.f23772b.m11785a();
        }

        @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
        /* renamed from: b  reason: avoid collision after fix types in other method */
        public C10441b mo11668b(C10247f1 f1Var) {
            C10247f1.C10249b b = C10247f1.m13022b(this.f23774d);
            b.m13008b(f1Var);
            this.f23774d = b.build();
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: b */
        public C10441b mo11652b(C10418l.C10428g gVar, Object obj) {
            m11822d(gVar);
            m11820f();
            this.f23772b.m11777a((C10465u<C10418l.C10428g>) gVar, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public boolean mo11645b(C10418l.C10428g gVar) {
            m11822d(gVar);
            return this.f23772b.m11757c((C10465u<C10418l.C10428g>) gVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        public C10439m build() {
            if (isInitialized()) {
                return mo11825E();
            }
            C10418l.C10420b bVar = this.f23771a;
            C10465u<C10418l.C10428g> uVar = this.f23772b;
            C10418l.C10428g[] gVarArr = this.f23773c;
            throw AbstractC10219a.AbstractC10220a.m13080b(new C10439m(bVar, uVar, (C10418l.C10428g[]) Arrays.copyOf(gVarArr, gVarArr.length), this.f23774d));
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: c */
        public C10418l.C10420b mo11666c() {
            return this.f23771a;
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: c */
        public Object mo11644c(C10418l.C10428g gVar) {
            m11822d(gVar);
            Object b = this.f23772b.m11765b((C10465u<C10418l.C10428g>) gVar);
            Object obj = b;
            if (b == null) {
                obj = gVar.mo11731X() ? Collections.emptyList() : gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE ? C10439m.m11835a(gVar.m11878m()) : gVar.m11883h();
            }
            return obj;
        }

        /* renamed from: c */
        public final void m11823c(C10418l.C10428g gVar, Object obj) {
            if (gVar.mo11731X()) {
                for (Object obj2 : (List) obj) {
                    m11821d(gVar, obj2);
                }
                return;
            }
            m11821d(gVar, obj);
        }

        @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
        public C10441b clone() {
            C10441b bVar = new C10441b(this.f23771a);
            bVar.f23772b.m11775a(this.f23772b);
            bVar.mo11668b(this.f23774d);
            C10418l.C10428g[] gVarArr = this.f23773c;
            System.arraycopy(gVarArr, 0, bVar.f23773c, 0, gVarArr.length);
            return bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public C10247f1 mo11664d() {
            return this.f23774d;
        }

        /* renamed from: d */
        public final void m11822d(C10418l.C10428g gVar) {
            if (gVar.m11884g() != this.f23771a) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* renamed from: d */
        public final void m11821d(C10418l.C10428g gVar, Object obj) {
            C10516z.m11545a(obj);
            if (!(obj instanceof C10418l.C10427f)) {
                throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
            }
        }

        /* renamed from: f */
        public final void m11820f() {
            if (this.f23772b.m11754d()) {
                this.f23772b = this.f23772b.clone();
            }
        }

        /* renamed from: g */
        public final void m11819g() {
            for (C10418l.C10428g gVar : this.f23771a.m11911f()) {
                if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                    this.f23772b.m11764b((C10465u<C10418l.C10428g>) gVar, C10439m.m11835a(gVar.m11878m()));
                } else {
                    this.f23772b.m11764b((C10465u<C10418l.C10428g>) gVar, gVar.m11883h());
                }
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10442m0
        public boolean isInitialized() {
            return C10439m.m11834a(this.f23771a, this.f23772b);
        }
    }

    public C10439m(C10418l.C10420b bVar, C10465u<C10418l.C10428g> uVar, C10418l.C10428g[] gVarArr, C10247f1 f1Var) {
        this.f23765c = bVar;
        this.f23766d = uVar;
        this.f23767e = gVarArr;
        this.f23768f = f1Var;
    }

    /* renamed from: a */
    public static C10439m m11835a(C10418l.C10420b bVar) {
        return new C10439m(bVar, C10465u.m11749h(), new C10418l.C10428g[bVar.mo11841d().m12670B()], C10247f1.m13020c());
    }

    /* renamed from: a */
    public static boolean m11834a(C10418l.C10420b bVar, C10465u<C10418l.C10428g> uVar) {
        for (C10418l.C10428g gVar : bVar.m11911f()) {
            if (gVar.m11871t() && !uVar.m11757c((C10465u<C10418l.C10428g>) gVar)) {
                return false;
            }
        }
        return uVar.m11752e();
    }

    /* renamed from: b */
    public static C10441b m11831b(C10418l.C10420b bVar) {
        return new C10441b(bVar, null);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: a */
    public Map<C10418l.C10428g, Object> mo11648a() {
        return this.f23766d.m11785a();
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: a */
    public void mo11692a(AbstractC10274i iVar) throws IOException {
        if (this.f23765c.m11908i().m11995w()) {
            this.f23766d.m11784a(iVar);
            this.f23768f.m13021b(iVar);
            return;
        }
        this.f23766d.m11767b(iVar);
        this.f23768f.mo11692a(iVar);
    }

    /* renamed from: a */
    public final void m11833a(C10418l.C10428g gVar) {
        if (gVar.m11884g() != this.f23765c) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: b */
    public C10439m mo11818b() {
        return m11835a(this.f23765c);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: b */
    public boolean mo11645b(C10418l.C10428g gVar) {
        m11833a(gVar);
        return this.f23766d.m11757c((C10465u<C10418l.C10428g>) gVar);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: c */
    public C10418l.C10420b mo11666c() {
        return this.f23765c;
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: c */
    public Object mo11644c(C10418l.C10428g gVar) {
        m11833a(gVar);
        Object b = this.f23766d.m11765b((C10465u<C10418l.C10428g>) gVar);
        Object obj = b;
        if (b == null) {
            obj = gVar.mo11731X() ? Collections.emptyList() : gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE ? m11835a(gVar.m11878m()) : gVar.m11883h();
        }
        return obj;
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: d */
    public C10247f1 mo11664d() {
        return this.f23768f;
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: e */
    public C10441b mo11827e() {
        return new C10441b(this.f23765c, null);
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: f */
    public C10441b mo11826f() {
        return mo11827e().mo11824a((AbstractC10287j0) this);
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: h */
    public int mo11678h() {
        int i;
        int i2;
        int i3 = this.f23769g;
        if (i3 != -1) {
            return i3;
        }
        if (this.f23765c.m11908i().m11995w()) {
            i2 = this.f23766d.m11768b();
            i = this.f23768f.m13023b();
        } else {
            i2 = this.f23766d.m11759c();
            i = this.f23768f.mo11678h();
        }
        int i4 = i2 + i;
        this.f23769g = i4;
        return i4;
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
    public boolean isInitialized() {
        return m11834a(this.f23765c, this.f23766d);
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: j */
    public AbstractC10462s0<C10439m> mo11677j() {
        return new C10440a();
    }
}
