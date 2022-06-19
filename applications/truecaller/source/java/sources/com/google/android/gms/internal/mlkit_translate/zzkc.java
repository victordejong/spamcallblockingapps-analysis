package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzkc;
import com.google.android.gms.internal.mlkit_translate.zzkc.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkc.class */
public abstract class zzkc<MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzit<MessageType, BuilderType> {
    private static Map<Object, zzkc<?, ?>> zzd = new ConcurrentHashMap();
    public zzmv zzb = zzmv.zza();
    private int zzc = -1;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkc$zza.class */
    public static class zza<MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzis<MessageType, BuilderType> {
        public MessageType zza;
        public boolean zzb = false;
        private final MessageType zzc;

        public zza(MessageType messagetype) {
            this.zzc = messagetype;
            this.zza = (MessageType) messagetype.zza(zzf.zzd, null, null);
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzlz.zza().zza((zzlz) messagetype).zzb(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzlm
        /* renamed from: a_ */
        public final boolean mo38714a_() {
            return zzkc.zza(this.zza, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.mlkit_translate.zzis
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.zzc.zza(zzf.zze, null, null);
            zzaVar.zza((zza) ((zzkc) zzg()));
            return zzaVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.mlkit_translate.zzis
        public final /* synthetic */ zzis zza(zzit zzitVar) {
            return zza((zza<MessageType, BuilderType>) ((zzkc) zzitVar));
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb) {
                zzc();
                this.zzb = false;
            }
            zza(this.zza, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzis
        public final /* synthetic */ zzis zzb() {
            return (zza) clone();
        }

        public void zzc() {
            MessageType messagetype = (MessageType) this.zza.zza(zzf.zzd, null, null);
            zza(messagetype, this.zza);
            this.zza = messagetype;
        }

        /* renamed from: zze */
        public MessageType zzg() {
            if (this.zzb) {
                return this.zza;
            }
            MessageType messagetype = this.zza;
            zzlz.zza().zza((zzlz) messagetype).zzc(messagetype);
            this.zzb = true;
            return this.zza;
        }

        /* renamed from: zzf */
        public final MessageType zzh() {
            MessageType messagetype = (MessageType) zzg();
            if (messagetype.mo38714a_()) {
                return messagetype;
            }
            throw new zzmt(messagetype);
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzlm
        public final /* synthetic */ zzlk zzi() {
            return this.zzc;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkc$zzb.class */
    public static class zzb<MessageType extends zze<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zza<MessageType, BuilderType> implements zzlm {
        public zzb(MessageType messagetype) {
            super(messagetype);
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc.zza
        public void zzc() {
            super.zzc();
            MessageType messagetype = this.zza;
            ((zze) messagetype).zzc = (zzju) ((zze) messagetype).zzc.clone();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc.zza
        public /* synthetic */ zzkc zze() {
            return (zze) zzg();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc.zza, com.google.android.gms.internal.mlkit_translate.zzln
        public /* synthetic */ zzlk zzg() {
            if (this.zzb) {
                return (zze) this.zza;
            }
            ((zze) this.zza).zzc.zzb();
            return (zze) super.zzg();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkc$zzc.class */
    public static final class zzc<T extends zzkc<T, ?>> extends zziu<T> {
        private final T zza;

        public zzc(T t) {
            this.zza = t;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkc$zzd.class */
    public static final class zzd implements zzjw<zzd> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzjw
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzjw
        public final zzln zza(zzln zzlnVar, zzlk zzlkVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzjw
        public final zzlq zza(zzlq zzlqVar, zzlq zzlqVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzjw
        public final zzng zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzjw
        public final zznn zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzjw
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzjw
        public final boolean zze() {
            throw new NoSuchMethodError();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkc$zze.class */
    public static abstract class zze<MessageType extends zze<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzkc<MessageType, BuilderType> implements zzlm {
        public zzju<zzd> zzc = zzju.zza();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkc$zzf.class */
    public static final class zzf {
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

    public static <T extends zzkc<?, ?>> T zza(Class<T> cls) {
        zzkc<?, ?> zzkcVar = zzd.get(cls);
        zzkc<?, ?> zzkcVar2 = zzkcVar;
        if (zzkcVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzkcVar2 = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzkc<?, ?> zzkcVar3 = zzkcVar2;
        if (zzkcVar2 == null) {
            zzkcVar3 = (zzkc) ((zzkc) zzmy.zza(cls)).zza(zzf.zzf, (Object) null, (Object) null);
            if (zzkcVar3 == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, zzkcVar3);
        }
        return (T) zzkcVar3;
    }

    public static zzkj zza(zzkj zzkjVar) {
        int size = zzkjVar.size();
        return zzkjVar.zza(size == 0 ? 10 : size << 1);
    }

    public static Object zza(zzlk zzlkVar, String str, Object[] objArr) {
        return new zzmb(zzlkVar, str, objArr);
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

    public static <T extends zzkc<?, ?>> void zza(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    public static final <T extends zzkc<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zzf.zza, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzd2 = zzlz.zza().zza((zzlz) t).zzd(t);
        if (z) {
            t.zza(zzf.zzb, zzd2 ? t : null, null);
        }
        return zzd2;
    }

    public static zzkj zzk() {
        return zzkd.zzd();
    }

    public static <E> zzkl<E> zzl() {
        return zzly.zzd();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlm
    /* renamed from: a_ */
    public final boolean mo38714a_() {
        return zza(this, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzlz.zza().zza((zzlz) this).zza(this, (zzkc) obj);
    }

    public int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int zza2 = zzlz.zza().zza((zzlz) this).zza(this);
        this.zza = zza2;
        return zza2;
    }

    public String toString() {
        return zzlp.zza(this, super.toString());
    }

    public final <MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType zza(MessageType messagetype) {
        return (BuilderType) zzh().zza(messagetype);
    }

    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.mlkit_translate.zzit
    public final void zza(int i) {
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlk
    public final void zza(zzjp zzjpVar) throws IOException {
        zzlz.zza().zza((zzlz) this).zza((zzma) this, (zznm) zzjr.zza(zzjpVar));
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzit
    public final int zzg() {
        return this.zzc;
    }

    public final <MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType zzh() {
        return (BuilderType) zza(zzf.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlm
    public final /* synthetic */ zzlk zzi() {
        return (zzkc) zza(zzf.zzf, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlk
    public final int zzj() {
        if (this.zzc == -1) {
            this.zzc = zzlz.zza().zza((zzlz) this).zzb(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzlk
    public final /* synthetic */ zzln zzm() {
        zza zzaVar = (zza) zza(zzf.zze, (Object) null, (Object) null);
        zzaVar.zza((zza) this);
        return zzaVar;
    }
}
