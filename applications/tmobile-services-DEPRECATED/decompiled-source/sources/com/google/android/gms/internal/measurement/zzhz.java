package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhz;
import com.google.android.gms.internal.measurement.zzhz.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhz.class */
public abstract class zzhz<MessageType extends zzhz<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzgh<MessageType, BuilderType> {
    private static Map<Object, zzhz<?, ?>> zzd = new ConcurrentHashMap();
    protected zzku zzb = zzku.m12113a();
    private int zzc = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhz$zza.class */
    public static class zza<MessageType extends zzhz<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzgg<MessageType, BuilderType> {

        /* renamed from: f */
        private final MessageType f8518f;

        /* renamed from: g */
        protected MessageType f8519g;

        /* renamed from: h */
        protected boolean f8520h = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public zza(MessageType messagetype) {
            this.f8518f = messagetype;
            this.f8519g = (MessageType) ((zzhz) messagetype.mo12429o(zzf.f8524d, null, null));
        }

        /* renamed from: p */
        private static void m12413p(MessageType messagetype, MessageType messagetype2) {
            zzjv.m12271a().m12269c(messagetype).mo12261b(messagetype, messagetype2);
        }

        /* renamed from: q */
        private final BuilderType m12412q(zzhd zzhdVar, zzhm zzhmVar) throws IOException {
            if (this.f8520h) {
                m12410s();
                this.f8520h = false;
            }
            try {
                zzjv.m12271a().m12269c(this.f8519g).mo12254i(this.f8519g, zzhe.m12603e(zzhdVar), zzhmVar);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        /* renamed from: r */
        private final BuilderType m12411r(byte[] bArr, int i, int i2, zzhm zzhmVar) throws zzih {
            if (this.f8520h) {
                m12410s();
                this.f8520h = false;
            }
            try {
                zzjv.m12271a().m12269c(this.f8519g).mo12256g(this.f8519g, bArr, 0, i2, new zzgm(zzhmVar));
                return this;
            } catch (zzih e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzih.m12385a();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzgg
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.f8518f.mo12429o(zzf.f8525e, null, null);
            zzaVar.m12414o((zzhz) mo12323h());
            return zzaVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzgg
        /* renamed from: g */
        protected final /* synthetic */ zzgg mo12419g(zzgh zzghVar) {
            m12414o((zzhz) zzghVar);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.zzgg
        /* renamed from: i */
        public final /* synthetic */ zzgg mo12418i(zzhd zzhdVar, zzhm zzhmVar) throws IOException {
            m12412q(zzhdVar, zzhmVar);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.zzgg
        /* renamed from: j */
        public final /* synthetic */ zzgg mo12417j(byte[] bArr, int i, int i2) throws zzih {
            m12411r(bArr, 0, i2, zzhm.m12475a());
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.zzgg
        /* renamed from: l */
        public final /* synthetic */ zzgg mo12416l(byte[] bArr, int i, int i2, zzhm zzhmVar) throws zzih {
            m12411r(bArr, 0, i2, zzhmVar);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.zzgg
        /* renamed from: n */
        public final /* synthetic */ zzgg mo12415n() {
            return (zza) clone();
        }

        /* renamed from: o */
        public final BuilderType m12414o(MessageType messagetype) {
            if (this.f8520h) {
                m12410s();
                this.f8520h = false;
            }
            m12413p(this.f8519g, messagetype);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: s */
        public void m12410s() {
            MessageType messagetype = (MessageType) ((zzhz) this.f8519g.mo12429o(zzf.f8524d, null, null));
            m12413p(messagetype, this.f8519g);
            this.f8519g = messagetype;
        }

        @Override // com.google.android.gms.internal.measurement.zzjj
        /* renamed from: t */
        public final /* synthetic */ zzjh mo12327t() {
            return this.f8518f;
        }

        @Override // com.google.android.gms.internal.measurement.zzjj
        /* renamed from: u */
        public final boolean mo12326u() {
            return zzhz.m12425s(this.f8519g, false);
        }

        /* renamed from: v */
        public MessageType mo12323h() {
            if (this.f8520h) {
                return this.f8519g;
            }
            MessageType messagetype = this.f8519g;
            zzjv.m12271a().m12269c(messagetype).mo12259d(messagetype);
            this.f8520h = true;
            return this.f8519g;
        }

        /* renamed from: w */
        public final MessageType mo12321k() {
            MessageType messagetype = (MessageType) ((zzhz) mo12323h());
            if (messagetype.mo12326u()) {
                return messagetype;
            }
            throw new zzks(messagetype);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhz$zzb.class */
    public static abstract class zzb<MessageType extends zzb<MessageType, BuilderType>, BuilderType> extends zzhz<MessageType, BuilderType> implements zzjj {
        protected zzhp<zze> zzc = zzhp.m12460c();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: A */
        public final zzhp<zze> m12407A() {
            if (this.zzc.m12448o()) {
                this.zzc = (zzhp) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhz$zzc.class */
    protected static final class zzc<T extends zzhz<T, ?>> extends zzgi<T> {
        public zzc(T t) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhz$zzd.class */
    public static final class zzd<ContainingType extends zzjh, Type> extends zzhk<ContainingType, Type> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhz$zze.class */
    static final class zze implements zzhr<zze> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzhr
        /* renamed from: f */
        public final zzjq mo12406f(zzjq zzjqVar, zzjq zzjqVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzhr
        /* renamed from: u */
        public final zzjk mo12405u(zzjk zzjkVar, zzjh zzjhVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzhr
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzhr
        public final zzli zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzhr
        public final zzll zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzhr
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzhr
        public final boolean zze() {
            throw new NoSuchMethodError();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhz$zzf.class */
    public static final class zzf {

        /* renamed from: a */
        public static final int f8521a = 1;

        /* renamed from: b */
        public static final int f8522b = 2;

        /* renamed from: c */
        public static final int f8523c = 3;

        /* renamed from: d */
        public static final int f8524d = 4;

        /* renamed from: e */
        public static final int f8525e = 5;

        /* renamed from: f */
        public static final int f8526f = 6;

        /* renamed from: g */
        public static final int f8527g = 7;

        /* renamed from: h */
        private static final /* synthetic */ int[] f8528h = {1, 2, 3, 4, 5, 6, 7};

        /* renamed from: a */
        public static int[] m12404a() {
            return (int[]) f8528h.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static <T extends zzhz<?, ?>> T m12432l(Class<T> cls) {
        zzhz<?, ?> zzhzVar = zzd.get(cls);
        zzhz<?, ?> zzhzVar2 = zzhzVar;
        if (zzhzVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzhzVar2 = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        T t = (T) zzhzVar2;
        if (zzhzVar2 == null) {
            t = (T) ((zzhz) ((zzhz) zzkx.m12082c(cls)).mo12429o(zzf.f8526f, null, null));
            if (t != null) {
                zzd.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public static zzif m12431m(zzif zzifVar) {
        int size = zzifVar.size();
        return zzifVar.mo12366J(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: n */
    public static <E> zzii<E> m12430n(zzii<E> zziiVar) {
        int size = zziiVar.size();
        return zziiVar.mo12266a(size == 0 ? 10 : size << 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public static Object m12428p(zzjh zzjhVar, String str, Object[] objArr) {
        return new zzjx(zzjhVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static Object m12427q(Method method, Object obj, Object... objArr) {
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
    /* renamed from: r */
    public static <T extends zzhz<?, ?>> void m12426r(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    /* renamed from: s */
    protected static final <T extends zzhz<T, ?>> boolean m12425s(T t, boolean z) {
        byte byteValue = ((Byte) t.mo12429o(zzf.f8521a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean c = zzjv.m12271a().m12269c(t).mo12260c(t);
        if (z) {
            t.mo12429o(zzf.f8522b, c ? t : null, null);
        }
        return c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: x */
    public static zzig m12422x() {
        return zzia.m12401e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: y */
    public static zzif m12421y() {
        return zziv.m12363e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: z */
    public static <E> zzii<E> m12420z() {
        return zzjy.m12263f();
    }

    @Override // com.google.android.gms.internal.measurement.zzjh
    /* renamed from: a */
    public final /* synthetic */ zzjk mo12334a() {
        zza zzaVar = (zza) mo12429o(zzf.f8525e, null, null);
        zzaVar.m12414o(this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzjh
    /* renamed from: b */
    public final /* synthetic */ zzjk mo12333b() {
        return (zza) mo12429o(zzf.f8525e, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzjh
    /* renamed from: d */
    public final int mo12331d() {
        if (this.zzc == -1) {
            this.zzc = zzjv.m12271a().m12269c(this).mo12258e(this);
        }
        return this.zzc;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzjv.m12271a().m12269c(this).mo12257f(this, (zzhz) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzjh
    /* renamed from: f */
    public final void mo12330f(zzhg zzhgVar) throws IOException {
        zzjv.m12271a().m12269c(this).mo12255h(this, zzhj.m12479O(zzhgVar));
    }

    public int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int a = zzjv.m12271a().m12269c(this).mo12262a(this);
        this.zza = a;
        return a;
    }

    @Override // com.google.android.gms.internal.measurement.zzgh
    /* renamed from: i */
    final int mo12434i() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzgh
    /* renamed from: j */
    final void mo12433j(int i) {
        this.zzc = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public abstract Object mo12429o(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.measurement.zzjj
    /* renamed from: t */
    public final /* synthetic */ zzjh mo12327t() {
        return (zzhz) mo12429o(zzf.f8526f, null, null);
    }

    public String toString() {
        return zzjm.m12280a(this, super.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    /* renamed from: u */
    public final boolean mo12326u() {
        return m12425s(this, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: v */
    public final <MessageType extends zzhz<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> BuilderType m12424v() {
        return (BuilderType) ((zza) mo12429o(zzf.f8525e, null, null));
    }

    /* renamed from: w */
    public final BuilderType m12423w() {
        BuilderType buildertype = (BuilderType) ((zza) mo12429o(zzf.f8525e, null, null));
        buildertype.m12414o(this);
        return buildertype;
    }
}
