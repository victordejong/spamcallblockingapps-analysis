package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC7609x5;
import com.google.android.gms.internal.measurement.C7570u5;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.x5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/x5.class */
public abstract class AbstractC7609x5<MessageType extends AbstractC7609x5<MessageType, BuilderType>, BuilderType extends C7570u5<MessageType, BuilderType>> extends AbstractC7489o4<MessageType, BuilderType> {
    private static final Map<Object, AbstractC7609x5<?, ?>> zza = new ConcurrentHashMap();
    protected C7624y7 zzc = C7624y7.m6726a();
    protected int zzd = -1;

    /* renamed from: m */
    public static Object m6768m(Method method, Object obj, Object... objArr) {
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

    /* renamed from: n */
    public static AbstractC7323c6 m6767n() {
        return C7622y5.m6736d();
    }

    /* renamed from: o */
    public static AbstractC7337d6 m6766o() {
        return C7491o6.m7040d();
    }

    /* renamed from: p */
    public static AbstractC7337d6 m6765p(AbstractC7337d6 abstractC7337d6) {
        int size = abstractC7337d6.size();
        return abstractC7337d6.mo7036k(size == 0 ? 10 : size + size);
    }

    /* renamed from: q */
    public static <E> AbstractC7351e6<E> m6764q() {
        return C7408i7.m7331d();
    }

    /* renamed from: r */
    public static <E> AbstractC7351e6<E> m6763r(AbstractC7351e6<E> abstractC7351e6) {
        int size = abstractC7351e6.size();
        return abstractC7351e6.mo6737a(size == 0 ? 10 : size + size);
    }

    /* renamed from: v */
    public static <T extends AbstractC7609x5> T m6760v(Class<T> cls) {
        Map<Object, AbstractC7609x5<?, ?>> map = zza;
        AbstractC7609x5<?, ?> abstractC7609x5 = map.get(cls);
        AbstractC7609x5<?, ?> abstractC7609x52 = abstractC7609x5;
        if (abstractC7609x5 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC7609x52 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        AbstractC7609x5<?, ?> abstractC7609x53 = abstractC7609x52;
        if (abstractC7609x52 == null) {
            abstractC7609x53 = (AbstractC7609x5) ((AbstractC7609x5) C7409i8.m7316h(cls)).mo6745y(6, null, null);
            if (abstractC7609x53 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, abstractC7609x53);
        }
        return abstractC7609x53;
    }

    /* renamed from: w */
    public static <T extends AbstractC7609x5> void m6759w(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    /* renamed from: x */
    public static Object m6758x(AbstractC7623y6 abstractC7623y6, String str, Object[] objArr) {
        return new C7422j7(abstractC7623y6, str, objArr);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7623y6
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7610x6 mo6731a() {
        return (C7570u5) mo6745y(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7623y6
    /* renamed from: b */
    public final void mo6730b(AbstractC7364f5 abstractC7364f5) {
        C7394h7.m7368a().m7367b(getClass()).mo7202g(this, C7378g5.m7401l(abstractC7364f5));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7623y6
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC7610x6 mo6729c() {
        C7570u5 c7570u5 = (C7570u5) mo6745y(5, null, null);
        c7570u5.m6885o(this);
        return c7570u5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C7394h7.m7368a().m7367b(getClass()).mo7205e(this, (AbstractC7609x5) obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7623y6
    /* renamed from: g */
    public final int mo6727g() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = C7394h7.m7368a().m7367b(getClass()).mo7209a(this);
            this.zzd = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7636z6
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ AbstractC7623y6 mo6643h() {
        return (AbstractC7609x5) mo6745y(6, null, null);
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int mo7207c = C7394h7.m7368a().m7367b(getClass()).mo7207c(this);
        this.zzb = mo7207c;
        return mo7207c;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7489o4
    /* renamed from: j */
    public final int mo6770j() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7489o4
    /* renamed from: k */
    public final void mo6769k(int i) {
        this.zzd = i;
    }

    /* renamed from: s */
    public final <MessageType extends AbstractC7609x5<MessageType, BuilderType>, BuilderType extends C7570u5<MessageType, BuilderType>> BuilderType m6762s() {
        return (BuilderType) mo6745y(5, null, null);
    }

    /* renamed from: t */
    public final BuilderType m6761t() {
        BuilderType buildertype = (BuilderType) mo6745y(5, null, null);
        buildertype.m6885o(this);
        return buildertype;
    }

    public final String toString() {
        return C7296a7.m7685a(this, super.toString());
    }

    /* renamed from: y */
    public abstract Object mo6745y(int i, Object obj, Object obj2);
}
