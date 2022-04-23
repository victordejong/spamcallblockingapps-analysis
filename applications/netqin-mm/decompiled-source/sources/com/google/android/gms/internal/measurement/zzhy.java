package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzhy.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4560o4;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4582r5;
import p131c.p161d.p170b.p224d.p252g.p258f.C4458a4;
import p131c.p161d.p170b.p224d.p252g.p258f.C4478d3;
import p131c.p161d.p170b.p224d.p252g.p258f.C4513i3;
import p131c.p161d.p170b.p224d.p252g.p258f.C4514i4;
import p131c.p161d.p170b.p224d.p252g.p258f.C4521j4;
import p131c.p161d.p170b.p224d.p252g.p258f.C4522j5;
import p131c.p161d.p170b.p224d.p252g.p258f.C4530k2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4539l4;
import p131c.p161d.p170b.p224d.p252g.p258f.C4580r3;
import p131c.p161d.p170b.p224d.p252g.p258f.C4605v2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4623y2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhy.class */
public abstract class zzhy<MessageType extends zzhy<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzgg<MessageType, BuilderType> {
    public static Map<Object, zzhy<?, ?>> zzd = new ConcurrentHashMap();
    public zzks zzb = zzks.m9600d();
    public int zzc = -1;

    /* renamed from: com.google.android.gms.internal.measurement.zzhy$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhy$a.class */
    public static final class C7278a implements zzht<C7278a> {
        @Override // com.google.android.gms.internal.measurement.zzht
        /* renamed from: a */
        public final zzji mo9658a(zzji zzjiVar, zzjj zzjjVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzht
        /* renamed from: a */
        public final zzjo mo9657a(zzjo zzjoVar, zzjo zzjoVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzht
        /* renamed from: c */
        public final boolean mo9656c() {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzht
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzht
        public final zzlg zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzht
        public final zzln zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzht
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhy$zza.class */
    public static final class zza<T extends zzhy<T, ?>> extends zzgk<T> {
        public zza(T t) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhy$zzb.class */
    public static class zzb<MessageType extends zzhy<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzgi<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f29499a;

        /* renamed from: b */
        public MessageType f29500b;

        /* renamed from: c */
        public boolean f29501c = false;

        public zzb(MessageType messagetype) {
            this.f29499a = messagetype;
            this.f29500b = (MessageType) ((zzhy) messagetype.mo9672a(zze.f29505d, null, null));
        }

        /* renamed from: a */
        public static void m9652a(MessageType messagetype, MessageType messagetype2) {
            C4521j4.m25442a().m25440a((C4521j4) messagetype).mo25345b(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzgi
        /* renamed from: a */
        public final /* synthetic */ zzgi mo9655a(zzgg zzggVar) {
            return m9653a((zzb<MessageType, BuilderType>) ((zzhy) zzggVar));
        }

        @Override // com.google.android.gms.internal.measurement.zzgi
        /* renamed from: a */
        public final /* synthetic */ zzgi mo9654a(zzhb zzhbVar, zzhl zzhlVar) throws IOException {
            m9649b(zzhbVar, zzhlVar);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.zzgi
        /* renamed from: a */
        public final /* synthetic */ zzgi mo9651a(byte[] bArr, int i, int i2) throws zzij {
            m9648b(bArr, 0, i2, zzhl.m9676a());
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.zzgi
        /* renamed from: a */
        public final /* synthetic */ zzgi mo9650a(byte[] bArr, int i, int i2, zzhl zzhlVar) throws zzij {
            m9648b(bArr, 0, i2, zzhlVar);
            return this;
        }

        /* renamed from: a */
        public final BuilderType m9653a(MessageType messagetype) {
            if (this.f29501c) {
                m9646l();
                this.f29501c = false;
            }
            m9652a(this.f29500b, messagetype);
            return this;
        }

        /* renamed from: b */
        public final BuilderType m9649b(zzhb zzhbVar, zzhl zzhlVar) throws IOException {
            if (this.f29501c) {
                m9646l();
                this.f29501c = false;
            }
            try {
                C4521j4.m25442a().m25440a((C4521j4) this.f29500b).mo25350a(this.f29500b, C4605v2.m25221a(zzhbVar), zzhlVar);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        /* renamed from: b */
        public final BuilderType m9648b(byte[] bArr, int i, int i2, zzhl zzhlVar) throws zzij {
            if (this.f29501c) {
                m9646l();
                this.f29501c = false;
            }
            try {
                C4521j4.m25442a().m25440a((C4521j4) this.f29500b).mo25347a(this.f29500b, bArr, 0, i2, new C4530k2(zzhlVar));
                return this;
            } catch (zzij e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzij.zza();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.zzgi
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.f29499a.mo9672a(zze.f29506e, null, null);
            zzbVar.m9653a((zzb) ((zzhy) mo9617f()));
            return zzbVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        /* renamed from: g */
        public final boolean mo9611g() {
            return zzhy.m9671a(this.f29500b, false);
        }

        @Override // com.google.android.gms.internal.measurement.zzjl
        /* renamed from: j */
        public final /* synthetic */ zzjj mo9610j() {
            return this.f29499a;
        }

        @Override // com.google.android.gms.internal.measurement.zzgi
        /* renamed from: k */
        public final /* synthetic */ zzgi mo9647k() {
            return (zzb) clone();
        }

        /* renamed from: l */
        public void m9646l() {
            MessageType messagetype = (MessageType) ((zzhy) this.f29500b.mo9672a(zze.f29505d, null, null));
            m9652a(messagetype, this.f29500b);
            this.f29500b = messagetype;
        }

        /* renamed from: m */
        public MessageType mo9617f() {
            if (this.f29501c) {
                return this.f29500b;
            }
            MessageType messagetype = this.f29500b;
            C4521j4.m25442a().m25440a((C4521j4) messagetype).mo25351a(messagetype);
            this.f29501c = true;
            return this.f29500b;
        }

        /* renamed from: n */
        public final MessageType mo9619b() {
            MessageType messagetype = (MessageType) ((zzhy) mo9617f());
            if (messagetype.mo9611g()) {
                return messagetype;
            }
            throw new zzkq(messagetype);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhy$zzd.class */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzhy<MessageType, BuilderType> implements zzjl {
        public C4478d3<C7278a> zzc = C4478d3.m25500g();

        public final C4478d3<C7278a> zza() {
            if (this.zzc.m25509b()) {
                this.zzc = (C4478d3) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhy$zze.class */
    public static final class zze {

        /* renamed from: a */
        public static final int f29502a = 1;

        /* renamed from: b */
        public static final int f29503b = 2;

        /* renamed from: c */
        public static final int f29504c = 3;

        /* renamed from: d */
        public static final int f29505d = 4;

        /* renamed from: e */
        public static final int f29506e = 5;

        /* renamed from: f */
        public static final int f29507f = 6;

        /* renamed from: g */
        public static final int f29508g = 7;

        /* renamed from: h */
        public static final /* synthetic */ int[] f29509h = {1, 2, 3, 4, 5, 6, 7};

        /* renamed from: a */
        public static int[] m9643a() {
            return (int[]) f29509h.clone();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhy$zzf.class */
    public static final class zzf<ContainingType extends zzjj, Type> extends zzhm<ContainingType, Type> {
    }

    /* renamed from: a */
    public static <T extends zzhy<?, ?>> T m9667a(Class<T> cls) {
        zzhy<?, ?> zzhyVar = zzd.get(cls);
        zzhy<?, ?> zzhyVar2 = zzhyVar;
        if (zzhyVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzhyVar2 = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        T t = (T) zzhyVar2;
        if (zzhyVar2 == null) {
            t = (T) ((zzhy) ((zzhy) C4522j5.m25438a(cls)).mo9672a(zze.f29507f, (Object) null, (Object) null));
            if (t != null) {
                zzd.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* renamed from: a */
    public static <E> zzig<E> m9670a(zzig<E> zzigVar) {
        int size = zzigVar.size();
        return zzigVar.zza(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static zzih m9669a(zzih zzihVar) {
        int size = zzihVar.size();
        return zzihVar.zzc(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static Object m9668a(zzjj zzjjVar, String str, Object[] objArr) {
        return new C4539l4(zzjjVar, str, objArr);
    }

    /* renamed from: a */
    public static Object m9665a(Method method, Object obj, Object... objArr) {
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

    /* renamed from: a */
    public static <T extends zzhy<?, ?>> void m9666a(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    /* renamed from: a */
    public static final <T extends zzhy<T, ?>> boolean m9671a(T t, boolean z) {
        byte byteValue = ((Byte) t.mo9672a(zze.f29502a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean f = C4521j4.m25442a().m25440a((C4521j4) t).mo25343f(t);
        if (z) {
            t.mo9672a(zze.f29503b, f ? t : null, null);
        }
        return f;
    }

    /* renamed from: m */
    public static zzie m9661m() {
        return C4513i3.m25448b();
    }

    /* renamed from: n */
    public static zzih m9660n() {
        return C4580r3.m25250b();
    }

    /* renamed from: o */
    public static <E> zzig<E> m9659o() {
        return C4514i4.m25445b();
    }

    /* renamed from: a */
    public abstract Object mo9672a(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.measurement.zzgg
    /* renamed from: a */
    public final void mo9673a(int i) {
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    /* renamed from: a */
    public final void mo9616a(zzhi zzhiVar) throws IOException {
        C4521j4.m25442a().m25440a((C4521j4) this).mo25349a((AbstractC4560o4) this, (AbstractC4582r5) C4623y2.m25150a(zzhiVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    /* renamed from: c */
    public final int mo9615c() {
        if (this.zzc == -1) {
            this.zzc = C4521j4.m25442a().m25440a((C4521j4) this).mo25346b(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    /* renamed from: e */
    public final /* synthetic */ zzji mo9613e() {
        zzb zzbVar = (zzb) mo9672a(zze.f29506e, (Object) null, (Object) null);
        zzbVar.m9653a((zzb) this);
        return zzbVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return C4521j4.m25442a().m25440a((C4521j4) this).mo25348a(this, (zzhy) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzjl
    /* renamed from: g */
    public final boolean mo9611g() {
        return m9671a(this, Boolean.TRUE.booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    /* renamed from: h */
    public final /* synthetic */ zzji mo9612h() {
        return (zzb) mo9672a(zze.f29506e, (Object) null, (Object) null);
    }

    public int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int c = C4521j4.m25442a().m25440a((C4521j4) this).mo25344c(this);
        this.zza = c;
        return c;
    }

    @Override // com.google.android.gms.internal.measurement.zzgg
    /* renamed from: i */
    public final int mo9664i() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzjl
    /* renamed from: j */
    public final /* synthetic */ zzjj mo9610j() {
        return (zzhy) mo9672a(zze.f29507f, (Object) null, (Object) null);
    }

    /* renamed from: k */
    public final <MessageType extends zzhy<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType m9663k() {
        return (BuilderType) ((zzb) mo9672a(zze.f29506e, (Object) null, (Object) null));
    }

    /* renamed from: l */
    public final BuilderType m9662l() {
        BuilderType buildertype = (BuilderType) ((zzb) mo9672a(zze.f29506e, (Object) null, (Object) null));
        buildertype.m9653a(this);
        return buildertype;
    }

    public String toString() {
        return C4458a4.m25565a(this, super.toString());
    }
}
