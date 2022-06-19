package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhi;
import com.google.android.gms.internal.firebase_remote_config.zzhi.zzb;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhi.class */
public abstract class zzhi<MessageType extends zzhi<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzfq<MessageType, BuilderType> {
    private static Map<Object, zzhi<?, ?>> zzte = new ConcurrentHashMap();
    protected zzka zztc = zzka.zzja();
    private int zztd = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhi$zza.class */
    public static final class zza<T extends zzhi<T, ?>> extends zzfs<T> {
        private final T zztg;

        public zza(T t) {
            this.zztg = t;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhi$zzb.class */
    public static class zzb<MessageType extends zzhi<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzfp<MessageType, BuilderType> {
        private final MessageType zztg;
        private MessageType zzth;
        private boolean zzti = false;

        public zzb(MessageType messagetype) {
            this.zztg = messagetype;
            this.zzth = (MessageType) messagetype.zzb(zze.zztp, null, null);
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzjb.zzii().zzz(messagetype).zze(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzfp
        public /* synthetic */ Object clone() {
            zzb zzbVar = (zzb) this.zztg.zzb(zze.zztq, null, null);
            zzbVar.zza((zzhi) zzha());
            return zzbVar;
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzis
        public final boolean isInitialized() {
            return zzhi.zza(this.zzth, false);
        }

        /* renamed from: zzb */
        public final BuilderType zza(MessageType messagetype) {
            if (this.zzti) {
                MessageType messagetype2 = (MessageType) this.zzth.zzb(zze.zztp, null, null);
                zza(messagetype2, this.zzth);
                this.zzth = messagetype2;
                this.zzti = false;
            }
            zza(this.zzth, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzfp
        public final /* synthetic */ zzfp zzeo() {
            return (zzb) clone();
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzis
        public final /* synthetic */ zziq zzgw() {
            return this.zztg;
        }

        /* renamed from: zzgy */
        public MessageType zzha() {
            if (this.zzti) {
                return this.zzth;
            }
            this.zzth.zzes();
            this.zzti = true;
            return this.zzth;
        }

        /* renamed from: zzgz */
        public final MessageType zzhb() {
            MessageType messagetype = (MessageType) zzha();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new zzjy(messagetype);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhi$zzc.class */
    public static final class zzc<ContainingType extends zziq, Type> extends zzgw<ContainingType, Type> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhi$zzd.class */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzhi<MessageType, BuilderType> implements zzis {
        protected zzha<Object> zztj = zzha.zzgi();

        public final zzha<Object> zzhc() {
            if (this.zztj.isImmutable()) {
                this.zztj = (zzha) this.zztj.clone();
            }
            return this.zztj;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhi$zze.class */
    public static final class zze {
        public static final int zztm = 1;
        public static final int zztn = 2;
        public static final int zzto = 3;
        public static final int zztp = 4;
        public static final int zztq = 5;
        public static final int zztr = 6;
        public static final int zzts = 7;
        private static final /* synthetic */ int[] zztt = {zztm, zztn, zzto, zztp, zztq, zztr, zzts};
        public static final int zztu = 1;
        public static final int zztv = 2;
        private static final /* synthetic */ int[] zztw = {zztu, zztv};
        public static final int zztx = 1;
        public static final int zzty = 2;
        private static final /* synthetic */ int[] zztz = {zztx, zzty};

        public static int[] zzhd() {
            return (int[]) zztt.clone();
        }
    }

    private static <T extends zzhi<T, ?>> T zza(T t) {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw new zzhq(new zzjy(t).getMessage()).zzg(t);
    }

    private static <T extends zzhi<T, ?>> T zza(T t, zzgj zzgjVar, zzgx zzgxVar) {
        T t2 = (T) t.zzb(zze.zztp, null, null);
        try {
            zzjb.zzii().zzz(t2).zza(t2, zzgq.zza(zzgjVar), zzgxVar);
            t2.zzes();
            return t2;
        } catch (IOException e) {
            if (!(e.getCause() instanceof zzhq)) {
                throw new zzhq(e.getMessage()).zzg(t2);
            }
            throw ((zzhq) e.getCause());
        } catch (RuntimeException e2) {
            if (!(e2.getCause() instanceof zzhq)) {
                throw e2;
            }
            throw ((zzhq) e2.getCause());
        }
    }

    public static <T extends zzhi<T, ?>> T zza(T t, InputStream inputStream) {
        zzgo zzgoVar;
        if (inputStream == null) {
            byte[] bArr = zzhm.zzua;
            zzgoVar = zzgj.zza(bArr, 0, bArr.length, false);
        } else {
            zzgoVar = new zzgo(inputStream);
        }
        return (T) zza(zza(t, zzgoVar, zzgx.zzgh()));
    }

    public static <T extends zzhi<T, ?>> T zza(T t, byte[] bArr) {
        return (T) zza(zza(t, bArr, 0, bArr.length, zzgx.zzgh()));
    }

    private static <T extends zzhi<T, ?>> T zza(T t, byte[] bArr, int i, int i2, zzgx zzgxVar) {
        T t2 = (T) t.zzb(zze.zztp, null, null);
        try {
            zzjb.zzii().zzz(t2).zza(t2, bArr, 0, i2, new zzfw(zzgxVar));
            t2.zzes();
            if (t2.zzoj == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (!(e.getCause() instanceof zzhq)) {
                throw new zzhq(e.getMessage()).zzg(t2);
            }
            throw ((zzhq) e.getCause());
        } catch (IndexOutOfBoundsException e2) {
            throw zzhq.zzhe().zzg(t2);
        }
    }

    public static Object zza(zziq zziqVar, String str, Object[] objArr) {
        return new zzjd(zziqVar, str, objArr);
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

    public static <T extends zzhi<?, ?>> void zza(Class<T> cls, T t) {
        zzte.put(cls, t);
    }

    protected static final <T extends zzhi<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zzb(zze.zztm, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzy = zzjb.zzii().zzz(t).zzy(t);
        if (z) {
            t.zzb(zze.zztn, zzy ? t : null, null);
        }
        return zzy;
    }

    public static <T extends zzhi<?, ?>> T zzg(Class<T> cls) {
        zzhi<?, ?> zzhiVar = zzte.get(cls);
        zzhi<?, ?> zzhiVar2 = zzhiVar;
        if (zzhiVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzhiVar2 = zzte.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzhi<?, ?> zzhiVar3 = zzhiVar2;
        if (zzhiVar2 == null) {
            zzhiVar3 = (zzhi) ((zzhi) zzkd.zzm(cls)).zzb(zze.zztr, null, null);
            if (zzhiVar3 == null) {
                throw new IllegalStateException();
            }
            zzte.put(cls, zzhiVar3);
        }
        return (T) zzhiVar3;
    }

    public static <E> zzhn<E> zzgt() {
        return zzje.zzil();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((zzhi) zzb(zze.zztr, null, null)).getClass().isInstance(obj)) {
            return zzjb.zzii().zzz(this).equals(this, (zzhi) obj);
        }
        return false;
    }

    public int hashCode() {
        if (this.zzoj != 0) {
            return this.zzoj;
        }
        this.zzoj = zzjb.zzii().zzz(this).hashCode(this);
        return this.zzoj;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzis
    public final boolean isInitialized() {
        return zza(this, Boolean.TRUE.booleanValue());
    }

    public String toString() {
        return zzir.zza(this, super.toString());
    }

    public abstract Object zzb(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.firebase_remote_config.zziq
    public final void zzb(zzgs zzgsVar) {
        zzjb.zzii().zzk(getClass()).zza(this, zzgu.zza(zzgsVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzfq
    public final int zzeq() {
        return this.zztd;
    }

    protected final void zzes() {
        zzjb.zzii().zzz(this).zzm(this);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zziq
    public final int zzgs() {
        if (this.zztd == -1) {
            this.zztd = zzjb.zzii().zzz(this).zzw(this);
        }
        return this.zztd;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zziq
    public final /* synthetic */ zzip zzgu() {
        zzb zzbVar = (zzb) zzb(zze.zztq, null, null);
        zzbVar.zza(this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zziq
    public final /* synthetic */ zzip zzgv() {
        return (zzb) zzb(zze.zztq, null, null);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzis
    public final /* synthetic */ zziq zzgw() {
        return (zzhi) zzb(zze.zztr, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzfq
    public final void zzr(int i) {
        this.zztd = i;
    }
}
