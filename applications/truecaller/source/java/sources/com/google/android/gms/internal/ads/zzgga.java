package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgfw;
import com.google.android.gms.internal.ads.zzgga;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgga.class */
public abstract class zzgga<MessageType extends zzgga<MessageType, BuilderType>, BuilderType extends zzgfw<MessageType, BuilderType>> extends zzgeg<MessageType, BuilderType> {
    private static final Map<Object, zzgga<?, ?>> zzb = new ConcurrentHashMap();
    public zzgip zzc = zzgip.zza();
    public int zzd = -1;

    private static <T extends zzgga<T, ?>> T zza(T t) throws zzggm {
        if (t == null || t.zzat()) {
            return t;
        }
        zzggm zzggmVar = new zzggm(new zzgin(t).getMessage());
        zzggmVar.zza(t);
        throw zzggmVar;
    }

    public static Object zzaA(Method method, Object obj, Object... objArr) {
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

    public static zzggf zzaB() {
        return zzggb.zzd();
    }

    public static zzggf zzaC(zzggf zzggfVar) {
        int size = zzggfVar.size();
        return zzggfVar.zzf(size == 0 ? 10 : size + size);
    }

    public static zzggi zzaD() {
        return zzggx.zzd();
    }

    public static <E> zzggj<E> zzaE() {
        return zzghr.zzd();
    }

    public static <E> zzggj<E> zzaF(zzggj<E> zzggjVar) {
        int size = zzggjVar.size();
        return zzggjVar.zze(size == 0 ? 10 : size + size);
    }

    public static <T extends zzgga<T, ?>> T zzaG(T t, byte[] bArr, int i, int i2, zzgfm zzgfmVar) throws zzggm {
        T t2 = (T) t.zzb(4, null, null);
        try {
            zzghz zzb2 = zzghq.zza().zzb(t2.getClass());
            zzb2.zzi(t2, bArr, 0, i2, new zzgej(zzgfmVar));
            zzb2.zzj(t2);
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

    public static <T extends zzgga<T, ?>> T zzaH(T t, zzgex zzgexVar) throws zzggm {
        zzgfm zza = zzgfm.zza();
        try {
            zzgfc zzp = zzgexVar.zzp();
            T t2 = (T) t.zzb(4, null, null);
            try {
                try {
                    zzghz zzb2 = zzghq.zza().zzb(t2.getClass());
                    zzb2.zzf(t2, zzgfd.zza(zzp), zza);
                    zzb2.zzj(t2);
                    try {
                        zzp.zzb(0);
                        zza(t2);
                        zza(t2);
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

    public static <T extends zzgga<T, ?>> T zzaI(T t, zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        try {
            zzgfc zzp = zzgexVar.zzp();
            T t2 = (T) t.zzb(4, null, null);
            try {
                try {
                    zzghz zzb2 = zzghq.zza().zzb(t2.getClass());
                    zzb2.zzf(t2, zzgfd.zza(zzp), zzgfmVar);
                    zzb2.zzj(t2);
                    try {
                        zzp.zzb(0);
                        zza(t2);
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

    public static <T extends zzgga<T, ?>> T zzaJ(T t, byte[] bArr) throws zzggm {
        T t2 = (T) zzaG(t, bArr, 0, bArr.length, zzgfm.zza());
        zza(t2);
        return t2;
    }

    public static <T extends zzgga<T, ?>> T zzaK(T t, byte[] bArr, zzgfm zzgfmVar) throws zzggm {
        T t2 = (T) zzaG(t, bArr, 0, bArr.length, zzgfmVar);
        zza(t2);
        return t2;
    }

    public static <T extends zzgga> T zzax(Class<T> cls) {
        Map<Object, zzgga<?, ?>> map = zzb;
        zzgga<?, ?> zzggaVar = map.get(cls);
        zzgga<?, ?> zzggaVar2 = zzggaVar;
        if (zzggaVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzggaVar2 = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzgga<?, ?> zzggaVar3 = zzggaVar2;
        if (zzggaVar2 == null) {
            zzggaVar3 = (zzgga) ((zzgga) zzgiy.zzc(cls)).zzb(6, null, null);
            if (zzggaVar3 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzggaVar3);
        }
        return zzggaVar3;
    }

    public static <T extends zzgga> void zzay(Class<T> cls, T t) {
        zzb.put(cls, t);
    }

    public static Object zzaz(zzghi zzghiVar, String str, Object[] objArr) {
        return new zzghs(zzghiVar, str, objArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzghq.zza().zzb(getClass()).zzb(this, (zzgga) obj);
    }

    public final int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int zzc = zzghq.zza().zzb(getClass()).zzc(this);
        this.zza = zzc;
        return zzc;
    }

    public final String toString() {
        return zzghk.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzghi
    public final /* bridge */ /* synthetic */ zzghh zzaL() {
        zzgfw zzgfwVar = (zzgfw) zzb(5, null, null);
        zzgfwVar.zzai(this);
        return zzgfwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzghi
    public final /* bridge */ /* synthetic */ zzghh zzaM() {
        return (zzgfw) zzb(5, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgeg
    public final int zzap() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgeg
    public final void zzaq(int i) {
        this.zzd = i;
    }

    public final <MessageType extends zzgga<MessageType, BuilderType>, BuilderType extends zzgfw<MessageType, BuilderType>> BuilderType zzas() {
        return (BuilderType) zzb(5, null, null);
    }

    public final boolean zzat() {
        boolean z = true;
        byte byteValue = ((Byte) zzb(1, null, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue != 0) {
                boolean zzk = zzghq.zza().zzb(getClass()).zzk(this);
                zzb(2, true != zzk ? null : this, null);
                return zzk;
            }
            z = false;
        }
        return z;
    }

    public final BuilderType zzau() {
        BuilderType buildertype = (BuilderType) zzb(5, null, null);
        buildertype.zzai(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.zzghi
    public final void zzav(zzgfh zzgfhVar) throws IOException {
        zzghq.zza().zzb(getClass()).zzn(this, zzgfi.zza(zzgfhVar));
    }

    @Override // com.google.android.gms.internal.ads.zzghi
    public final int zzaw() {
        int i = this.zzd;
        int i2 = i;
        if (i == -1) {
            i2 = zzghq.zza().zzb(getClass()).zze(this);
            this.zzd = i2;
        }
        return i2;
    }

    public abstract Object zzb(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzghj
    public final /* bridge */ /* synthetic */ zzghi zzbe() {
        return (zzgga) zzb(6, null, null);
    }
}
