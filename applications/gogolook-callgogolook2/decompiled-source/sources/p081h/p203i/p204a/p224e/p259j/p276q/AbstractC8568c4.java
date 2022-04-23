package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8568c4.C8569a;
/* renamed from: h.i.a.e.j.q.c4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c4.class */
public abstract class AbstractC8568c4<MessageType extends AbstractC8568c4<MessageType, BuilderType>, BuilderType extends C8569a<MessageType, BuilderType>> extends AbstractC8663l2<MessageType, BuilderType> {
    public static Map<Object, AbstractC8568c4<?, ?>> zzbyo = new ConcurrentHashMap();
    public C8731s6 zzbym = C8731s6.m17191d();
    public int zzbyn = -1;

    /* renamed from: h.i.a.e.j.q.c4$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c4$a.class */
    public static class C8569a<MessageType extends AbstractC8568c4<MessageType, BuilderType>, BuilderType extends C8569a<MessageType, BuilderType>> extends AbstractC8672m2<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f19624a;

        /* renamed from: b */
        public MessageType f19625b;

        /* renamed from: c */
        public boolean f19626c = false;

        public C8569a(MessageType messagetype) {
            this.f19624a = messagetype;
            this.f19625b = (MessageType) ((AbstractC8568c4) messagetype.mo17556a(C8573e.f19631d, null, null));
        }

        /* renamed from: a */
        public static void m17756a(MessageType messagetype, MessageType messagetype2) {
            C8757v5.m17099a().m17097a((C8757v5) messagetype).mo16937b(messagetype, messagetype2);
        }

        /* renamed from: a */
        public final BuilderType m17757a(MessageType messagetype) {
            if (this.f19626c) {
                MessageType messagetype2 = (MessageType) ((AbstractC8568c4) this.f19625b.mo17556a(C8573e.f19631d, null, null));
                m17756a(messagetype2, this.f19625b);
                this.f19625b = messagetype2;
                this.f19626c = false;
            }
            m17756a(this.f19625b, messagetype);
            return this;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8666l5
        /* renamed from: a */
        public final /* synthetic */ AbstractC8648j5 mo17416a() {
            return this.f19624a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8672m2
        /* renamed from: a */
        public final /* synthetic */ AbstractC8672m2 mo17392a(AbstractC8663l2 l2Var) {
            m17757a((C8569a<MessageType, BuilderType>) ((AbstractC8568c4) l2Var));
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            C8569a aVar = (C8569a) this.f19624a.mo17556a(C8573e.f19632e, null, null);
            aVar.m17757a((C8569a) ((AbstractC8568c4) mo17428L()));
            return aVar;
        }

        /* renamed from: f */
        public MessageType mo17428L() {
            if (this.f19626c) {
                return this.f19625b;
            }
            MessageType messagetype = this.f19625b;
            C8757v5.m17099a().m17097a((C8757v5) messagetype).mo16936c(messagetype);
            this.f19626c = true;
            return this.f19625b;
        }

        /* renamed from: g */
        public final MessageType mo17429D() {
            MessageType messagetype = (MessageType) ((AbstractC8568c4) mo17428L());
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype.mo17556a(C8573e.f19628a, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean b = C8757v5.m17099a().m17097a((C8757v5) messagetype).mo16938b(messagetype);
                    z = b;
                    if (booleanValue) {
                        messagetype.mo17556a(C8573e.f19629b, b ? messagetype : null, null);
                        z = b;
                    }
                }
            }
            if (z) {
                return messagetype;
            }
            throw new C8713q6(messagetype);
        }
    }

    /* renamed from: h.i.a.e.j.q.c4$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c4$b.class */
    public static final class C8570b<T extends AbstractC8568c4<T, ?>> extends AbstractC8681n2<T> {

        /* renamed from: a */
        public final T f19627a;

        public C8570b(T t) {
            this.f19627a = t;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8739t5
        /* renamed from: a */
        public final /* synthetic */ Object mo17147a(AbstractC8590e3 e3Var, C8691o3 o3Var) throws C8647j4 {
            return AbstractC8568c4.m17763a(this.f19627a, e3Var, o3Var);
        }
    }

    /* renamed from: h.i.a.e.j.q.c4$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c4$c.class */
    public static abstract class AbstractC8571c<MessageType extends AbstractC8571c<MessageType, BuilderType>, BuilderType> extends AbstractC8568c4<MessageType, BuilderType> implements AbstractC8666l5 {
        public C8737t3<Object> zzbys = C8737t3.m17148i();
    }

    /* renamed from: h.i.a.e.j.q.c4$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c4$d.class */
    public static final class C8572d<ContainingType extends AbstractC8648j5, Type> extends C8673m3<ContainingType, Type> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: h.i.a.e.j.q.c4$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c4$e.class */
    public static final class C8573e {

        /* renamed from: a */
        public static final int f19628a = 1;

        /* renamed from: b */
        public static final int f19629b = 2;

        /* renamed from: c */
        public static final int f19630c = 3;

        /* renamed from: d */
        public static final int f19631d = 4;

        /* renamed from: e */
        public static final int f19632e = 5;

        /* renamed from: f */
        public static final int f19633f = 6;

        /* renamed from: g */
        public static final int f19634g = 7;

        /* renamed from: h */
        public static final /* synthetic */ int[] f19635h = {f19628a, f19629b, f19630c, f19631d, f19632e, f19633f, f19634g};

        /* renamed from: i */
        public static final int f19636i = 1;

        /* renamed from: j */
        public static final int f19637j = 2;

        /* renamed from: k */
        public static final int f19638k = 1;

        /* renamed from: l */
        public static final int f19639l = 2;

        static {
            int i = f19636i;
            int i2 = f19637j;
            int i3 = f19638k;
            int i4 = f19639l;
        }

        /* renamed from: a */
        public static int[] m17753a() {
            return (int[]) f19635h.clone();
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC8568c4<T, ?>> T m17763a(T t, AbstractC8590e3 e3Var, C8691o3 o3Var) throws C8647j4 {
        T t2 = (T) ((AbstractC8568c4) t.mo17556a(C8573e.f19631d, null, null));
        try {
            C8757v5.m17099a().m17097a((C8757v5) t2).mo16940a(t2, C8621h3.m17563a(e3Var), o3Var);
            C8757v5.m17099a().m17097a((C8757v5) t2).mo16936c(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof C8647j4) {
                throw ((C8647j4) e.getCause());
            }
            C8647j4 j4Var = new C8647j4(e.getMessage());
            j4Var.m17443a(t2);
            throw j4Var;
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof C8647j4) {
                throw ((C8647j4) e2.getCause());
            }
            throw e2;
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC8568c4<?, ?>> T m17761a(Class<T> cls) {
        AbstractC8568c4<?, ?> c4Var = zzbyo.get(cls);
        T t = (T) c4Var;
        if (c4Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) zzbyo.get(cls);
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
    public static Object m17762a(AbstractC8648j5 j5Var, String str, Object[] objArr) {
        return new C8775x5(j5Var, str, objArr);
    }

    /* renamed from: a */
    public static Object m17759a(Method method, Object obj, Object... objArr) {
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
    public static <T extends AbstractC8568c4<?, ?>> void m17760a(Class<T> cls, T t) {
        zzbyo.put(cls, t);
    }

    /* renamed from: g */
    public static <E> AbstractC8638i4<E> m17758g() {
        return C8766w5.m17078b();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8666l5
    /* renamed from: a */
    public final /* synthetic */ AbstractC8648j5 mo17416a() {
        return (AbstractC8568c4) mo17556a(C8573e.f19633f, (Object) null, (Object) null);
    }

    /* renamed from: a */
    public abstract Object mo17556a(int i, Object obj, Object obj2);

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8663l2
    /* renamed from: a */
    public final void mo17424a(int i) {
        this.zzbyn = i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8648j5
    /* renamed from: a */
    public final void mo17435a(AbstractC8632i3 i3Var) throws IOException {
        C8757v5.m17099a().m17098a((Class) getClass()).mo16941a((AbstractC8797z5) this, (AbstractC8677m7) C8655k3.m17430a(i3Var));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8648j5
    /* renamed from: b */
    public final int mo17434b() {
        if (this.zzbyn == -1) {
            this.zzbyn = C8757v5.m17099a().m17097a((C8757v5) this).mo16935d(this);
        }
        return this.zzbyn;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8648j5
    /* renamed from: c */
    public final /* synthetic */ AbstractC8657k5 mo17433c() {
        return (C8569a) mo17556a(C8573e.f19632e, (Object) null, (Object) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8648j5
    /* renamed from: e */
    public final /* synthetic */ AbstractC8657k5 mo17432e() {
        C8569a aVar = (C8569a) mo17556a(C8573e.f19632e, (Object) null, (Object) null);
        aVar.m17757a((C8569a) this);
        return aVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((AbstractC8568c4) mo17556a(C8573e.f19633f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return C8757v5.m17099a().m17097a((C8757v5) this).mo16939a(this, (AbstractC8568c4) obj);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8663l2
    /* renamed from: f */
    public final int mo17422f() {
        return this.zzbyn;
    }

    public int hashCode() {
        int i = this.zzbtr;
        if (i != 0) {
            return i;
        }
        this.zzbtr = C8757v5.m17099a().m17097a((C8757v5) this).mo16942a(this);
        return this.zzbtr;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8666l5
    public final boolean isInitialized() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) mo17556a(C8573e.f19628a, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean b = C8757v5.m17099a().m17097a((C8757v5) this).mo16938b(this);
        if (booleanValue) {
            mo17556a(C8573e.f19629b, b ? this : null, (Object) null);
        }
        return b;
    }

    public String toString() {
        return C8675m5.m17390a(this, super.toString());
    }
}
