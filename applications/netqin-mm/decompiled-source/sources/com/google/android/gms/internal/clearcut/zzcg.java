package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.gms.internal.clearcut.zzcg.zza;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1;
import p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2;
import p131c.p161d.p170b.p224d.p252g.p255c.C4327c1;
import p131c.p161d.p170b.p224d.p252g.p255c.C4341f0;
import p131c.p161d.p170b.p224d.p252g.p255c.C4362j1;
import p131c.p161d.p170b.p224d.p252g.p255c.C4366k0;
import p131c.p161d.p170b.p224d.p252g.p255c.C4367k1;
import p131c.p161d.p170b.p224d.p252g.p255c.C4376l1;
import p131c.p161d.p170b.p224d.p252g.p255c.C4389o;
import p131c.p161d.p170b.p224d.p252g.p255c.C4410s0;
import p131c.p161d.p170b.p224d.p252g.p255c.C4435y;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcg.class */
public abstract class zzcg<MessageType extends zzcg<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzas<MessageType, BuilderType> {
    public static Map<Object, zzcg<?, ?>> zzjr = new ConcurrentHashMap();
    public zzey zzjp = zzey.m10663d();
    public int zzjq = -1;

    /* renamed from: com.google.android.gms.internal.clearcut.zzcg$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcg$a.class */
    public static final class C7271a implements zzca<C7271a> {

        /* renamed from: a */
        public final int f29246a = 66321687;

        /* renamed from: b */
        public final zzfl f29247b;

        public C7271a(zzck<?> zzckVar, int i, zzfl zzflVar, boolean z, boolean z2) {
            this.f29247b = zzflVar;
        }

        @Override // com.google.android.gms.internal.clearcut.zzca
        /* renamed from: C */
        public final zzfl mo10718C() {
            return this.f29247b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.clearcut.zzca
        /* renamed from: a */
        public final zzdp mo10717a(zzdp zzdpVar, zzdo zzdoVar) {
            return ((zza) zzdpVar).m10711a((zza) ((zzcg) zzdoVar));
        }

        @Override // com.google.android.gms.internal.clearcut.zzca
        /* renamed from: a */
        public final zzdv mo10716a(zzdv zzdvVar, zzdv zzdvVar2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            return this.f29246a - ((C7271a) obj).f29246a;
        }

        @Override // com.google.android.gms.internal.clearcut.zzca
        /* renamed from: m */
        public final boolean mo10715m() {
            return false;
        }

        @Override // com.google.android.gms.internal.clearcut.zzca
        /* renamed from: q */
        public final zzfq mo10714q() {
            return this.f29247b.zzek();
        }

        @Override // com.google.android.gms.internal.clearcut.zzca
        /* renamed from: t */
        public final boolean mo10713t() {
            return false;
        }

        @Override // com.google.android.gms.internal.clearcut.zzca
        public final int zzc() {
            return this.f29246a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcg$zza.class */
    public static class zza<MessageType extends zzcg<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzat<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f29248a;

        /* renamed from: b */
        public MessageType f29249b;

        /* renamed from: c */
        public boolean f29250c = false;

        public zza(MessageType messagetype) {
            this.f29248a = messagetype;
            this.f29249b = (MessageType) ((zzcg) messagetype.mo10535a(zzg.f29255d, null, null));
        }

        /* renamed from: a */
        public static void m10710a(MessageType messagetype, MessageType messagetype2) {
            C4362j1.m25894a().m25892a((C4362j1) messagetype).mo25739b(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.clearcut.zzat
        /* renamed from: a */
        public final /* synthetic */ zzat mo10712a(zzas zzasVar) {
            m10711a((zza<MessageType, BuilderType>) ((zzcg) zzasVar));
            return this;
        }

        /* renamed from: a */
        public final BuilderType m10711a(MessageType messagetype) {
            mo10707k();
            m10710a(this.f29249b, messagetype);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.clearcut.zzat
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zza zzaVar = (zza) this.f29248a.mo10535a(zzg.f29256e, null, null);
            zzaVar.m10711a((zza) ((zzcg) mo10677u()));
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.clearcut.zzdp
        /* renamed from: d */
        public final /* synthetic */ zzdo mo10678d() {
            zzcg zzcgVar = (zzcg) mo10677u();
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) zzcgVar.mo10535a(zzg.f29252a, (Object) null, (Object) null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean d = C4362j1.m25894a().m25892a((C4362j1) zzcgVar).mo25737d(zzcgVar);
                    z = d;
                    if (booleanValue) {
                        zzcgVar.mo10535a(zzg.f29253b, d ? zzcgVar : null, (Object) null);
                        z = d;
                    }
                }
            }
            if (z) {
                return zzcgVar;
            }
            throw new zzew(zzcgVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzdq
        /* renamed from: h */
        public final /* synthetic */ zzdo mo10676h() {
            return this.f29248a;
        }

        @Override // com.google.android.gms.internal.clearcut.zzdq
        public final boolean isInitialized() {
            return zzcg.m10729a(this.f29249b, false);
        }

        @Override // com.google.android.gms.internal.clearcut.zzat
        /* renamed from: j */
        public final /* synthetic */ zzat mo10709j() {
            return (zza) clone();
        }

        /* renamed from: k */
        public void mo10707k() {
            if (this.f29250c) {
                MessageType messagetype = (MessageType) ((zzcg) this.f29249b.mo10535a(zzg.f29255d, null, null));
                m10710a(messagetype, this.f29249b);
                this.f29249b = messagetype;
                this.f29250c = false;
            }
        }

        /* renamed from: l */
        public MessageType mo10677u() {
            if (this.f29250c) {
                return this.f29249b;
            }
            MessageType messagetype = this.f29249b;
            C4362j1.m25894a().m25892a((C4362j1) messagetype).mo25744a(messagetype);
            this.f29250c = true;
            return this.f29249b;
        }

        /* renamed from: m */
        public final MessageType m10708m() {
            MessageType messagetype = (MessageType) ((zzcg) mo10677u());
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) messagetype.mo10535a(zzg.f29252a, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean d = C4362j1.m25894a().m25892a((C4362j1) messagetype).mo25737d(messagetype);
                    z = d;
                    if (booleanValue) {
                        messagetype.mo10535a(zzg.f29253b, d ? messagetype : null, null);
                        z = d;
                    }
                }
            }
            if (z) {
                return messagetype;
            }
            throw new zzew(messagetype);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcg$zzb.class */
    public static final class zzb<T extends zzcg<T, ?>> extends zzau<T> {
        public zzb(T t) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcg$zzc.class */
    public static class zzc<MessageType extends zzd<MessageType, BuilderType>, BuilderType extends zzc<MessageType, BuilderType>> extends zza<MessageType, BuilderType> implements zzdq {
        public zzc(MessageType messagetype) {
            super(messagetype);
        }

        @Override // com.google.android.gms.internal.clearcut.zzcg.zza
        /* renamed from: k */
        public final void mo10707k() {
            if (this.f29250c) {
                super.mo10707k();
                MessageType messagetype = this.f29249b;
                ((zzd) messagetype).zzjv = (C4341f0) ((zzd) messagetype).zzjv.clone();
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzcg.zza
        /* renamed from: l */
        public final /* synthetic */ zzcg mo10706l() {
            return (zzd) mo10677u();
        }

        @Override // com.google.android.gms.internal.clearcut.zzcg.zza, com.google.android.gms.internal.clearcut.zzdp
        /* renamed from: u */
        public final /* synthetic */ zzdo mo10677u() {
            MessageType messagetype;
            if (this.f29250c) {
                messagetype = this.f29249b;
            } else {
                ((zzd) this.f29249b).zzjv.m25921h();
                messagetype = (MessageType) super.mo10677u();
            }
            return (zzd) messagetype;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcg$zzd.class */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType extends zzc<MessageType, BuilderType>> extends zzcg<MessageType, BuilderType> implements zzdq {
        public C4341f0<C7271a> zzjv = C4341f0.m25920i();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcg$zzf.class */
    public static final class zzf<ContainingType extends zzdo, Type> extends zzbr<ContainingType, Type> {

        /* renamed from: a */
        public final Type f29251a;

        public zzf(ContainingType containingtype, Type type, zzdo zzdoVar, C7271a aVar, Class cls) {
            if (containingtype == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            } else if (aVar.f29247b == zzfl.MESSAGE && zzdoVar == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            } else {
                this.f29251a = type;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcg$zzg.class */
    public static final class zzg {

        /* renamed from: a */
        public static final int f29252a = 1;

        /* renamed from: b */
        public static final int f29253b = 2;

        /* renamed from: c */
        public static final int f29254c = 3;

        /* renamed from: d */
        public static final int f29255d = 4;

        /* renamed from: e */
        public static final int f29256e = 5;

        /* renamed from: f */
        public static final int f29257f = 6;

        /* renamed from: g */
        public static final int f29258g = 7;

        /* renamed from: h */
        public static final /* synthetic */ int[] f29259h = {1, 2, 3, 4, 5, 6, 7};

        /* renamed from: i */
        public static final int f29260i = 1;

        /* renamed from: j */
        public static final int f29261j = 2;

        /* renamed from: k */
        public static final int f29262k = 1;

        /* renamed from: l */
        public static final int f29263l = 2;

        /* renamed from: a */
        public static int[] m10705a() {
            return (int[]) f29259h.clone();
        }
    }

    /* renamed from: a */
    public static <ContainingType extends zzdo, Type> zzf<ContainingType, Type> m10727a(ContainingType containingtype, Type type, zzdo zzdoVar, zzck<?> zzckVar, int i, zzfl zzflVar, Class cls) {
        return new zzf<>(containingtype, type, zzdoVar, new C7271a(null, 66321687, zzflVar, false, false), cls);
    }

    /* renamed from: a */
    public static <T extends zzcg<T, ?>> T m10728a(T t, byte[] bArr) throws zzco {
        T t2 = (T) ((zzcg) t.mo10535a(zzg.f29255d, null, null));
        try {
            C4362j1.m25894a().m25892a((C4362j1) t2).mo25741a(t2, bArr, 0, bArr.length, new C4389o());
            C4362j1.m25894a().m25892a((C4362j1) t2).mo25744a(t2);
            if (t2.zzex == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzco) {
                throw ((zzco) e.getCause());
            }
            throw new zzco(e.getMessage()).zzg(t2);
        } catch (IndexOutOfBoundsException e2) {
            throw zzco.zzbl().zzg(t2);
        }
    }

    /* renamed from: a */
    public static <T extends zzcg<?, ?>> T m10725a(Class<T> cls) {
        zzcg<?, ?> zzcgVar = zzjr.get(cls);
        T t = (T) zzcgVar;
        if (zzcgVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) zzjr.get(cls);
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

    /* renamed from: a */
    public static Object m10726a(zzdo zzdoVar, String str, Object[] objArr) {
        return new C4376l1(zzdoVar, str, objArr);
    }

    /* renamed from: a */
    public static Object m10723a(Method method, Object obj, Object... objArr) {
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
    public static <T extends zzcg<?, ?>> void m10724a(Class<T> cls, T t) {
        zzjr.put(cls, t);
    }

    /* renamed from: a */
    public static final <T extends zzcg<T, ?>> boolean m10729a(T t, boolean z) {
        byte byteValue = ((Byte) t.mo10535a(zzg.f29252a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        return C4362j1.m25894a().m25892a((C4362j1) t).mo25737d(t);
    }

    /* renamed from: b */
    public static <T extends zzcg<T, ?>> T m10721b(T t, byte[] bArr) throws zzco {
        T t2 = (T) m10728a(t, bArr);
        if (t2 != null) {
            boolean booleanValue = Boolean.TRUE.booleanValue();
            byte byteValue = ((Byte) t2.mo10535a(zzg.f29252a, null, null)).byteValue();
            boolean z = true;
            if (byteValue != 1) {
                if (byteValue == 0) {
                    z = false;
                } else {
                    boolean d = C4362j1.m25894a().m25892a((C4362j1) t2).mo25737d(t2);
                    z = d;
                    if (booleanValue) {
                        t2.mo10535a(zzg.f29253b, d ? t2 : null, null);
                        z = d;
                    }
                }
            }
            if (!z) {
                throw new zzco(new zzew(t2).getMessage()).zzg(t2);
            }
        }
        return t2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [c.d.b.d.g.c.k0, com.google.android.gms.internal.clearcut.zzcl] */
    /* renamed from: b */
    public static zzcl m10722b() {
        return C4366k0.m25888b();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [c.d.b.d.g.c.s0, com.google.android.gms.internal.clearcut.zzcm] */
    /* renamed from: f */
    public static zzcm m10720f() {
        return C4410s0.m25648b();
    }

    /* renamed from: i */
    public static <E> zzcn<E> m10719i() {
        return C4367k1.m25885b();
    }

    @Override // com.google.android.gms.internal.clearcut.zzas
    /* renamed from: a */
    public final int mo10731a() {
        return this.zzjq;
    }

    /* renamed from: a */
    public abstract Object mo10535a(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.clearcut.zzas
    /* renamed from: a */
    public final void mo10730a(int i) {
        this.zzjq = i;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdo
    /* renamed from: a */
    public final void mo10684a(zzbn zzbnVar) throws IOException {
        C4362j1.m25894a().m25893a((Class) getClass()).mo25743a((AbstractC4391o1) this, (AbstractC4407r2) C4435y.m25612a(zzbnVar));
    }

    @Override // com.google.android.gms.internal.clearcut.zzdo
    /* renamed from: c */
    public final /* synthetic */ zzdp mo10683c() {
        zza zzaVar = (zza) mo10535a(zzg.f29256e, (Object) null, (Object) null);
        zzaVar.m10711a((zza) this);
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdo
    /* renamed from: e */
    public final /* synthetic */ zzdp mo10682e() {
        return (zza) mo10535a(zzg.f29256e, (Object) null, (Object) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzcg) mo10535a(zzg.f29257f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return false;
        }
        return C4362j1.m25894a().m25892a((C4362j1) this).mo25742a(this, (zzcg) obj);
    }

    @Override // com.google.android.gms.internal.clearcut.zzdo
    /* renamed from: g */
    public final int mo10681g() {
        if (this.zzjq == -1) {
            this.zzjq = C4362j1.m25894a().m25892a((C4362j1) this).mo25738c(this);
        }
        return this.zzjq;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdq
    /* renamed from: h */
    public final /* synthetic */ zzdo mo10676h() {
        return (zzcg) mo10535a(zzg.f29257f, (Object) null, (Object) null);
    }

    public int hashCode() {
        int i = this.zzex;
        if (i != 0) {
            return i;
        }
        int b = C4362j1.m25894a().m25892a((C4362j1) this).mo25740b(this);
        this.zzex = b;
        return b;
    }

    @Override // com.google.android.gms.internal.clearcut.zzdq
    public final boolean isInitialized() {
        boolean booleanValue = Boolean.TRUE.booleanValue();
        byte byteValue = ((Byte) mo10535a(zzg.f29252a, (Object) null, (Object) null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean d = C4362j1.m25894a().m25892a((C4362j1) this).mo25737d(this);
        if (booleanValue) {
            mo10535a(zzg.f29253b, d ? this : null, (Object) null);
        }
        return d;
    }

    public String toString() {
        return C4327c1.m25988a(this, super.toString());
    }
}
