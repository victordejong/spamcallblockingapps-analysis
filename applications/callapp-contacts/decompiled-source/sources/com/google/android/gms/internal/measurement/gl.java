package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.gi;
import com.google.android.gms.internal.measurement.gl;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gl.class */
public abstract class gl<MessageType extends gl<MessageType, BuilderType>, BuilderType extends gi<MessageType, BuilderType>> extends ey<MessageType, BuilderType> {
    private static final Map<Object, gl<?, ?>> zza = new ConcurrentHashMap();
    protected in zzc = in.a();
    protected int zzd = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends gl> T a(Class<T> cls) {
        Map<Object, gl<?, ?>> map = zza;
        gl<?, ?> glVar = map.get(cls);
        gl<?, ?> glVar2 = glVar;
        if (glVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                glVar2 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        gl<?, ?> glVar3 = glVar2;
        if (glVar2 == null) {
            glVar3 = (gl) ((gl) ix.a(cls)).a(6);
            if (glVar3 != null) {
                map.put(cls, glVar3);
            } else {
                throw new IllegalStateException();
            }
        }
        return glVar3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static gr a(gr grVar) {
        int size = grVar.size();
        return grVar.c(size == 0 ? 10 : size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> gs<E> a(gs<E> gsVar) {
        int size = gsVar.size();
        return gsVar.a(size == 0 ? 10 : size + size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object a(ho hoVar, String str, Object[] objArr) {
        return new hz(hoVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Method method, Object obj, Object... objArr) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends gl> void a(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    @Override // com.google.android.gms.internal.measurement.hp
    public final /* synthetic */ ho C() {
        return (gl) a(6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object a(int i);

    @Override // com.google.android.gms.internal.measurement.ho
    public final void a(fs fsVar) throws IOException {
        ia a2 = hx.a().a(getClass());
        ft ftVar = fsVar.f29030a;
        a2.a((ia) this, ftVar != null ? ftVar : new ft(fsVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.ey
    public final void b(int i) {
        this.zzd = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return hx.a().a(getClass()).a(this, (gl) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int a2 = hx.a().a(getClass()).a(this);
        this.zzb = a2;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.ey
    public final int k() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends gl<MessageType, BuilderType>, BuilderType extends gi<MessageType, BuilderType>> BuilderType l() {
        return (BuilderType) ((gi) a(5));
    }

    public final BuilderType m() {
        BuilderType buildertype = (BuilderType) ((gi) a(5));
        buildertype.a(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.ho
    public final int n() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = hx.a().a(getClass()).b(this);
            this.zzd = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.ho
    public final /* synthetic */ hn o() {
        gi giVar = (gi) a(5);
        giVar.a((gi) this);
        return giVar;
    }

    @Override // com.google.android.gms.internal.measurement.ho
    public final /* synthetic */ hn p() {
        return (gi) a(5);
    }

    public final String toString() {
        String obj = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        hq.a(this, sb, 0);
        return sb.toString();
    }
}
