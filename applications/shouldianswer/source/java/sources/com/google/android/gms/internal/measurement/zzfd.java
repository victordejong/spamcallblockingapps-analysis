package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzfd.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd.class */
public abstract class zzfd<MessageType extends zzfd<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzdl<MessageType, BuilderType> {
    private static Map<Object, zzfd<?, ?>> zzd = new ConcurrentHashMap();
    protected zzhy zzb = zzhy.zza();
    private int zzc = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zza.class */
    public static final class zza<T extends zzfd<T, ?>> extends zzdp<T> {
        private final T zza;

        public zza(T t) {
            this.zza = t;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zzb.class */
    public static class zzb<MessageType extends zzfd<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzdn<MessageType, BuilderType> {
        protected MessageType zza;
        protected boolean zzb = false;
        private final MessageType zzc;

        public zzb(MessageType messagetype) {
            this.zzc = messagetype;
            this.zza = (MessageType) messagetype.zza(zze.zzd, null, null);
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzgz.zza().zza((zzgz) messagetype).zzb(messagetype, messagetype2);
        }

        /* renamed from: zzb */
        public final BuilderType zza(zzeg zzegVar, zzeq zzeqVar) {
            if (this.zzb) {
                zzq();
                this.zzb = false;
            }
            try {
                zzgz.zza().zza((zzgz) this.zza).zza(this.zza, zzel.zza(zzegVar), zzeqVar);
                return this;
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof IOException)) {
                    throw e;
                }
                throw ((IOException) e.getCause());
            }
        }

        private final BuilderType zzb(byte[] bArr, int i, int i2, zzeq zzeqVar) {
            if (this.zzb) {
                zzq();
                this.zzb = false;
            }
            try {
                zzgz.zza().zza((zzgz) this.zza).zza(this.zza, bArr, 0, i2 + 0, new zzdt(zzeqVar));
                return this;
            } catch (zzfo e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzfo.zza();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzdn
        public /* synthetic */ Object clone() {
            zzb zzbVar = (zzb) this.zzc.zza(zze.zze, null, null);
            zzbVar.zza((zzb) ((zzfd) zzt()));
            return zzbVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzdn
        protected final /* synthetic */ zzdn zza(zzdl zzdlVar) {
            return zza((zzb<MessageType, BuilderType>) ((zzfd) zzdlVar));
        }

        @Override // com.google.android.gms.internal.measurement.zzdn
        public final /* synthetic */ zzdn zza(byte[] bArr, int i, int i2) {
            return zzb(bArr, 0, i2, zzeq.zza());
        }

        @Override // com.google.android.gms.internal.measurement.zzdn
        public final /* synthetic */ zzdn zza(byte[] bArr, int i, int i2, zzeq zzeqVar) {
            return zzb(bArr, 0, i2, zzeqVar);
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb) {
                zzq();
                this.zzb = false;
            }
            zza(this.zza, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.zzgq
        public final boolean zzbl() {
            return zzfd.zza(this.zza, false);
        }

        @Override // com.google.android.gms.internal.measurement.zzgq
        public final /* synthetic */ zzgo zzbt() {
            return this.zzc;
        }

        @Override // com.google.android.gms.internal.measurement.zzdn
        public final /* synthetic */ zzdn zzp() {
            return (zzb) clone();
        }

        public void zzq() {
            MessageType messagetype = (MessageType) this.zza.zza(zze.zzd, null, null);
            zza(messagetype, this.zza);
            this.zza = messagetype;
        }

        /* renamed from: zzr */
        public MessageType zzt() {
            if (this.zzb) {
                return this.zza;
            }
            MessageType messagetype = this.zza;
            zzgz.zza().zza((zzgz) messagetype).zzc(messagetype);
            this.zzb = true;
            return this.zza;
        }

        /* renamed from: zzs */
        public final MessageType zzu() {
            MessageType messagetype = (MessageType) zzt();
            if (messagetype.zzbl()) {
                return messagetype;
            }
            throw new zzhw(messagetype);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zzc.class */
    public static final class zzc implements zzey<zzc> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzey
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzey
        public final zzgn zza(zzgn zzgnVar, zzgo zzgoVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzey
        public final zzgt zza(zzgt zzgtVar, zzgt zzgtVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzey
        public final zzim zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzey
        public final zzip zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzey
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzey
        public final boolean zze() {
            throw new NoSuchMethodError();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zzd.class */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzfd<MessageType, BuilderType> implements zzgq {
        protected zzew<zzc> zzc = zzew.zza();

        public final zzew<zzc> zza() {
            if (this.zzc.zzc()) {
                this.zzc = (zzew) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zze.class */
    public static final class zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        private static final /* synthetic */ int[] zzl = {zza, zzb, zzc, zzd, zze, zzf, zzg};
        public static final int zzh = 1;
        public static final int zzi = 2;
        private static final /* synthetic */ int[] zzm = {zzh, zzi};
        public static final int zzj = 1;
        public static final int zzk = 2;
        private static final /* synthetic */ int[] zzn = {zzj, zzk};

        public static int[] zza() {
            return (int[]) zzl.clone();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfd$zzf.class */
    public static final class zzf<ContainingType extends zzgo, Type> extends zzer<ContainingType, Type> {
    }

    public static <T extends zzfd<?, ?>> T zza(Class<T> cls) {
        zzfd<?, ?> zzfdVar = zzd.get(cls);
        zzfd<?, ?> zzfdVar2 = zzfdVar;
        if (zzfdVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzfdVar2 = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzfd<?, ?> zzfdVar3 = zzfdVar2;
        if (zzfdVar2 == null) {
            zzfdVar3 = (zzfd) ((zzfd) zzib.zza(cls)).zza(zze.zzf, (Object) null, (Object) null);
            if (zzfdVar3 == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, zzfdVar3);
        }
        return (T) zzfdVar3;
    }

    public static <E> zzfl<E> zza(zzfl<E> zzflVar) {
        int size = zzflVar.size();
        return zzflVar.zza(size == 0 ? 10 : size << 1);
    }

    public static zzfm zza(zzfm zzfmVar) {
        int size = zzfmVar.size();
        return zzfmVar.zzc(size == 0 ? 10 : size << 1);
    }

    public static Object zza(zzgo zzgoVar, String str, Object[] objArr) {
        return new zzhb(zzgoVar, str, objArr);
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

    public static <T extends zzfd<?, ?>> void zza(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    protected static final <T extends zzfd<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zze.zza, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzd2 = zzgz.zza().zza((zzgz) t).zzd(t);
        if (z) {
            t.zza(zze.zzb, zzd2 ? t : null, null);
        }
        return zzd2;
    }

    public static zzfj zzbo() {
        return zzfg.zzd();
    }

    public static zzfm zzbp() {
        return zzgc.zzd();
    }

    public static <E> zzfl<E> zzbq() {
        return zzhc.zzd();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((zzfd) zza(zze.zzf, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return zzgz.zza().zza((zzgz) this).zza(this, (zzfd) obj);
        }
        return false;
    }

    public int hashCode() {
        if (this.zza != 0) {
            return this.zza;
        }
        this.zza = zzgz.zza().zza((zzgz) this).zza(this);
        return this.zza;
    }

    public String toString() {
        return zzgp.zza(this, super.toString());
    }

    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final void zza(zzen zzenVar) {
        zzgz.zza().zza((zzgz) this).zza((zzhd) this, (zzis) zzep.zza(zzenVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzdl
    public final int zzbj() {
        return this.zzc;
    }

    public final <MessageType extends zzfd<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zzbk() {
        return (BuilderType) zza(zze.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzgq
    public final boolean zzbl() {
        return zza(this, Boolean.TRUE.booleanValue());
    }

    public final BuilderType zzbm() {
        BuilderType buildertype = (BuilderType) zza(zze.zze, (Object) null, (Object) null);
        buildertype.zza(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final int zzbn() {
        if (this.zzc == -1) {
            this.zzc = zzgz.zza().zza((zzgz) this).zzb(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final /* synthetic */ zzgn zzbr() {
        zzb zzbVar = (zzb) zza(zze.zze, (Object) null, (Object) null);
        zzbVar.zza((zzb) this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzgo
    public final /* synthetic */ zzgn zzbs() {
        return (zzb) zza(zze.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzgq
    public final /* synthetic */ zzgo zzbt() {
        return (zzfd) zza(zze.zzf, (Object) null, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzdl
    public final void zzc(int i) {
        this.zzc = i;
    }
}
