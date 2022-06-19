package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import com.google.android.gms.internal.ads.dcw.C2955a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcw.class */
public abstract class dcw<MessageType extends dcw<MessageType, BuilderType>, BuilderType extends C2955a<MessageType, BuilderType>> extends day<MessageType, BuilderType> {
    private static Map<Object, dcw<?, ?>> zzhxx = new ConcurrentHashMap();
    protected dfu zzhxv = dfu.m9752a();
    private int zzhxw = -1;

    /* renamed from: com.google.android.gms.internal.ads.dcw$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcw$a.class */
    public static class C2955a<MessageType extends dcw<MessageType, BuilderType>, BuilderType extends C2955a<MessageType, BuilderType>> extends dbb<MessageType, BuilderType> {

        /* renamed from: a */
        protected MessageType f14072a;

        /* renamed from: b */
        protected boolean f14073b = false;

        /* renamed from: c */
        private final MessageType f14074c;

        public C2955a(MessageType messagetype) {
            this.f14074c = messagetype;
            this.f14072a = (MessageType) messagetype.mo8219a(C2960f.f14079d, null, null);
        }

        /* renamed from: a */
        private static void m10071a(MessageType messagetype, MessageType messagetype2) {
            der.m9928a().m9926a((der) messagetype).mo9839b(messagetype, messagetype2);
        }

        /* renamed from: b */
        public final BuilderType mo10073a(dby dbyVar, dci dciVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            try {
                der.m9928a().m9926a((der) this.f14072a).mo9844a(this.f14072a, dcb.m10150a(dbyVar), dciVar);
                return this;
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof IOException)) {
                    throw e;
                }
                throw ((IOException) e.getCause());
            }
        }

        /* renamed from: b */
        private final BuilderType m10067b(byte[] bArr, int i, int i2, dci dciVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            try {
                der.m9928a().m9926a((der) this.f14072a).mo9841a(this.f14072a, bArr, 0, i2 + 0, new dbh(dciVar));
                return this;
            } catch (zzeco e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzeco.m6551a();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.dbb
        /* renamed from: a */
        protected final /* synthetic */ dbb mo10074a(day dayVar) {
            return m10072a((C2955a<MessageType, BuilderType>) ((dcw) dayVar));
        }

        @Override // com.google.android.gms.internal.ads.dbb
        /* renamed from: a */
        public final /* synthetic */ dbb mo10070a(byte[] bArr, int i, int i2, dci dciVar) {
            return m10067b(bArr, 0, i2, dciVar);
        }

        /* renamed from: a */
        public final BuilderType m10072a(MessageType messagetype) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            m10071a(this.f14072a, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.ads.dbb
        /* renamed from: b */
        public final /* synthetic */ dbb mo10069b() {
            return (C2955a) clone();
        }

        /* renamed from: c */
        public void m10066c() {
            MessageType messagetype = (MessageType) this.f14072a.mo8219a(C2960f.f14079d, null, null);
            m10071a(messagetype, this.f14072a);
            this.f14072a = messagetype;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.dbb
        public /* synthetic */ Object clone() {
            C2955a c2955a = (C2955a) this.f14074c.mo8219a(C2960f.f14080e, null, null);
            c2955a.m10072a((C2955a) ((dcw) mo9988f()));
            return c2955a;
        }

        /* renamed from: d */
        public MessageType mo9988f() {
            MessageType messagetype;
            if (this.f14073b) {
                messagetype = this.f14072a;
            } else {
                MessageType messagetype2 = this.f14072a;
                der.m9928a().m9926a((der) messagetype2).mo9838c(messagetype2);
                this.f14073b = true;
                messagetype = this.f14072a;
            }
            return messagetype;
        }

        /* renamed from: e */
        public final MessageType mo9987g() {
            MessageType messagetype = (MessageType) mo9988f();
            if (!messagetype.mo9976o()) {
                throw new zzeez(messagetype);
            }
            return messagetype;
        }

        @Override // com.google.android.gms.internal.ads.dei
        /* renamed from: o */
        public final boolean mo9976o() {
            return dcw.m10091a(this.f14072a, false);
        }

        @Override // com.google.android.gms.internal.ads.dei
        /* renamed from: w */
        public final /* synthetic */ deg mo9975w() {
            return this.f14074c;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dcw$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcw$b.class */
    public static abstract class AbstractC2956b<MessageType extends AbstractC2956b<MessageType, BuilderType>, BuilderType> extends dcw<MessageType, BuilderType> implements dei {
        protected dcl<C2959e> zzhxy = dcl.m10125a();

        /* renamed from: a */
        public final dcl<C2959e> m10063a() {
            if (this.zzhxy.m10112c()) {
                this.zzhxy = (dcl) this.zzhxy.clone();
            }
            return this.zzhxy;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dcw$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcw$c.class */
    public static final class C2957c<T extends dcw<T, ?>> extends dbd<T> {

        /* renamed from: a */
        private final T f14075a;

        public C2957c(T t) {
            this.f14075a = t;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dcw$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcw$d.class */
    public static final class C2958d<ContainingType extends deg, Type> extends dcg<ContainingType, Type> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.dcw$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcw$e.class */
    public static final class C2959e implements dcn<C2959e> {
        @Override // com.google.android.gms.internal.ads.dcn
        /* renamed from: a */
        public final int mo10062a() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.dcn
        /* renamed from: a */
        public final def mo10061a(def defVar, deg degVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.dcn
        /* renamed from: a */
        public final del mo10060a(del delVar, del delVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.dcn
        /* renamed from: b */
        public final dgi mo10059b() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.dcn
        /* renamed from: c */
        public final dgp mo10058c() {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.dcn
        /* renamed from: d */
        public final boolean mo10057d() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.dcn
        /* renamed from: e */
        public final boolean mo10056e() {
            throw new NoSuchMethodError();
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dcw$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcw$f.class */
    public static final class C2960f {

        /* renamed from: a */
        public static final int f14076a = 1;

        /* renamed from: b */
        public static final int f14077b = 2;

        /* renamed from: c */
        public static final int f14078c = 3;

        /* renamed from: d */
        public static final int f14079d = 4;

        /* renamed from: e */
        public static final int f14080e = 5;

        /* renamed from: f */
        public static final int f14081f = 6;

        /* renamed from: g */
        public static final int f14082g = 7;

        /* renamed from: l */
        private static final /* synthetic */ int[] f14087l = {f14076a, f14077b, f14078c, f14079d, f14080e, f14081f, f14082g};

        /* renamed from: h */
        public static final int f14083h = 1;

        /* renamed from: i */
        public static final int f14084i = 2;

        /* renamed from: m */
        private static final /* synthetic */ int[] f14088m = {f14083h, f14084i};

        /* renamed from: j */
        public static final int f14085j = 1;

        /* renamed from: k */
        public static final int f14086k = 2;

        /* renamed from: n */
        private static final /* synthetic */ int[] f14089n = {f14085j, f14086k};

        /* renamed from: a */
        public static int[] m10055a() {
            return (int[]) f14087l.clone();
        }
    }

    /* renamed from: a */
    private static <T extends dcw<T, ?>> T m10095a(T t) {
        if (t == null || t.mo9976o()) {
            return t;
        }
        throw new zzeco(new zzeez(t).getMessage()).m6550a(t);
    }

    /* renamed from: a */
    public static <T extends dcw<T, ?>> T m10094a(T t, dbi dbiVar) {
        return (T) m10095a(m10095a(m10081b(t, dbiVar, dci.m10138a())));
    }

    /* renamed from: a */
    public static <T extends dcw<T, ?>> T m10093a(T t, dbi dbiVar, dci dciVar) {
        return (T) m10095a(m10081b(t, dbiVar, dciVar));
    }

    /* renamed from: a */
    private static <T extends dcw<T, ?>> T m10092a(T t, dby dbyVar, dci dciVar) {
        T t2 = (T) t.mo8219a(C2960f.f14079d, null, null);
        try {
            dfd m9926a = der.m9928a().m9926a((der) t2);
            m9926a.mo9844a(t2, dcb.m10150a(dbyVar), dciVar);
            m9926a.mo9838c(t2);
            return t2;
        } catch (IOException e) {
            if (!(e.getCause() instanceof zzeco)) {
                throw new zzeco(e.getMessage()).m6550a(t2);
            }
            throw ((zzeco) e.getCause());
        } catch (RuntimeException e2) {
            if (!(e2.getCause() instanceof zzeco)) {
                throw e2;
            }
            throw ((zzeco) e2.getCause());
        }
    }

    /* renamed from: a */
    public static <T extends dcw<T, ?>> T m10090a(T t, byte[] bArr) {
        return (T) m10095a(m10089a(t, bArr, 0, bArr.length, dci.m10138a()));
    }

    /* renamed from: a */
    private static <T extends dcw<T, ?>> T m10089a(T t, byte[] bArr, int i, int i2, dci dciVar) {
        T t2 = (T) t.mo8219a(C2960f.f14079d, null, null);
        try {
            dfd m9926a = der.m9928a().m9926a((der) t2);
            m9926a.mo9841a(t2, bArr, 0, i2, new dbh(dciVar));
            m9926a.mo9838c(t2);
            if (t2.zzhsq == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (!(e.getCause() instanceof zzeco)) {
                throw new zzeco(e.getMessage()).m6550a(t2);
            }
            throw ((zzeco) e.getCause());
        } catch (IndexOutOfBoundsException e2) {
            throw zzeco.m6551a().m6550a(t2);
        }
    }

    /* renamed from: a */
    public static <T extends dcw<T, ?>> T m10088a(T t, byte[] bArr, dci dciVar) {
        return (T) m10095a(m10089a(t, bArr, 0, bArr.length, dciVar));
    }

    /* renamed from: a */
    public static <T extends dcw<?, ?>> T m10084a(Class<T> cls) {
        dcw<?, ?> dcwVar = zzhxx.get(cls);
        dcw<?, ?> dcwVar2 = dcwVar;
        if (dcwVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                dcwVar2 = zzhxx.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        dcw<?, ?> dcwVar3 = dcwVar2;
        if (dcwVar2 == null) {
            dcwVar3 = (dcw) ((dcw) dgb.m9715a(cls)).mo8219a(C2960f.f14081f, (Object) null, (Object) null);
            if (dcwVar3 == null) {
                throw new IllegalStateException();
            }
            zzhxx.put(cls, dcwVar3);
        }
        return (T) dcwVar3;
    }

    /* renamed from: a */
    public static ddd m10087a(ddd dddVar) {
        int size = dddVar.size();
        return dddVar.mo10040b(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static <E> dde<E> m10086a(dde<E> ddeVar) {
        int size = ddeVar.size();
        return ddeVar.mo9923a(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static Object m10085a(deg degVar, String str, Object[] objArr) {
        return new deu(degVar, str, objArr);
    }

    /* renamed from: a */
    public static Object m10082a(Method method, Object obj, Object... objArr) {
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
    public static <T extends dcw<?, ?>> void m10083a(Class<T> cls, T t) {
        zzhxx.put(cls, t);
    }

    /* renamed from: a */
    protected static final <T extends dcw<T, ?>> boolean m10091a(T t, boolean z) {
        boolean z2;
        byte byteValue = ((Byte) t.mo8219a(C2960f.f14076a, null, null)).byteValue();
        if (byteValue == 1) {
            z2 = true;
        } else if (byteValue == 0) {
            z2 = false;
        } else {
            boolean mo9837d = der.m9928a().m9926a((der) t).mo9837d(t);
            if (z) {
                t.mo8219a(C2960f.f14077b, mo9837d ? t : null, null);
            }
            z2 = mo9837d;
        }
        return z2;
    }

    /* renamed from: b */
    private static <T extends dcw<T, ?>> T m10081b(T t, dbi dbiVar, dci dciVar) {
        try {
            dby mo9903g = dbiVar.mo9903g();
            T t2 = (T) m10092a(t, mo9903g, dciVar);
            try {
                mo9903g.mo10181a(0);
                return t2;
            } catch (zzeco e) {
                throw e.m6550a(t2);
            }
        } catch (zzeco e2) {
            throw e2;
        }
    }

    /* renamed from: r */
    public static ddd m10077r() {
        return dcx.m10053d();
    }

    /* renamed from: s */
    public static ddf m10076s() {
        return ddu.m10015d();
    }

    /* renamed from: t */
    public static <E> dde<E> m10075t() {
        return dev.m9920d();
    }

    /* renamed from: a */
    public abstract Object mo8219a(int i, Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.day
    /* renamed from: a */
    public final void mo10096a(int i) {
        this.zzhxw = i;
    }

    @Override // com.google.android.gms.internal.ads.deg
    /* renamed from: a */
    public final void mo9986a(zzebk zzebkVar) {
        der.m9928a().m9926a((der) this).mo9843a((dfd) this, (dgo) dcf.m10142a(zzebkVar));
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj != null) {
                z = false;
                if (getClass() == obj.getClass()) {
                    z = der.m9928a().m9926a((der) this).mo9842a(this, (dcw) obj);
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int i;
        if (this.zzhsq != 0) {
            i = this.zzhsq;
        } else {
            this.zzhsq = der.m9928a().m9926a((der) this).mo9845a(this);
            i = this.zzhsq;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.day
    /* renamed from: m */
    public final int mo10080m() {
        return this.zzhxw;
    }

    /* renamed from: n */
    public final <MessageType extends dcw<MessageType, BuilderType>, BuilderType extends C2955a<MessageType, BuilderType>> BuilderType m10079n() {
        return (BuilderType) mo8219a(C2960f.f14080e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.dei
    /* renamed from: o */
    public final boolean mo9976o() {
        return m10091a(this, Boolean.TRUE.booleanValue());
    }

    /* renamed from: p */
    public final BuilderType m10078p() {
        BuilderType buildertype = (BuilderType) mo8219a(C2960f.f14080e, (Object) null, (Object) null);
        buildertype.m10072a(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.deg
    /* renamed from: q */
    public final int mo9983q() {
        if (this.zzhxw == -1) {
            this.zzhxw = der.m9928a().m9926a((der) this).mo9840b(this);
        }
        return this.zzhxw;
    }

    public String toString() {
        return deh.m9980a(this, super.toString());
    }

    @Override // com.google.android.gms.internal.ads.deg
    /* renamed from: u */
    public final /* synthetic */ def mo9982u() {
        C2955a c2955a = (C2955a) mo8219a(C2960f.f14080e, (Object) null, (Object) null);
        c2955a.m10072a((C2955a) this);
        return c2955a;
    }

    @Override // com.google.android.gms.internal.ads.deg
    /* renamed from: v */
    public final /* synthetic */ def mo9981v() {
        return (C2955a) mo8219a(C2960f.f14080e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.dei
    /* renamed from: w */
    public final /* synthetic */ deg mo9975w() {
        return (dcw) mo8219a(C2960f.f14081f, (Object) null, (Object) null);
    }
}
