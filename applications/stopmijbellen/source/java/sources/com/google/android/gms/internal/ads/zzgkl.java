package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgkh;
import com.google.android.gms.internal.ads.zzgkl;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgkl.class */
public abstract class zzgkl<MessageType extends zzgkl<MessageType, BuilderType>, BuilderType extends zzgkh<MessageType, BuilderType>> extends zzgin<MessageType, BuilderType> {
    private static final Map<Object, zzgkl<?, ?>> zzb = new ConcurrentHashMap();
    public zzgng zzc = zzgng.zzc();
    public int zzd = -1;

    private static <T extends zzgkl<T, ?>> T zza(T t) throws zzgkx {
        if (t == null || t.zzaM()) {
            return t;
        }
        zzgkx zzgkxVar = new zzgkx(new zzgne(t).getMessage());
        zzgkxVar.zzh(t);
        throw zzgkxVar;
    }

    public static <T extends zzgkl<T, ?>> T zzaA(T t, byte[] bArr, int i, int i2, zzgjx zzgjxVar) throws zzgkx {
        T t2 = (T) t.zzb(4, null, null);
        try {
            zzgmo zzb2 = zzgmd.zza().zzb(t2.getClass());
            zzb2.zzi(t2, bArr, 0, i2, new zzgiq(zzgjxVar));
            zzb2.zzf(t2);
            if (t2.zza == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (zzgkx e) {
            zzgkx zzgkxVar = e;
            if (e.zzl()) {
                zzgkxVar = new zzgkx(e);
            }
            zzgkxVar.zzh(t2);
            throw zzgkxVar;
        } catch (IOException e2) {
            if (e2.getCause() instanceof zzgkx) {
                throw ((zzgkx) e2.getCause());
            }
            zzgkx zzgkxVar2 = new zzgkx(e2);
            zzgkxVar2.zzh(t2);
            throw zzgkxVar2;
        } catch (IndexOutOfBoundsException e3) {
            zzgkx zzj = zzgkx.zzj();
            zzj.zzh(t2);
            throw zzj;
        }
    }

    public static zzgkq zzaB() {
        return zzgkm.zzf();
    }

    public static zzgkq zzaC(zzgkq zzgkqVar) {
        int size = zzgkqVar.size();
        return zzgkqVar.zzg(size == 0 ? 10 : size + size);
    }

    public static zzgkt zzaD() {
        return zzglk.zzf();
    }

    public static <E> zzgku<E> zzaE() {
        return zzgme.zze();
    }

    public static <E> zzgku<E> zzaF(zzgku<E> zzgkuVar) {
        int size = zzgkuVar.size();
        return zzgkuVar.zzd(size == 0 ? 10 : size + size);
    }

    public static Object zzaI(Method method, Object obj, Object... objArr) {
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

    public static Object zzaJ(zzglv zzglvVar, String str, Object[] objArr) {
        return new zzgmf(zzglvVar, str, objArr);
    }

    public static <T extends zzgkl> void zzaK(Class<T> cls, T t) {
        zzb.put(cls, t);
    }

    public static <T extends zzgkl> T zzav(Class<T> cls) {
        Map<Object, zzgkl<?, ?>> map = zzb;
        zzgkl<?, ?> zzgklVar = map.get(cls);
        zzgkl<?, ?> zzgklVar2 = zzgklVar;
        if (zzgklVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgklVar2 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzgkl<?, ?> zzgklVar3 = zzgklVar2;
        if (zzgklVar2 == null) {
            zzgklVar3 = (zzgkl) ((zzgkl) zzgnp.zzg(cls)).zzb(6, null, null);
            if (zzgklVar3 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzgklVar3);
        }
        return zzgklVar3;
    }

    public static <T extends zzgkl<T, ?>> T zzaw(T t, zzgjf zzgjfVar) throws zzgkx {
        zzgjx zza = zzgjx.zza();
        try {
            zzgjn zzl = zzgjfVar.zzl();
            T t2 = (T) t.zzb(4, null, null);
            try {
                try {
                    try {
                        zzgmo zzb2 = zzgmd.zza().zzb(t2.getClass());
                        zzb2.zzh(t2, zzgjo.zzq(zzl), zza);
                        zzb2.zzf(t2);
                        try {
                            zzl.zzz(0);
                            zza(t2);
                            zza(t2);
                            return t2;
                        } catch (zzgkx e) {
                            e.zzh(t2);
                            throw e;
                        }
                    } catch (IOException e2) {
                        if (e2.getCause() instanceof zzgkx) {
                            throw ((zzgkx) e2.getCause());
                        }
                        zzgkx zzgkxVar = new zzgkx(e2);
                        zzgkxVar.zzh(t2);
                        throw zzgkxVar;
                    }
                } catch (zzgkx e3) {
                    zzgkx zzgkxVar2 = e3;
                    if (e3.zzl()) {
                        zzgkxVar2 = new zzgkx(e3);
                    }
                    zzgkxVar2.zzh(t2);
                    throw zzgkxVar2;
                }
            } catch (RuntimeException e4) {
                if (!(e4.getCause() instanceof zzgkx)) {
                    throw e4;
                }
                throw ((zzgkx) e4.getCause());
            }
        } catch (zzgkx e5) {
            throw e5;
        }
    }

    public static <T extends zzgkl<T, ?>> T zzax(T t, byte[] bArr) throws zzgkx {
        T t2 = (T) zzaA(t, bArr, 0, bArr.length, zzgjx.zza());
        zza(t2);
        return t2;
    }

    public static <T extends zzgkl<T, ?>> T zzay(T t, zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        try {
            zzgjn zzl = zzgjfVar.zzl();
            T t2 = (T) t.zzb(4, null, null);
            try {
                zzgmo zzb2 = zzgmd.zza().zzb(t2.getClass());
                zzb2.zzh(t2, zzgjo.zzq(zzl), zzgjxVar);
                zzb2.zzf(t2);
                try {
                    zzl.zzz(0);
                    zza(t2);
                    return t2;
                } catch (zzgkx e) {
                    e.zzh(t2);
                    throw e;
                }
            } catch (zzgkx e2) {
                zzgkx zzgkxVar = e2;
                if (e2.zzl()) {
                    zzgkxVar = new zzgkx(e2);
                }
                zzgkxVar.zzh(t2);
                throw zzgkxVar;
            } catch (IOException e3) {
                if (e3.getCause() instanceof zzgkx) {
                    throw ((zzgkx) e3.getCause());
                }
                zzgkx zzgkxVar2 = new zzgkx(e3);
                zzgkxVar2.zzh(t2);
                throw zzgkxVar2;
            } catch (RuntimeException e4) {
                if (!(e4.getCause() instanceof zzgkx)) {
                    throw e4;
                }
                throw ((zzgkx) e4.getCause());
            }
        } catch (zzgkx e5) {
            throw e5;
        }
    }

    public static <T extends zzgkl<T, ?>> T zzaz(T t, byte[] bArr, zzgjx zzgjxVar) throws zzgkx {
        T t2 = (T) zzaA(t, bArr, 0, bArr.length, zzgjxVar);
        zza(t2);
        return t2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzgmd.zza().zzb(getClass()).zzj(this, (zzgkl) obj);
    }

    public final int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int zzb2 = zzgmd.zza().zzb(getClass()).zzb(this);
        this.zza = zzb2;
        return zzb2;
    }

    public final String toString() {
        return zzglx.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzglv
    public final /* synthetic */ zzglu zzaG() {
        return (zzgkh) zzb(5, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzglv
    public final /* synthetic */ zzglu zzaH() {
        zzgkh zzgkhVar = (zzgkh) zzb(5, null, null);
        zzgkhVar.zzaf(this);
        return zzgkhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzglv
    public final void zzaL(zzgjs zzgjsVar) throws IOException {
        zzgmd.zza().zzb(getClass()).zzn(this, zzgjt.zza(zzgjsVar));
    }

    public final boolean zzaM() {
        boolean z = true;
        byte byteValue = ((Byte) zzb(1, null, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue != 0) {
                boolean zzk = zzgmd.zza().zzb(getClass()).zzk(this);
                zzb(2, true != zzk ? null : this, null);
                return zzk;
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzgin
    public final int zzan() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgin
    public final void zzaq(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzglv
    public final int zzas() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = zzgmd.zza().zzb(getClass()).zza(this);
            this.zzd = i2;
        }
        return i2;
    }

    public final <MessageType extends zzgkl<MessageType, BuilderType>, BuilderType extends zzgkh<MessageType, BuilderType>> BuilderType zzat() {
        return (BuilderType) zzb(5, null, null);
    }

    public final BuilderType zzau() {
        BuilderType buildertype = (BuilderType) zzb(5, null, null);
        buildertype.zzaf(this);
        return buildertype;
    }

    public abstract Object zzb(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzglw
    public final /* synthetic */ zzglv zzbp() {
        return (zzgkl) zzb(6, null, null);
    }
}
