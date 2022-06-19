package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzcx;
import com.google.android.gms.internal.firebase-perf.zzcy;
import com.google.android.gms.internal.firebase-perf.zzdu;
import com.google.android.gms.internal.firebase-perf.zzem;
import com.google.android.gms.internal.firebase-perf.zzfq;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase-perf.zzfx;
import com.google.android.gms.internal.firebase-perf.zzgz;
import com.google.android.gms.internal.firebase-perf.zzhk;
import com.google.android.gms.internal.firebase-perf.zzhr;
import com.google.android.gms.internal.firebase_perf.zzeh;
import com.google.android.gms.internal.firebase_perf.zzeh.zza;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzeh.class */
public abstract class zzeh<MessageType extends zzeh<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzcy<MessageType, BuilderType> {
    private static Map<Object, zzeh<?, ?>> zzqe = new ConcurrentHashMap();
    protected zzgz zzqc = zzgz.zzih();
    private int zzqd = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzeh$zza.class */
    public static class zza<MessageType extends zzeh<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzcx<MessageType, BuilderType> {
        private final MessageType zzpz;
        protected MessageType zzqa;
        protected boolean zzqb = false;

        public zza(MessageType messagetype) {
            this.zzpz = messagetype;
            this.zzqa = (MessageType) messagetype.zza(zzd.zzqj, null, null);
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzgd.zzhr().zzm(messagetype).zze(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.firebase_perf.zzcx
        public /* synthetic */ Object clone() {
            zza zzaVar = (zza) this.zzpz.zza(zzd.zzqk, null, null);
            zzaVar.zza((zza) zzgl());
            return zzaVar;
        }

        public final boolean isInitialized() {
            return zzeh.zza(this.zzqa, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.firebase_perf.zzcx
        protected final /* synthetic */ zzcx zza(zzcy zzcyVar) {
            return zza((zza<MessageType, BuilderType>) ((zzeh) zzcyVar));
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzqb) {
                zzgi();
                this.zzqb = false;
            }
            zza(this.zzqa, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzcx
        public final /* synthetic */ zzcx zzfd() {
            return (zza) clone();
        }

        public void zzgi() {
            MessageType messagetype = (MessageType) this.zzqa.zza(zzd.zzqj, null, null);
            zza(messagetype, this.zzqa);
            this.zzqa = messagetype;
        }

        /* renamed from: zzgj */
        public MessageType zzgl() {
            if (this.zzqb) {
                return this.zzqa;
            }
            MessageType messagetype = this.zzqa;
            zzgd.zzhr().zzm(messagetype).zzd(messagetype);
            this.zzqb = true;
            return this.zzqa;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: zzgk */
        public final MessageType zzgm() {
            MessageType zzgl = zzgl();
            if (zzgl.isInitialized()) {
                return zzgl;
            }
            throw new zzgx(zzgl);
        }

        public final /* synthetic */ zzfr zzgn() {
            return this.zzpz;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzeh$zzb.class */
    public static abstract class zzb<MessageType extends zzb<MessageType, BuilderType>, BuilderType> extends zzeh<MessageType, BuilderType> implements zzft {
        protected zzdz<zze> zzqf = zzdz.zzfy();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzeh$zzc.class */
    public static final class zzc<T extends zzeh<T, ?>> extends zzcz<T> {
        private final T zzpz;

        public zzc(T t) {
            this.zzpz = t;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzeh$zzd.class */
    public static final class zzd {
        public static final int zzqg = 1;
        public static final int zzqh = 2;
        public static final int zzqi = 3;
        public static final int zzqj = 4;
        public static final int zzqk = 5;
        public static final int zzql = 6;
        public static final int zzqm = 7;
        private static final /* synthetic */ int[] zzqn = {zzqg, zzqh, zzqi, zzqj, zzqk, zzql, zzqm};
        public static final int zzqo = 1;
        public static final int zzqp = 2;
        private static final /* synthetic */ int[] zzqq = {zzqo, zzqp};
        public static final int zzqr = 1;
        public static final int zzqs = 2;
        private static final /* synthetic */ int[] zzqt = {zzqr, zzqs};

        /* renamed from: values$50KLMJ33DTMIUPRFDTJMOP9FE1P6UT3FC9QMCBQ7CLN6ASJ1EHIM8JB5EDPM2PR59HKN8P949LIN8Q3FCHA6UIBEEPNMMP9R0 */
        public static int[] m3780x126d66cb() {
            return (int[]) zzqn.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzeh$zze.class */
    public static final class zze implements zzeb<zze> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzeb
        public final zzfq zza(zzfq zzfqVar, zzfr zzfrVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzeb
        public final zzfx zza(zzfx zzfxVar, zzfx zzfxVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzeb
        public final int zzcq() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzeb
        public final zzhk zzgd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzeb
        public final zzhr zzge() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzeb
        public final boolean zzgf() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzeb
        public final boolean zzgg() {
            throw new NoSuchMethodError();
        }
    }

    public static <E> zzeo<E> zza(zzeo<E> zzeoVar) {
        int size = zzeoVar.size();
        return zzeoVar.zzao(size == 0 ? 10 : size << 1);
    }

    public static Object zza(zzfr zzfrVar, String str, Object[] objArr) {
        return new zzgf(zzfrVar, str, objArr);
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

    public static <T extends zzeh<?, ?>> void zza(Class<T> cls, T t) {
        zzqe.put(cls, t);
    }

    protected static final <T extends zzeh<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zzd.zzqg, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzk = zzgd.zzhr().zzm(t).zzk(t);
        if (z) {
            t.zza(zzd.zzqh, zzk ? t : null, null);
        }
        return zzk;
    }

    public static <T extends zzeh<?, ?>> T zzc(Class<T> cls) {
        zzeh<?, ?> zzehVar = zzqe.get(cls);
        zzeh<?, ?> zzehVar2 = zzehVar;
        if (zzehVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzehVar2 = zzqe.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        zzeh<?, ?> zzehVar3 = zzehVar2;
        if (zzehVar2 == null) {
            zzehVar3 = (zzeh) ((zzeh) zzhc.zzg(cls)).zza(zzd.zzql, (Object) null, (Object) null);
            if (zzehVar3 == null) {
                throw new IllegalStateException();
            }
            zzqe.put(cls, zzehVar3);
        }
        return (T) zzehVar3;
    }

    public static zzem zzgq() {
        return zzej.zzgt();
    }

    public static <E> zzeo<E> zzgr() {
        return zzgc.zzhq();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((zzeh) zza(zzd.zzql, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return zzgd.zzhr().zzm(this).equals(this, (zzeh) obj);
        }
        return false;
    }

    public int hashCode() {
        if (this.zzmb != 0) {
            return this.zzmb;
        }
        this.zzmb = zzgd.zzhr().zzm(this).hashCode(this);
        return this.zzmb;
    }

    public final boolean isInitialized() {
        return zza(this, Boolean.TRUE.booleanValue());
    }

    public String toString() {
        return zzfs.zza(this, super.toString());
    }

    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.firebase_perf.zzfr
    public final void zzb(zzdu zzduVar) {
        zzgd.zzhr().zzm(this).zza(this, zzdw.zza(zzduVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_perf.zzcy
    public final int zzff() {
        return this.zzqd;
    }

    public final /* synthetic */ zzfr zzgn() {
        return (zzeh) zza(zzd.zzql, (Object) null, (Object) null);
    }

    public final <MessageType extends zzeh<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType zzgo() {
        return (BuilderType) zza(zzd.zzqk, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzfr
    public final int zzgp() {
        if (this.zzqd == -1) {
            this.zzqd = zzgd.zzhr().zzm(this).zzl(this);
        }
        return this.zzqd;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzfr
    public final /* synthetic */ zzfq zzgs() {
        zza zzaVar = (zza) zza(zzd.zzqk, (Object) null, (Object) null);
        zzaVar.zza((zza) this);
        return zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_perf.zzcy
    public final void zzp(int i) {
        this.zzqd = i;
    }
}
