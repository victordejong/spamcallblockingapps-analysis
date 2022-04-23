package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzejz.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p170b.p224d.p252g.p253a.b90;
import p131c.p161d.p170b.p224d.p252g.p253a.ba0;
import p131c.p161d.p170b.p224d.p252g.p253a.d80;
import p131c.p161d.p170b.p224d.p252g.p253a.f90;
import p131c.p161d.p170b.p224d.p252g.p253a.j70;
import p131c.p161d.p170b.p224d.p252g.p253a.ka0;
import p131c.p161d.p170b.p224d.p252g.p253a.m70;
import p131c.p161d.p170b.p224d.p252g.p253a.q80;
import p131c.p161d.p170b.p224d.p252g.p253a.r70;
import p131c.p161d.p170b.p224d.p252g.p253a.u60;
import p131c.p161d.p170b.p224d.p252g.p253a.w70;
import p131c.p161d.p170b.p224d.p252g.p253a.x80;
import p131c.p161d.p170b.p224d.p252g.p253a.y80;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejz.class */
public abstract class zzejz<MessageType extends zzejz<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzeif<MessageType, BuilderType> {
    public static Map<Object, zzejz<?, ?>> zzije = new ConcurrentHashMap();
    public zzena zzijc = zzena.m12330d();
    public int zzijd = -1;

    /* renamed from: com.google.android.gms.internal.ads.zzejz$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejz$a.class */
    public static final class C7264a implements zzeju<C7264a> {
        @Override // com.google.android.gms.internal.ads.zzeju
        /* renamed from: E */
        public final zzenr mo12393E() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzeju
        /* renamed from: I */
        public final boolean mo12392I() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzeju
        /* renamed from: a */
        public final zzelm mo12391a(zzelm zzelmVar, zzelj zzeljVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzeju
        /* renamed from: a */
        public final zzels mo12390a(zzels zzelsVar, zzels zzelsVar2) {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzeju
        /* renamed from: j */
        public final boolean mo12389j() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzeju
        /* renamed from: z */
        public final zzeno mo12388z() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.ads.zzeju
        public final int zzv() {
            throw new NoSuchMethodError();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejz$zza.class */
    public static final class zza<T extends zzejz<T, ?>> extends zzeig<T> {
        public zza(T t) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejz$zzb.class */
    public static class zzb<MessageType extends zzejz<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzeie<MessageType, BuilderType> {

        /* renamed from: a */
        public final MessageType f28071a;

        /* renamed from: b */
        public MessageType f28072b;

        /* renamed from: c */
        public boolean f28073c = false;

        public zzb(MessageType messagetype) {
            this.f28071a = messagetype;
            this.f28072b = (MessageType) ((zzejz) messagetype.mo11212a(zze.f28077d, null, null));
        }

        /* renamed from: a */
        public static void m12385a(MessageType messagetype, MessageType messagetype2) {
            y80.m26138a().m26136a((y80) messagetype).mo26418b(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.zzeie
        /* renamed from: a */
        public final /* synthetic */ zzeie mo12387a(zzeif zzeifVar) {
            m12386a((zzb<MessageType, BuilderType>) ((zzejz) zzeifVar));
            return this;
        }

        /* renamed from: a */
        public final /* synthetic */ zzeie m12384a(byte[] bArr, int i, int i2, zzejm zzejmVar) throws zzekj {
            m12383b(bArr, 0, i2, zzejmVar);
            return this;
        }

        /* renamed from: a */
        public final BuilderType m12386a(MessageType messagetype) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            m12385a(this.f28072b, messagetype);
            return this;
        }

        /* renamed from: b */
        public final BuilderType m12383b(byte[] bArr, int i, int i2, zzejm zzejmVar) throws zzekj {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            try {
                y80.m26138a().m26136a((y80) this.f28072b).mo26420a(this.f28072b, bArr, 0, i2 + 0, new u60(zzejmVar));
                return this;
            } catch (zzekj e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException e3) {
                throw zzekj.zzbgx();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.ads.zzeie
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.f28071a.mo11212a(zze.f28078e, null, null);
            zzbVar.m12386a((zzb) ((zzejz) mo12343F()));
            return zzbVar;
        }

        @Override // com.google.android.gms.internal.ads.zzell
        /* renamed from: h */
        public final /* synthetic */ zzelj mo12344h() {
            return this.f28071a;
        }

        @Override // com.google.android.gms.internal.ads.zzell
        public final boolean isInitialized() {
            return zzejz.m12409a(this.f28072b, false);
        }

        @Override // com.google.android.gms.internal.ads.zzeie
        /* renamed from: l */
        public final /* synthetic */ zzeie mo12382l() {
            return (zzb) clone();
        }

        /* renamed from: m */
        public void m12381m() {
            MessageType messagetype = (MessageType) ((zzejz) this.f28072b.mo11212a(zze.f28077d, null, null));
            m12385a(messagetype, this.f28072b);
            this.f28072b = messagetype;
        }

        /* renamed from: n */
        public MessageType mo12343F() {
            if (this.f28073c) {
                return this.f28072b;
            }
            MessageType messagetype = this.f28072b;
            y80.m26138a().m26136a((y80) messagetype).mo26417c(messagetype);
            this.f28073c = true;
            return this.f28072b;
        }

        /* renamed from: o */
        public final MessageType mo12342K() {
            MessageType messagetype = (MessageType) ((zzejz) mo12343F());
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new zzemy(messagetype);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejz$zzd.class */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzejz<MessageType, BuilderType> implements zzell {
        public r70<C7264a> zzijj = r70.m26426g();

        /* renamed from: m */
        public final r70<C7264a> m12378m() {
            if (this.zzijj.m26435b()) {
                this.zzijj = (r70) this.zzijj.clone();
            }
            return this.zzijj;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejz$zze.class */
    public static final class zze {

        /* renamed from: a */
        public static final int f28074a = 1;

        /* renamed from: b */
        public static final int f28075b = 2;

        /* renamed from: c */
        public static final int f28076c = 3;

        /* renamed from: d */
        public static final int f28077d = 4;

        /* renamed from: e */
        public static final int f28078e = 5;

        /* renamed from: f */
        public static final int f28079f = 6;

        /* renamed from: g */
        public static final int f28080g = 7;

        /* renamed from: h */
        public static final /* synthetic */ int[] f28081h = {1, 2, 3, 4, 5, 6, 7};

        /* renamed from: i */
        public static final int f28082i = 1;

        /* renamed from: j */
        public static final int f28083j = 2;

        /* renamed from: k */
        public static final int f28084k = 1;

        /* renamed from: l */
        public static final int f28085l = 2;

        /* renamed from: a */
        public static int[] m12377a() {
            return (int[]) f28081h.clone();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejz$zzf.class */
    public static final class zzf<ContainingType extends zzelj, Type> extends zzejn<ContainingType, Type> {
    }

    /* renamed from: a */
    public static <T extends zzejz<T, ?>> T m12413a(T t) throws zzekj {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw new zzekj(new zzemy(t).getMessage()).zzl(t);
    }

    /* renamed from: a */
    public static <T extends zzejz<T, ?>> T m12412a(T t, zzeip zzeipVar) throws zzekj {
        T t2 = (T) m12398b(t, zzeipVar, zzejm.m12419a());
        m12413a(t2);
        m12413a(t2);
        return t2;
    }

    /* renamed from: a */
    public static <T extends zzejz<T, ?>> T m12411a(T t, zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        T t2 = (T) m12398b(t, zzeipVar, zzejmVar);
        m12413a(t2);
        return t2;
    }

    /* renamed from: a */
    public static <T extends zzejz<T, ?>> T m12410a(T t, zzeja zzejaVar, zzejm zzejmVar) throws zzekj {
        T t2 = (T) ((zzejz) t.mo11212a(zze.f28077d, null, null));
        try {
            f90 a = y80.m26138a().m26136a((y80) t2);
            a.mo26422a(t2, j70.m26793a(zzejaVar), zzejmVar);
            a.mo26417c(t2);
            return t2;
        } catch (IOException e) {
            if (e.getCause() instanceof zzekj) {
                throw ((zzekj) e.getCause());
            }
            throw new zzekj(e.getMessage()).zzl(t2);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof zzekj) {
                throw ((zzekj) e2.getCause());
            }
            throw e2;
        }
    }

    /* renamed from: a */
    public static <T extends zzejz<T, ?>> T m12408a(T t, byte[] bArr) throws zzekj {
        T t2 = (T) m12407a(t, bArr, 0, bArr.length, zzejm.m12419a());
        m12413a(t2);
        return t2;
    }

    /* renamed from: a */
    public static <T extends zzejz<T, ?>> T m12407a(T t, byte[] bArr, int i, int i2, zzejm zzejmVar) throws zzekj {
        T t2 = (T) ((zzejz) t.mo11212a(zze.f28077d, null, null));
        try {
            f90 a = y80.m26138a().m26136a((y80) t2);
            a.mo26420a(t2, bArr, 0, i2, new u60(zzejmVar));
            a.mo26417c(t2);
            if (t2.zziee == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzekj) {
                throw ((zzekj) e.getCause());
            }
            throw new zzekj(e.getMessage()).zzl(t2);
        } catch (IndexOutOfBoundsException e2) {
            throw zzekj.zzbgx().zzl(t2);
        }
    }

    /* renamed from: a */
    public static <T extends zzejz<T, ?>> T m12406a(T t, byte[] bArr, zzejm zzejmVar) throws zzekj {
        T t2 = (T) m12407a(t, bArr, 0, bArr.length, zzejmVar);
        m12413a(t2);
        return t2;
    }

    /* renamed from: a */
    public static <T extends zzejz<?, ?>> T m12402a(Class<T> cls) {
        zzejz<?, ?> zzejzVar = zzije.get(cls);
        zzejz<?, ?> zzejzVar2 = zzejzVar;
        if (zzejzVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzejzVar2 = zzije.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        T t = (T) zzejzVar2;
        if (zzejzVar2 == null) {
            t = (T) ((zzejz) ((zzejz) ba0.m27175a(cls)).mo11212a(zze.f28079f, (Object) null, (Object) null));
            if (t != null) {
                zzije.put(cls, t);
            } else {
                throw new IllegalStateException();
            }
        }
        return t;
    }

    /* renamed from: a */
    public static zzekf m12405a(zzekf zzekfVar) {
        int size = zzekfVar.size();
        return zzekfVar.mo12365j(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static <E> zzekk<E> m12404a(zzekk<E> zzekkVar) {
        int size = zzekkVar.size();
        return zzekkVar.mo12357e(size == 0 ? 10 : size << 1);
    }

    /* renamed from: a */
    public static Object m12403a(zzelj zzeljVar, String str, Object[] objArr) {
        return new b90(zzeljVar, str, objArr);
    }

    /* renamed from: a */
    public static Object m12400a(Method method, Object obj, Object... objArr) {
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
    public static <T extends zzejz<?, ?>> void m12401a(Class<T> cls, T t) {
        zzije.put(cls, t);
    }

    /* renamed from: a */
    public static final <T extends zzejz<T, ?>> boolean m12409a(T t, boolean z) {
        byte byteValue = ((Byte) t.mo11212a(zze.f28074a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean e = y80.m26138a().m26136a((y80) t).mo26415e(t);
        if (z) {
            t.mo11212a(zze.f28075b, e ? t : null, null);
        }
        return e;
    }

    /* renamed from: b */
    public static <T extends zzejz<T, ?>> T m12398b(T t, zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        try {
            zzeja zzbeh = zzeipVar.zzbeh();
            T t2 = (T) m12410a(t, zzbeh, zzejmVar);
            try {
                zzbeh.mo12530a(0);
                return t2;
            } catch (zzekj e) {
                throw e.zzl(t2);
            }
        } catch (zzekj e2) {
            throw e2;
        }
    }

    /* renamed from: f */
    public static zzekf m12396f() {
        return w70.m26178b();
    }

    /* renamed from: i */
    public static zzekh m12395i() {
        return d80.m27073b();
    }

    /* renamed from: l */
    public static <E> zzekk<E> m12394l() {
        return x80.m26168b();
    }

    @Override // com.google.android.gms.internal.ads.zzeif
    /* renamed from: a */
    public final int mo12415a() {
        return this.zzijd;
    }

    /* renamed from: a */
    public abstract Object mo11212a(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zzeif
    /* renamed from: a */
    public final void mo12414a(int i) {
        this.zzijd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzelj
    /* renamed from: a */
    public final void mo12350a(zzejj zzejjVar) throws IOException {
        y80.m26138a().m26136a((y80) this).mo26423a((f90) this, (ka0) m70.m26674a(zzejjVar));
    }

    /* renamed from: b */
    public final <MessageType extends zzejz<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType m12399b() {
        return (BuilderType) ((zzb) mo11212a(zze.f28078e, (Object) null, (Object) null));
    }

    /* renamed from: d */
    public final BuilderType m12397d() {
        BuilderType buildertype = (BuilderType) ((zzb) mo11212a(zze.f28078e, (Object) null, (Object) null));
        buildertype.m12386a(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.zzelj
    /* renamed from: e */
    public final /* synthetic */ zzelm mo12348e() {
        zzb zzbVar = (zzb) mo11212a(zze.f28078e, (Object) null, (Object) null);
        zzbVar.m12386a((zzb) this);
        return zzbVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return y80.m26138a().m26136a((y80) this).mo26421a(this, (zzejz) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzelj
    /* renamed from: g */
    public final /* synthetic */ zzelm mo12347g() {
        return (zzb) mo11212a(zze.f28078e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.zzell
    /* renamed from: h */
    public final /* synthetic */ zzelj mo12344h() {
        return (zzejz) mo11212a(zze.f28079f, (Object) null, (Object) null);
    }

    public int hashCode() {
        int i = this.zziee;
        if (i != 0) {
            return i;
        }
        int b = y80.m26138a().m26136a((y80) this).mo26419b(this);
        this.zziee = b;
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzell
    public final boolean isInitialized() {
        return m12409a(this, Boolean.TRUE.booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.zzelj
    /* renamed from: k */
    public final int mo12345k() {
        if (this.zzijd == -1) {
            this.zzijd = y80.m26138a().m26136a((y80) this).mo26416d(this);
        }
        return this.zzijd;
    }

    public String toString() {
        return q80.m26523a(this, super.toString());
    }
}
