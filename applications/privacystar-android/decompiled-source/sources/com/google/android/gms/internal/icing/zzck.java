package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzck;
import com.google.android.gms.internal.icing.zzck.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzck.class */
public abstract class zzck<MessageType extends zzck<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzbb<MessageType, BuilderType> {
    private static Map<Object, zzck<?, ?>> zzho = new ConcurrentHashMap();
    protected zzey zzhm = zzey.zzcq();
    private int zzhn = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzck$zza.class */
    public static class zza<MessageType extends zzck<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzbc<MessageType, BuilderType> {
        private final MessageType zzhp;
        private MessageType zzhq;
        private boolean zzhr = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public zza(MessageType messagetype) {
            this.zzhp = messagetype;
            this.zzhq = (MessageType) ((zzck) messagetype.zza(zzd.zzhw, null, null));
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzec.zzbz().zzl(messagetype).zzc(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.icing.zzbc
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.zzhp.zza(zzd.zzhx, null, null);
            if (!this.zzhr) {
                MessageType messagetype = this.zzhq;
                zzec.zzbz().zzl(messagetype).zzc(messagetype);
                this.zzhr = true;
            }
            zzaVar.zza((zza) this.zzhq);
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.icing.zzdt
        public final boolean isInitialized() {
            return zzck.zza(this.zzhq, false);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.icing.zzbc
        protected final /* synthetic */ zzbc zza(zzbb zzbbVar) {
            return zza((zza<MessageType, BuilderType>) ((zzck) zzbbVar));
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzhr) {
                MessageType messagetype2 = (MessageType) ((zzck) this.zzhq.zza(zzd.zzhw, null, null));
                zza(messagetype2, this.zzhq);
                this.zzhq = messagetype2;
                this.zzhr = false;
            }
            zza(this.zzhq, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.icing.zzdt
        public final /* synthetic */ zzdr zzba() {
            return this.zzhp;
        }

        @Override // com.google.android.gms.internal.icing.zzds
        public final /* synthetic */ zzdr zzbb() {
            if (this.zzhr) {
                return this.zzhq;
            }
            MessageType messagetype = this.zzhq;
            zzec.zzbz().zzl(messagetype).zzc(messagetype);
            this.zzhr = true;
            return this.zzhq;
        }

        @Override // com.google.android.gms.internal.icing.zzds
        public final /* synthetic */ zzdr zzbc() {
            boolean z = true;
            if (!this.zzhr) {
                MessageType messagetype = this.zzhq;
                zzec.zzbz().zzl(messagetype).zzc(messagetype);
                this.zzhr = true;
            }
            MessageType messagetype2 = this.zzhq;
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype2.zza(zzd.zzht, null, null)).byteValue();
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean zzk = zzec.zzbz().zzl(messagetype2).zzk(messagetype2);
                    z = zzk;
                    if (booleanValue) {
                        messagetype2.zza(zzd.zzhu, zzk ? messagetype2 : null, null);
                        z = zzk;
                    }
                }
            }
            if (z) {
                return messagetype2;
            }
            throw new zzew(messagetype2);
        }

        @Override // com.google.android.gms.internal.icing.zzbc
        public final /* synthetic */ zzbc zzn() {
            return (zza) clone();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzck$zzb.class */
    public static final class zzb<T extends zzck<T, ?>> extends zzbd<T> {
        private T zzhp;

        public zzb(T t) {
            this.zzhp = t;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzck$zzc.class */
    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType> extends zzck<MessageType, BuilderType> implements zzdt {
        protected zzcd<Object> zzhs = zzcd.zzam();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzck$zzd.class */
    public static final class zzd {
        public static final int zzht = 1;
        public static final int zzhu = 2;
        public static final int zzhv = 3;
        public static final int zzhw = 4;
        public static final int zzhx = 5;
        public static final int zzhy = 6;
        public static final int zzhz = 7;
        private static final /* synthetic */ int[] zzia = {zzht, zzhu, zzhv, zzhw, zzhx, zzhy, zzhz};
        public static final int zzib = 1;
        public static final int zzic = 2;
        private static final /* synthetic */ int[] zzid = {zzib, zzic};
        public static final int zzie = 1;
        public static final int zzif = 2;
        private static final /* synthetic */ int[] zzig = {zzie, zzif};

        /* renamed from: values$50KLMJ33DTMIUPRFDTJMOP9FE1P6UT3FC9QMCBQ7CLN6ASJ1EHIM8JB5EDPM2PR59HKN8P949LIN8Q3FCHA6UIBEEPNMMP9R0 */
        public static int[] m334x126d66cb() {
            return (int[]) zzia.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object zza(zzdr zzdrVar, String str, Object[] objArr) {
        return new zzee(zzdrVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            } else if (cause instanceof Error) {
                throw ((Error) cause);
            } else {
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzck<?, ?>> void zza(Class<T> cls, T t) {
        zzho.put(cls, t);
    }

    protected static final <T extends zzck<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zzd.zzht, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        return zzec.zzbz().zzl(t).zzk(t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.icing.zzcq, com.google.android.gms.internal.icing.zzdg] */
    public static zzcq zzav() {
        return zzdg.zzbl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.icing.zzco, com.google.android.gms.internal.icing.zzbx] */
    public static zzco zzaw() {
        return zzbx.zzae();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.icing.zzcn, com.google.android.gms.internal.icing.zzbg] */
    public static zzcn zzax() {
        return zzbg.zzt();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzcr<E> zzay() {
        return zzed.zzca();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends zzck<?, ?>> T zzc(Class<T> cls) {
        zzck<?, ?> zzckVar = zzho.get(cls);
        T t = (T) zzckVar;
        if (zzckVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) zzho.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (t != null) {
            return t;
        }
        String valueOf = String.valueOf(cls.getName());
        throw new IllegalStateException(valueOf.length() != 0 ? "Unable to get default instance for: ".concat(valueOf) : new String("Unable to get default instance for: "));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzck) zza(zzd.zzhy, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return zzec.zzbz().zzl(this).equals(this, (zzck) obj);
    }

    public int hashCode() {
        if (this.zzdi != 0) {
            return this.zzdi;
        }
        this.zzdi = zzec.zzbz().zzl(this).hashCode(this);
        return this.zzdi;
    }

    @Override // com.google.android.gms.internal.icing.zzdt
    public final boolean isInitialized() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) zza(zzd.zzht, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzk = zzec.zzbz().zzl(this).zzk(this);
        if (booleanValue) {
            zza(zzd.zzhu, zzk ? this : null, (Object) null);
        }
        return zzk;
    }

    public String toString() {
        return zzdu.zza(this, super.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zza(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.icing.zzdr
    public final int zzan() {
        if (this.zzhn == -1) {
            this.zzhn = zzec.zzbz().zzl(this).zzj(this);
        }
        return this.zzhn;
    }

    @Override // com.google.android.gms.internal.icing.zzdr
    public final /* synthetic */ zzds zzaz() {
        zza zzaVar = (zza) zza(zzd.zzhx, (Object) null, (Object) null);
        zzaVar.zza((zza) this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.icing.zzdr
    public final void zzb(zzbu zzbuVar) throws IOException {
        zzec.zzbz().zze(getClass()).zza(this, zzbw.zza(zzbuVar));
    }

    @Override // com.google.android.gms.internal.icing.zzdt
    public final /* synthetic */ zzdr zzba() {
        return (zzck) zza(zzd.zzhy, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.icing.zzbb
    final void zze(int i) {
        this.zzhn = i;
    }

    @Override // com.google.android.gms.internal.icing.zzbb
    final int zzm() {
        return this.zzhn;
    }
}
