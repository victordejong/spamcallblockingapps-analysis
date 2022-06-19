package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
import com.google.android.gms.internal.ads.dnh.C12383b;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh.class */
public abstract class dnh<MessageType extends dnh<MessageType, BuilderType>, BuilderType extends C12383b<MessageType, BuilderType>> extends dln<MessageType, BuilderType> {
    private static Map<Object, dnh<?, ?>> zzitp = new ConcurrentHashMap();
    protected dqj zzitn = dqj.m16009a();
    private int zzito = -1;

    /* renamed from: com.google.android.gms.internal.ads.dnh$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$a.class */
    protected static final class C12382a<T extends dnh<T, ?>> extends dlo<T> {

        /* renamed from: a */
        private final T f47273a;

        public C12382a(T t) {
            this.f47273a = t;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dnh$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$b.class */
    public static class C12383b<MessageType extends dnh<MessageType, BuilderType>, BuilderType extends C12383b<MessageType, BuilderType>> extends dlm<MessageType, BuilderType> {

        /* renamed from: a */
        protected MessageType f47274a;

        /* renamed from: b */
        protected boolean f47275b = false;

        /* renamed from: c */
        private final MessageType f47276c;

        public C12383b(MessageType messagetype) {
            this.f47276c = messagetype;
            this.f47274a = (MessageType) messagetype.mo14895a(C12385d.f47280d, null);
        }

        /* renamed from: a */
        public MessageType mo16260e() {
            if (this.f47275b) {
                return this.f47274a;
            }
            MessageType messagetype = this.f47274a;
            dpi.m16196a().m16194a((dpi) messagetype).mo16116c(messagetype);
            this.f47275b = true;
            return this.f47274a;
        }

        /* renamed from: a */
        private static void m16329a(MessageType messagetype, MessageType messagetype2) {
            dpi.m16196a().m16194a((dpi) messagetype).mo16117b(messagetype, messagetype2);
        }

        /* renamed from: b */
        public final BuilderType mo16331a(dmi dmiVar, dmt dmtVar) throws IOException {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            try {
                dpi.m16196a().m16194a((dpi) this.f47274a).mo16122a(this.f47274a, dmp.m16407a(dmiVar), dmtVar);
                return this;
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof IOException)) {
                    throw e;
                }
                throw ((IOException) e.getCause());
            }
        }

        /* renamed from: b */
        public final BuilderType mo16328a(byte[] bArr, int i, dmt dmtVar) throws zzenn {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            try {
                dpi.m16196a().m16194a((dpi) this.f47274a).mo16119a(this.f47274a, bArr, 0, i, new dlr(dmtVar));
                return this;
            } catch (zzenn e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzenn.m13635a();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.dlm
        /* renamed from: a */
        protected final /* synthetic */ dlm mo16332a(dln dlnVar) {
            return m16330a((C12383b<MessageType, BuilderType>) ((dnh) dlnVar));
        }

        /* renamed from: a */
        public final BuilderType m16330a(MessageType messagetype) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            m16329a(this.f47274a, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.ads.dlm
        /* renamed from: b */
        public final /* synthetic */ dlm mo16327b() {
            return (C12383b) clone();
        }

        /* renamed from: c */
        public final void m16324c() {
            MessageType messagetype = (MessageType) this.f47274a.mo14895a(C12385d.f47280d, null);
            m16329a(messagetype, this.f47274a);
            this.f47274a = messagetype;
        }

        @Override // com.google.android.gms.internal.ads.dlm
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            C12383b c12383b = (C12383b) this.f47276c.mo14895a(C12385d.f47281e, null);
            c12383b.m16330a((C12383b) mo16260e());
            return c12383b;
        }

        /* renamed from: d */
        public final MessageType mo16259f() {
            MessageType mo16260e = mo16260e();
            if (mo16260e.mo16249j()) {
                return mo16260e;
            }
            throw new zzeqb(mo16260e);
        }

        @Override // com.google.android.gms.internal.ads.dov
        /* renamed from: j */
        public final boolean mo16249j() {
            return dnh.m16347a(this.f47274a, false);
        }

        @Override // com.google.android.gms.internal.ads.dov
        /* renamed from: o */
        public final /* synthetic */ dot mo16248o() {
            return this.f47276c;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dnh$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$c.class */
    public static abstract class AbstractC12384c<MessageType extends AbstractC12384c<MessageType, BuilderType>, BuilderType> extends dnh<MessageType, BuilderType> implements dov {
        protected dmz<Object> zzitu = dmz.m16380a();

        /* renamed from: a */
        public final dmz<Object> m16322a() {
            if (this.zzitu.f47261b) {
                this.zzitu = (dmz) this.zzitu.clone();
            }
            return this.zzitu;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dnh$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$d.class */
    public static final class C12385d {

        /* renamed from: a */
        public static final int f47277a = 1;

        /* renamed from: b */
        public static final int f47278b = 2;

        /* renamed from: c */
        public static final int f47279c = 3;

        /* renamed from: d */
        public static final int f47280d = 4;

        /* renamed from: e */
        public static final int f47281e = 5;

        /* renamed from: f */
        public static final int f47282f = 6;

        /* renamed from: g */
        public static final int f47283g = 7;

        /* renamed from: h */
        private static final /* synthetic */ int[] f47284h = {1, 2, 3, 4, 5, 6, 7};

        /* renamed from: a */
        public static int[] m16321a() {
            return (int[]) f47284h.clone();
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dnh$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$e.class */
    public static final class C12386e<ContainingType extends dot, Type> extends dmu<ContainingType, Type> {
    }

    /* renamed from: a */
    private static <T extends dnh<T, ?>> T m16351a(T t) throws zzenn {
        if (t == null || m16347a((dnh) t, true)) {
            return t;
        }
        zzenn zzennVar = new zzenn(new zzeqb(t).getMessage());
        zzennVar.f50224a = t;
        throw zzennVar;
    }

    /* renamed from: a */
    public static <T extends dnh<T, ?>> T m16350a(T t, dlw dlwVar) throws zzenn {
        return (T) m16351a(m16351a(m16337b(t, dlwVar, dmt.m16396a())));
    }

    /* renamed from: a */
    public static <T extends dnh<T, ?>> T m16349a(T t, dlw dlwVar, dmt dmtVar) throws zzenn {
        return (T) m16351a(m16337b(t, dlwVar, dmtVar));
    }

    /* renamed from: a */
    private static <T extends dnh<T, ?>> T m16348a(T t, dmi dmiVar, dmt dmtVar) throws zzenn {
        T t2 = (T) t.mo14895a(C12385d.f47280d, null);
        try {
            dpp m16194a = dpi.m16196a().m16194a((dpi) t2);
            m16194a.mo16122a(t2, dmp.m16407a(dmiVar), dmtVar);
            m16194a.mo16116c(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof zzenn) {
                throw ((zzenn) e.getCause());
            }
            zzenn zzennVar = new zzenn(e.getMessage());
            zzennVar.f50224a = t2;
            throw zzennVar;
        } catch (RuntimeException e2) {
            if (!(e2.getCause() instanceof zzenn)) {
                throw e2;
            }
            throw ((zzenn) e2.getCause());
        }
    }

    /* renamed from: a */
    public static <T extends dnh<T, ?>> T m16346a(T t, byte[] bArr) throws zzenn {
        return (T) m16351a(m16345a(t, bArr, bArr.length, dmt.m16396a()));
    }

    /* renamed from: a */
    private static <T extends dnh<T, ?>> T m16345a(T t, byte[] bArr, int i, dmt dmtVar) throws zzenn {
        T t2 = (T) t.mo14895a(C12385d.f47280d, null);
        try {
            dpp m16194a = dpi.m16196a().m16194a((dpi) t2);
            m16194a.mo16119a(t2, bArr, 0, i, new dlr(dmtVar));
            m16194a.mo16116c(t2);
            if (t2.zziop == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzenn) {
                throw ((zzenn) e.getCause());
            }
            zzenn zzennVar = new zzenn(e.getMessage());
            zzennVar.f50224a = t2;
            throw zzennVar;
        } catch (IndexOutOfBoundsException e2) {
            zzenn m13635a = zzenn.m13635a();
            m13635a.f50224a = t2;
            throw m13635a;
        }
    }

    /* renamed from: a */
    public static <T extends dnh<T, ?>> T m16344a(T t, byte[] bArr, dmt dmtVar) throws zzenn {
        return (T) m16351a(m16345a(t, bArr, bArr.length, dmtVar));
    }

    /* renamed from: a */
    public static <T extends dnh<?, ?>> T m16340a(Class<T> cls) {
        dnh<?, ?> dnhVar = zzitp.get(cls);
        dnh<?, ?> dnhVar2 = dnhVar;
        if (dnhVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                dnhVar2 = zzitp.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        dnh<?, ?> dnhVar3 = dnhVar2;
        if (dnhVar2 == null) {
            dnhVar3 = (dnh) ((dnh) dqm.m15995a(cls)).mo14895a(C12385d.f47282f, (Object) null);
            if (dnhVar3 == null) {
                throw new IllegalStateException();
            }
            zzitp.put(cls, dnhVar3);
        }
        return (T) dnhVar3;
    }

    /* renamed from: a */
    public static dnn m16343a(dnn dnnVar) {
        int size = dnnVar.size();
        return dnnVar.mo16305b(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static <E> dnr<E> m16342a(dnr<E> dnrVar) {
        int size = dnrVar.size();
        return dnrVar.mo16200a(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static Object m16341a(dot dotVar, String str, Object[] objArr) {
        return new dpk(dotVar, str, objArr);
    }

    /* renamed from: a */
    public static Object m16338a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (!(cause instanceof Error)) {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((Error) cause);
        }
    }

    /* renamed from: a */
    public static <T extends dnh<?, ?>> void m16339a(Class<T> cls, T t) {
        zzitp.put(cls, t);
    }

    /* renamed from: a */
    protected static final <T extends dnh<T, ?>> boolean m16347a(T t, boolean z) {
        Object obj = null;
        byte byteValue = ((Byte) t.mo14895a(C12385d.f47277a, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean mo16115d = dpi.m16196a().m16194a((dpi) t).mo16115d(t);
        if (z) {
            int i = C12385d.f47278b;
            if (mo16115d) {
                obj = t;
            }
            t.mo14895a(i, obj);
        }
        return mo16115d;
    }

    /* renamed from: b */
    private static <T extends dnh<T, ?>> T m16337b(T t, dlw dlwVar, dmt dmtVar) throws zzenn {
        try {
            dmi mo16130g = dlwVar.mo16130g();
            T t2 = (T) m16348a(t, mo16130g, dmtVar);
            try {
                mo16130g.mo16443a(0);
                return t2;
            } catch (zzenn e) {
                e.f50224a = t2;
                throw e;
            }
        } catch (zzenn e2) {
            throw e2;
        }
    }

    /* renamed from: a */
    public abstract Object mo14895a(int i, Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dln
    /* renamed from: a */
    public final void mo16352a(int i) {
        this.zzito = i;
    }

    @Override // com.google.android.gms.internal.ads.dot
    /* renamed from: a */
    public final void mo16258a(zzemk zzemkVar) throws IOException {
        dpi.m16196a().m16194a((dpi) this).mo16121a((dpp) this, (drd) (zzemkVar.f50219a != null ? zzemkVar.f50219a : new dms(zzemkVar)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return dpi.m16196a().m16194a((dpi) this).mo16120a(this, (dnh) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dln
    /* renamed from: h */
    public final int mo16336h() {
        return this.zzito;
    }

    public int hashCode() {
        if (this.zziop != 0) {
            return this.zziop;
        }
        this.zziop = dpi.m16196a().m16194a((dpi) this).mo16123a(this);
        return this.zziop;
    }

    /* renamed from: i */
    public final <MessageType extends dnh<MessageType, BuilderType>, BuilderType extends C12383b<MessageType, BuilderType>> BuilderType m16335i() {
        return (BuilderType) mo14895a(C12385d.f47281e, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.dov
    /* renamed from: j */
    public final boolean mo16249j() {
        return m16347a(this, true);
    }

    /* renamed from: k */
    public final BuilderType m16334k() {
        BuilderType buildertype = (BuilderType) mo14895a(C12385d.f47281e, (Object) null);
        buildertype.m16330a(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.dot
    /* renamed from: l */
    public final int mo16255l() {
        if (this.zzito == -1) {
            this.zzito = dpi.m16196a().m16194a((dpi) this).mo16118b(this);
        }
        return this.zzito;
    }

    @Override // com.google.android.gms.internal.ads.dot
    /* renamed from: m */
    public final /* synthetic */ dos mo16254m() {
        C12383b c12383b = (C12383b) mo14895a(C12385d.f47281e, (Object) null);
        c12383b.m16330a((C12383b) this);
        return c12383b;
    }

    @Override // com.google.android.gms.internal.ads.dot
    /* renamed from: n */
    public final /* synthetic */ dos mo16253n() {
        return (C12383b) mo14895a(C12385d.f47281e, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.dov
    /* renamed from: o */
    public final /* synthetic */ dot mo16248o() {
        return (dnh) mo14895a(C12385d.f47282f, (Object) null);
    }

    public String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        dou.m16252a(this, sb, 0);
        return sb.toString();
    }
}
