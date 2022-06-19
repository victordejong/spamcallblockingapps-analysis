package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzfq;
import com.google.android.gms.internal.mlkit_common.zzfq.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfq.class */
public abstract class zzfq<MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzeg<MessageType, BuilderType> {
    private static Map<Object, zzfq<?, ?>> zzd = new ConcurrentHashMap();
    public zzii zzb = zzii.zza();
    private int zzc = -1;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfq$zza.class */
    public static final class zza<T extends zzfq<T, ?>> extends zzel<T> {
        private final T zza;

        public zza(T t) {
            this.zza = t;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfq$zzb.class */
    public static class zzb<MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzej<MessageType, BuilderType> {
        public MessageType zza;
        public boolean zzb = false;
        private final MessageType zzc;

        public zzb(MessageType messagetype) {
            this.zzc = messagetype;
            this.zza = (MessageType) messagetype.zza(zze.zzd, null, null);
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzhm.zza().zza((zzhm) messagetype).zzb(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.mlkit_common.zzej
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.zzc.zza(zze.zze, null, null);
            zzbVar.zza((zzb) ((zzfq) zzf()));
            return zzbVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.mlkit_common.zzej
        public final /* synthetic */ zzej zza(zzeg zzegVar) {
            return zza((zzb<MessageType, BuilderType>) ((zzfq) zzegVar));
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb) {
                zzc();
                this.zzb = false;
            }
            zza(this.zza, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzej
        public final /* synthetic */ zzej zzb() {
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
            zzhm.zza().zza((zzhm) messagetype).zzb(messagetype);
            this.zzb = true;
            return this.zza;
        }

        /* renamed from: zze */
        public final MessageType zzg() {
            MessageType messagetype = (MessageType) zzf();
            if (messagetype.zzi()) {
                return messagetype;
            }
            throw new zzig(messagetype);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzhd
        public final boolean zzi() {
            return zzfq.zza(this.zza, false);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzhd
        public final /* synthetic */ zzhb zzn() {
            return this.zzc;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfq$zzc.class */
    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType extends zzd<MessageType, BuilderType>> extends zzfq<MessageType, BuilderType> implements zzhd {
        public zzfl<zzf> zzc = zzfl.zza();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfq$zzd.class */
    public static class zzd<MessageType extends zzc<MessageType, BuilderType>, BuilderType extends zzd<MessageType, BuilderType>> extends zzb<MessageType, BuilderType> implements zzhd {
        public zzd(MessageType messagetype) {
            super(messagetype);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfq.zzb
        public void zzc() {
            super.zzc();
            MessageType messagetype = this.zza;
            ((zzc) messagetype).zzc = (zzfl) ((zzc) messagetype).zzc.clone();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfq.zzb
        public /* synthetic */ zzfq zzd() {
            return (zzc) zzf();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfq.zzb, com.google.android.gms.internal.mlkit_common.zzha
        public /* synthetic */ zzhb zzf() {
            if (this.zzb) {
                return (zzc) this.zza;
            }
            ((zzc) this.zza).zzc.zzb();
            return (zzc) super.zzf();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfq$zze.class */
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzfq$zzf.class */
    public static final class zzf implements zzfn<zzf> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final zzha zza(zzha zzhaVar, zzhb zzhbVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final zzhh zza(zzhh zzhhVar, zzhh zzhhVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final zzix zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final zzja zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final boolean zze() {
            throw new NoSuchMethodError();
        }
    }

    public static <T extends zzfq<?, ?>> T zza(Class<T> cls) {
        zzfq<?, ?> zzfqVar = zzd.get(cls);
        zzfq<?, ?> zzfqVar2 = zzfqVar;
        if (zzfqVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzfqVar2 = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzfq<?, ?> zzfqVar3 = zzfqVar2;
        if (zzfqVar2 == null) {
            zzfqVar3 = (zzfq) ((zzfq) zzip.zza(cls)).zza(zze.zzf, (Object) null, (Object) null);
            if (zzfqVar3 == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, zzfqVar3);
        }
        return (T) zzfqVar3;
    }

    public static Object zza(zzhb zzhbVar, String str, Object[] objArr) {
        return new zzho(zzhbVar, str, objArr);
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

    public static <T extends zzfq<?, ?>> void zza(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    public static final <T extends zzfq<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zze.zza, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzc2 = zzhm.zza().zza((zzhm) t).zzc(t);
        if (z) {
            t.zza(zze.zzb, zzc2 ? t : null, null);
        }
        return zzc2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_common.zzfw, com.google.android.gms.internal.mlkit_common.zzft] */
    public static zzfw zzk() {
        return zzft.zzd();
    }

    public static <E> zzfy<E> zzl() {
        return zzhp.zzd();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzhm.zza().zza((zzhm) this).zza(this, (zzfq) obj);
    }

    public int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int zza2 = zzhm.zza().zza((zzhm) this).zza(this);
        this.zza = zza2;
        return zza2;
    }

    public String toString() {
        return zzhc.zza(this, super.toString());
    }

    public final <MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zza(MessageType messagetype) {
        return (BuilderType) zzh().zza(messagetype);
    }

    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.mlkit_common.zzeg
    public final void zza(int i) {
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhb
    public final void zza(zzfc zzfcVar) throws IOException {
        zzhm.zza().zza((zzhm) this).zza((zzhr) this, (zzjd) zzff.zza(zzfcVar));
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzeg
    public final int zzg() {
        return this.zzc;
    }

    public final <MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zzh() {
        return (BuilderType) zza(zze.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhd
    public final boolean zzi() {
        return zza(this, true);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhb
    public final int zzj() {
        if (this.zzc == -1) {
            this.zzc = zzhm.zza().zza((zzhm) this).zzd(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhb
    public final /* synthetic */ zzha zzm() {
        zzb zzbVar = (zzb) zza(zze.zze, (Object) null, (Object) null);
        zzbVar.zza((zzb) this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhd
    public final /* synthetic */ zzhb zzn() {
        return (zzfq) zza(zze.zzf, (Object) null, (Object) null);
    }
}
