package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzho;
import com.google.android.gms.internal.measurement.zzhs;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhs.class */
public abstract class zzhs<MessageType extends zzhs<MessageType, BuilderType>, BuilderType extends zzho<MessageType, BuilderType>> extends zzgb<MessageType, BuilderType> {
    private static final Map<Object, zzhs<?, ?>> zza = new ConcurrentHashMap();
    protected zzjx zzc = zzjx.zza();
    protected int zzd = -1;

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

    public static zzhx zzbB() {
        return zzht.zzd();
    }

    public static zzhy zzbC() {
        return zzim.zzf();
    }

    public static zzhy zzbD(zzhy zzhyVar) {
        int size = zzhyVar.size();
        return zzhyVar.zzd(size == 0 ? 10 : size + size);
    }

    public static <E> zzhz<E> zzbE() {
        return zzjg.zzd();
    }

    public static <E> zzhz<E> zzbF(zzhz<E> zzhzVar) {
        int size = zzhzVar.size();
        return zzhzVar.zze(size == 0 ? 10 : size + size);
    }

    public static <T extends zzhs> T zzbx(Class<T> cls) {
        Map<Object, zzhs<?, ?>> map = zza;
        zzhs<?, ?> zzhsVar = map.get(cls);
        zzhs<?, ?> zzhsVar2 = zzhsVar;
        if (zzhsVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzhsVar2 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzhs<?, ?> zzhsVar3 = zzhsVar2;
        if (zzhsVar2 == null) {
            zzhsVar3 = (zzhs) ((zzhs) zzkh.zzc(cls)).zzl(6, null, null);
            if (zzhsVar3 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzhsVar3);
        }
        return zzhsVar3;
    }

    public static <T extends zzhs> void zzby(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    public static Object zzbz(zzix zzixVar, String str, Object[] objArr) {
        return new zzjh(zzixVar, str, objArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzjf.zza().zzb(getClass()).zzb(this, (zzhs) obj);
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int zzc = zzjf.zza().zzb(getClass()).zzc(this);
        this.zzb = zzc;
        return zzc;
    }

    public final String toString() {
        return zziz.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final /* bridge */ /* synthetic */ zziw zzbG() {
        zzho zzhoVar = (zzho) zzl(5, null, null);
        zzhoVar.zzaB(this);
        return zzhoVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final /* bridge */ /* synthetic */ zziw zzbH() {
        return (zzho) zzl(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final /* bridge */ /* synthetic */ zzix zzbK() {
        return (zzhs) zzl(6, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzgb
    public final int zzbq() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzgb
    public final void zzbr(int i) {
        this.zzd = i;
    }

    public final <MessageType extends zzhs<MessageType, BuilderType>, BuilderType extends zzho<MessageType, BuilderType>> BuilderType zzbt() {
        return (BuilderType) zzl(5, null, null);
    }

    public final BuilderType zzbu() {
        BuilderType buildertype = (BuilderType) zzl(5, null, null);
        buildertype.zzaB(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final void zzbv(zzgz zzgzVar) throws IOException {
        zzjf.zza().zzb(getClass()).zzm(this, zzha.zza(zzgzVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzix
    public final int zzbw() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = zzjf.zza().zzb(getClass()).zze(this);
            this.zzd = i2;
        }
        return i2;
    }

    public abstract Object zzl(int i, Object obj, Object obj2);
}
