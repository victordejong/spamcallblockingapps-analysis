package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC13526gl;
import com.google.android.gms.internal.measurement.C13523gi;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.gl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gl.class */
public abstract class AbstractC13526gl<MessageType extends AbstractC13526gl<MessageType, BuilderType>, BuilderType extends C13523gi<MessageType, BuilderType>> extends AbstractC13485ey<MessageType, BuilderType> {
    private static final Map<Object, AbstractC13526gl<?, ?>> zza = new ConcurrentHashMap();
    protected C13582in zzc = C13582in.m12573a();
    protected int zzd = -1;

    /* renamed from: a */
    public static <T extends AbstractC13526gl> T m12764a(Class<T> cls) {
        Map<Object, AbstractC13526gl<?, ?>> map = zza;
        AbstractC13526gl<?, ?> abstractC13526gl = map.get(cls);
        AbstractC13526gl<?, ?> abstractC13526gl2 = abstractC13526gl;
        if (abstractC13526gl == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC13526gl2 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        AbstractC13526gl<?, ?> abstractC13526gl3 = abstractC13526gl2;
        if (abstractC13526gl2 == null) {
            abstractC13526gl3 = (AbstractC13526gl) ((AbstractC13526gl) C13592ix.m12539a(cls)).mo12768a(6);
            if (abstractC13526gl3 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, abstractC13526gl3);
        }
        return abstractC13526gl3;
    }

    /* renamed from: a */
    public static AbstractC13532gr m12767a(AbstractC13532gr abstractC13532gr) {
        int size = abstractC13532gr.size();
        return abstractC13532gr.mo12728c(size == 0 ? 10 : size + size);
    }

    /* renamed from: a */
    public static <E> AbstractC13533gs<E> m12766a(AbstractC13533gs<E> abstractC13533gs) {
        int size = abstractC13533gs.size();
        return abstractC13533gs.mo12663a(size == 0 ? 10 : size + size);
    }

    /* renamed from: a */
    public static Object m12765a(AbstractC13556ho abstractC13556ho, String str, Object[] objArr) {
        return new C13567hz(abstractC13556ho, str, objArr);
    }

    /* renamed from: a */
    public static Object m12762a(Method method, Object obj, Object... objArr) {
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
    public static <T extends AbstractC13526gl> void m12763a(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13557hp
    /* renamed from: C */
    public final /* synthetic */ AbstractC13556ho mo12704C() {
        return (AbstractC13526gl) mo12768a(6);
    }

    /* renamed from: a */
    public abstract Object mo12768a(int i);

    @Override // com.google.android.gms.internal.measurement.AbstractC13556ho
    /* renamed from: a */
    public final void mo12709a(AbstractC13506fs abstractC13506fs) throws IOException {
        AbstractC13569ia m12664a = C13565hx.m12665a().m12664a(getClass());
        C13507ft c13507ft = abstractC13506fs.f50729a;
        m12664a.mo12654a((AbstractC13569ia) this, c13507ft != null ? c13507ft : new C13507ft(abstractC13506fs));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13485ey
    /* renamed from: b */
    public final void mo12761b(int i) {
        this.zzd = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C13565hx.m12665a().m12664a(getClass()).mo12653a(this, (AbstractC13526gl) obj);
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int mo12655a = C13565hx.m12665a().m12664a(getClass()).mo12655a(this);
        this.zzb = mo12655a;
        return mo12655a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13485ey
    /* renamed from: k */
    public final int mo12760k() {
        return this.zzd;
    }

    /* renamed from: l */
    public final <MessageType extends AbstractC13526gl<MessageType, BuilderType>, BuilderType extends C13523gi<MessageType, BuilderType>> BuilderType m12759l() {
        return (BuilderType) mo12768a(5);
    }

    /* renamed from: m */
    public final BuilderType m12758m() {
        BuilderType buildertype = (BuilderType) mo12768a(5);
        buildertype.m12776a(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13556ho
    /* renamed from: n */
    public final int mo12707n() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = C13565hx.m12665a().m12664a(getClass()).mo12651b(this);
            this.zzd = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13556ho
    /* renamed from: o */
    public final /* synthetic */ AbstractC13555hn mo12706o() {
        C13523gi c13523gi = (C13523gi) mo12768a(5);
        c13523gi.m12776a((C13523gi) this);
        return c13523gi;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13556ho
    /* renamed from: p */
    public final /* synthetic */ AbstractC13555hn mo12705p() {
        return (C13523gi) mo12768a(5);
    }

    public final String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        C13558hq.m12703a(this, sb, 0);
        return sb.toString();
    }
}
