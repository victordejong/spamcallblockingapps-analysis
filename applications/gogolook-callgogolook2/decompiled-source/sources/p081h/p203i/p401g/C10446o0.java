package p081h.p203i.p401g;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p081h.p203i.p401g.AbstractC10287j0;
import p081h.p203i.p401g.C10247f1;
import p081h.p203i.p401g.C10406k1;
import p081h.p203i.p401g.C10418l;
import p081h.p203i.p401g.C10452p;
/* renamed from: h.i.g.o0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/o0.class */
public class C10446o0 {

    /* renamed from: h.i.g.o0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/o0$a.class */
    public static /* synthetic */ class C10447a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f23775a = new int[C10418l.C10428g.EnumC10430b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f23775a[C10418l.C10428g.EnumC10430b.GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f23775a[C10418l.C10428g.EnumC10430b.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f23775a[C10418l.C10428g.EnumC10430b.ENUM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: h.i.g.o0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/o0$b.class */
    public static class C10448b implements AbstractC10450d {

        /* renamed from: a */
        public final AbstractC10287j0.AbstractC10288a f23776a;

        public C10448b(AbstractC10287j0.AbstractC10288a aVar) {
            this.f23776a = aVar;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public C10406k1.EnumC10414d mo11802a(C10418l.C10428g gVar) {
            if (gVar.m11870u()) {
                return C10406k1.EnumC10414d.f23659b;
            }
            gVar.mo11731X();
            return C10406k1.EnumC10414d.f23658a;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public AbstractC10450d.EnumC10451a mo11805a() {
            return AbstractC10450d.EnumC10451a.MESSAGE;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public AbstractC10450d mo11801a(C10418l.C10428g gVar, Object obj) {
            this.f23776a.mo11655a(gVar, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public C10452p.C10454b mo11800a(C10452p pVar, C10418l.C10420b bVar, int i) {
            return pVar.m11795a(bVar, i);
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public Object mo11804a(AbstractC10253g gVar, C10459r rVar, C10418l.C10428g gVar2, AbstractC10287j0 j0Var) throws IOException {
            AbstractC10287j0 j0Var2;
            AbstractC10287j0.AbstractC10288a e = j0Var != null ? j0Var.mo11827e() : this.f23776a.mo11656a(gVar2);
            if (!gVar2.mo11731X() && (j0Var2 = (AbstractC10287j0) m11807c(gVar2)) != null) {
                e.mo11824a(j0Var2);
            }
            e.mo12763a(gVar, rVar);
            return e.mo11825E();
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public Object mo11803a(AbstractC10267h hVar, C10459r rVar, C10418l.C10428g gVar, AbstractC10287j0 j0Var) throws IOException {
            AbstractC10287j0 j0Var2;
            AbstractC10287j0.AbstractC10288a e = j0Var != null ? j0Var.mo11827e() : this.f23776a.mo11656a(gVar);
            if (!gVar.mo11731X() && (j0Var2 = (AbstractC10287j0) m11807c(gVar)) != null) {
                e.mo11824a(j0Var2);
            }
            hVar.mo12923a(gVar.getNumber(), e, rVar);
            return e.mo11825E();
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: b */
        public AbstractC10450d mo11797b(C10418l.C10428g gVar, Object obj) {
            this.f23776a.mo11652b(gVar, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: b */
        public Object mo11799b(AbstractC10267h hVar, C10459r rVar, C10418l.C10428g gVar, AbstractC10287j0 j0Var) throws IOException {
            AbstractC10287j0 j0Var2;
            AbstractC10287j0.AbstractC10288a e = j0Var != null ? j0Var.mo11827e() : this.f23776a.mo11656a(gVar);
            if (!gVar.mo11731X() && (j0Var2 = (AbstractC10287j0) m11807c(gVar)) != null) {
                e.mo11824a(j0Var2);
            }
            hVar.mo12922a(e, rVar);
            return e.mo11825E();
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: b */
        public boolean mo11798b(C10418l.C10428g gVar) {
            return this.f23776a.mo11645b(gVar);
        }

        /* renamed from: c */
        public Object m11807c(C10418l.C10428g gVar) {
            return this.f23776a.mo11644c(gVar);
        }
    }

    /* renamed from: h.i.g.o0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/o0$c.class */
    public static class C10449c implements AbstractC10450d {

        /* renamed from: a */
        public final C10465u<C10418l.C10428g> f23777a;

        public C10449c(C10465u<C10418l.C10428g> uVar) {
            this.f23777a = uVar;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public C10406k1.EnumC10414d mo11802a(C10418l.C10428g gVar) {
            return gVar.m11870u() ? C10406k1.EnumC10414d.f23659b : C10406k1.EnumC10414d.f23658a;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public AbstractC10450d.EnumC10451a mo11805a() {
            return AbstractC10450d.EnumC10451a.EXTENSION_SET;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public AbstractC10450d mo11801a(C10418l.C10428g gVar, Object obj) {
            this.f23777a.m11764b((C10465u<C10418l.C10428g>) gVar, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public C10452p.C10454b mo11800a(C10452p pVar, C10418l.C10420b bVar, int i) {
            return pVar.m11795a(bVar, i);
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public Object mo11804a(AbstractC10253g gVar, C10459r rVar, C10418l.C10428g gVar2, AbstractC10287j0 j0Var) throws IOException {
            AbstractC10287j0 j0Var2;
            AbstractC10287j0.AbstractC10288a e = j0Var.mo11827e();
            if (!gVar2.mo11731X() && (j0Var2 = (AbstractC10287j0) m11806c(gVar2)) != null) {
                e.mo11824a(j0Var2);
            }
            e.mo12763a(gVar, rVar);
            return e.mo11825E();
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: a */
        public Object mo11803a(AbstractC10267h hVar, C10459r rVar, C10418l.C10428g gVar, AbstractC10287j0 j0Var) throws IOException {
            AbstractC10287j0 j0Var2;
            AbstractC10287j0.AbstractC10288a e = j0Var.mo11827e();
            if (!gVar.mo11731X() && (j0Var2 = (AbstractC10287j0) m11806c(gVar)) != null) {
                e.mo11824a(j0Var2);
            }
            hVar.mo12923a(gVar.getNumber(), e, rVar);
            return e.mo11825E();
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: b */
        public AbstractC10450d mo11797b(C10418l.C10428g gVar, Object obj) {
            this.f23777a.m11777a((C10465u<C10418l.C10428g>) gVar, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: b */
        public Object mo11799b(AbstractC10267h hVar, C10459r rVar, C10418l.C10428g gVar, AbstractC10287j0 j0Var) throws IOException {
            AbstractC10287j0 j0Var2;
            AbstractC10287j0.AbstractC10288a e = j0Var.mo11827e();
            if (!gVar.mo11731X() && (j0Var2 = (AbstractC10287j0) m11806c(gVar)) != null) {
                e.mo11824a(j0Var2);
            }
            hVar.mo12922a(e, rVar);
            return e.mo11825E();
        }

        @Override // p081h.p203i.p401g.C10446o0.AbstractC10450d
        /* renamed from: b */
        public boolean mo11798b(C10418l.C10428g gVar) {
            return this.f23777a.m11757c((C10465u<C10418l.C10428g>) gVar);
        }

        /* renamed from: c */
        public Object m11806c(C10418l.C10428g gVar) {
            return this.f23777a.m11765b((C10465u<C10418l.C10428g>) gVar);
        }
    }

    /* renamed from: h.i.g.o0$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/o0$d.class */
    public interface AbstractC10450d {

        /* renamed from: h.i.g.o0$d$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/o0$d$a.class */
        public enum EnumC10451a {
            MESSAGE,
            EXTENSION_SET
        }

        /* renamed from: a */
        C10406k1.EnumC10414d mo11802a(C10418l.C10428g gVar);

        /* renamed from: a */
        EnumC10451a mo11805a();

        /* renamed from: a */
        AbstractC10450d mo11801a(C10418l.C10428g gVar, Object obj);

        /* renamed from: a */
        C10452p.C10454b mo11800a(C10452p pVar, C10418l.C10420b bVar, int i);

        /* renamed from: a */
        Object mo11804a(AbstractC10253g gVar, C10459r rVar, C10418l.C10428g gVar2, AbstractC10287j0 j0Var) throws IOException;

        /* renamed from: a */
        Object mo11803a(AbstractC10267h hVar, C10459r rVar, C10418l.C10428g gVar, AbstractC10287j0 j0Var) throws IOException;

        /* renamed from: b */
        AbstractC10450d mo11797b(C10418l.C10428g gVar, Object obj);

        /* renamed from: b */
        Object mo11799b(AbstractC10267h hVar, C10459r rVar, C10418l.C10428g gVar, AbstractC10287j0 j0Var) throws IOException;

        /* renamed from: b */
        boolean mo11798b(C10418l.C10428g gVar);
    }

    /* renamed from: a */
    public static int m11813a(AbstractC10287j0 j0Var, Map<C10418l.C10428g, Object> map) {
        boolean w = j0Var.mo11666c().m11908i().m11995w();
        int i = 0;
        for (Map.Entry<C10418l.C10428g, Object> entry : map.entrySet()) {
            C10418l.C10428g key = entry.getKey();
            Object value = entry.getValue();
            i += (!w || !key.m11875p() || key.m11876o() != C10418l.C10428g.EnumC10430b.MESSAGE || key.mo11731X()) ? C10465u.m11756c(key, value) : AbstractC10274i.m12844e(key.getNumber(), (AbstractC10287j0) value);
        }
        C10247f1 d = j0Var.mo11664d();
        return i + (w ? d.m13023b() : d.mo11678h());
    }

    /* renamed from: a */
    public static String m11809a(String str, C10418l.C10428g gVar, int i) {
        StringBuilder sb = new StringBuilder(str);
        if (gVar.m11875p()) {
            sb.append('(');
            sb.append(gVar.mo11843b());
            sb.append(')');
        } else {
            sb.append(gVar.mo11842c());
        }
        if (i != -1) {
            sb.append('[');
            sb.append(i);
            sb.append(']');
        }
        sb.append('.');
        return sb.toString();
    }

    /* renamed from: a */
    public static List<String> m11811a(AbstractC10444n0 n0Var) {
        ArrayList arrayList = new ArrayList();
        m11810a(n0Var, "", arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public static void m11817a(AbstractC10253g gVar, C10452p.C10454b bVar, C10459r rVar, AbstractC10450d dVar) throws IOException {
        C10418l.C10428g gVar2 = bVar.f23785a;
        if (dVar.mo11798b(gVar2) || C10459r.m11790b()) {
            dVar.mo11801a(gVar2, dVar.mo11804a(gVar, rVar, gVar2, bVar.f23786b));
        } else {
            dVar.mo11801a(gVar2, new C10230b0(bVar.f23786b, rVar, gVar));
        }
    }

    /* renamed from: a */
    public static void m11816a(AbstractC10267h hVar, C10247f1.C10249b bVar, C10459r rVar, C10418l.C10420b bVar2, AbstractC10450d dVar) throws IOException {
        int i = 0;
        AbstractC10253g gVar = null;
        C10452p.C10454b bVar3 = null;
        while (true) {
            int r = hVar.mo12899r();
            if (r == 0) {
                break;
            } else if (r == C10406k1.f23624c) {
                int s = hVar.mo12898s();
                i = s;
                if (s != 0) {
                    i = s;
                    if (rVar instanceof C10452p) {
                        bVar3 = dVar.mo11800a((C10452p) rVar, bVar2, s);
                        i = s;
                    }
                }
            } else if (r == C10406k1.f23625d) {
                if (i == 0 || bVar3 == null || !C10459r.m11790b()) {
                    gVar = hVar.mo12918c();
                } else {
                    m11814a(hVar, bVar3, rVar, dVar);
                    gVar = null;
                }
            } else if (!hVar.mo12915d(r)) {
                break;
            }
        }
        hVar.mo12924a(C10406k1.f23623b);
        if (gVar != null && i != 0) {
            if (bVar3 != null) {
                m11817a(gVar, bVar3, rVar, dVar);
            } else if (gVar != null && bVar != null) {
                C10247f1.C10250c.C10251a g = C10247f1.C10250c.m12986g();
                g.m12980a(gVar);
                bVar.m13009b(i, g.m12985a());
            }
        }
    }

    /* renamed from: a */
    public static void m11814a(AbstractC10267h hVar, C10452p.C10454b bVar, C10459r rVar, AbstractC10450d dVar) throws IOException {
        C10418l.C10428g gVar = bVar.f23785a;
        dVar.mo11801a(gVar, dVar.mo11799b(hVar, rVar, gVar, bVar.f23786b));
    }

    /* renamed from: a */
    public static void m11812a(AbstractC10287j0 j0Var, Map<C10418l.C10428g, Object> map, AbstractC10274i iVar, boolean z) throws IOException {
        boolean w = j0Var.mo11666c().m11908i().m11995w();
        Map<C10418l.C10428g, Object> map2 = map;
        if (z) {
            map2 = new TreeMap<>(map);
            for (C10418l.C10428g gVar : j0Var.mo11666c().m11911f()) {
                if (gVar.m11871t() && !map2.containsKey(gVar)) {
                    map2.put(gVar, j0Var.mo11644c(gVar));
                }
            }
        }
        for (Map.Entry<C10418l.C10428g, Object> entry : map2.entrySet()) {
            C10418l.C10428g key = entry.getKey();
            Object value = entry.getValue();
            if (!w || !key.m11875p() || key.m11876o() != C10418l.C10428g.EnumC10430b.MESSAGE || key.mo11731X()) {
                C10465u.m11776a(key, value, iVar);
            } else {
                iVar.mo12802c(key.getNumber(), (AbstractC10287j0) value);
            }
        }
        C10247f1 d = j0Var.mo11664d();
        if (w) {
            d.m13021b(iVar);
        } else {
            d.mo11692a(iVar);
        }
    }

    /* renamed from: a */
    public static void m11810a(AbstractC10444n0 n0Var, String str, List<String> list) {
        for (C10418l.C10428g gVar : n0Var.mo11666c().m11911f()) {
            if (gVar.m11871t() && !n0Var.mo11645b(gVar)) {
                list.add(str + gVar.mo11842c());
            }
        }
        for (Map.Entry<C10418l.C10428g, Object> entry : n0Var.mo11648a().entrySet()) {
            C10418l.C10428g key = entry.getKey();
            Object value = entry.getValue();
            if (key.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                if (key.mo11731X()) {
                    int i = 0;
                    for (AbstractC10444n0 n0Var2 : (List) value) {
                        m11810a(n0Var2, m11809a(str, key, i), list);
                        i++;
                    }
                } else if (n0Var.mo11645b(key)) {
                    m11810a((AbstractC10444n0) value, m11809a(str, key, -1), list);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0113  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m11815a(p081h.p203i.p401g.AbstractC10267h r7, p081h.p203i.p401g.C10247f1.C10249b r8, p081h.p203i.p401g.C10459r r9, p081h.p203i.p401g.C10418l.C10420b r10, p081h.p203i.p401g.C10446o0.AbstractC10450d r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10446o0.m11815a(h.i.g.h, h.i.g.f1$b, h.i.g.r, h.i.g.l$b, h.i.g.o0$d, int):boolean");
    }

    /* renamed from: b */
    public static boolean m11808b(AbstractC10444n0 n0Var) {
        for (C10418l.C10428g gVar : n0Var.mo11666c().m11911f()) {
            if (gVar.m11871t() && !n0Var.mo11645b(gVar)) {
                return false;
            }
        }
        for (Map.Entry<C10418l.C10428g, Object> entry : n0Var.mo11648a().entrySet()) {
            C10418l.C10428g key = entry.getKey();
            if (key.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                if (key.mo11731X()) {
                    for (AbstractC10287j0 j0Var : (List) entry.getValue()) {
                        if (!j0Var.isInitialized()) {
                            return false;
                        }
                    }
                    continue;
                } else if (!((AbstractC10287j0) entry.getValue()).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }
}
