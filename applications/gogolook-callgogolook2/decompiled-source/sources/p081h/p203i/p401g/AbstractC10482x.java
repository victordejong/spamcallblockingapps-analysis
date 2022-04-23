package p081h.p203i.p401g;

import com.mopub.common.AdType;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p081h.p203i.p401g.AbstractC10219a;
import p081h.p203i.p401g.AbstractC10287j0;
import p081h.p203i.p401g.C10230b0;
import p081h.p203i.p401g.C10247f1;
import p081h.p203i.p401g.C10406k1;
import p081h.p203i.p401g.C10418l;
import p081h.p203i.p401g.C10446o0;
import p081h.p203i.p401g.C10465u;
import p081h.p203i.p401g.C10516z;
/* renamed from: h.i.g.x */
/* loaded from: classes2-dex2jar.jar:h/i/g/x.class */
public abstract class AbstractC10482x extends AbstractC10219a implements Serializable {

    /* renamed from: d */
    public static boolean f23816d = false;

    /* renamed from: c */
    public C10247f1 f23817c;

    /* renamed from: h.i.g.x$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/x$a.class */
    public class C10483a implements AbstractC10486c {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10219a.AbstractC10221b f23818a;

        public C10483a(AbstractC10482x xVar, AbstractC10219a.AbstractC10221b bVar) {
            this.f23818a = bVar;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10221b
        /* renamed from: a */
        public void mo11585a() {
            this.f23818a.mo11585a();
        }
    }

    /* renamed from: h.i.g.x$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/x$b.class */
    public static abstract class AbstractC10484b<BuilderType extends AbstractC10484b<BuilderType>> extends AbstractC10219a.AbstractC10220a<BuilderType> {

        /* renamed from: a */
        public AbstractC10486c f23819a;

        /* renamed from: b */
        public AbstractC10484b<BuilderType>.C10485a f23820b;

        /* renamed from: c */
        public boolean f23821c;

        /* renamed from: d */
        public C10247f1 f23822d;

        /* renamed from: h.i.g.x$b$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$b$a.class */
        public class C10485a implements AbstractC10486c {
            public C10485a() {
            }

            public /* synthetic */ C10485a(AbstractC10484b bVar, C10483a aVar) {
                this();
            }

            @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10221b
            /* renamed from: a */
            public void mo11585a() {
                AbstractC10484b.this.m11657k();
            }
        }

        public AbstractC10484b() {
            this(null);
        }

        public AbstractC10484b(AbstractC10486c cVar) {
            this.f23822d = C10247f1.m13020c();
            this.f23819a = cVar;
        }

        /* renamed from: a */
        public C10246f0 m11673a(int i) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public AbstractC10287j0.AbstractC10288a mo11656a(C10418l.C10428g gVar) {
            return mo11660h().m11635a(gVar).mo11589a();
        }

        /* renamed from: a */
        public C10418l.C10428g m11671a(C10418l.C10435k kVar) {
            return mo11660h().m11633a(kVar).m11621a(this);
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public BuilderType mo11672a(C10247f1 f1Var) {
            m11665c(f1Var);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public BuilderType mo11655a(C10418l.C10428g gVar, Object obj) {
            mo11660h().m11635a(gVar).mo11587a(this, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: a */
        public Map<C10418l.C10428g, Object> mo11648a() {
            return Collections.unmodifiableMap(m11662f());
        }

        /* renamed from: b */
        public C10246f0 m11669b(int i) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
        /* renamed from: b */
        public BuilderType mo11668b(C10247f1 f1Var) {
            C10247f1.C10249b b = C10247f1.m13022b(this.f23822d);
            b.m13008b(f1Var);
            return mo11672a(b.build());
        }

        @Override // p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: b */
        public BuilderType mo11652b(C10418l.C10428g gVar, Object obj) {
            mo11660h().m11635a(gVar).mo11598b(this, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public boolean mo11645b(C10418l.C10428g gVar) {
            return mo11660h().m11635a(gVar).mo11599b(this);
        }

        /* renamed from: b */
        public boolean m11667b(C10418l.C10435k kVar) {
            return mo11660h().m11633a(kVar).m11619b(this);
        }

        /* renamed from: c */
        public C10418l.C10420b mo11666c() {
            return mo11660h().f23830a;
        }

        /* renamed from: c */
        public final BuilderType m11665c(C10247f1 f1Var) {
            this.f23822d = f1Var;
            m11657k();
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: c */
        public Object mo11644c(C10418l.C10428g gVar) {
            Object a = mo11660h().m11635a(gVar).mo11602a(this);
            return gVar.mo11731X() ? Collections.unmodifiableList((List) a) : a;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
        public BuilderType clone() {
            BuilderType buildertype = (BuilderType) ((AbstractC10484b) mo11818b().mo11827e());
            buildertype.mo11824a(mo11825E());
            return buildertype;
        }

        @Override // p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: d */
        public final C10247f1 mo11664d() {
            return this.f23822d;
        }

        @Override // p081h.p203i.p401g.AbstractC10219a.AbstractC10220a
        /* renamed from: e */
        public void mo11663e() {
            this.f23821c = true;
        }

        /* renamed from: f */
        public final Map<C10418l.C10428g, Object> m11662f() {
            int i;
            C10418l.C10428g gVar;
            TreeMap treeMap = new TreeMap();
            List<C10418l.C10428g> f = mo11660h().f23830a.m11911f();
            int i2 = 0;
            while (i2 < f.size()) {
                C10418l.C10428g gVar2 = f.get(i2);
                C10418l.C10435k f2 = gVar2.m11885f();
                if (f2 != null) {
                    i = i2 + (f2.m11847f() - 1);
                    if (!m11667b(f2)) {
                        i2 = i + 1;
                    } else {
                        gVar = m11671a(f2);
                        treeMap.put(gVar, mo11644c(gVar));
                        i2 = i + 1;
                    }
                } else {
                    if (gVar2.mo11731X()) {
                        List list = (List) mo11644c(gVar2);
                        i = i2;
                        if (!list.isEmpty()) {
                            treeMap.put(gVar2, list);
                            i = i2;
                        }
                    } else {
                        i = i2;
                        gVar = gVar2;
                        if (!mo11645b(gVar2)) {
                            i = i2;
                        }
                        treeMap.put(gVar, mo11644c(gVar));
                    }
                    i2 = i + 1;
                }
            }
            return treeMap;
        }

        /* renamed from: g */
        public AbstractC10486c m11661g() {
            if (this.f23820b == null) {
                this.f23820b = new C10485a(this, null);
            }
            return this.f23820b;
        }

        /* renamed from: h */
        public abstract C10491g mo11660h();

        /* renamed from: i */
        public boolean m11659i() {
            return this.f23821c;
        }

        /* renamed from: j */
        public void m11658j() {
            if (this.f23819a != null) {
                mo11663e();
            }
        }

        /* renamed from: k */
        public final void m11657k() {
            AbstractC10486c cVar;
            if (this.f23821c && (cVar = this.f23819a) != null) {
                cVar.mo11585a();
                this.f23821c = false;
            }
        }
    }

    /* renamed from: h.i.g.x$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/x$c.class */
    public interface AbstractC10486c extends AbstractC10219a.AbstractC10221b {
    }

    /* renamed from: h.i.g.x$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/x$d.class */
    public static abstract class AbstractC10487d<MessageType extends AbstractC10488e, BuilderType extends AbstractC10487d<MessageType, BuilderType>> extends AbstractC10484b<BuilderType> implements AbstractC10490f<MessageType> {

        /* renamed from: e */
        public C10465u.C10467b<C10418l.C10428g> f23824e;

        public AbstractC10487d() {
        }

        public AbstractC10487d(AbstractC10486c cVar) {
            super(cVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public AbstractC10287j0.AbstractC10288a mo11656a(C10418l.C10428g gVar) {
            return gVar.m11875p() ? C10439m.m11831b(gVar.m11878m()) : super.mo11656a(gVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: a */
        public BuilderType mo11655a(C10418l.C10428g gVar, Object obj) {
            if (gVar.m11875p()) {
                m11651d(gVar);
                m11649m();
                this.f23824e.m11736b(gVar, obj);
                m11657k();
                return this;
            }
            super.mo11655a(gVar, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: a */
        public Map<C10418l.C10428g, Object> mo11648a() {
            Map f = m11662f();
            C10465u.C10467b<C10418l.C10428g> bVar = this.f23824e;
            if (bVar != null) {
                f.putAll(bVar.m11734c());
            }
            return Collections.unmodifiableMap(f);
        }

        /* renamed from: a */
        public final void m11653a(AbstractC10488e eVar) {
            if (eVar.f23825e != null) {
                m11649m();
                this.f23824e.m11742a(eVar.f23825e);
                m11657k();
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10287j0.AbstractC10288a
        /* renamed from: b */
        public BuilderType mo11652b(C10418l.C10428g gVar, Object obj) {
            if (gVar.m11875p()) {
                m11651d(gVar);
                m11649m();
                this.f23824e.m11743a((C10465u.C10467b<C10418l.C10428g>) gVar, obj);
                m11657k();
                return this;
            }
            super.mo11652b(gVar, obj);
            return this;
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public boolean mo11645b(C10418l.C10428g gVar) {
            if (!gVar.m11875p()) {
                return super.mo11645b(gVar);
            }
            m11651d(gVar);
            C10465u.C10467b<C10418l.C10428g> bVar = this.f23824e;
            return bVar == null ? false : bVar.m11733c(gVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x.AbstractC10484b, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: c */
        public Object mo11644c(C10418l.C10428g gVar) {
            if (!gVar.m11875p()) {
                return super.mo11644c(gVar);
            }
            m11651d(gVar);
            C10465u.C10467b<C10418l.C10428g> bVar = this.f23824e;
            Object a = bVar == null ? null : bVar.m11744a((C10465u.C10467b<C10418l.C10428g>) gVar);
            return a == null ? gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE ? C10439m.m11835a(gVar.m11878m()) : gVar.m11883h() : a;
        }

        /* renamed from: d */
        public final void m11651d(C10418l.C10428g gVar) {
            if (gVar.m11884g() != mo11666c()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        /* renamed from: l */
        public final C10465u<C10418l.C10428g> m11650l() {
            C10465u.C10467b<C10418l.C10428g> bVar = this.f23824e;
            return bVar == null ? C10465u.m11749h() : bVar.m11746a();
        }

        /* renamed from: m */
        public final void m11649m() {
            if (this.f23824e == null) {
                this.f23824e = C10465u.m11748i();
            }
        }
    }

    /* renamed from: h.i.g.x$e */
    /* loaded from: classes2-dex2jar.jar:h/i/g/x$e.class */
    public static abstract class AbstractC10488e<MessageType extends AbstractC10488e> extends AbstractC10482x implements AbstractC10490f<MessageType> {

        /* renamed from: e */
        public final C10465u<C10418l.C10428g> f23825e;

        /* renamed from: h.i.g.x$e$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$e$a.class */
        public class C10489a {

            /* renamed from: a */
            public final Iterator<Map.Entry<C10418l.C10428g, Object>> f23826a;

            /* renamed from: b */
            public Map.Entry<C10418l.C10428g, Object> f23827b;

            /* renamed from: c */
            public final boolean f23828c;

            public C10489a(boolean z) {
                this.f23826a = AbstractC10488e.this.f23825e.m11751f();
                if (this.f23826a.hasNext()) {
                    this.f23827b = this.f23826a.next();
                }
                this.f23828c = z;
            }

            public /* synthetic */ C10489a(AbstractC10488e eVar, boolean z, C10483a aVar) {
                this(z);
            }

            /* renamed from: a */
            public void m11636a(int i, AbstractC10274i iVar) throws IOException {
                while (true) {
                    Map.Entry<C10418l.C10428g, Object> entry = this.f23827b;
                    if (entry != null && entry.getKey().getNumber() < i) {
                        C10418l.C10428g key = this.f23827b.getKey();
                        if (!this.f23828c || key.mo11728c0() != C10406k1.EnumC10413c.MESSAGE || key.mo11731X()) {
                            C10465u.m11776a(key, this.f23827b.getValue(), iVar);
                        } else if (this.f23827b instanceof C10230b0.C10232b) {
                            iVar.mo12809b(key.getNumber(), ((C10230b0.C10232b) this.f23827b).m13056a().m13046b());
                        } else {
                            iVar.mo12802c(key.getNumber(), (AbstractC10287j0) this.f23827b.getValue());
                        }
                        if (this.f23826a.hasNext()) {
                            this.f23827b = this.f23826a.next();
                        } else {
                            this.f23827b = null;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        public AbstractC10488e() {
            this.f23825e = C10465u.m11747j();
        }

        public AbstractC10488e(AbstractC10487d<MessageType, ?> dVar) {
            super(dVar);
            this.f23825e = dVar.m11650l();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: a */
        public Map<C10418l.C10428g, Object> mo11648a() {
            Map a = m11683a(false);
            a.putAll(m11638s());
            return Collections.unmodifiableMap(a);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: a */
        public boolean mo11647a(AbstractC10267h hVar, C10247f1.C10249b bVar, C10459r rVar, int i) throws IOException {
            if (hVar.m12933u()) {
                bVar = null;
            }
            return C10446o0.m11815a(hVar, bVar, rVar, mo11666c(), new C10446o0.C10449c(this.f23825e), i);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: b */
        public boolean mo11645b(C10418l.C10428g gVar) {
            if (!gVar.m11875p()) {
                return AbstractC10482x.super.mo11645b(gVar);
            }
            m11643d(gVar);
            return this.f23825e.m11757c((C10465u<C10418l.C10428g>) gVar);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10444n0
        /* renamed from: c */
        public Object mo11644c(C10418l.C10428g gVar) {
            if (!gVar.m11875p()) {
                return AbstractC10482x.super.mo11644c(gVar);
            }
            m11643d(gVar);
            Object b = this.f23825e.m11765b((C10465u<C10418l.C10428g>) gVar);
            return b == null ? gVar.mo11731X() ? Collections.emptyList() : gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE ? C10439m.m11835a(gVar.m11878m()) : gVar.m11883h() : b;
        }

        /* renamed from: d */
        public final void m11643d(C10418l.C10428g gVar) {
            if (gVar.m11884g() != mo11666c()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        @Override // p081h.p203i.p401g.AbstractC10482x, p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
        public boolean isInitialized() {
            return AbstractC10482x.super.isInitialized() && m11640q();
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: l */
        public Map<C10418l.C10428g, Object> mo11642l() {
            Map a = m11683a(false);
            a.putAll(m11638s());
            return Collections.unmodifiableMap(a);
        }

        @Override // p081h.p203i.p401g.AbstractC10482x
        /* renamed from: n */
        public void mo11641n() {
            this.f23825e.m11750g();
        }

        /* renamed from: q */
        public boolean m11640q() {
            return this.f23825e.m11752e();
        }

        /* renamed from: r */
        public int m11639r() {
            return this.f23825e.m11759c();
        }

        /* renamed from: s */
        public Map<C10418l.C10428g, Object> m11638s() {
            return this.f23825e.m11785a();
        }

        /* renamed from: t */
        public AbstractC10488e<MessageType>.C10489a m11637t() {
            return new C10489a(this, false, null);
        }
    }

    /* renamed from: h.i.g.x$f */
    /* loaded from: classes2-dex2jar.jar:h/i/g/x$f.class */
    public interface AbstractC10490f<MessageType extends AbstractC10488e> extends AbstractC10444n0 {
    }

    /* renamed from: h.i.g.x$g */
    /* loaded from: classes2-dex2jar.jar:h/i/g/x$g.class */
    public static final class C10491g {

        /* renamed from: a */
        public final C10418l.C10420b f23830a;

        /* renamed from: b */
        public final AbstractC10492a[] f23831b;

        /* renamed from: c */
        public String[] f23832c;

        /* renamed from: d */
        public final C10494c[] f23833d;

        /* renamed from: e */
        public volatile boolean f23834e = false;

        /* renamed from: h.i.g.x$g$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$a.class */
        public interface AbstractC10492a {
            /* renamed from: a */
            AbstractC10287j0.AbstractC10288a mo11589a();

            /* renamed from: a */
            Object mo11602a(AbstractC10484b bVar);

            /* renamed from: a */
            Object mo11600a(AbstractC10482x xVar);

            /* renamed from: a */
            void mo11587a(AbstractC10484b bVar, Object obj);

            /* renamed from: b */
            void mo11598b(AbstractC10484b bVar, Object obj);

            /* renamed from: b */
            boolean mo11599b(AbstractC10484b bVar);

            /* renamed from: b */
            boolean mo11597b(AbstractC10482x xVar);

            /* renamed from: c */
            Object mo11586c(AbstractC10482x xVar);
        }

        /* renamed from: h.i.g.x$g$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$b.class */
        public static class C10493b implements AbstractC10492a {

            /* renamed from: a */
            public final C10418l.C10428g f23835a;

            /* renamed from: b */
            public final AbstractC10287j0 f23836b;

            public C10493b(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2) {
                this.f23835a = gVar;
                m11625d((AbstractC10482x) AbstractC10482x.m11680b(AbstractC10482x.m11681b(cls, "getDefaultInstance", new Class[0]), (Object) null, new Object[0])).m13027b();
                throw null;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public AbstractC10287j0.AbstractC10288a mo11589a() {
                return this.f23836b.mo11827e();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11602a(AbstractC10484b bVar) {
                new ArrayList();
                m11622f(bVar);
                throw null;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11600a(AbstractC10482x xVar) {
                new ArrayList();
                m11623e(xVar);
                throw null;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public void mo11587a(AbstractC10484b bVar, Object obj) {
                m11627c(bVar);
                throw null;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public void mo11598b(AbstractC10484b bVar, Object obj) {
                m11624e(bVar);
                throw null;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public boolean mo11599b(AbstractC10484b bVar) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public boolean mo11597b(AbstractC10482x xVar) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: c */
            public Object mo11586c(AbstractC10482x xVar) {
                mo11600a(xVar);
                throw null;
            }

            /* renamed from: c */
            public void m11627c(AbstractC10484b bVar) {
                m11624e(bVar);
                throw null;
            }

            /* renamed from: d */
            public final C10246f0<?, ?> m11626d(AbstractC10484b bVar) {
                bVar.m11673a(this.f23835a.getNumber());
                throw null;
            }

            /* renamed from: d */
            public final C10246f0<?, ?> m11625d(AbstractC10482x xVar) {
                return xVar.m11695a(this.f23835a.getNumber());
            }

            /* renamed from: e */
            public int m11623e(AbstractC10482x xVar) {
                m11625d(xVar).m13028a();
                throw null;
            }

            /* renamed from: e */
            public final C10246f0<?, ?> m11624e(AbstractC10484b bVar) {
                bVar.m11669b(this.f23835a.getNumber());
                throw null;
            }

            /* renamed from: f */
            public int m11622f(AbstractC10484b bVar) {
                m11626d(bVar);
                throw null;
            }
        }

        /* renamed from: h.i.g.x$g$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$c.class */
        public static class C10494c {

            /* renamed from: a */
            public final C10418l.C10420b f23837a;

            /* renamed from: b */
            public final Method f23838b;

            /* renamed from: c */
            public final Method f23839c;

            public C10494c(C10418l.C10420b bVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2) {
                this.f23837a = bVar;
                this.f23838b = AbstractC10482x.m11681b(cls, "get" + str + "Case", new Class[0]);
                this.f23839c = AbstractC10482x.m11681b(cls2, "get" + str + "Case", new Class[0]);
                StringBuilder sb = new StringBuilder();
                sb.append(AdType.CLEAR);
                sb.append(str);
                AbstractC10482x.m11681b(cls2, sb.toString(), new Class[0]);
            }

            /* renamed from: a */
            public C10418l.C10428g m11621a(AbstractC10484b bVar) {
                int number = ((C10516z.AbstractC10517a) AbstractC10482x.m11680b(this.f23839c, bVar, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f23837a.m11916a(number);
                }
                return null;
            }

            /* renamed from: a */
            public C10418l.C10428g m11620a(AbstractC10482x xVar) {
                int number = ((C10516z.AbstractC10517a) AbstractC10482x.m11680b(this.f23838b, xVar, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f23837a.m11916a(number);
                }
                return null;
            }

            /* renamed from: b */
            public boolean m11619b(AbstractC10484b bVar) {
                return ((C10516z.AbstractC10517a) AbstractC10482x.m11680b(this.f23839c, bVar, new Object[0])).getNumber() != 0;
            }

            /* renamed from: b */
            public boolean m11618b(AbstractC10482x xVar) {
                return ((C10516z.AbstractC10517a) AbstractC10482x.m11680b(this.f23838b, xVar, new Object[0])).getNumber() != 0;
            }
        }

        /* renamed from: h.i.g.x$g$d */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$d.class */
        public static final class C10495d extends C10496e {

            /* renamed from: c */
            public C10418l.C10426e f23840c;

            /* renamed from: d */
            public final Method f23841d = AbstractC10482x.m11681b(this.f23847a, "valueOf", C10418l.C10427f.class);

            /* renamed from: e */
            public final Method f23842e = AbstractC10482x.m11681b(this.f23847a, "getValueDescriptor", new Class[0]);

            /* renamed from: f */
            public boolean f23843f;

            /* renamed from: g */
            public Method f23844g;

            /* renamed from: h */
            public Method f23845h;

            /* renamed from: i */
            public Method f23846i;

            public C10495d(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2) {
                super(gVar, str, cls, cls2);
                this.f23840c = gVar.m11882i();
                this.f23843f = gVar.mo11845a().m11856k();
                if (this.f23843f) {
                    this.f23844g = AbstractC10482x.m11681b(cls, "get" + str + "Value", Integer.TYPE);
                    this.f23845h = AbstractC10482x.m11681b(cls2, "get" + str + "Value", Integer.TYPE);
                    Class cls3 = Integer.TYPE;
                    AbstractC10482x.m11681b(cls2, "set" + str + "Value", cls3, cls3);
                    this.f23846i = AbstractC10482x.m11681b(cls2, "add" + str + "Value", Integer.TYPE);
                }
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11602a(AbstractC10484b bVar) {
                ArrayList arrayList = new ArrayList();
                int d = m11613d(bVar);
                for (int i = 0; i < d; i++) {
                    arrayList.add(mo11617a(bVar, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e
            /* renamed from: a */
            public Object mo11617a(AbstractC10484b bVar, int i) {
                return this.f23843f ? this.f23840c.m11892b(((Integer) AbstractC10482x.m11680b(this.f23845h, bVar, Integer.valueOf(i))).intValue()) : AbstractC10482x.m11680b(this.f23842e, super.mo11617a(bVar, i), new Object[0]);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11600a(AbstractC10482x xVar) {
                ArrayList arrayList = new ArrayList();
                int d = m11612d(xVar);
                for (int i = 0; i < d; i++) {
                    arrayList.add(mo11615a(xVar, i));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e
            /* renamed from: a */
            public Object mo11615a(AbstractC10482x xVar, int i) {
                return this.f23843f ? this.f23840c.m11892b(((Integer) AbstractC10482x.m11680b(this.f23844g, xVar, Integer.valueOf(i))).intValue()) : AbstractC10482x.m11680b(this.f23842e, super.mo11615a(xVar, i), new Object[0]);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public void mo11598b(AbstractC10484b bVar, Object obj) {
                if (this.f23843f) {
                    AbstractC10482x.m11680b(this.f23846i, bVar, Integer.valueOf(((C10418l.C10427f) obj).getNumber()));
                } else {
                    super.mo11598b(bVar, AbstractC10482x.m11680b(this.f23841d, (Object) null, obj));
                }
            }
        }

        /* renamed from: h.i.g.x$g$e */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$e.class */
        public static class C10496e implements AbstractC10492a {

            /* renamed from: a */
            public final Class f23847a;

            /* renamed from: b */
            public final AbstractC10497a f23848b;

            /* renamed from: h.i.g.x$g$e$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$e$a.class */
            public interface AbstractC10497a {
                /* renamed from: a */
                Object mo11611a(AbstractC10484b<?> bVar);

                /* renamed from: a */
                Object mo11610a(AbstractC10484b<?> bVar, int i);

                /* renamed from: a */
                Object mo11609a(AbstractC10482x xVar);

                /* renamed from: a */
                Object mo11608a(AbstractC10482x xVar, int i);

                /* renamed from: b */
                int mo11607b(AbstractC10484b<?> bVar);

                /* renamed from: b */
                int mo11605b(AbstractC10482x xVar);

                /* renamed from: b */
                void mo11606b(AbstractC10484b<?> bVar, Object obj);

                /* renamed from: c */
                void mo11604c(AbstractC10484b<?> bVar);
            }

            /* renamed from: h.i.g.x$g$e$b */
            /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$e$b.class */
            public static final class C10498b implements AbstractC10497a {

                /* renamed from: a */
                public final Method f23849a;

                /* renamed from: b */
                public final Method f23850b;

                /* renamed from: c */
                public final Method f23851c;

                /* renamed from: d */
                public final Method f23852d;

                /* renamed from: e */
                public final Method f23853e;

                /* renamed from: f */
                public final Method f23854f;

                /* renamed from: g */
                public final Method f23855g;

                /* renamed from: h */
                public final Method f23856h;

                public C10498b(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2) {
                    this.f23849a = AbstractC10482x.m11681b(cls, "get" + str + "List", new Class[0]);
                    this.f23850b = AbstractC10482x.m11681b(cls2, "get" + str + "List", new Class[0]);
                    StringBuilder sb = new StringBuilder();
                    sb.append("get");
                    sb.append(str);
                    this.f23851c = AbstractC10482x.m11681b(cls, sb.toString(), Integer.TYPE);
                    this.f23852d = AbstractC10482x.m11681b(cls2, "get" + str, Integer.TYPE);
                    Class<?> returnType = this.f23851c.getReturnType();
                    AbstractC10482x.m11681b(cls2, "set" + str, Integer.TYPE, returnType);
                    this.f23853e = AbstractC10482x.m11681b(cls2, "add" + str, returnType);
                    this.f23854f = AbstractC10482x.m11681b(cls, "get" + str + "Count", new Class[0]);
                    this.f23855g = AbstractC10482x.m11681b(cls2, "get" + str + "Count", new Class[0]);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(AdType.CLEAR);
                    sb2.append(str);
                    this.f23856h = AbstractC10482x.m11681b(cls2, sb2.toString(), new Class[0]);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e.AbstractC10497a
                /* renamed from: a */
                public Object mo11611a(AbstractC10484b<?> bVar) {
                    return AbstractC10482x.m11680b(this.f23850b, bVar, new Object[0]);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e.AbstractC10497a
                /* renamed from: a */
                public Object mo11610a(AbstractC10484b<?> bVar, int i) {
                    return AbstractC10482x.m11680b(this.f23852d, bVar, Integer.valueOf(i));
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e.AbstractC10497a
                /* renamed from: a */
                public Object mo11609a(AbstractC10482x xVar) {
                    return AbstractC10482x.m11680b(this.f23849a, xVar, new Object[0]);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e.AbstractC10497a
                /* renamed from: a */
                public Object mo11608a(AbstractC10482x xVar, int i) {
                    return AbstractC10482x.m11680b(this.f23851c, xVar, Integer.valueOf(i));
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e.AbstractC10497a
                /* renamed from: b */
                public int mo11607b(AbstractC10484b<?> bVar) {
                    return ((Integer) AbstractC10482x.m11680b(this.f23855g, bVar, new Object[0])).intValue();
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e.AbstractC10497a
                /* renamed from: b */
                public int mo11605b(AbstractC10482x xVar) {
                    return ((Integer) AbstractC10482x.m11680b(this.f23854f, xVar, new Object[0])).intValue();
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e.AbstractC10497a
                /* renamed from: b */
                public void mo11606b(AbstractC10484b<?> bVar, Object obj) {
                    AbstractC10482x.m11680b(this.f23853e, bVar, obj);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e.AbstractC10497a
                /* renamed from: c */
                public void mo11604c(AbstractC10484b<?> bVar) {
                    AbstractC10482x.m11680b(this.f23856h, bVar, new Object[0]);
                }
            }

            public C10496e(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2) {
                C10498b bVar = new C10498b(gVar, str, cls, cls2);
                this.f23847a = bVar.f23851c.getReturnType();
                m11616a(bVar);
                this.f23848b = bVar;
            }

            /* renamed from: a */
            public static AbstractC10497a m11616a(C10498b bVar) {
                return bVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public AbstractC10287j0.AbstractC10288a mo11589a() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11602a(AbstractC10484b bVar) {
                return this.f23848b.mo11611a(bVar);
            }

            /* renamed from: a */
            public Object mo11617a(AbstractC10484b bVar, int i) {
                return this.f23848b.mo11610a(bVar, i);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11600a(AbstractC10482x xVar) {
                return this.f23848b.mo11609a(xVar);
            }

            /* renamed from: a */
            public Object mo11615a(AbstractC10482x xVar, int i) {
                return this.f23848b.mo11608a(xVar, i);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public void mo11587a(AbstractC10484b bVar, Object obj) {
                m11614c(bVar);
                for (Object obj2 : (List) obj) {
                    mo11598b(bVar, obj2);
                }
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public void mo11598b(AbstractC10484b bVar, Object obj) {
                this.f23848b.mo11606b(bVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public boolean mo11599b(AbstractC10484b bVar) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public boolean mo11597b(AbstractC10482x xVar) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: c */
            public Object mo11586c(AbstractC10482x xVar) {
                return mo11600a(xVar);
            }

            /* renamed from: c */
            public void m11614c(AbstractC10484b bVar) {
                this.f23848b.mo11604c(bVar);
            }

            /* renamed from: d */
            public int m11613d(AbstractC10484b bVar) {
                return this.f23848b.mo11607b(bVar);
            }

            /* renamed from: d */
            public int m11612d(AbstractC10482x xVar) {
                return this.f23848b.mo11605b(xVar);
            }
        }

        /* renamed from: h.i.g.x$g$f */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$f.class */
        public static final class C10499f extends C10496e {

            /* renamed from: c */
            public final Method f23857c = AbstractC10482x.m11681b(this.f23847a, "newBuilder", new Class[0]);

            public C10499f(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2) {
                super(gVar, str, cls, cls2);
                AbstractC10482x.m11681b(cls2, "get" + str + "Builder", Integer.TYPE);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public AbstractC10287j0.AbstractC10288a mo11589a() {
                return (AbstractC10287j0.AbstractC10288a) AbstractC10482x.m11680b(this.f23857c, (Object) null, new Object[0]);
            }

            /* renamed from: a */
            public final Object m11603a(Object obj) {
                return this.f23847a.isInstance(obj) ? obj : ((AbstractC10287j0.AbstractC10288a) AbstractC10482x.m11680b(this.f23857c, (Object) null, new Object[0])).mo11824a((AbstractC10287j0) obj).build();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10496e, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public void mo11598b(AbstractC10484b bVar, Object obj) {
                super.mo11598b(bVar, m11603a(obj));
            }
        }

        /* renamed from: h.i.g.x$g$g */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$g.class */
        public static final class C10500g extends C10501h {

            /* renamed from: f */
            public C10418l.C10426e f23858f;

            /* renamed from: g */
            public Method f23859g = AbstractC10482x.m11681b(this.f23865a, "valueOf", C10418l.C10427f.class);

            /* renamed from: h */
            public Method f23860h = AbstractC10482x.m11681b(this.f23865a, "getValueDescriptor", new Class[0]);

            /* renamed from: i */
            public boolean f23861i;

            /* renamed from: j */
            public Method f23862j;

            /* renamed from: k */
            public Method f23863k;

            /* renamed from: l */
            public Method f23864l;

            public C10500g(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2, String str2) {
                super(gVar, str, cls, cls2, str2);
                this.f23858f = gVar.m11882i();
                this.f23861i = gVar.mo11845a().m11856k();
                if (this.f23861i) {
                    this.f23862j = AbstractC10482x.m11681b(cls, "get" + str + "Value", new Class[0]);
                    this.f23863k = AbstractC10482x.m11681b(cls2, "get" + str + "Value", new Class[0]);
                    this.f23864l = AbstractC10482x.m11681b(cls2, "set" + str + "Value", Integer.TYPE);
                }
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11602a(AbstractC10484b bVar) {
                if (!this.f23861i) {
                    return AbstractC10482x.m11680b(this.f23860h, super.mo11602a(bVar), new Object[0]);
                }
                return this.f23858f.m11892b(((Integer) AbstractC10482x.m11680b(this.f23863k, bVar, new Object[0])).intValue());
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11600a(AbstractC10482x xVar) {
                if (!this.f23861i) {
                    return AbstractC10482x.m11680b(this.f23860h, super.mo11600a(xVar), new Object[0]);
                }
                return this.f23858f.m11892b(((Integer) AbstractC10482x.m11680b(this.f23862j, xVar, new Object[0])).intValue());
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public void mo11587a(AbstractC10484b bVar, Object obj) {
                if (this.f23861i) {
                    AbstractC10482x.m11680b(this.f23864l, bVar, Integer.valueOf(((C10418l.C10427f) obj).getNumber()));
                } else {
                    super.mo11587a(bVar, AbstractC10482x.m11680b(this.f23859g, (Object) null, obj));
                }
            }
        }

        /* renamed from: h.i.g.x$g$h */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$h.class */
        public static class C10501h implements AbstractC10492a {

            /* renamed from: a */
            public final Class<?> f23865a;

            /* renamed from: b */
            public final C10418l.C10428g f23866b;

            /* renamed from: c */
            public final boolean f23867c;

            /* renamed from: d */
            public final boolean f23868d;

            /* renamed from: e */
            public final AbstractC10502a f23869e;

            /* renamed from: h.i.g.x$g$h$a */
            /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$h$a.class */
            public interface AbstractC10502a {
                /* renamed from: a */
                Object mo11596a(AbstractC10484b<?> bVar);

                /* renamed from: a */
                Object mo11594a(AbstractC10482x xVar);

                /* renamed from: a */
                void mo11595a(AbstractC10484b<?> bVar, Object obj);

                /* renamed from: b */
                boolean mo11593b(AbstractC10484b<?> bVar);

                /* renamed from: b */
                boolean mo11592b(AbstractC10482x xVar);

                /* renamed from: c */
                int mo11591c(AbstractC10484b<?> bVar);

                /* renamed from: c */
                int mo11590c(AbstractC10482x xVar);
            }

            /* renamed from: h.i.g.x$g$h$b */
            /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$h$b.class */
            public static final class C10503b implements AbstractC10502a {

                /* renamed from: a */
                public final Method f23870a;

                /* renamed from: b */
                public final Method f23871b;

                /* renamed from: c */
                public final Method f23872c;

                /* renamed from: d */
                public final Method f23873d;

                /* renamed from: e */
                public final Method f23874e;

                /* renamed from: f */
                public final Method f23875f;

                /* renamed from: g */
                public final Method f23876g;

                public C10503b(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2, String str2, boolean z, boolean z2) {
                    Method method;
                    Method method2;
                    Method method3;
                    this.f23870a = AbstractC10482x.m11681b(cls, "get" + str, new Class[0]);
                    this.f23871b = AbstractC10482x.m11681b(cls2, "get" + str, new Class[0]);
                    Class<?> returnType = this.f23870a.getReturnType();
                    this.f23872c = AbstractC10482x.m11681b(cls2, "set" + str, returnType);
                    Method method4 = null;
                    if (z2) {
                        method = AbstractC10482x.m11681b(cls, "has" + str, new Class[0]);
                    } else {
                        method = null;
                    }
                    this.f23873d = method;
                    if (z2) {
                        method2 = AbstractC10482x.m11681b(cls2, "has" + str, new Class[0]);
                    } else {
                        method2 = null;
                    }
                    this.f23874e = method2;
                    AbstractC10482x.m11681b(cls2, AdType.CLEAR + str, new Class[0]);
                    if (z) {
                        method3 = AbstractC10482x.m11681b(cls, "get" + str2 + "Case", new Class[0]);
                    } else {
                        method3 = null;
                    }
                    this.f23875f = method3;
                    if (z) {
                        method4 = AbstractC10482x.m11681b(cls2, "get" + str2 + "Case", new Class[0]);
                    }
                    this.f23876g = method4;
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h.AbstractC10502a
                /* renamed from: a */
                public Object mo11596a(AbstractC10484b<?> bVar) {
                    return AbstractC10482x.m11680b(this.f23871b, bVar, new Object[0]);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h.AbstractC10502a
                /* renamed from: a */
                public Object mo11594a(AbstractC10482x xVar) {
                    return AbstractC10482x.m11680b(this.f23870a, xVar, new Object[0]);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h.AbstractC10502a
                /* renamed from: a */
                public void mo11595a(AbstractC10484b<?> bVar, Object obj) {
                    AbstractC10482x.m11680b(this.f23872c, bVar, obj);
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h.AbstractC10502a
                /* renamed from: b */
                public boolean mo11593b(AbstractC10484b<?> bVar) {
                    return ((Boolean) AbstractC10482x.m11680b(this.f23874e, bVar, new Object[0])).booleanValue();
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h.AbstractC10502a
                /* renamed from: b */
                public boolean mo11592b(AbstractC10482x xVar) {
                    return ((Boolean) AbstractC10482x.m11680b(this.f23873d, xVar, new Object[0])).booleanValue();
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h.AbstractC10502a
                /* renamed from: c */
                public int mo11591c(AbstractC10484b<?> bVar) {
                    return ((C10516z.AbstractC10517a) AbstractC10482x.m11680b(this.f23876g, bVar, new Object[0])).getNumber();
                }

                @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h.AbstractC10502a
                /* renamed from: c */
                public int mo11590c(AbstractC10482x xVar) {
                    return ((C10516z.AbstractC10517a) AbstractC10482x.m11680b(this.f23875f, xVar, new Object[0])).getNumber();
                }
            }

            public C10501h(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2, String str2) {
                this.f23867c = gVar.m11885f() != null;
                this.f23868d = !C10491g.m11628b(gVar.mo11845a()) ? !this.f23867c && gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE : true;
                C10503b bVar = new C10503b(gVar, str, cls, cls2, str2, this.f23867c, this.f23868d);
                this.f23866b = gVar;
                this.f23865a = bVar.f23870a.getReturnType();
                m11601a(bVar);
                this.f23869e = bVar;
            }

            /* renamed from: a */
            public static AbstractC10502a m11601a(C10503b bVar) {
                return bVar;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public AbstractC10287j0.AbstractC10288a mo11589a() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11602a(AbstractC10484b bVar) {
                return this.f23869e.mo11596a(bVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public Object mo11600a(AbstractC10482x xVar) {
                return this.f23869e.mo11594a(xVar);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public void mo11587a(AbstractC10484b bVar, Object obj) {
                this.f23869e.mo11595a(bVar, obj);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public void mo11598b(AbstractC10484b bVar, Object obj) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public boolean mo11599b(AbstractC10484b bVar) {
                if (this.f23868d) {
                    return this.f23869e.mo11593b(bVar);
                }
                boolean z = true;
                if (!this.f23867c) {
                    return !mo11602a(bVar).equals(this.f23866b.m11883h());
                }
                if (this.f23869e.mo11591c(bVar) != this.f23866b.getNumber()) {
                    z = false;
                }
                return z;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: b */
            public boolean mo11597b(AbstractC10482x xVar) {
                if (this.f23868d) {
                    return this.f23869e.mo11592b(xVar);
                }
                boolean z = true;
                if (!this.f23867c) {
                    return !mo11600a(xVar).equals(this.f23866b.m11883h());
                }
                if (this.f23869e.mo11590c(xVar) != this.f23866b.getNumber()) {
                    z = false;
                }
                return z;
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: c */
            public Object mo11586c(AbstractC10482x xVar) {
                return mo11600a(xVar);
            }
        }

        /* renamed from: h.i.g.x$g$i */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$i.class */
        public static final class C10504i extends C10501h {

            /* renamed from: f */
            public final Method f23877f = AbstractC10482x.m11681b(this.f23865a, "newBuilder", new Class[0]);

            public C10504i(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2, String str2) {
                super(gVar, str, cls, cls2, str2);
                AbstractC10482x.m11681b(cls2, "get" + str + "Builder", new Class[0]);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public AbstractC10287j0.AbstractC10288a mo11589a() {
                return (AbstractC10287j0.AbstractC10288a) AbstractC10482x.m11680b(this.f23877f, (Object) null, new Object[0]);
            }

            /* renamed from: a */
            public final Object m11588a(Object obj) {
                return this.f23865a.isInstance(obj) ? obj : ((AbstractC10287j0.AbstractC10288a) AbstractC10482x.m11680b(this.f23877f, (Object) null, new Object[0])).mo11824a((AbstractC10287j0) obj).mo11825E();
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public void mo11587a(AbstractC10484b bVar, Object obj) {
                super.mo11587a(bVar, m11588a(obj));
            }
        }

        /* renamed from: h.i.g.x$g$j */
        /* loaded from: classes2-dex2jar.jar:h/i/g/x$g$j.class */
        public static final class C10505j extends C10501h {

            /* renamed from: f */
            public final Method f23878f;

            /* renamed from: g */
            public final Method f23879g;

            public C10505j(C10418l.C10428g gVar, String str, Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2, String str2) {
                super(gVar, str, cls, cls2, str2);
                this.f23878f = AbstractC10482x.m11681b(cls, "get" + str + "Bytes", new Class[0]);
                AbstractC10482x.m11681b(cls2, "get" + str + "Bytes", new Class[0]);
                this.f23879g = AbstractC10482x.m11681b(cls2, "set" + str + "Bytes", AbstractC10253g.class);
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: a */
            public void mo11587a(AbstractC10484b bVar, Object obj) {
                if (obj instanceof AbstractC10253g) {
                    AbstractC10482x.m11680b(this.f23879g, bVar, obj);
                } else {
                    super.mo11587a(bVar, obj);
                }
            }

            @Override // p081h.p203i.p401g.AbstractC10482x.C10491g.C10501h, p081h.p203i.p401g.AbstractC10482x.C10491g.AbstractC10492a
            /* renamed from: c */
            public Object mo11586c(AbstractC10482x xVar) {
                return AbstractC10482x.m11680b(this.f23878f, xVar, new Object[0]);
            }
        }

        public C10491g(C10418l.C10420b bVar, String[] strArr) {
            this.f23830a = bVar;
            this.f23832c = strArr;
            this.f23831b = new AbstractC10492a[bVar.m11911f().size()];
            this.f23833d = new C10494c[bVar.m11909h().size()];
        }

        /* renamed from: b */
        public static boolean m11628b(C10418l.C10431h hVar) {
            return hVar.m11857j() == C10418l.C10431h.EnumC10432a.PROTO2;
        }

        /* renamed from: a */
        public final AbstractC10492a m11635a(C10418l.C10428g gVar) {
            if (gVar.m11884g() != this.f23830a) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            } else if (!gVar.m11875p()) {
                return this.f23831b[gVar.m11880k()];
            } else {
                throw new IllegalArgumentException("This type does not have extensions.");
            }
        }

        /* renamed from: a */
        public final C10494c m11633a(C10418l.C10435k kVar) {
            if (kVar.m11848e() == this.f23830a) {
                return this.f23833d[kVar.m11846g()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        /* renamed from: a */
        public C10491g m11629a(Class<? extends AbstractC10482x> cls, Class<? extends AbstractC10484b> cls2) {
            if (this.f23834e) {
                return this;
            }
            synchronized (this) {
                if (this.f23834e) {
                    return this;
                }
                int length = this.f23831b.length;
                for (int i = 0; i < length; i++) {
                    C10418l.C10428g gVar = this.f23830a.m11911f().get(i);
                    String str = gVar.m11885f() != null ? this.f23832c[gVar.m11885f().m11846g() + length] : null;
                    if (gVar.mo11731X()) {
                        if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                            if (!gVar.m11874q()) {
                                this.f23831b[i] = new C10499f(gVar, this.f23832c[i], cls, cls2);
                            } else {
                                new C10493b(gVar, this.f23832c[i], cls, cls2);
                                throw null;
                            }
                        } else if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.ENUM) {
                            this.f23831b[i] = new C10495d(gVar, this.f23832c[i], cls, cls2);
                        } else {
                            this.f23831b[i] = new C10496e(gVar, this.f23832c[i], cls, cls2);
                        }
                    } else if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                        this.f23831b[i] = new C10504i(gVar, this.f23832c[i], cls, cls2, str);
                    } else if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.ENUM) {
                        this.f23831b[i] = new C10500g(gVar, this.f23832c[i], cls, cls2, str);
                    } else if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.STRING) {
                        this.f23831b[i] = new C10505j(gVar, this.f23832c[i], cls, cls2, str);
                    } else {
                        this.f23831b[i] = new C10501h(gVar, this.f23832c[i], cls, cls2, str);
                    }
                }
                int length2 = this.f23833d.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.f23833d[i2] = new C10494c(this.f23830a, this.f23832c[i2 + length], cls, cls2);
                }
                this.f23834e = true;
                this.f23832c = null;
                return this;
            }
        }
    }

    public AbstractC10482x() {
        this.f23817c = C10247f1.m13020c();
    }

    public AbstractC10482x(AbstractC10484b<?> bVar) {
        this.f23817c = bVar.mo11664d();
    }

    /* renamed from: a */
    public static int m11694a(int i, Object obj) {
        return obj instanceof String ? AbstractC10274i.m12866b(i, (String) obj) : AbstractC10274i.m12858c(i, (AbstractC10253g) obj);
    }

    /* renamed from: a */
    public static C10516z.AbstractC10519c m11686a(C10516z.AbstractC10519c cVar) {
        int size = cVar.size();
        return cVar.mo11538d(size == 0 ? 10 : size * 2);
    }

    /* renamed from: a */
    public static void m11691a(AbstractC10274i iVar, int i, Object obj) throws IOException {
        if (obj instanceof String) {
            iVar.mo12818a(i, (String) obj);
        } else {
            iVar.mo12819a(i, (AbstractC10253g) obj);
        }
    }

    /* renamed from: b */
    public static Object m11680b(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    /* renamed from: b */
    public static Method m11681b(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e);
        }
    }

    /* renamed from: c */
    public static int m11679c(Object obj) {
        return obj instanceof String ? AbstractC10274i.m12862b((String) obj) : AbstractC10274i.m12863b((AbstractC10253g) obj);
    }

    /* renamed from: o */
    public static C10516z.AbstractC10519c m11675o() {
        return C10507y.m11572q();
    }

    /* renamed from: p */
    public static C10516z.AbstractC10519c m11674p() {
        return new C10507y();
    }

    /* renamed from: a */
    public C10246f0 m11695a(int i) {
        throw new RuntimeException("No map fields found in " + getClass().getName());
    }

    @Override // p081h.p203i.p401g.AbstractC10219a
    /* renamed from: a */
    public AbstractC10287j0.AbstractC10288a mo11693a(AbstractC10219a.AbstractC10221b bVar) {
        return mo11688a((AbstractC10486c) new C10483a(this, bVar));
    }

    /* renamed from: a */
    public abstract AbstractC10287j0.AbstractC10288a mo11688a(AbstractC10486c cVar);

    /* renamed from: a */
    public C10418l.C10428g m11689a(C10418l.C10435k kVar) {
        return mo11676m().m11633a(kVar).m11620a(this);
    }

    /* renamed from: a */
    public Object m11690a(C10418l.C10428g gVar) {
        return mo11676m().m11635a(gVar).mo11586c(this);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: a */
    public Map<C10418l.C10428g, Object> mo11648a() {
        return Collections.unmodifiableMap(m11683a(false));
    }

    /* renamed from: a */
    public final Map<C10418l.C10428g, Object> m11683a(boolean z) {
        int i;
        C10418l.C10428g gVar;
        TreeMap treeMap = new TreeMap();
        List<C10418l.C10428g> f = mo11676m().f23830a.m11911f();
        for (int i2 = 0; i2 < f.size(); i2 = i + 1) {
            C10418l.C10428g gVar2 = f.get(i2);
            C10418l.C10435k f2 = gVar2.m11885f();
            if (f2 != null) {
                i = i2 + (f2.m11847f() - 1);
                if (m11682b(f2)) {
                    gVar = m11689a(f2);
                    if (z || gVar.m11879l() != C10418l.C10428g.EnumC10429a.STRING) {
                        treeMap.put(gVar, mo11644c(gVar));
                    } else {
                        treeMap.put(gVar, m11690a(gVar));
                    }
                }
            } else {
                if (gVar2.mo11731X()) {
                    List list = (List) mo11644c(gVar2);
                    i = i2;
                    if (!list.isEmpty()) {
                        treeMap.put(gVar2, list);
                        i = i2;
                    }
                } else {
                    i = i2;
                    gVar = gVar2;
                    if (!mo11645b(gVar2)) {
                        i = i2;
                    }
                    if (z) {
                    }
                    treeMap.put(gVar, mo11644c(gVar));
                }
            }
        }
        return treeMap;
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: a */
    public void mo11692a(AbstractC10274i iVar) throws IOException {
        C10446o0.m11812a((AbstractC10287j0) this, mo11642l(), iVar, false);
    }

    /* renamed from: a */
    public boolean mo11647a(AbstractC10267h hVar, C10247f1.C10249b bVar, C10459r rVar, int i) throws IOException {
        return hVar.m12933u() ? hVar.mo12915d(i) : bVar.m13014a(i, hVar);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: b */
    public boolean mo11645b(C10418l.C10428g gVar) {
        return mo11676m().m11635a(gVar).mo11597b(this);
    }

    /* renamed from: b */
    public boolean m11682b(C10418l.C10435k kVar) {
        return mo11676m().m11633a(kVar).m11618b(this);
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: c */
    public C10418l.C10420b mo11666c() {
        return mo11676m().f23830a;
    }

    @Override // p081h.p203i.p401g.AbstractC10444n0
    /* renamed from: c */
    public Object mo11644c(C10418l.C10428g gVar) {
        return mo11676m().m11635a(gVar).mo11600a(this);
    }

    /* renamed from: d */
    public C10247f1 mo11664d() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: h */
    public int mo11678h() {
        int i = this.f23054b;
        if (i != -1) {
            return i;
        }
        this.f23054b = C10446o0.m11813a(this, mo11642l());
        return this.f23054b;
    }

    @Override // p081h.p203i.p401g.AbstractC10219a, p081h.p203i.p401g.AbstractC10442m0
    public boolean isInitialized() {
        for (C10418l.C10428g gVar : mo11666c().m11911f()) {
            if (gVar.m11871t() && !mo11645b(gVar)) {
                return false;
            }
            if (gVar.m11879l() == C10418l.C10428g.EnumC10429a.MESSAGE) {
                if (gVar.mo11731X()) {
                    for (AbstractC10287j0 j0Var : (List) mo11644c(gVar)) {
                        if (!j0Var.isInitialized()) {
                            return false;
                        }
                    }
                    continue;
                } else if (mo11645b(gVar) && !((AbstractC10287j0) mo11644c(gVar)).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: j */
    public AbstractC10462s0<? extends AbstractC10482x> mo11677j() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    /* renamed from: l */
    public Map<C10418l.C10428g, Object> mo11642l() {
        return Collections.unmodifiableMap(m11683a(true));
    }

    /* renamed from: m */
    public abstract C10491g mo11676m();

    /* renamed from: n */
    public void mo11641n() {
    }

    public Object writeReplace() throws ObjectStreamException {
        return new C10477w(this);
    }
}
