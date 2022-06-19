package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjz;
import com.google.android.gms.internal.measurement.zzkd;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkd.class */
public abstract class zzkd<MessageType extends zzkd<MessageType, BuilderType>, BuilderType extends zzjz<MessageType, BuilderType>> extends zzio<MessageType, BuilderType> {
    private static final Map<Object, zzkd<?, ?>> zza = new ConcurrentHashMap();
    public zzmi zzc = zzmi.zza();
    public int zzd = -1;

    public static Object zzbA(Method method, Object obj, Object... objArr) {
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

    public static zzki zzbB() {
        return zzke.zzd();
    }

    public static zzkj zzbC() {
        return zzkx.zzf();
    }

    public static zzkj zzbD(zzkj zzkjVar) {
        int size = zzkjVar.size();
        return zzkjVar.zzd(size == 0 ? 10 : size + size);
    }

    public static <E> zzkk<E> zzbE() {
        return zzlr.zzd();
    }

    public static <E> zzkk<E> zzbF(zzkk<E> zzkkVar) {
        int size = zzkkVar.size();
        return zzkkVar.zze(size == 0 ? 10 : size + size);
    }

    public static <T extends zzkd> T zzbx(Class<T> cls) {
        Map<Object, zzkd<?, ?>> map = zza;
        zzkd<?, ?> zzkdVar = map.get(cls);
        zzkd<?, ?> zzkdVar2 = zzkdVar;
        if (zzkdVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzkdVar2 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzkd<?, ?> zzkdVar3 = zzkdVar2;
        if (zzkdVar2 == null) {
            zzkdVar3 = (zzkd) ((zzkd) zzmr.zzc(cls)).zzl(6, null, null);
            if (zzkdVar3 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzkdVar3);
        }
        return zzkdVar3;
    }

    public static <T extends zzkd> void zzby(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    public static Object zzbz(zzli zzliVar, String str, Object[] objArr) {
        return new zzls(zzliVar, str, objArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzlq.zza().zzb(getClass()).zzb(this, (zzkd) obj);
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int zzc = zzlq.zza().zzb(getClass()).zzc(this);
        this.zzb = zzc;
        return zzc;
    }

    public final String toString() {
        return zzlk.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* bridge */ /* synthetic */ zzlh zzbG() {
        zzjz zzjzVar = (zzjz) zzl(5, null, null);
        zzjzVar.zzaB(this);
        return zzjzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final /* bridge */ /* synthetic */ zzlh zzbH() {
        return (zzjz) zzl(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final /* bridge */ /* synthetic */ zzli zzbL() {
        return (zzkd) zzl(6, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzio
    public final int zzbq() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzio
    public final void zzbr(int i) {
        this.zzd = i;
    }

    public final <MessageType extends zzkd<MessageType, BuilderType>, BuilderType extends zzjz<MessageType, BuilderType>> BuilderType zzbt() {
        return (BuilderType) zzl(5, null, null);
    }

    public final BuilderType zzbu() {
        BuilderType buildertype = (BuilderType) zzl(5, null, null);
        buildertype.zzaB(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final void zzbv(zzjk zzjkVar) throws IOException {
        zzlq.zza().zzb(getClass()).zzm(this, zzjl.zza(zzjkVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzli
    public final int zzbw() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = zzlq.zza().zzb(getClass()).zze(this);
            this.zzd = i2;
        }
        return i2;
    }

    public abstract Object zzl(int i, Object obj, Object obj2);
}
