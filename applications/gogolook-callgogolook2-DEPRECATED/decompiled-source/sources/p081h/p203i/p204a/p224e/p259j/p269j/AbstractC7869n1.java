package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7869n1.C7870a;
/* renamed from: h.i.a.e.j.j.n1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n1.class */
public abstract class AbstractC7869n1<MessageType extends AbstractC7869n1<MessageType, BuilderType>, BuilderType extends C7870a<MessageType, BuilderType>> extends AbstractC7943w<MessageType, BuilderType> {
    public static Map<Object, AbstractC7869n1<?, ?>> zzme = new ConcurrentHashMap();
    public C7795e4 zzmc = C7795e4.m19437d();
    public int zzmd = -1;

    /* renamed from: h.i.a.e.j.j.n1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n1$a.class */
    public static class C7870a<MessageType extends AbstractC7869n1<MessageType, BuilderType>, BuilderType extends C7870a<MessageType, BuilderType>> extends AbstractC7950x<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f18424a;

        /* renamed from: b */
        public MessageType f18425b;

        /* renamed from: c */
        public boolean f18426c = false;

        public C7870a(MessageType messagetype) {
            this.f18424a = messagetype;
            this.f18425b = (MessageType) ((AbstractC7869n1) messagetype.mo19125a(C7874e.f18431d, null, null));
        }

        /* renamed from: a */
        public static void m19155a(MessageType messagetype, MessageType messagetype2) {
            C7811g3.m19382a().m19380a((C7811g3) messagetype).mo18793b(messagetype, messagetype2);
        }

        /* renamed from: a */
        public final BuilderType m19156a(MessageType messagetype) {
            if (this.f18426c) {
                MessageType messagetype2 = (MessageType) ((AbstractC7869n1) this.f18425b.mo19125a(C7874e.f18431d, null, null));
                m19155a(messagetype2, this.f18425b);
                this.f18425b = messagetype2;
                this.f18426c = false;
            }
            m19155a(this.f18425b, messagetype);
            return this;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7939v2
        /* renamed from: a */
        public final /* synthetic */ AbstractC7925t2 mo18856a() {
            return this.f18424a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7950x
        /* renamed from: a */
        public final /* synthetic */ AbstractC7950x mo18840a(AbstractC7943w wVar) {
            m19156a((C7870a<MessageType, BuilderType>) ((AbstractC7869n1) wVar));
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            C7870a aVar = (C7870a) this.f18424a.mo19125a(C7874e.f18432e, null, null);
            aVar.m19156a((C7870a) ((AbstractC7869n1) mo18865K()));
            return aVar;
        }

        /* renamed from: e */
        public MessageType mo18865K() {
            if (this.f18426c) {
                return this.f18425b;
            }
            MessageType messagetype = this.f18425b;
            C7811g3.m19382a().m19380a((C7811g3) messagetype).mo18794b(messagetype);
            this.f18426c = true;
            return this.f18425b;
        }

        /* renamed from: g */
        public final MessageType mo18864N() {
            MessageType messagetype = (MessageType) ((AbstractC7869n1) mo18865K());
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype.mo19125a(C7874e.f18428a, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean d = C7811g3.m19382a().m19380a((C7811g3) messagetype).mo18791d(messagetype);
                    z = d;
                    if (booleanValue) {
                        messagetype.mo19125a(C7874e.f18429b, d ? messagetype : null, null);
                        z = d;
                    }
                }
            }
            if (z) {
                return messagetype;
            }
            throw new C7779c4(messagetype);
        }
    }

    /* renamed from: h.i.a.e.j.j.n1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n1$b.class */
    public static final class C7871b<T extends AbstractC7869n1<T, ?>> extends AbstractC7957y<T> {

        /* renamed from: a */
        public final T f18427a;

        public C7871b(T t) {
            this.f18427a = t;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7794e3
        /* renamed from: a */
        public final /* synthetic */ Object mo19152a(AbstractC7890p0 p0Var, C7965z0 z0Var) throws C7924t1 {
            return AbstractC7869n1.m19162a(this.f18427a, p0Var, z0Var);
        }
    }

    /* renamed from: h.i.a.e.j.j.n1$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n1$c.class */
    public static abstract class AbstractC7872c<MessageType extends AbstractC7872c<MessageType, BuilderType>, BuilderType> extends AbstractC7869n1<MessageType, BuilderType> implements AbstractC7939v2 {
        public C7792e1<Object> zzmi = C7792e1.m19449i();
    }

    /* renamed from: h.i.a.e.j.j.n1$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n1$d.class */
    public static final class C7873d<ContainingType extends AbstractC7925t2, Type> extends C7951x0<ContainingType, Type> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: h.i.a.e.j.j.n1$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n1$e.class */
    public static final class C7874e {

        /* renamed from: a */
        public static final int f18428a = 1;

        /* renamed from: b */
        public static final int f18429b = 2;

        /* renamed from: c */
        public static final int f18430c = 3;

        /* renamed from: d */
        public static final int f18431d = 4;

        /* renamed from: e */
        public static final int f18432e = 5;

        /* renamed from: f */
        public static final int f18433f = 6;

        /* renamed from: g */
        public static final int f18434g = 7;

        /* renamed from: h */
        public static final /* synthetic */ int[] f18435h = {f18428a, f18429b, f18430c, f18431d, f18432e, f18433f, f18434g};

        /* renamed from: i */
        public static final int f18436i = 1;

        /* renamed from: j */
        public static final int f18437j = 2;

        /* renamed from: k */
        public static final int f18438k = 1;

        /* renamed from: l */
        public static final int f18439l = 2;

        static {
            int i = f18436i;
            int i2 = f18437j;
            int i3 = f18438k;
            int i4 = f18439l;
        }

        /* renamed from: a */
        public static int[] m19151a() {
            return (int[]) f18435h.clone();
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC7869n1<T, ?>> T m19162a(T t, AbstractC7890p0 p0Var, C7965z0 z0Var) throws C7924t1 {
        T t2 = (T) ((AbstractC7869n1) t.mo19125a(C7874e.f18431d, null, null));
        try {
            C7811g3.m19382a().m19380a((C7811g3) t2).mo18797a(t2, C7911s0.m19039a(p0Var), z0Var);
            C7811g3.m19382a().m19380a((C7811g3) t2).mo18794b(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof C7924t1) {
                throw ((C7924t1) e.getCause());
            }
            C7924t1 t1Var = new C7924t1(e.getMessage());
            t1Var.m18892a(t2);
            throw t1Var;
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof C7924t1) {
                throw ((C7924t1) e2.getCause());
            }
            throw e2;
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC7869n1<?, ?>> T m19160a(Class<T> cls) {
        AbstractC7869n1<?, ?> n1Var = zzme.get(cls);
        T t = (T) n1Var;
        if (n1Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) zzme.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (t != null) {
            return t;
        }
        String valueOf = String.valueOf(cls.getName());
        throw new IllegalStateException(valueOf.length() != 0 ? "Unable to get default instance for: ".concat(valueOf) : new String("Unable to get default instance for: "));
    }

    /* renamed from: a */
    public static Object m19161a(AbstractC7925t2 t2Var, String str, Object[] objArr) {
        return new C7828i3(t2Var, str, objArr);
    }

    /* renamed from: a */
    public static Object m19158a(Method method, Object obj, Object... objArr) {
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

    /* renamed from: a */
    public static <T extends AbstractC7869n1<?, ?>> void m19159a(Class<T> cls, T t) {
        zzme.put(cls, t);
    }

    /* renamed from: g */
    public static <E> AbstractC7912s1<E> m19157g() {
        return C7820h3.m19359c();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7939v2
    /* renamed from: a */
    public final /* synthetic */ AbstractC7925t2 mo18856a() {
        return (AbstractC7869n1) mo19125a(C7874e.f18433f, (Object) null, (Object) null);
    }

    /* renamed from: a */
    public abstract Object mo19125a(int i, Object obj, Object obj2);

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7943w
    /* renamed from: a */
    public final void mo18854a(int i) {
        this.zzmd = i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7925t2
    /* renamed from: a */
    public final void mo18884a(AbstractC7918t0 t0Var) throws IOException {
        C7811g3.m19382a().m19381a((Class) getClass()).mo18796a((AbstractC7849k3) this, (AbstractC7962y4) C7937v0.m18858a(t0Var));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7925t2
    /* renamed from: b */
    public final /* synthetic */ AbstractC7932u2 mo18883b() {
        return (C7870a) mo19125a(C7874e.f18432e, (Object) null, (Object) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7925t2
    /* renamed from: d */
    public final int mo18882d() {
        if (this.zzmd == -1) {
            this.zzmd = C7811g3.m19382a().m19380a((C7811g3) this).mo18792c(this);
        }
        return this.zzmd;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7943w
    /* renamed from: e */
    public final int mo18852e() {
        return this.zzmd;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((AbstractC7869n1) mo19125a(C7874e.f18433f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return C7811g3.m19382a().m19380a((C7811g3) this).mo18795a(this, (AbstractC7869n1) obj);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7925t2
    /* renamed from: f */
    public final /* synthetic */ AbstractC7932u2 mo18881f() {
        C7870a aVar = (C7870a) mo19125a(C7874e.f18432e, (Object) null, (Object) null);
        aVar.m19156a((C7870a) this);
        return aVar;
    }

    public int hashCode() {
        int i = this.zzhg;
        if (i != 0) {
            return i;
        }
        this.zzhg = C7811g3.m19382a().m19380a((C7811g3) this).mo18798a(this);
        return this.zzhg;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7939v2
    public final boolean isInitialized() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) mo19125a(C7874e.f18428a, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean d = C7811g3.m19382a().m19380a((C7811g3) this).mo18791d(this);
        if (booleanValue) {
            mo19125a(C7874e.f18429b, d ? this : null, (Object) null);
        }
        return d;
    }

    public String toString() {
        return C7946w2.m18845a(this, super.toString());
    }
}
