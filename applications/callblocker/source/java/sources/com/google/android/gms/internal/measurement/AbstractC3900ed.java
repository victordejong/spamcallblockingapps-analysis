package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.AbstractC3900ed.C3902b;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.internal.measurement.ed */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ed.class */
public abstract class AbstractC3900ed<MessageType extends AbstractC3900ed<MessageType, BuilderType>, BuilderType extends C3902b<MessageType, BuilderType>> extends AbstractC3850ck<MessageType, BuilderType> {
    private static Map<Object, AbstractC3900ed<?, ?>> zzd = new ConcurrentHashMap();
    protected C3980gx zzb = C3980gx.m5315a();
    private int zzc = -1;

    /* renamed from: com.google.android.gms.internal.measurement.ed$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ed$a.class */
    public static final class C3901a<T extends AbstractC3900ed<T, ?>> extends C3854co<T> {

        /* renamed from: a */
        private final T f18088a;

        public C3901a(T t) {
            this.f18088a = t;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ed$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ed$b.class */
    public static class C3902b<MessageType extends AbstractC3900ed<MessageType, BuilderType>, BuilderType extends C3902b<MessageType, BuilderType>> extends AbstractC3852cm<MessageType, BuilderType> {

        /* renamed from: a */
        protected MessageType f18089a;

        /* renamed from: b */
        protected boolean f18090b = false;

        /* renamed from: c */
        private final MessageType f18091c;

        public C3902b(MessageType messagetype) {
            this.f18091c = messagetype;
            this.f18089a = (MessageType) messagetype.mo5652a(C3905e.f18095d, null, null);
        }

        /* renamed from: a */
        private static void m5634a(MessageType messagetype, MessageType messagetype2) {
            C3955fz.m5481a().m5479a((C3955fz) messagetype).mo5465b(messagetype, messagetype2);
        }

        /* renamed from: b */
        public final BuilderType mo5636a(AbstractC3875dg abstractC3875dg, C3884dp c3884dp) {
            if (this.f18090b) {
                m5628q();
                this.f18090b = false;
            }
            try {
                C3955fz.m5481a().m5479a((C3955fz) this.f18089a).mo5470a(this.f18089a, C3880dl.m5706a(abstractC3875dg), c3884dp);
                return this;
            } catch (RuntimeException e) {
                if (!(e.getCause() instanceof IOException)) {
                    throw e;
                }
                throw ((IOException) e.getCause());
            }
        }

        /* renamed from: b */
        private final BuilderType m5630b(byte[] bArr, int i, int i2, C3884dp c3884dp) {
            if (this.f18090b) {
                m5628q();
                this.f18090b = false;
            }
            try {
                C3955fz.m5481a().m5479a((C3955fz) this.f18089a).mo5467a(this.f18089a, bArr, 0, i2 + 0, new C3858cs(c3884dp));
                return this;
            } catch (zzft e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzft.m4854a();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.AbstractC3852cm
        /* renamed from: a */
        protected final /* synthetic */ AbstractC3852cm mo5637a(AbstractC3850ck abstractC3850ck) {
            return m5635a((C3902b<MessageType, BuilderType>) ((AbstractC3900ed) abstractC3850ck));
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3852cm
        /* renamed from: a */
        public final /* synthetic */ AbstractC3852cm mo5633a(byte[] bArr, int i, int i2) {
            return m5630b(bArr, 0, i2, C3884dp.m5694a());
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3852cm
        /* renamed from: a */
        public final /* synthetic */ AbstractC3852cm mo5632a(byte[] bArr, int i, int i2, C3884dp c3884dp) {
            return m5630b(bArr, 0, i2, c3884dp);
        }

        /* renamed from: a */
        public final BuilderType m5635a(MessageType messagetype) {
            if (this.f18090b) {
                m5628q();
                this.f18090b = false;
            }
            m5634a(this.f18089a, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3945fp
        /* renamed from: al */
        public final boolean mo5534al() {
            return AbstractC3900ed.m5651a(this.f18089a, false);
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3945fp
        /* renamed from: at */
        public final /* synthetic */ AbstractC3943fn mo5533at() {
            return this.f18091c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.measurement.AbstractC3852cm
        public /* synthetic */ Object clone() {
            C3902b c3902b = (C3902b) this.f18091c.mo5652a(C3905e.f18096e, null, null);
            c3902b.m5635a((C3902b) ((AbstractC3900ed) mo5545t()));
            return c3902b;
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3852cm
        /* renamed from: p */
        public final /* synthetic */ AbstractC3852cm mo5629p() {
            return (C3902b) clone();
        }

        /* renamed from: q */
        public void m5628q() {
            MessageType messagetype = (MessageType) this.f18089a.mo5652a(C3905e.f18095d, null, null);
            m5634a(messagetype, this.f18089a);
            this.f18089a = messagetype;
        }

        /* renamed from: r */
        public MessageType mo5545t() {
            MessageType messagetype;
            if (this.f18090b) {
                messagetype = this.f18089a;
            } else {
                MessageType messagetype2 = this.f18089a;
                C3955fz.m5481a().m5479a((C3955fz) messagetype2).mo5464c(messagetype2);
                this.f18090b = true;
                messagetype = this.f18089a;
            }
            return messagetype;
        }

        /* renamed from: s */
        public final MessageType mo5544u() {
            MessageType messagetype = (MessageType) mo5545t();
            if (!messagetype.mo5534al()) {
                throw new zzib(messagetype);
            }
            return messagetype;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.measurement.ed$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ed$c.class */
    public static final class C3903c implements AbstractC3894dy<C3903c> {
        @Override // com.google.android.gms.internal.measurement.AbstractC3894dy
        /* renamed from: a */
        public final int mo5625a() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3894dy
        /* renamed from: a */
        public final AbstractC3942fm mo5624a(AbstractC3942fm abstractC3942fm, AbstractC3943fn abstractC3943fn) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3894dy
        /* renamed from: a */
        public final AbstractC3948fs mo5623a(AbstractC3948fs abstractC3948fs, AbstractC3948fs abstractC3948fs2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3894dy
        /* renamed from: b */
        public final EnumC3999hl mo5622b() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3894dy
        /* renamed from: c */
        public final EnumC4002ho mo5621c() {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3894dy
        /* renamed from: d */
        public final boolean mo5620d() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3894dy
        /* renamed from: e */
        public final boolean mo5619e() {
            throw new NoSuchMethodError();
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ed$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ed$d.class */
    public static abstract class AbstractC3904d<MessageType extends AbstractC3904d<MessageType, BuilderType>, BuilderType> extends AbstractC3900ed<MessageType, BuilderType> implements AbstractC3945fp {
        protected C3892dw<C3903c> zzc = C3892dw.m5677a();

        /* renamed from: a */
        public final C3892dw<C3903c> m5618a() {
            if (this.zzc.m5664c()) {
                this.zzc = (C3892dw) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ed$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ed$e.class */
    public static final class C3905e {

        /* renamed from: a */
        public static final int f18092a = 1;

        /* renamed from: b */
        public static final int f18093b = 2;

        /* renamed from: c */
        public static final int f18094c = 3;

        /* renamed from: d */
        public static final int f18095d = 4;

        /* renamed from: e */
        public static final int f18096e = 5;

        /* renamed from: f */
        public static final int f18097f = 6;

        /* renamed from: g */
        public static final int f18098g = 7;

        /* renamed from: l */
        private static final /* synthetic */ int[] f18103l = {f18092a, f18093b, f18094c, f18095d, f18096e, f18097f, f18098g};

        /* renamed from: h */
        public static final int f18099h = 1;

        /* renamed from: i */
        public static final int f18100i = 2;

        /* renamed from: m */
        private static final /* synthetic */ int[] f18104m = {f18099h, f18100i};

        /* renamed from: j */
        public static final int f18101j = 1;

        /* renamed from: k */
        public static final int f18102k = 2;

        /* renamed from: n */
        private static final /* synthetic */ int[] f18105n = {f18101j, f18102k};

        /* renamed from: a */
        public static int[] m5617a() {
            return (int[]) f18103l.clone();
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ed$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ed$f.class */
    public static final class C3906f<ContainingType extends AbstractC3943fn, Type> extends C3886dq<ContainingType, Type> {
    }

    /* renamed from: a */
    public static <T extends AbstractC3900ed<?, ?>> T m5647a(Class<T> cls) {
        AbstractC3900ed<?, ?> abstractC3900ed = zzd.get(cls);
        AbstractC3900ed<?, ?> abstractC3900ed2 = abstractC3900ed;
        if (abstractC3900ed == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC3900ed2 = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        AbstractC3900ed<?, ?> abstractC3900ed3 = abstractC3900ed2;
        if (abstractC3900ed2 == null) {
            abstractC3900ed3 = (AbstractC3900ed) ((AbstractC3900ed) C3984ha.m5298a(cls)).mo5652a(C3905e.f18097f, (Object) null, (Object) null);
            if (abstractC3900ed3 == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, abstractC3900ed3);
        }
        return (T) abstractC3900ed3;
    }

    /* renamed from: a */
    public static <E> AbstractC3914el<E> m5650a(AbstractC3914el<E> abstractC3914el) {
        int size = abstractC3914el.size();
        return abstractC3914el.mo5476a(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static AbstractC3915em m5649a(AbstractC3915em abstractC3915em) {
        int size = abstractC3915em.size();
        return abstractC3915em.mo5574c(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static Object m5648a(AbstractC3943fn abstractC3943fn, String str, Object[] objArr) {
        return new C3958gb(abstractC3943fn, str, objArr);
    }

    /* renamed from: a */
    public static Object m5645a(Method method, Object obj, Object... objArr) {
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

    /* renamed from: a */
    public static <T extends AbstractC3900ed<?, ?>> void m5646a(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    /* renamed from: a */
    protected static final <T extends AbstractC3900ed<T, ?>> boolean m5651a(T t, boolean z) {
        boolean z2;
        byte byteValue = ((Byte) t.mo5652a(C3905e.f18092a, null, null)).byteValue();
        if (byteValue == 1) {
            z2 = true;
        } else if (byteValue == 0) {
            z2 = false;
        } else {
            boolean mo5463d = C3955fz.m5481a().m5479a((C3955fz) t).mo5463d(t);
            if (z) {
                t.mo5652a(C3905e.f18093b, mo5463d ? t : null, null);
            }
            z2 = mo5463d;
        }
        return z2;
    }

    /* renamed from: ao */
    public static AbstractC3912ej m5641ao() {
        return C3909eg.m5604d();
    }

    /* renamed from: ap */
    public static AbstractC3915em m5640ap() {
        return C3931fb.m5573d();
    }

    /* renamed from: aq */
    public static <E> AbstractC3914el<E> m5639aq() {
        return C3959gc.m5473d();
    }

    /* renamed from: a */
    public abstract Object mo5652a(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.measurement.AbstractC3943fn
    /* renamed from: a */
    public final void mo5543a(zzes zzesVar) {
        C3955fz.m5481a().m5479a((C3955fz) this).mo5469a((AbstractC3960gd) this, (AbstractC4005hr) C3883do.m5695a(zzesVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.AbstractC3850ck
    /* renamed from: aj */
    public final int mo5644aj() {
        return this.zzc;
    }

    /* renamed from: ak */
    public final <MessageType extends AbstractC3900ed<MessageType, BuilderType>, BuilderType extends C3902b<MessageType, BuilderType>> BuilderType m5643ak() {
        return (BuilderType) mo5652a(C3905e.f18096e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3945fp
    /* renamed from: al */
    public final boolean mo5534al() {
        return m5651a(this, Boolean.TRUE.booleanValue());
    }

    /* renamed from: am */
    public final BuilderType m5642am() {
        BuilderType buildertype = (BuilderType) mo5652a(C3905e.f18096e, (Object) null, (Object) null);
        buildertype.m5635a(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3943fn
    /* renamed from: an */
    public final int mo5541an() {
        if (this.zzc == -1) {
            this.zzc = C3955fz.m5481a().m5479a((C3955fz) this).mo5466b(this);
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3943fn
    /* renamed from: ar */
    public final /* synthetic */ AbstractC3942fm mo5540ar() {
        C3902b c3902b = (C3902b) mo5652a(C3905e.f18096e, (Object) null, (Object) null);
        c3902b.m5635a((C3902b) this);
        return c3902b;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3943fn
    /* renamed from: as */
    public final /* synthetic */ AbstractC3942fm mo5539as() {
        return (C3902b) mo5652a(C3905e.f18096e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3945fp
    /* renamed from: at */
    public final /* synthetic */ AbstractC3943fn mo5533at() {
        return (AbstractC3900ed) mo5652a(C3905e.f18097f, (Object) null, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.AbstractC3850ck
    /* renamed from: c */
    public final void mo5638c(int i) {
        this.zzc = i;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj != null) {
                z = false;
                if (getClass() == obj.getClass()) {
                    z = C3955fz.m5481a().m5479a((C3955fz) this).mo5468a(this, (AbstractC3900ed) obj);
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int i;
        if (this.zza != 0) {
            i = this.zza;
        } else {
            this.zza = C3955fz.m5481a().m5479a((C3955fz) this).mo5471a(this);
            i = this.zza;
        }
        return i;
    }

    public String toString() {
        return C3944fo.m5538a(this, super.toString());
    }
}
