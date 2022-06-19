package com.google.android.gms.internal.mlkit_language_id;

import com.google.android.gms.internal.mlkit_language_id.zzeo;
import com.google.android.gms.internal.mlkit_language_id.zzeo.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzeo.class */
public abstract class zzeo<MessageType extends zzeo<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzde<MessageType, BuilderType> {
    private static Map<Object, zzeo<?, ?>> zzd = new ConcurrentHashMap();
    public zzhg zzb = zzhg.zza();
    private int zzc = -1;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzeo$zza.class */
    public static final class zza<T extends zzeo<T, ?>> extends zzdj<T> {
        private final T zza;

        public zza(T t) {
            this.zza = t;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzeo$zzb.class */
    public static class zzb<MessageType extends zzeo<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzdh<MessageType, BuilderType> {
        public MessageType zza;
        public boolean zzb = false;
        private final MessageType zzc;

        public zzb(MessageType messagetype) {
            this.zzc = messagetype;
            this.zza = (MessageType) messagetype.zza(zze.zzd, null, null);
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzgk.zza().zza((zzgk) messagetype).zzb(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzdh
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.zzc.zza(zze.zze, null, null);
            zzbVar.zza((zzb) ((zzeo) zzf()));
            return zzbVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzdh
        public final /* synthetic */ zzdh zza(zzde zzdeVar) {
            return zza((zzb<MessageType, BuilderType>) ((zzeo) zzdeVar));
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb) {
                zzc();
                this.zzb = false;
            }
            zza(this.zza, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzdh
        public final /* synthetic */ zzdh zzb() {
            return (zzb) clone();
        }

        public void zzc() {
            MessageType messagetype = (MessageType) this.zza.zza(zze.zzd, null, null);
            zza(messagetype, this.zza);
            this.zza = messagetype;
        }

        /* renamed from: zzd */
        public MessageType zzf() {
            if (this.zzb) {
                return this.zza;
            }
            MessageType messagetype = this.zza;
            zzgk.zza().zza((zzgk) messagetype).zzb(messagetype);
            this.zzb = true;
            return this.zza;
        }

        /* renamed from: zze */
        public final MessageType zzg() {
            MessageType messagetype = (MessageType) zzf();
            if (messagetype.zzi()) {
                return messagetype;
            }
            throw new zzhe(messagetype);
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzgb
        public final boolean zzi() {
            return zzeo.zza(this.zza, false);
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzgb
        public final /* synthetic */ zzfz zzn() {
            return this.zzc;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzeo$zzc.class */
    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType extends zzd<MessageType, BuilderType>> extends zzeo<MessageType, BuilderType> implements zzgb {
        public zzej<zzf> zzc = zzej.zza();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzeo$zzd.class */
    public static class zzd<MessageType extends zzc<MessageType, BuilderType>, BuilderType extends zzd<MessageType, BuilderType>> extends zzb<MessageType, BuilderType> implements zzgb {
        public zzd(MessageType messagetype) {
            super(messagetype);
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo.zzb
        public void zzc() {
            super.zzc();
            MessageType messagetype = this.zza;
            ((zzc) messagetype).zzc = (zzej) ((zzc) messagetype).zzc.clone();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo.zzb
        public /* synthetic */ zzeo zzd() {
            return (zzc) zzf();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo.zzb, com.google.android.gms.internal.mlkit_language_id.zzfy
        public /* synthetic */ zzfz zzf() {
            if (this.zzb) {
                return (zzc) this.zza;
            }
            ((zzc) this.zza).zzc.zzb();
            return (zzc) super.zzf();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzeo$zze.class */
    public static final class zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        private static final /* synthetic */ int[] zzh = {1, 2, 3, 4, 5, 6, 7};

        public static int[] zza() {
            return (int[]) zzh.clone();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzeo$zzf.class */
    public static final class zzf implements zzel<zzf> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzel
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzel
        public final zzfy zza(zzfy zzfyVar, zzfz zzfzVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzel
        public final zzgf zza(zzgf zzgfVar, zzgf zzgfVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzel
        public final zzhv zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzel
        public final zzhy zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzel
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_language_id.zzel
        public final boolean zze() {
            throw new NoSuchMethodError();
        }
    }

    public static <T extends zzeo<?, ?>> T zza(Class<T> cls) {
        zzeo<?, ?> zzeoVar = zzd.get(cls);
        zzeo<?, ?> zzeoVar2 = zzeoVar;
        if (zzeoVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzeoVar2 = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzeo<?, ?> zzeoVar3 = zzeoVar2;
        if (zzeoVar2 == null) {
            zzeoVar3 = (zzeo) ((zzeo) zzhn.zza(cls)).zza(zze.zzf, (Object) null, (Object) null);
            if (zzeoVar3 == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, zzeoVar3);
        }
        return (T) zzeoVar3;
    }

    public static <E> zzew<E> zza(zzew<E> zzewVar) {
        int size = zzewVar.size();
        return zzewVar.zzb(size == 0 ? 10 : size << 1);
    }

    public static Object zza(zzfz zzfzVar, String str, Object[] objArr) {
        return new zzgm(zzfzVar, str, objArr);
    }

    public static Object zza(Method method, Object obj, Object... objArr) {
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

    public static <T extends zzeo<?, ?>> void zza(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    public static final <T extends zzeo<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zze.zza, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzc2 = zzgk.zza().zza((zzgk) t).zzc(t);
        if (z) {
            t.zza(zze.zzb, zzc2 ? t : null, null);
        }
        return zzc2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_language_id.zzeu, com.google.android.gms.internal.mlkit_language_id.zzer] */
    public static zzeu zzk() {
        return zzer.zzd();
    }

    public static <E> zzew<E> zzl() {
        return zzgn.zzd();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzgk.zza().zza((zzgk) this).zza(this, (zzeo) obj);
    }

    public int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int zza2 = zzgk.zza().zza((zzgk) this).zza(this);
        this.zza = zza2;
        return zza2;
    }

    public String toString() {
        return zzga.zza(this, super.toString());
    }

    public final <MessageType extends zzeo<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zza(MessageType messagetype) {
        return (BuilderType) zzh().zza(messagetype);
    }

    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.mlkit_language_id.zzde
    public final void zza(int i) {
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfz
    public final void zza(zzea zzeaVar) throws IOException {
        zzgk.zza().zza((zzgk) this).zza((zzgp) this, (zzib) zzed.zza(zzeaVar));
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzde
    public final int zzg() {
        return this.zzc;
    }

    public final <MessageType extends zzeo<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zzh() {
        return (BuilderType) zza(zze.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgb
    public final boolean zzi() {
        return zza(this, true);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfz
    public final int zzj() {
        if (this.zzc == -1) {
            this.zzc = zzgk.zza().zza((zzgk) this).zzd(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzfz
    public final /* synthetic */ zzfy zzm() {
        zzb zzbVar = (zzb) zza(zze.zze, (Object) null, (Object) null);
        zzbVar.zza((zzb) this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgb
    public final /* synthetic */ zzfz zzn() {
        return (zzeo) zza(zze.zzf, (Object) null, (Object) null);
    }
}
