package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjt;
import com.google.android.gms.internal.measurement.zzjx;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjx.class */
public abstract class zzjx<MessageType extends zzjx<MessageType, BuilderType>, BuilderType extends zzjt<MessageType, BuilderType>> extends zzih<MessageType, BuilderType> {
    private static final Map zza = new ConcurrentHashMap();
    public zzmc zzc = zzmc.zzc();
    public int zzd = -1;

    public static Object zzbC(Method method, Object obj, Object... objArr) {
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

    public static Object zzbD(zzlc zzlcVar, String str, Object[] objArr) {
        return new zzlm(zzlcVar, str, objArr);
    }

    public static void zzbE(Class cls, zzjx zzjxVar) {
        zza.put(cls, zzjxVar);
    }

    public static zzjx zzbu(Class cls) {
        Map map = zza;
        zzjx zzjxVar = (zzjx) map.get(cls);
        zzjx zzjxVar2 = zzjxVar;
        if (zzjxVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzjxVar2 = (zzjx) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzjx zzjxVar3 = zzjxVar2;
        if (zzjxVar2 == null) {
            zzjxVar3 = (zzjx) ((zzjx) zzml.zze(cls)).zzl(6, null, null);
            if (zzjxVar3 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzjxVar3);
        }
        return zzjxVar3;
    }

    public static zzkc zzbv() {
        return zzjy.zzf();
    }

    public static zzkd zzbw() {
        return zzkr.zzf();
    }

    public static zzkd zzbx(zzkd zzkdVar) {
        int size = zzkdVar.size();
        return zzkdVar.zze(size == 0 ? 10 : size + size);
    }

    public static zzke zzby() {
        return zzll.zze();
    }

    public static zzke zzbz(zzke zzkeVar) {
        int size = zzkeVar.size();
        return zzkeVar.zzd(size == 0 ? 10 : size + size);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzlk.zza().zzb(getClass()).zzi(this, (zzjx) obj);
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int zzb = zzlk.zza().zzb(getClass()).zzb(this);
        this.zzb = zzb;
        return zzb;
    }

    public final String toString() {
        return zzle.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzlc
    public final /* synthetic */ zzlb zzbA() {
        return (zzjt) zzl(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlc
    public final /* synthetic */ zzlb zzbB() {
        zzjt zzjtVar = (zzjt) zzl(5, null, null);
        zzjtVar.zzaw(this);
        return zzjtVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzlc
    public final void zzbF(zzje zzjeVar) throws IOException {
        zzlk.zza().zzb(getClass()).zzm(this, zzjf.zza(zzjeVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final /* synthetic */ zzlc zzbJ() {
        return (zzjx) zzl(6, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final int zzbm() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final void zzbp(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzlc
    public final int zzbr() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = zzlk.zza().zzb(getClass()).zza(this);
            this.zzd = i2;
        }
        return i2;
    }

    public final zzjt zzbs() {
        return (zzjt) zzl(5, null, null);
    }

    public final zzjt zzbt() {
        zzjt zzjtVar = (zzjt) zzl(5, null, null);
        zzjtVar.zzaw(this);
        return zzjtVar;
    }

    public abstract Object zzl(int i, Object obj, Object obj2);
}
