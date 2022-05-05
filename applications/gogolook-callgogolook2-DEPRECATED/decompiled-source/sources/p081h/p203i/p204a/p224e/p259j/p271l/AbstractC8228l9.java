package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9.C8230b;
/* renamed from: h.i.a.e.j.l.l9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l9.class */
public abstract class AbstractC8228l9<MessageType extends AbstractC8228l9<MessageType, BuilderType>, BuilderType extends C8230b<MessageType, BuilderType>> extends AbstractC8067d8<MessageType, BuilderType> {
    public static Map<Object, AbstractC8228l9<?, ?>> zzcoo = new ConcurrentHashMap();
    public C8130h zzcom = C8130h.m18486d();
    public int zzcon = -1;

    /* renamed from: h.i.a.e.j.l.l9$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l9$a.class */
    public static final class C8229a<T extends AbstractC8228l9<T, ?>> extends C8086e8<T> {
        public C8229a(T t) {
        }
    }

    /* renamed from: h.i.a.e.j.l.l9$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l9$b.class */
    public static class C8230b<MessageType extends AbstractC8228l9<MessageType, BuilderType>, BuilderType extends C8230b<MessageType, BuilderType>> extends AbstractC8049c8<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f19062a;

        /* renamed from: b */
        public MessageType f19063b;

        /* renamed from: c */
        public boolean f19064c = false;

        public C8230b(MessageType messagetype) {
            this.f19062a = messagetype;
            this.f19063b = (MessageType) ((AbstractC8228l9) messagetype.mo17912a(C8234f.f19068d, null, null));
        }

        /* renamed from: a */
        public static void m18348a(MessageType messagetype, MessageType messagetype2) {
            C8170ib.m18462a().m18460a((C8170ib) messagetype).mo17967b(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8049c8
        /* renamed from: a */
        public final /* synthetic */ AbstractC8049c8 mo18350a(AbstractC8067d8 d8Var) {
            m18349a((C8230b<MessageType, BuilderType>) ((AbstractC8228l9) d8Var));
            return this;
        }

        /* renamed from: a */
        public final BuilderType m18349a(MessageType messagetype) {
            if (this.f19064c) {
                mo18344e();
                this.f19064c = false;
            }
            m18348a(this.f19063b, messagetype);
            return this;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8430wa
        /* renamed from: b */
        public final /* synthetic */ AbstractC8390ua mo18102b() {
            return this.f19062a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            C8230b bVar = (C8230b) this.f19062a.mo17912a(C8234f.f19069e, null, null);
            bVar.m18349a((C8230b) ((AbstractC8228l9) mo17997M()));
            return bVar;
        }

        /* renamed from: e */
        public void mo18344e() {
            MessageType messagetype = (MessageType) ((AbstractC8228l9) this.f19063b.mo17912a(C8234f.f19068d, null, null));
            m18348a(messagetype, this.f19063b);
            this.f19063b = messagetype;
        }

        /* renamed from: f */
        public MessageType mo17997M() {
            if (this.f19064c) {
                return this.f19063b;
            }
            MessageType messagetype = this.f19063b;
            C8170ib.m18462a().m18460a((C8170ib) messagetype).mo17960d(messagetype);
            this.f19064c = true;
            return this.f19063b;
        }

        /* renamed from: g */
        public final MessageType m18346h() {
            MessageType messagetype = (MessageType) ((AbstractC8228l9) mo17997M());
            if (messagetype.m18354g()) {
                return messagetype;
            }
            throw new C8090f(messagetype);
        }
    }

    /* renamed from: h.i.a.e.j.l.l9$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l9$c.class */
    public static abstract class AbstractC8231c<MessageType extends AbstractC8231c<MessageType, BuilderType>, BuilderType extends C8232d<MessageType, BuilderType>> extends AbstractC8228l9<MessageType, BuilderType> implements AbstractC8430wa {
        public C8087e9<C8233e> zzcot = C8087e9.m18564g();

        /* renamed from: k */
        public final C8087e9<C8233e> m18345k() {
            if (this.zzcot.m18572b()) {
                this.zzcot = (C8087e9) this.zzcot.clone();
            }
            return this.zzcot;
        }
    }

    /* renamed from: h.i.a.e.j.l.l9$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l9$d.class */
    public static class C8232d<MessageType extends AbstractC8231c<MessageType, BuilderType>, BuilderType extends C8232d<MessageType, BuilderType>> extends C8230b<MessageType, BuilderType> implements AbstractC8430wa {
        public C8232d(MessageType messagetype) {
            super(messagetype);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9.C8230b, p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8451xa
        /* renamed from: M */
        public /* synthetic */ AbstractC8390ua mo17997M() {
            if (this.f19064c) {
                return (AbstractC8231c) this.f19063b;
            }
            ((AbstractC8231c) this.f19063b).zzcot.m18566e();
            return (AbstractC8231c) super.mo17997M();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9.C8230b
        /* renamed from: e */
        public void mo18344e() {
            super.mo18344e();
            MessageType messagetype = this.f19063b;
            ((AbstractC8231c) messagetype).zzcot = (C8087e9) ((AbstractC8231c) messagetype).zzcot.clone();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9.C8230b
        /* renamed from: f */
        public /* synthetic */ AbstractC8228l9 mo18343f() {
            return (AbstractC8231c) mo17997M();
        }
    }

    /* renamed from: h.i.a.e.j.l.l9$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l9$e.class */
    public static final class C8233e implements AbstractC8127g9<C8233e> {
        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8127g9
        /* renamed from: O */
        public final EnumC8374u mo18342O() {
            throw new NoSuchMethodError();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8127g9
        /* renamed from: R */
        public final boolean mo18341R() {
            throw new NoSuchMethodError();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8127g9
        /* renamed from: S */
        public final EnumC8432x mo18340S() {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: h.i.a.e.j.l.l9$f */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l9$f.class */
    public static final class C8234f {

        /* renamed from: a */
        public static final int f19065a = 1;

        /* renamed from: b */
        public static final int f19066b = 2;

        /* renamed from: c */
        public static final int f19067c = 3;

        /* renamed from: d */
        public static final int f19068d = 4;

        /* renamed from: e */
        public static final int f19069e = 5;

        /* renamed from: f */
        public static final int f19070f = 6;

        /* renamed from: g */
        public static final int f19071g = 7;

        /* renamed from: h */
        public static final /* synthetic */ int[] f19072h = {f19065a, f19066b, f19067c, f19068d, f19069e, f19070f, f19071g};

        /* renamed from: i */
        public static final int f19073i = 1;

        /* renamed from: j */
        public static final int f19074j = 2;

        /* renamed from: k */
        public static final int f19075k = 1;

        /* renamed from: l */
        public static final int f19076l = 2;

        static {
            int i = f19073i;
            int i2 = f19074j;
            int i3 = f19075k;
            int i4 = f19076l;
        }

        /* renamed from: a */
        public static int[] m18339a() {
            return (int[]) f19072h.clone();
        }
    }

    /* renamed from: a */
    public static <T extends AbstractC8228l9<?, ?>> T m18358a(Class<T> cls) {
        AbstractC8228l9<?, ?> l9Var = zzcoo.get(cls);
        AbstractC8228l9<?, ?> l9Var2 = l9Var;
        if (l9Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                l9Var2 = zzcoo.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        T t = (T) l9Var2;
        if (l9Var2 == null) {
            t = (T) ((AbstractC8228l9) ((AbstractC8228l9) C8190k.m18441a(cls)).mo17912a(C8234f.f19070f, (Object) null, (Object) null));
            if (t != null) {
                zzcoo.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* renamed from: a */
    public static <E> AbstractC8409v9<E> m18359a(AbstractC8409v9<E> v9Var) {
        int size = v9Var.size();
        return v9Var.mo18117b(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static Object m18360a(AbstractC8390ua uaVar, String str, Object[] objArr) {
        return new C8189jb(uaVar, str, objArr);
    }

    /* renamed from: a */
    public static Object m18356a(Method method, Object obj, Object... objArr) {
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
    public static <T extends AbstractC8228l9<?, ?>> void m18357a(Class<T> cls, T t) {
        zzcoo.put(cls, t);
    }

    /* renamed from: a */
    public static final <T extends AbstractC8228l9<T, ?>> boolean m18361a(T t, boolean z) {
        byte byteValue = ((Byte) t.mo17912a(C8234f.f19065a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean c = C8170ib.m18462a().m18460a((C8170ib) t).mo17964c(t);
        if (z) {
            t.mo17912a(C8234f.f19066b, c ? t : null, null);
        }
        return c;
    }

    /* renamed from: i */
    public static AbstractC8353s9 m18352i() {
        return C8264n9.m18256c();
    }

    /* renamed from: j */
    public static <E> AbstractC8409v9<E> m18351j() {
        return C8148hb.m18478c();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8390ua
    /* renamed from: a */
    public final /* synthetic */ AbstractC8451xa mo18135a() {
        C8230b bVar = (C8230b) mo17912a(C8234f.f19069e, (Object) null, (Object) null);
        bVar.m18349a((C8230b) this);
        return bVar;
    }

    /* renamed from: a */
    public abstract Object mo17912a(int i, Object obj, Object obj2);

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8067d8
    /* renamed from: a */
    public final void mo18362a(int i) {
        this.zzcon = i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8390ua
    /* renamed from: a */
    public final void mo18134a(AbstractC8447x8 x8Var) throws IOException {
        C8170ib.m18462a().m18460a((C8170ib) this).mo17976a((AbstractC8212kb) this, (AbstractC8468z) C8010a9.m18691a(x8Var));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8430wa
    /* renamed from: b */
    public final /* synthetic */ AbstractC8390ua mo18102b() {
        return (AbstractC8228l9) mo17912a(C8234f.f19070f, (Object) null, (Object) null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8390ua
    /* renamed from: d */
    public final int mo18132d() {
        if (this.zzcon == -1) {
            this.zzcon = C8170ib.m18462a().m18460a((C8170ib) this).mo17972b(this);
        }
        return this.zzcon;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return C8170ib.m18462a().m18460a((C8170ib) this).mo17975a(this, (AbstractC8228l9) obj);
        }
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8067d8
    /* renamed from: f */
    public final int mo18355f() {
        return this.zzcon;
    }

    /* renamed from: g */
    public final boolean m18354g() {
        return m18361a(this, Boolean.TRUE.booleanValue());
    }

    /* renamed from: h */
    public final <MessageType extends AbstractC8228l9<MessageType, BuilderType>, BuilderType extends C8230b<MessageType, BuilderType>> BuilderType m18353h() {
        return (BuilderType) ((C8230b) mo17912a(C8234f.f19069e, (Object) null, (Object) null));
    }

    public int hashCode() {
        int i = this.zzckg;
        if (i != 0) {
            return i;
        }
        this.zzckg = C8170ib.m18462a().m18460a((C8170ib) this).mo17982a(this);
        return this.zzckg;
    }

    public String toString() {
        return C8483za.m17907a(this, super.toString());
    }
}
