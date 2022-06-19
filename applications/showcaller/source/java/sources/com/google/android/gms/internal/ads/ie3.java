package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ee3;
import com.google.android.gms.internal.ads.ie3;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ie3.class */
public abstract class ie3<MessageType extends ie3<MessageType, BuilderType>, BuilderType extends ee3<MessageType, BuilderType>> extends tc3<MessageType, BuilderType> {
    private static final Map<Object, ie3<?, ?>> zzb = new ConcurrentHashMap();
    protected sg3 zzc = sg3.m11037a();
    protected int zzd = -1;

    /* renamed from: A */
    public static Object m14431A(mf3 mf3Var, String str, Object[] objArr) {
        return new wf3(mf3Var, str, objArr);
    }

    /* renamed from: i */
    private static <T extends ie3<T, ?>> T m14430i(T t) {
        if (t == null || t.m14417w()) {
            return t;
        }
        zzggm zzggmVar = new zzggm(new zzgin(t).getMessage());
        zzggmVar.zza(t);
        throw zzggmVar;
    }

    /* renamed from: j */
    public static Object m14429j(Method method, Object obj, Object... objArr) {
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

    /* renamed from: l */
    public static ne3 m14428l() {
        return je3.m14135d();
    }

    /* renamed from: m */
    public static ne3 m14427m(ne3 ne3Var) {
        int size = ne3Var.size();
        return ne3Var.mo12941A(size == 0 ? 10 : size + size);
    }

    /* renamed from: n */
    public static qe3 m14426n() {
        return bf3.m16386d();
    }

    /* renamed from: o */
    public static <E> re3<E> m14425o() {
        return vf3.m10030d();
    }

    /* renamed from: p */
    public static <E> re3<E> m14424p(re3<E> re3Var) {
        int size = re3Var.size();
        return re3Var.mo8859a(size == 0 ? 10 : size + size);
    }

    /* renamed from: q */
    static <T extends ie3<T, ?>> T m14423q(T t, byte[] bArr, int i, int i2, vd3 vd3Var) {
        T t2 = (T) t.mo8268B(4, null, null);
        try {
            cg3 m10333b = uf3.m10334a().m10333b(t2.getClass());
            m10333b.mo11901h(t2, bArr, 0, i2, new wc3(vd3Var));
            m10333b.mo11905d(t2);
            if (t2.zza == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (zzggm e) {
            zzggm zzggmVar = e;
            if (e.zzc()) {
                zzggmVar = new zzggm(e);
            }
            zzggmVar.zza(t2);
            throw zzggmVar;
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzggm) {
                throw ((zzggm) e2.getCause());
            }
            zzggm zzggmVar2 = new zzggm(e2);
            zzggmVar2.zza(t2);
            throw zzggmVar2;
        } catch (IndexOutOfBoundsException e3) {
            zzggm zzd = zzggm.zzd();
            zzd.zza(t2);
            throw zzd;
        }
    }

    /* renamed from: r */
    public static <T extends ie3<T, ?>> T m14422r(T t, zzgex zzgexVar) {
        vd3 m10041a = vd3.m10041a();
        try {
            md3 zzp = zzgexVar.zzp();
            T t2 = (T) t.mo8268B(4, null, null);
            try {
                try {
                    cg3 m10333b = uf3.m10334a().m10333b(t2.getClass());
                    m10333b.mo11902g(t2, nd3.m12942Q(zzp), m10041a);
                    m10333b.mo11905d(t2);
                    try {
                        zzp.mo13274h(0);
                        m14430i(t2);
                        m14430i(t2);
                        return t2;
                    } catch (zzggm e) {
                        e.zza(t2);
                        throw e;
                    }
                } catch (RuntimeException e2) {
                    if (!(e2.getCause() instanceof zzggm)) {
                        throw e2;
                    }
                    throw ((zzggm) e2.getCause());
                }
            } catch (zzggm e3) {
                zzggm zzggmVar = e3;
                if (e3.zzc()) {
                    zzggmVar = new zzggm(e3);
                }
                zzggmVar.zza(t2);
                throw zzggmVar;
            } catch (IOException e4) {
                if (e4.getCause() instanceof zzggm) {
                    throw ((zzggm) e4.getCause());
                }
                zzggm zzggmVar2 = new zzggm(e4);
                zzggmVar2.zza(t2);
                throw zzggmVar2;
            }
        } catch (zzggm e5) {
            throw e5;
        }
    }

    /* renamed from: s */
    public static <T extends ie3<T, ?>> T m14421s(T t, zzgex zzgexVar, vd3 vd3Var) {
        try {
            md3 zzp = zzgexVar.zzp();
            T t2 = (T) t.mo8268B(4, null, null);
            try {
                try {
                    cg3 m10333b = uf3.m10334a().m10333b(t2.getClass());
                    m10333b.mo11902g(t2, nd3.m12942Q(zzp), vd3Var);
                    m10333b.mo11905d(t2);
                    try {
                        zzp.mo13274h(0);
                        m14430i(t2);
                        return t2;
                    } catch (zzggm e) {
                        e.zza(t2);
                        throw e;
                    }
                } catch (zzggm e2) {
                    zzggm zzggmVar = e2;
                    if (e2.zzc()) {
                        zzggmVar = new zzggm(e2);
                    }
                    zzggmVar.zza(t2);
                    throw zzggmVar;
                }
            } catch (IOException e3) {
                if (e3.getCause() instanceof zzggm) {
                    throw ((zzggm) e3.getCause());
                }
                zzggm zzggmVar2 = new zzggm(e3);
                zzggmVar2.zza(t2);
                throw zzggmVar2;
            } catch (RuntimeException e4) {
                if (!(e4.getCause() instanceof zzggm)) {
                    throw e4;
                }
                throw ((zzggm) e4.getCause());
            }
        } catch (zzggm e5) {
            throw e5;
        }
    }

    /* renamed from: t */
    public static <T extends ie3<T, ?>> T m14420t(T t, byte[] bArr) {
        T t2 = (T) m14423q(t, bArr, 0, bArr.length, vd3.m10041a());
        m14430i(t2);
        return t2;
    }

    /* renamed from: u */
    public static <T extends ie3<T, ?>> T m14419u(T t, byte[] bArr, vd3 vd3Var) {
        T t2 = (T) m14423q(t, bArr, 0, bArr.length, vd3Var);
        m14430i(t2);
        return t2;
    }

    /* renamed from: y */
    public static <T extends ie3> T m14415y(Class<T> cls) {
        Map<Object, ie3<?, ?>> map = zzb;
        ie3<?, ?> ie3Var = map.get(cls);
        ie3<?, ?> ie3Var2 = ie3Var;
        if (ie3Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                ie3Var2 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        ie3<?, ?> ie3Var3 = ie3Var2;
        if (ie3Var2 == null) {
            ie3Var3 = (ie3) ((ie3) bh3.m16352k(cls)).mo8268B(6, null, null);
            if (ie3Var3 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, ie3Var3);
        }
        return ie3Var3;
    }

    /* renamed from: z */
    public static <T extends ie3> void m14414z(Class<T> cls, T t) {
        zzb.put(cls, t);
    }

    /* renamed from: B */
    public abstract Object mo8268B(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.mf3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ lf3 mo13203a() {
        ee3 ee3Var = (ee3) mo8268B(5, null, null);
        ee3Var.m15511o(this);
        return ee3Var;
    }

    @Override // com.google.android.gms.internal.ads.mf3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ lf3 mo13202b() {
        return (ee3) mo8268B(5, null, null);
    }

    @Override // com.google.android.gms.internal.ads.mf3
    /* renamed from: c */
    public final void mo13201c(qd3 qd3Var) {
        uf3.m10334a().m10333b(getClass()).mo11900i(this, rd3.m11567l(qd3Var));
    }

    @Override // com.google.android.gms.internal.ads.mf3
    /* renamed from: d */
    public final int mo13200d() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = uf3.m10334a().m10333b(getClass()).mo11908a(this);
            this.zzd = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.tc3
    /* renamed from: e */
    public final int mo10721e() {
        return this.zzd;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return uf3.m10334a().m10333b(getClass()).mo11904e(this, (ie3) obj);
    }

    @Override // com.google.android.gms.internal.ads.tc3
    /* renamed from: f */
    public final void mo10720f(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.nf3
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ mf3 mo12922g() {
        return (ie3) mo8268B(6, null, null);
    }

    public final int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int mo11906c = uf3.m10334a().m10333b(getClass()).mo11906c(this);
        this.zza = mo11906c;
        return mo11906c;
    }

    public final String toString() {
        return of3.m12680a(this, super.toString());
    }

    /* renamed from: v */
    public final <MessageType extends ie3<MessageType, BuilderType>, BuilderType extends ee3<MessageType, BuilderType>> BuilderType m14418v() {
        return (BuilderType) mo8268B(5, null, null);
    }

    /* renamed from: w */
    public final boolean m14417w() {
        boolean z = true;
        byte byteValue = ((Byte) mo8268B(1, null, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue != 0) {
                boolean mo11903f = uf3.m10334a().m10333b(getClass()).mo11903f(this);
                mo8268B(2, true != mo11903f ? null : this, null);
                return mo11903f;
            }
            z = false;
        }
        return z;
    }

    /* renamed from: x */
    public final BuilderType m14416x() {
        BuilderType buildertype = (BuilderType) mo8268B(5, null, null);
        buildertype.m15511o(this);
        return buildertype;
    }
}
