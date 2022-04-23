package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
import com.google.android.gms.internal.ads.dnh.b;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh.class */
public abstract class dnh<MessageType extends dnh<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends dln<MessageType, BuilderType> {
    private static Map<Object, dnh<?, ?>> zzitp = new ConcurrentHashMap();
    protected dqj zzitn = dqj.a();
    private int zzito = -1;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$a.class */
    protected static final class a<T extends dnh<T, ?>> extends dlo<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T f26992a;

        public a(T t) {
            this.f26992a = t;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$b.class */
    public static class b<MessageType extends dnh<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends dlm<MessageType, BuilderType> {

        /* renamed from: a  reason: collision with root package name */
        protected MessageType f26993a;

        /* renamed from: b  reason: collision with root package name */
        protected boolean f26994b = false;

        /* renamed from: c  reason: collision with root package name */
        private final MessageType f26995c;

        /* JADX INFO: Access modifiers changed from: protected */
        public b(MessageType messagetype) {
            this.f26995c = messagetype;
            this.f26993a = (MessageType) ((dnh) messagetype.a(d.f26999d, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public MessageType e() {
            if (this.f26994b) {
                return this.f26993a;
            }
            MessageType messagetype = this.f26993a;
            dpi.a().a((dpi) messagetype).c(messagetype);
            this.f26994b = true;
            return this.f26993a;
        }

        private static void a(MessageType messagetype, MessageType messagetype2) {
            dpi.a().a((dpi) messagetype).b(messagetype, messagetype2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public final BuilderType a(dmi dmiVar, dmt dmtVar) throws IOException {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            try {
                dpi.a().a((dpi) this.f26993a).a(this.f26993a, dmp.a(dmiVar), dmtVar);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public final BuilderType a(byte[] bArr, int i, dmt dmtVar) throws zzenn {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            try {
                dpi.a().a((dpi) this.f26993a).a(this.f26993a, bArr, 0, i, new dlr(dmtVar));
                return this;
            } catch (zzenn e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzenn.a();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.dlm
        protected final /* synthetic */ dlm a(dln dlnVar) {
            return a((b<MessageType, BuilderType>) ((dnh) dlnVar));
        }

        public final BuilderType a(MessageType messagetype) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            a(this.f26993a, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.ads.dlm
        public final /* synthetic */ dlm b() {
            return (b) clone();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void c() {
            MessageType messagetype = (MessageType) ((dnh) this.f26993a.a(d.f26999d, null));
            a(messagetype, this.f26993a);
            this.f26993a = messagetype;
        }

        @Override // com.google.android.gms.internal.ads.dlm
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            b bVar = (b) this.f26995c.a(d.e, null);
            bVar.a((b) e());
            return bVar;
        }

        /* renamed from: d */
        public final MessageType f() {
            MessageType a2 = e();
            if (a2.j()) {
                return a2;
            }
            throw new zzeqb(a2);
        }

        @Override // com.google.android.gms.internal.ads.dov
        public final boolean j() {
            return dnh.a(this.f26993a, false);
        }

        @Override // com.google.android.gms.internal.ads.dov
        public final /* synthetic */ dot o() {
            return this.f26995c;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$c.class */
    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends dnh<MessageType, BuilderType> implements dov {
        protected dmz<Object> zzitu = dmz.a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final dmz<Object> a() {
            if (this.zzitu.f26981b) {
                this.zzitu = (dmz) this.zzitu.clone();
            }
            return this.zzitu;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public static final int f26996a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f26997b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f26998c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f26999d = 4;
        public static final int e = 5;
        public static final int f = 6;
        public static final int g = 7;
        private static final /* synthetic */ int[] h = {1, 2, 3, 4, 5, 6, 7};

        public static int[] a() {
            return (int[]) h.clone();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dnh$e.class */
    public static final class e<ContainingType extends dot, Type> extends dmu<ContainingType, Type> {
    }

    private static <T extends dnh<T, ?>> T a(T t) throws zzenn {
        if (t == null || a((dnh) t, true)) {
            return t;
        }
        zzenn zzennVar = new zzenn(new zzeqb(t).getMessage());
        zzennVar.f28628a = t;
        throw zzennVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends dnh<T, ?>> T a(T t, dlw dlwVar) throws zzenn {
        return (T) a(a(b(t, dlwVar, dmt.a())));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends dnh<T, ?>> T a(T t, dlw dlwVar, dmt dmtVar) throws zzenn {
        return (T) a(b(t, dlwVar, dmtVar));
    }

    private static <T extends dnh<T, ?>> T a(T t, dmi dmiVar, dmt dmtVar) throws zzenn {
        T t2 = (T) ((dnh) t.a(d.f26999d, null));
        try {
            dpp a2 = dpi.a().a((dpi) t2);
            a2.a(t2, dmp.a(dmiVar), dmtVar);
            a2.c(t2);
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzenn) {
                throw ((zzenn) e2.getCause());
            }
            zzenn zzennVar = new zzenn(e2.getMessage());
            zzennVar.f28628a = t2;
            throw zzennVar;
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof zzenn) {
                throw ((zzenn) e3.getCause());
            }
            throw e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends dnh<T, ?>> T a(T t, byte[] bArr) throws zzenn {
        return (T) a(a(t, bArr, bArr.length, dmt.a()));
    }

    private static <T extends dnh<T, ?>> T a(T t, byte[] bArr, int i, dmt dmtVar) throws zzenn {
        T t2 = (T) ((dnh) t.a(d.f26999d, null));
        try {
            dpp a2 = dpi.a().a((dpi) t2);
            a2.a(t2, bArr, 0, i, new dlr(dmtVar));
            a2.c(t2);
            if (t2.zziop == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzenn) {
                throw ((zzenn) e2.getCause());
            }
            zzenn zzennVar = new zzenn(e2.getMessage());
            zzennVar.f28628a = t2;
            throw zzennVar;
        } catch (IndexOutOfBoundsException e3) {
            zzenn a3 = zzenn.a();
            a3.f28628a = t2;
            throw a3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends dnh<T, ?>> T a(T t, byte[] bArr, dmt dmtVar) throws zzenn {
        return (T) a(a(t, bArr, bArr.length, dmtVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends dnh<?, ?>> T a(Class<T> cls) {
        dnh<?, ?> dnhVar = zzitp.get(cls);
        dnh<?, ?> dnhVar2 = dnhVar;
        if (dnhVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                dnhVar2 = zzitp.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        T t = (T) dnhVar2;
        if (dnhVar2 == null) {
            t = (T) ((dnh) ((dnh) dqm.a(cls)).a(d.f, (Object) null));
            if (t != null) {
                zzitp.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static dnn a(dnn dnnVar) {
        int size = dnnVar.size();
        return dnnVar.b(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> dnr<E> a(dnr<E> dnrVar) {
        int size = dnrVar.size();
        return dnrVar.a(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object a(dot dotVar, String str, Object[] objArr) {
        return new dpk(dotVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends dnh<?, ?>> void a(Class<T> cls, T t) {
        zzitp.put(cls, t);
    }

    protected static final <T extends dnh<T, ?>> boolean a(T t, boolean z) {
        Object obj = null;
        byte byteValue = ((Byte) t.a(d.f26996a, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean d2 = dpi.a().a((dpi) t).d(t);
        if (z) {
            int i = d.f26997b;
            if (d2) {
                obj = t;
            }
            t.a(i, obj);
        }
        return d2;
    }

    private static <T extends dnh<T, ?>> T b(T t, dlw dlwVar, dmt dmtVar) throws zzenn {
        try {
            dmi g = dlwVar.g();
            T t2 = (T) a(t, g, dmtVar);
            try {
                g.a(0);
                return t2;
            } catch (zzenn e2) {
                e2.f28628a = t2;
                throw e2;
            }
        } catch (zzenn e3) {
            throw e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object a(int i, Object obj);

    @Override // com.google.android.gms.internal.ads.dln
    final void a(int i) {
        this.zzito = i;
    }

    @Override // com.google.android.gms.internal.ads.dot
    public final void a(zzemk zzemkVar) throws IOException {
        dpi.a().a((dpi) this).a((dpp) this, (drd) (zzemkVar.f28624a != null ? zzemkVar.f28624a : new dms(zzemkVar)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return dpi.a().a((dpi) this).a(this, (dnh) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dln
    final int h() {
        return this.zzito;
    }

    public int hashCode() {
        if (this.zziop != 0) {
            return this.zziop;
        }
        this.zziop = dpi.a().a((dpi) this).a(this);
        return this.zziop;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends dnh<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> BuilderType i() {
        return (BuilderType) ((b) a(d.e, (Object) null));
    }

    @Override // com.google.android.gms.internal.ads.dov
    public final boolean j() {
        return a(this, true);
    }

    public final BuilderType k() {
        BuilderType buildertype = (BuilderType) ((b) a(d.e, (Object) null));
        buildertype.a(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.dot
    public final int l() {
        if (this.zzito == -1) {
            this.zzito = dpi.a().a((dpi) this).b(this);
        }
        return this.zzito;
    }

    @Override // com.google.android.gms.internal.ads.dot
    public final /* synthetic */ dos m() {
        b bVar = (b) a(d.e, (Object) null);
        bVar.a((b) this);
        return bVar;
    }

    @Override // com.google.android.gms.internal.ads.dot
    public final /* synthetic */ dos n() {
        return (b) a(d.e, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.dov
    public final /* synthetic */ dot o() {
        return (dnh) a(d.f, (Object) null);
    }

    public String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        dou.a(this, sb, 0);
        return sb.toString();
    }
}
