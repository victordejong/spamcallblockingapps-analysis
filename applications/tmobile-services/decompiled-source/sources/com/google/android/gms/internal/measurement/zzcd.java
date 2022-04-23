package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.measurement.zzhz;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd.class */
public final class zzcd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zza.class */
    public static final class zza extends zzhz<zza, C2485zza> implements zzjj {
        private static final zza zzh;
        private static volatile zzju<zza> zzi;
        private int zzc;
        private int zzd;
        private zzi zze;
        private zzi zzf;
        private boolean zzg;

        /* renamed from: com.google.android.gms.internal.measurement.zzcd$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zza$zza.class */
        public static final class C2485zza extends zzhz.zza<zza, C2485zza> implements zzjj {
            private C2485zza() {
                super(zza.zzh);
            }

            /* synthetic */ C2485zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: A */
            public final C2485zza m13251A(boolean z) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zza) this.f8519g).m13263G(z);
                return this;
            }

            /* renamed from: x */
            public final C2485zza m13250x(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zza) this.f8519g).m13268A(i);
                return this;
            }

            /* renamed from: y */
            public final C2485zza m13249y(zzi.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zza) this.f8519g).m13264F((zzi) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: z */
            public final C2485zza m13248z(zzi zziVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zza) this.f8519g).m13259L(zziVar);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzh = zzaVar;
            zzhz.m12426r(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: A */
        public final void m13268A(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: F */
        public final void m13264F(zzi zziVar) {
            zziVar.getClass();
            this.zze = zziVar;
            this.zzc |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: G */
        public final void m13263G(boolean z) {
            this.zzc |= 8;
            this.zzg = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: L */
        public final void m13259L(zzi zziVar) {
            zziVar.getClass();
            this.zzf = zziVar;
            this.zzc |= 4;
        }

        /* renamed from: R */
        public static C2485zza m13253R() {
            return zzh.m12424v();
        }

        /* renamed from: H */
        public final boolean m13262H() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: J */
        public final int m13261J() {
            return this.zzd;
        }

        /* renamed from: M */
        public final zzi m13258M() {
            zzi zziVar = this.zze;
            zzi zziVar2 = zziVar;
            if (zziVar == null) {
                zziVar2 = zzi.m12867b0();
            }
            return zziVar2;
        }

        /* renamed from: N */
        public final boolean m13257N() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: O */
        public final zzi m13256O() {
            zzi zziVar = this.zzf;
            zzi zziVar2 = zziVar;
            if (zziVar == null) {
                zziVar2 = zzi.m12867b0();
            }
            return zziVar2;
        }

        /* renamed from: P */
        public final boolean m13255P() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: Q */
        public final boolean m13254Q() {
            return this.zzg;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2485zza(null);
                case 3:
                    return zzhz.m12428p(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzju<zza> zzjuVar = zzi;
                    zzju<zza> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzju<zza> zzjuVar3 = zzi;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzh);
                                    zzi = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzb.class */
    public static final class zzb extends zzhz<zzb, zza> implements zzjj {
        private static final zzb zzf;
        private static volatile zzju<zzb> zzg;
        private int zzc;
        private int zzd;
        private long zze;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzb$zza.class */
        public static final class zza extends zzhz.zza<zzb, zza> implements zzjj {
            private zza() {
                super(zzb.zzf);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: x */
            public final zza m13237x(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzb) this.f8519g).m13247A(i);
                return this;
            }

            /* renamed from: y */
            public final zza m13236y(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzb) this.f8519g).m13246C(j);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzf = zzbVar;
            zzhz.m12426r(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: A */
        public final void m13247A(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C */
        public final void m13246C(long j) {
            this.zzc |= 2;
            this.zze = j;
        }

        /* renamed from: K */
        public static zza m13239K() {
            return zzf.m12424v();
        }

        /* renamed from: F */
        public final boolean m13243F() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: G */
        public final int m13242G() {
            return this.zzd;
        }

        /* renamed from: H */
        public final boolean m13241H() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: J */
        public final long m13240J() {
            return this.zze;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzju<zzb> zzjuVar = zzg;
                    zzju<zzb> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzju<zzb> zzjuVar3 = zzg;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzf);
                                    zzg = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzc.class */
    public static final class zzc extends zzhz<zzc, zza> implements zzjj {
        private static final zzc zzi;
        private static volatile zzju<zzc> zzj;
        private int zzc;
        private zzii<zze> zzd = zzhz.m12420z();
        private String zze = "";
        private long zzf;
        private long zzg;
        private int zzh;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzc$zza.class */
        public static final class zza extends zzhz.zza<zzc, zza> implements zzjj {
            private zza() {
                super(zzc.zzi);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: A */
            public final zza m13206A(zze.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13224N((zze) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: C */
            public final zza m13205C(zze zzeVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13224N(zzeVar);
                return this;
            }

            /* renamed from: D */
            public final zza m13204D(Iterable<? extends zze> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13223O(iterable);
                return this;
            }

            /* renamed from: E */
            public final zza m13203E(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13222P(str);
                return this;
            }

            /* renamed from: F */
            public final zze m13202F(int i) {
                return ((zzc) this.f8519g).m13235A(i);
            }

            /* renamed from: G */
            public final List<zze> m13201G() {
                return Collections.unmodifiableList(((zzc) this.f8519g).m13234C());
            }

            /* renamed from: H */
            public final int m13200H() {
                return ((zzc) this.f8519g).m13221Q();
            }

            /* renamed from: J */
            public final zza m13199J(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13220R(i);
                return this;
            }

            /* renamed from: K */
            public final zza m13198K(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13219S(j);
                return this;
            }

            /* renamed from: L */
            public final zza m13197L() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13207e0();
                return this;
            }

            /* renamed from: M */
            public final String m13196M() {
                return ((zzc) this.f8519g).m13217U();
            }

            /* renamed from: N */
            public final long m13195N() {
                return ((zzc) this.f8519g).m13215W();
            }

            /* renamed from: O */
            public final long m13194O() {
                return ((zzc) this.f8519g).m13213Y();
            }

            /* renamed from: x */
            public final zza m13193x(int i, zze.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13233D(i, (zze) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: y */
            public final zza m13192y(int i, zze zzeVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13233D(i, zzeVar);
                return this;
            }

            /* renamed from: z */
            public final zza m13191z(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzc) this.f8519g).m13232E(j);
                return this;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzi = zzcVar;
            zzhz.m12426r(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: D */
        public final void m13233D(int i, zze zzeVar) {
            zzeVar.getClass();
            m13208d0();
            this.zzd.set(i, zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: E */
        public final void m13232E(long j) {
            this.zzc |= 2;
            this.zzf = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: N */
        public final void m13224N(zze zzeVar) {
            zzeVar.getClass();
            m13208d0();
            this.zzd.add(zzeVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: O */
        public final void m13223O(Iterable<? extends zze> iterable) {
            m13208d0();
            zzgh.m12661e(iterable, this.zzd);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: P */
        public final void m13222P(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zze = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: R */
        public final void m13220R(int i) {
            m13208d0();
            this.zzd.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: S */
        public final void m13219S(long j) {
            this.zzc |= 4;
            this.zzg = j;
        }

        /* renamed from: b0 */
        public static zza m13210b0() {
            return zzi.m12424v();
        }

        /* renamed from: d0 */
        private final void m13208d0() {
            zzii<zze> zziiVar = this.zzd;
            if (!zziiVar.zza()) {
                this.zzd = zzhz.m12430n(zziiVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e0 */
        public final void m13207e0() {
            this.zzd = zzhz.m12420z();
        }

        /* renamed from: A */
        public final zze m13235A(int i) {
            return this.zzd.get(i);
        }

        /* renamed from: C */
        public final List<zze> m13234C() {
            return this.zzd;
        }

        /* renamed from: Q */
        public final int m13221Q() {
            return this.zzd.size();
        }

        /* renamed from: U */
        public final String m13217U() {
            return this.zze;
        }

        /* renamed from: V */
        public final boolean m13216V() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: W */
        public final long m13215W() {
            return this.zzf;
        }

        /* renamed from: X */
        public final boolean m13214X() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: Y */
        public final long m13213Y() {
            return this.zzg;
        }

        /* renamed from: Z */
        public final boolean m13212Z() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: a0 */
        public final int m13211a0() {
            return this.zzh;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002ဈ��\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", zze.class, "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzju<zzc> zzjuVar = zzj;
                    zzju<zzc> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzju<zzc> zzjuVar3 = zzj;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzi);
                                    zzj = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzd.class */
    public static final class zzd extends zzhz<zzd, zza> implements zzjj {
        private static final zzd zzf;
        private static volatile zzju<zzd> zzg;
        private int zzc;
        private String zzd = "";
        private long zze;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzd$zza.class */
        public static final class zza extends zzhz.zza<zzd, zza> implements zzjj {
            private zza() {
                super(zzd.zzf);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzf = zzdVar;
            zzhz.m12426r(zzd.class, zzdVar);
        }

        private zzd() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzju<zzd> zzjuVar = zzg;
                    zzju<zzd> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzju<zzd> zzjuVar3 = zzg;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzf);
                                    zzg = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zze.class */
    public static final class zze extends zzhz<zze, zza> implements zzjj {
        private static final zze zzj;
        private static volatile zzju<zze> zzk;
        private int zzc;
        private long zzf;
        private float zzg;
        private double zzh;
        private String zzd = "";
        private String zze = "";
        private zzii<zze> zzi = zzhz.m12420z();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zze$zza.class */
        public static final class zza extends zzhz.zza<zze, zza> implements zzjj {
            private zza() {
                super(zze.zzj);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: A */
            public final zza m13154A(zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13170V((zze) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: C */
            public final zza m13153C(Iterable<? extends zze> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13181K(iterable);
                return this;
            }

            /* renamed from: D */
            public final zza m13152D(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13180L(str);
                return this;
            }

            /* renamed from: E */
            public final zza m13151E() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13158h0();
                return this;
            }

            /* renamed from: F */
            public final zza m13150F(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13175Q(str);
                return this;
            }

            /* renamed from: G */
            public final zza m13149G() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13157i0();
                return this;
            }

            /* renamed from: H */
            public final int m13148H() {
                return ((zze) this.f8519g).m13162d0();
            }

            /* renamed from: J */
            public final zza m13147J() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13155l0();
                return this;
            }

            /* renamed from: x */
            public final zza m13146x() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13159g0();
                return this;
            }

            /* renamed from: y */
            public final zza m13145y(double d) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13189A(d);
                return this;
            }

            /* renamed from: z */
            public final zza m13144z(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zze) this.f8519g).m13188C(j);
                return this;
            }
        }

        static {
            zze zzeVar = new zze();
            zzj = zzeVar;
            zzhz.m12426r(zze.class, zzeVar);
        }

        private zze() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: A */
        public final void m13189A(double d) {
            this.zzc |= 16;
            this.zzh = d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C */
        public final void m13188C(long j) {
            this.zzc |= 4;
            this.zzf = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: K */
        public final void m13181K(Iterable<? extends zze> iterable) {
            m13156k0();
            zzgh.m12661e(iterable, this.zzi);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: L */
        public final void m13180L(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: Q */
        public final void m13175Q(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: V */
        public final void m13170V(zze zzeVar) {
            zzeVar.getClass();
            m13156k0();
            this.zzi.add(zzeVar);
        }

        /* renamed from: e0 */
        public static zza m13161e0() {
            return zzj.m12424v();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g0 */
        public final void m13159g0() {
            this.zzc &= -3;
            this.zze = zzj.zze;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h0 */
        public final void m13158h0() {
            this.zzc &= -5;
            this.zzf = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i0 */
        public final void m13157i0() {
            this.zzc &= -17;
            this.zzh = 0.0d;
        }

        /* renamed from: k0 */
        private final void m13156k0() {
            zzii<zze> zziiVar = this.zzi;
            if (!zziiVar.zza()) {
                this.zzi = zzhz.m12430n(zziiVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l0 */
        public final void m13155l0() {
            this.zzi = zzhz.m12420z();
        }

        /* renamed from: M */
        public final boolean m13179M() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: N */
        public final String m13178N() {
            return this.zzd;
        }

        /* renamed from: S */
        public final boolean m13173S() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: T */
        public final String m13172T() {
            return this.zze;
        }

        /* renamed from: W */
        public final boolean m13169W() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: X */
        public final long m13168X() {
            return this.zzf;
        }

        /* renamed from: Y */
        public final boolean m13167Y() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: Z */
        public final float m13166Z() {
            return this.zzg;
        }

        /* renamed from: a0 */
        public final boolean m13165a0() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: b0 */
        public final double m13164b0() {
            return this.zzh;
        }

        /* renamed from: c0 */
        public final List<zze> m13163c0() {
            return this.zzi;
        }

        /* renamed from: d0 */
        public final int m13162d0() {
            return this.zzi.size();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Finally extract failed */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", zze.class});
                case 4:
                    return zzj;
                case 5:
                    zzju<zze> zzjuVar = zzk;
                    zzju<zze> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzju<zze> zzjuVar3 = zzk;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzj);
                                    zzk = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzf.class */
    public static final class zzf extends zzhz<zzf, zza> implements zzjj {
        private static final zzf zzd;
        private static volatile zzju<zzf> zze;
        private zzii<zzg> zzc = zzhz.m12420z();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzf$zza.class */
        public static final class zza extends zzhz.zza<zzf, zza> implements zzjj {
            private zza() {
                super(zzf.zzd);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: x */
            public final zza m13137x(zzg.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzf) this.f8519g).m13140E((zzg) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: y */
            public final zzg m13136y(int i) {
                return ((zzf) this.f8519g).m13143A(0);
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzd = zzfVar;
            zzhz.m12426r(zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: E */
        public final void m13140E(zzg zzgVar) {
            zzgVar.getClass();
            zzii<zzg> zziiVar = this.zzc;
            if (!zziiVar.zza()) {
                this.zzc = zzhz.m12430n(zziiVar);
            }
            this.zzc.add(zzgVar);
        }

        /* renamed from: F */
        public static zza m13139F() {
            return zzd.m12424v();
        }

        /* renamed from: A */
        public final zzg m13143A(int i) {
            return this.zzc.get(0);
        }

        /* renamed from: C */
        public final List<zzg> m13142C() {
            return this.zzc;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzc", zzg.class});
                case 4:
                    return zzd;
                case 5:
                    zzju<zzf> zzjuVar = zze;
                    zzju<zzf> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzju<zzf> zzjuVar3 = zze;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzd);
                                    zze = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzg.class */
    public static final class zzg extends zzhz<zzg, zza> implements zzjj {
        private static final zzg zzax;
        private static volatile zzju<zzg> zzay;
        private int zzaa;
        private boolean zzad;
        private int zzag;
        private int zzah;
        private int zzai;
        private long zzak;
        private long zzal;
        private int zzao;
        private zzh zzaq;
        private long zzas;
        private long zzat;
        private int zzaw;
        private int zzc;
        private int zzd;
        private int zze;
        private long zzh;
        private long zzi;
        private long zzj;
        private long zzk;
        private long zzl;
        private int zzq;
        private long zzu;
        private long zzv;
        private boolean zzx;
        private long zzz;
        private zzii<zzc> zzf = zzhz.m12420z();
        private zzii<zzk> zzg = zzhz.m12420z();
        private String zzm = "";
        private String zzn = "";
        private String zzo = "";
        private String zzp = "";
        private String zzr = "";
        private String zzs = "";
        private String zzt = "";
        private String zzw = "";
        private String zzy = "";
        private String zzab = "";
        private String zzac = "";
        private zzii<zza> zzae = zzhz.m12420z();
        private String zzaf = "";
        private String zzaj = "";
        private String zzam = "";
        private String zzan = "";
        private String zzap = "";
        private zzig zzar = zzhz.m12422x();
        private String zzau = "";
        private String zzav = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzg$zza.class */
        public static final class zza extends zzhz.zza<zzg, zza> implements zzjj {
            private zza() {
                super(zzg.zzax);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: A */
            public final zza m12960A(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13116F(j);
                return this;
            }

            /* renamed from: A0 */
            public final zza m12959A0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13052V0();
                return this;
            }

            /* renamed from: B0 */
            public final zza m12958B0(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12994o2(j);
                return this;
            }

            /* renamed from: C */
            public final zza m12957C(zzc.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13112G((zzc) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: C0 */
            public final zza m12956C0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12985r2(str);
                return this;
            }

            /* renamed from: D */
            public final zza m12955D(zzk.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13065S((zzk) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: D0 */
            public final zza m12954D0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13021f1();
                return this;
            }

            /* renamed from: E */
            public final zza m12953E(zzk zzkVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13065S(zzkVar);
                return this;
            }

            /* renamed from: E0 */
            public final zza m12952E0(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12976u2(j);
                return this;
            }

            /* renamed from: F */
            public final zza m12951F(Iterable<? extends zzc> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13061T(iterable);
                return this;
            }

            /* renamed from: F0 */
            public final zza m12950F0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12967x2(str);
                return this;
            }

            /* renamed from: G */
            public final zza m12949G(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13057U(str);
                return this;
            }

            /* renamed from: G0 */
            public final zza m12948G0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13018g1();
                return this;
            }

            /* renamed from: H */
            public final zza m12947H(boolean z) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13053V(z);
                return this;
            }

            /* renamed from: H0 */
            public final zza m12946H0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12961z2(str);
                return this;
            }

            /* renamed from: I0 */
            public final zza m12945I0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13015h1();
                return this;
            }

            /* renamed from: J */
            public final List<zzc> m12944J() {
                return Collections.unmodifiableList(((zzg) this.f8519g).m13048W0());
            }

            /* renamed from: J0 */
            public final zza m12943J0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13121D2(null);
                return this;
            }

            /* renamed from: K */
            public final int m12942K() {
                return ((zzg) this.f8519g).m13004l1();
            }

            /* renamed from: K0 */
            public final zza m12941K0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13113F2(str);
                return this;
            }

            /* renamed from: L */
            public final zzc m12940L(int i) {
                return ((zzg) this.f8519g).m13128C(i);
            }

            /* renamed from: L0 */
            public final String m12939L0() {
                return ((zzg) this.f8519g).m13013i0();
            }

            /* renamed from: M */
            public final zza m12938M(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12963z0(j);
                return this;
            }

            /* renamed from: M0 */
            public final zza m12937M0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13012i1();
                return this;
            }

            /* renamed from: N */
            public final zza m12936N(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13115F0(str);
                return this;
            }

            /* renamed from: N0 */
            public final zza m12935N0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13098J2(str);
                return this;
            }

            /* renamed from: O */
            public final zza m12934O(boolean z) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13111G0(z);
                return this;
            }

            /* renamed from: O0 */
            public final zza m12933O0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13010j1();
                return this;
            }

            /* renamed from: P */
            public final zza m12932P() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13068R0();
                return this;
            }

            /* renamed from: P0 */
            public final zza m12931P0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13086M2(str);
                return this;
            }

            /* renamed from: Q */
            public final zza m12930Q(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12971w1(i);
                return this;
            }

            /* renamed from: Q0 */
            public final zza m12929Q0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13007k1();
                return this;
            }

            /* renamed from: R */
            public final zza m12928R(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13045X0(j);
                return this;
            }

            /* renamed from: R0 */
            public final String m12927R0() {
                return ((zzg) this.f8519g).m13092L0();
            }

            /* renamed from: S */
            public final zza m12926S(Iterable<? extends zza> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13027d1(iterable);
                return this;
            }

            /* renamed from: T */
            public final zza m12925T(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13024e1(str);
                return this;
            }

            /* renamed from: U */
            public final zza m12924U(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12998n1(j);
                return this;
            }

            /* renamed from: V */
            public final zza m12923V(Iterable<? extends Integer> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12980t1(iterable);
                return this;
            }

            /* renamed from: X */
            public final zza m12922X(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12977u1(str);
                return this;
            }

            /* renamed from: Z */
            public final zzk m12921Z(int i) {
                return ((zzg) this.f8519g).m12966y0(i);
            }

            /* renamed from: a0 */
            public final List<zzk> m12920a0() {
                return Collections.unmodifiableList(((zzg) this.f8519g).m12974v1());
            }

            /* renamed from: b0 */
            public final int m12919b0() {
                return ((zzg) this.f8519g).m13122D1();
            }

            /* renamed from: c0 */
            public final zza m12918c0(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13118E1(i);
                return this;
            }

            /* renamed from: e0 */
            public final zza m12917e0(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12968x1(j);
                return this;
            }

            /* renamed from: f0 */
            public final zza m12916f0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13126C1(str);
                return this;
            }

            /* renamed from: g0 */
            public final long m12915g0() {
                return ((zzg) this.f8519g).m13014h2();
            }

            /* renamed from: h0 */
            public final zza m12914h0(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13091L1(i);
                return this;
            }

            /* renamed from: i0 */
            public final zza m12913i0(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13114F1(j);
                return this;
            }

            /* renamed from: k0 */
            public final zza m12912k0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13095K1(str);
                return this;
            }

            /* renamed from: l0 */
            public final long m12911l0() {
                return ((zzg) this.f8519g).m12979t2();
            }

            /* renamed from: m0 */
            public final zza m12910m0(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13055U1(i);
                return this;
            }

            /* renamed from: n0 */
            public final zza m12909n0(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13087M1(j);
                return this;
            }

            /* renamed from: o0 */
            public final zza m12908o0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13067R1(str);
                return this;
            }

            /* renamed from: p0 */
            public final zza m12907p0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13060T0();
                return this;
            }

            /* renamed from: q0 */
            public final zza m12906q0(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13035a2(i);
                return this;
            }

            /* renamed from: r0 */
            public final zza m12905r0(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13051V1(j);
                return this;
            }

            /* renamed from: s0 */
            public final zza m12904s0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13038Z1(str);
                return this;
            }

            /* renamed from: t0 */
            public final zza m12903t0() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13056U0();
                return this;
            }

            /* renamed from: u0 */
            public final zza m12902u0(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13011i2(i);
                return this;
            }

            /* renamed from: v0 */
            public final zza m12901v0(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13032b2(j);
                return this;
            }

            /* renamed from: w0 */
            public final zza m12900w0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13020f2(str);
                return this;
            }

            /* renamed from: x */
            public final zza m12899x(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13001m1(1);
                return this;
            }

            /* renamed from: x0 */
            public final zza m12898x0(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13009j2(j);
                return this;
            }

            /* renamed from: y */
            public final zza m12897y(int i, zzc.zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13124D(i, (zzc) ((zzhz) zzaVar.mo12321k()));
                return this;
            }

            /* renamed from: y0 */
            public final zza m12896y0(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m12997n2(str);
                return this;
            }

            /* renamed from: z */
            public final zza m12895z(int i, zzk zzkVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzg) this.f8519g).m13120E(i, zzkVar);
                return this;
            }

            /* renamed from: z0 */
            public final String m12894z0() {
                return ((zzg) this.f8519g).m13058T2();
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzax = zzgVar;
            zzhz.m12426r(zzg.class, zzgVar);
        }

        private zzg() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C1 */
        public final void m13126C1(String str) {
            str.getClass();
            this.zzc |= 2048;
            this.zzr = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: D */
        public final void m13124D(int i, zzc zzcVar) {
            zzcVar.getClass();
            m13072Q0();
            this.zzf.set(i, zzcVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: D2 */
        public final void m13121D2(String str) {
            str.getClass();
            this.zzc |= Integer.MIN_VALUE;
            this.zzam = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: E */
        public final void m13120E(int i, zzk zzkVar) {
            zzkVar.getClass();
            m13064S0();
            this.zzg.set(i, zzkVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: E1 */
        public final void m13118E1(int i) {
            m13064S0();
            this.zzg.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: F */
        public final void m13116F(long j) {
            this.zzc |= 2;
            this.zzh = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: F0 */
        public final void m13115F0(String str) {
            str.getClass();
            this.zzc |= 128;
            this.zzn = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: F1 */
        public final void m13114F1(long j) {
            this.zzc |= Http2.INITIAL_MAX_FRAME_SIZE;
            this.zzu = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: F2 */
        public final void m13113F2(String str) {
            str.getClass();
            this.zzd |= 4;
            this.zzap = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: G */
        public final void m13112G(zzc zzcVar) {
            zzcVar.getClass();
            m13072Q0();
            this.zzf.add(zzcVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: G0 */
        public final void m13111G0(boolean z) {
            this.zzc |= 8388608;
            this.zzad = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: J2 */
        public final void m13098J2(String str) {
            str.getClass();
            this.zzd |= 64;
            this.zzau = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: K1 */
        public final void m13095K1(String str) {
            str.getClass();
            this.zzc |= CodedOutputStream.DEFAULT_BUFFER_SIZE;
            this.zzs = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: L1 */
        public final void m13091L1(int i) {
            this.zzc |= 1024;
            this.zzq = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: M1 */
        public final void m13087M1(long j) {
            this.zzc |= 32768;
            this.zzv = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: M2 */
        public final void m13086M2(String str) {
            str.getClass();
            this.zzd |= 128;
            this.zzav = str;
        }

        /* renamed from: O0 */
        public static zza m13080O0() {
            return zzax.m12424v();
        }

        /* renamed from: Q0 */
        private final void m13072Q0() {
            zzii<zzc> zziiVar = this.zzf;
            if (!zziiVar.zza()) {
                this.zzf = zzhz.m12430n(zziiVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: R0 */
        public final void m13068R0() {
            this.zzf = zzhz.m12420z();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: R1 */
        public final void m13067R1(String str) {
            str.getClass();
            this.zzc |= 8192;
            this.zzt = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: S */
        public final void m13065S(zzk zzkVar) {
            zzkVar.getClass();
            m13064S0();
            this.zzg.add(zzkVar);
        }

        /* renamed from: S0 */
        private final void m13064S0() {
            zzii<zzk> zziiVar = this.zzg;
            if (!zziiVar.zza()) {
                this.zzg = zzhz.m12430n(zziiVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: T */
        public final void m13061T(Iterable<? extends zzc> iterable) {
            m13072Q0();
            zzgh.m12661e(iterable, this.zzf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: T0 */
        public final void m13060T0() {
            this.zzc &= -17;
            this.zzk = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: U */
        public final void m13057U(String str) {
            str.getClass();
            this.zzc |= 64;
            this.zzm = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: U0 */
        public final void m13056U0() {
            this.zzc &= -33;
            this.zzl = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: U1 */
        public final void m13055U1(int i) {
            this.zzc |= 1048576;
            this.zzaa = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: V */
        public final void m13053V(boolean z) {
            this.zzc |= 131072;
            this.zzx = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: V0 */
        public final void m13052V0() {
            this.zzc &= -65537;
            this.zzw = zzax.zzw;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: V1 */
        public final void m13051V1(long j) {
            this.zzc |= 524288;
            this.zzz = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: X0 */
        public final void m13045X0(long j) {
            this.zzc |= 8;
            this.zzj = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: Z1 */
        public final void m13038Z1(String str) {
            str.getClass();
            this.zzc |= 65536;
            this.zzw = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a2 */
        public final void m13035a2(int i) {
            this.zzc |= 33554432;
            this.zzag = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b2 */
        public final void m13032b2(long j) {
            this.zzc |= 536870912;
            this.zzak = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d1 */
        public final void m13027d1(Iterable<? extends zza> iterable) {
            zzii<zza> zziiVar = this.zzae;
            if (!zziiVar.zza()) {
                this.zzae = zzhz.m12430n(zziiVar);
            }
            zzgh.m12661e(iterable, this.zzae);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e1 */
        public final void m13024e1(String str) {
            str.getClass();
            this.zzc |= Indexable.MAX_URL_LENGTH;
            this.zzo = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f1 */
        public final void m13021f1() {
            this.zzc &= -131073;
            this.zzx = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f2 */
        public final void m13020f2(String str) {
            str.getClass();
            this.zzc |= 262144;
            this.zzy = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g1 */
        public final void m13018g1() {
            this.zzc &= -262145;
            this.zzy = zzax.zzy;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: h1 */
        public final void m13015h1() {
            this.zzc &= -2097153;
            this.zzab = zzax.zzab;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i1 */
        public final void m13012i1() {
            this.zzae = zzhz.m12420z();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i2 */
        public final void m13011i2(int i) {
            this.zzd |= 2;
            this.zzao = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j1 */
        public final void m13010j1() {
            this.zzc &= -268435457;
            this.zzaj = zzax.zzaj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j2 */
        public final void m13009j2(long j) {
            this.zzc |= 1073741824;
            this.zzal = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k1 */
        public final void m13007k1() {
            this.zzc &= Api.BaseClientBuilder.API_PRIORITY_OTHER;
            this.zzam = zzax.zzam;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m1 */
        public final void m13001m1(int i) {
            this.zzc |= 1;
            this.zze = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n1 */
        public final void m12998n1(long j) {
            this.zzc |= 16;
            this.zzk = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n2 */
        public final void m12997n2(String str) {
            str.getClass();
            this.zzc |= 2097152;
            this.zzab = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: o2 */
        public final void m12994o2(long j) {
            this.zzd |= 16;
            this.zzas = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: r2 */
        public final void m12985r2(String str) {
            str.getClass();
            this.zzc |= 4194304;
            this.zzac = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: t1 */
        public final void m12980t1(Iterable<? extends Integer> iterable) {
            zzig zzigVar = this.zzar;
            if (!zzigVar.zza()) {
                int size = zzigVar.size();
                this.zzar = zzigVar.mo12386b(size == 0 ? 10 : size << 1);
            }
            zzgh.m12661e(iterable, this.zzar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: u1 */
        public final void m12977u1(String str) {
            str.getClass();
            this.zzc |= 512;
            this.zzp = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: u2 */
        public final void m12976u2(long j) {
            this.zzd |= 32;
            this.zzat = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: w1 */
        public final void m12971w1(int i) {
            m13072Q0();
            this.zzf.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: x1 */
        public final void m12968x1(long j) {
            this.zzc |= 32;
            this.zzl = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: x2 */
        public final void m12967x2(String str) {
            str.getClass();
            this.zzc |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            this.zzaf = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: z0 */
        public final void m12963z0(long j) {
            this.zzc |= 4;
            this.zzi = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: z2 */
        public final void m12961z2(String str) {
            str.getClass();
            this.zzc |= 268435456;
            this.zzaj = str;
        }

        /* renamed from: A */
        public final long m13135A() {
            return this.zzu;
        }

        /* renamed from: A2 */
        public final boolean m13132A2() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: B2 */
        public final long m13129B2() {
            return this.zzk;
        }

        /* renamed from: C */
        public final zzc m13128C(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: D1 */
        public final int m13122D1() {
            return this.zzg.size();
        }

        /* renamed from: G2 */
        public final boolean m13109G2() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: H0 */
        public final int m13107H0() {
            return this.zzao;
        }

        /* renamed from: H2 */
        public final long m13105H2() {
            return this.zzl;
        }

        /* renamed from: I0 */
        public final String m13104I0() {
            return this.zzap;
        }

        /* renamed from: J0 */
        public final boolean m13100J0() {
            return (this.zzd & 16) != 0;
        }

        /* renamed from: K0 */
        public final long m13096K0() {
            return this.zzas;
        }

        /* renamed from: K2 */
        public final String m13094K2() {
            return this.zzm;
        }

        /* renamed from: L0 */
        public final String m13092L0() {
            return this.zzau;
        }

        /* renamed from: M0 */
        public final boolean m13088M0() {
            return (this.zzd & 128) != 0;
        }

        /* renamed from: N0 */
        public final String m13084N0() {
            return this.zzav;
        }

        /* renamed from: N2 */
        public final String m13082N2() {
            return this.zzn;
        }

        /* renamed from: O2 */
        public final String m13078O2() {
            return this.zzo;
        }

        /* renamed from: P2 */
        public final String m13074P2() {
            return this.zzp;
        }

        /* renamed from: Q2 */
        public final boolean m13070Q2() {
            return (this.zzc & 1024) != 0;
        }

        /* renamed from: R2 */
        public final int m13066R2() {
            return this.zzq;
        }

        /* renamed from: S1 */
        public final boolean m13063S1() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: S2 */
        public final String m13062S2() {
            return this.zzr;
        }

        /* renamed from: T1 */
        public final long m13059T1() {
            return this.zzh;
        }

        /* renamed from: T2 */
        public final String m13058T2() {
            return this.zzs;
        }

        /* renamed from: U2 */
        public final String m13054U2() {
            return this.zzt;
        }

        /* renamed from: V2 */
        public final boolean m13050V2() {
            return (this.zzc & Http2.INITIAL_MAX_FRAME_SIZE) != 0;
        }

        /* renamed from: W */
        public final boolean m13049W() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: W0 */
        public final List<zzc> m13048W0() {
            return this.zzf;
        }

        /* renamed from: X */
        public final boolean m13046X() {
            return (this.zzc & 32768) != 0;
        }

        /* renamed from: Y */
        public final long m13043Y() {
            return this.zzv;
        }

        /* renamed from: Z */
        public final String m13040Z() {
            return this.zzw;
        }

        /* renamed from: a0 */
        public final boolean m13037a0() {
            return (this.zzc & 131072) != 0;
        }

        /* renamed from: b0 */
        public final boolean m13034b0() {
            return this.zzx;
        }

        /* renamed from: c0 */
        public final String m13031c0() {
            return this.zzy;
        }

        /* renamed from: d0 */
        public final boolean m13028d0() {
            return (this.zzc & 524288) != 0;
        }

        /* renamed from: e0 */
        public final long m13025e0() {
            return this.zzz;
        }

        /* renamed from: f0 */
        public final boolean m13022f0() {
            return (this.zzc & 1048576) != 0;
        }

        /* renamed from: g0 */
        public final int m13019g0() {
            return this.zzaa;
        }

        /* renamed from: g2 */
        public final boolean m13017g2() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: h0 */
        public final String m13016h0() {
            return this.zzab;
        }

        /* renamed from: h2 */
        public final long m13014h2() {
            return this.zzi;
        }

        /* renamed from: i0 */
        public final String m13013i0() {
            return this.zzac;
        }

        /* renamed from: k0 */
        public final boolean m13008k0() {
            return (this.zzc & 8388608) != 0;
        }

        /* renamed from: l0 */
        public final boolean m13005l0() {
            return this.zzad;
        }

        /* renamed from: l1 */
        public final int m13004l1() {
            return this.zzf.size();
        }

        /* renamed from: m0 */
        public final List<zza> m13002m0() {
            return this.zzae;
        }

        /* renamed from: n0 */
        public final String m12999n0() {
            return this.zzaf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzax, "\u0001-��\u0002\u00015-��\u0004��\u0001င��\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(", new Object[]{"zzc", "zzd", "zze", "zzf", zzc.class, "zzg", zzk.class, "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaa", "zzab", "zzac", "zzk", "zzad", "zzae", zza.class, "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau", "zzav", "zzaw", zzce.zzb()});
                case 4:
                    return zzax;
                case 5:
                    zzju<zzg> zzjuVar = zzay;
                    zzju<zzg> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzg.class) {
                            try {
                                zzju<zzg> zzjuVar3 = zzay;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzax);
                                    zzay = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: o0 */
        public final boolean m12996o0() {
            return (this.zzc & 33554432) != 0;
        }

        /* renamed from: p0 */
        public final int m12993p0() {
            return this.zzag;
        }

        /* renamed from: q0 */
        public final String m12990q0() {
            return this.zzaj;
        }

        /* renamed from: r0 */
        public final boolean m12987r0() {
            return (this.zzc & 536870912) != 0;
        }

        /* renamed from: s0 */
        public final long m12984s0() {
            return this.zzak;
        }

        /* renamed from: s2 */
        public final boolean m12982s2() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: t0 */
        public final boolean m12981t0() {
            return (this.zzc & 1073741824) != 0;
        }

        /* renamed from: t2 */
        public final long m12979t2() {
            return this.zzj;
        }

        /* renamed from: u0 */
        public final long m12978u0() {
            return this.zzal;
        }

        /* renamed from: v0 */
        public final String m12975v0() {
            return this.zzam;
        }

        /* renamed from: v1 */
        public final List<zzk> m12974v1() {
            return this.zzg;
        }

        /* renamed from: w0 */
        public final boolean m12972w0() {
            return (this.zzd & 2) != 0;
        }

        /* renamed from: x0 */
        public final int m12969x0() {
            return this.zze;
        }

        /* renamed from: y0 */
        public final zzk m12966y0(int i) {
            return this.zzg.get(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzh.class */
    public static final class zzh extends zzhz<zzh, zza> implements zzjj {
        private static final zzh zzf;
        private static volatile zzju<zzh> zzg;
        private int zzc;
        private int zzd = 1;
        private zzii<zzd> zze = zzhz.m12420z();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzh$zza.class */
        public static final class zza extends zzhz.zza<zzh, zza> implements zzjj {
            private zza() {
                super(zzh.zzf);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzh$zzb.class */
        public enum zzb implements zzib {
            RADS(1),
            PROVISIONING(2);
            
            private static final zzie<zzb> zzc = new zzci();
            private final int zzd;

            zzb(int i) {
                this.zzd = i;
            }

            public static zzb zza(int i) {
                if (i == 1) {
                    return RADS;
                }
                if (i != 2) {
                    return null;
                }
                return PROVISIONING;
            }

            public static zzid zzb() {
                return zzcj.f8305a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzib
            public final int zza() {
                return this.zzd;
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzf = zzhVar;
            zzhz.m12426r(zzh.class, zzhVar);
        }

        private zzh() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zzc", "zzd", zzb.zzb(), "zze", zzd.class});
                case 4:
                    return zzf;
                case 5:
                    zzju<zzh> zzjuVar = zzg;
                    zzju<zzh> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzh.class) {
                            try {
                                zzju<zzh> zzjuVar3 = zzg;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzf);
                                    zzg = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzi.class */
    public static final class zzi extends zzhz<zzi, zza> implements zzjj {
        private static final zzi zzg;
        private static volatile zzju<zzi> zzh;
        private zzif zzc = zzhz.m12421y();
        private zzif zzd = zzhz.m12421y();
        private zzii<zzb> zze = zzhz.m12420z();
        private zzii<zzj> zzf = zzhz.m12420z();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzi$zza.class */
        public static final class zza extends zzhz.zza<zzi, zza> implements zzjj {
            private zza() {
                super(zzi.zzg);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: A */
            public final zza m12861A() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzi) this.f8519g).m12864e0();
                return this;
            }

            /* renamed from: C */
            public final zza m12860C(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzi) this.f8519g).m12872W(i);
                return this;
            }

            /* renamed from: D */
            public final zza m12859D(Iterable<? extends Long> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzi) this.f8519g).m12881N(iterable);
                return this;
            }

            /* renamed from: E */
            public final zza m12858E(Iterable<? extends zzb> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzi) this.f8519g).m12878Q(iterable);
                return this;
            }

            /* renamed from: F */
            public final zza m12857F(Iterable<? extends zzj> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzi) this.f8519g).m12874U(iterable);
                return this;
            }

            /* renamed from: x */
            public final zza m12856x() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzi) this.f8519g).m12865d0();
                return this;
            }

            /* renamed from: y */
            public final zza m12855y(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzi) this.f8519g).m12876S(i);
                return this;
            }

            /* renamed from: z */
            public final zza m12854z(Iterable<? extends Long> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzi) this.f8519g).m12887G(iterable);
                return this;
            }
        }

        static {
            zzi zziVar = new zzi();
            zzg = zziVar;
            zzhz.m12426r(zzi.class, zziVar);
        }

        private zzi() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: G */
        public final void m12887G(Iterable<? extends Long> iterable) {
            zzif zzifVar = this.zzc;
            if (!zzifVar.zza()) {
                this.zzc = zzhz.m12431m(zzifVar);
            }
            zzgh.m12661e(iterable, this.zzc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: N */
        public final void m12881N(Iterable<? extends Long> iterable) {
            zzif zzifVar = this.zzd;
            if (!zzifVar.zza()) {
                this.zzd = zzhz.m12431m(zzifVar);
            }
            zzgh.m12661e(iterable, this.zzd);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: Q */
        public final void m12878Q(Iterable<? extends zzb> iterable) {
            m12863f0();
            zzgh.m12661e(iterable, this.zze);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: S */
        public final void m12876S(int i) {
            m12863f0();
            this.zze.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: U */
        public final void m12874U(Iterable<? extends zzj> iterable) {
            m12862g0();
            zzgh.m12661e(iterable, this.zzf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: W */
        public final void m12872W(int i) {
            m12862g0();
            this.zzf.remove(i);
        }

        /* renamed from: a0 */
        public static zza m12868a0() {
            return zzg.m12424v();
        }

        /* renamed from: b0 */
        public static zzi m12867b0() {
            return zzg;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d0 */
        public final void m12865d0() {
            this.zzc = zzhz.m12421y();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e0 */
        public final void m12864e0() {
            this.zzd = zzhz.m12421y();
        }

        /* renamed from: f0 */
        private final void m12863f0() {
            zzii<zzb> zziiVar = this.zze;
            if (!zziiVar.zza()) {
                this.zze = zzhz.m12430n(zziiVar);
            }
        }

        /* renamed from: g0 */
        private final void m12862g0() {
            zzii<zzj> zziiVar = this.zzf;
            if (!zziiVar.zza()) {
                this.zzf = zzhz.m12430n(zziiVar);
            }
        }

        /* renamed from: A */
        public final zzb m12892A(int i) {
            return this.zze.get(i);
        }

        /* renamed from: C */
        public final List<Long> m12891C() {
            return this.zzc;
        }

        /* renamed from: H */
        public final int m12886H() {
            return this.zzc.size();
        }

        /* renamed from: J */
        public final zzj m12885J(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: O */
        public final List<Long> m12880O() {
            return this.zzd;
        }

        /* renamed from: R */
        public final int m12877R() {
            return this.zzd.size();
        }

        /* renamed from: V */
        public final List<zzb> m12873V() {
            return this.zze;
        }

        /* renamed from: X */
        public final int m12871X() {
            return this.zze.size();
        }

        /* renamed from: Y */
        public final List<zzj> m12870Y() {
            return this.zzf;
        }

        /* renamed from: Z */
        public final int m12869Z() {
            return this.zzf.size();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzg, "\u0001\u0004����\u0001\u0004\u0004��\u0004��\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzc", "zzd", "zze", zzb.class, "zzf", zzj.class});
                case 4:
                    return zzg;
                case 5:
                    zzju<zzi> zzjuVar = zzh;
                    zzju<zzi> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzi.class) {
                            try {
                                zzju<zzi> zzjuVar3 = zzh;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzg);
                                    zzh = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzj.class */
    public static final class zzj extends zzhz<zzj, zza> implements zzjj {
        private static final zzj zzf;
        private static volatile zzju<zzj> zzg;
        private int zzc;
        private int zzd;
        private zzif zze = zzhz.m12421y();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzj$zza.class */
        public static final class zza extends zzhz.zza<zzj, zza> implements zzjj {
            private zza() {
                super(zzj.zzf);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: x */
            public final zza m12842x(int i) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzj) this.f8519g).m12847H(i);
                return this;
            }

            /* renamed from: y */
            public final zza m12841y(Iterable<? extends Long> iterable) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzj) this.f8519g).m12850E(iterable);
                return this;
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzf = zzjVar;
            zzhz.m12426r(zzj.class, zzjVar);
        }

        private zzj() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: E */
        public final void m12850E(Iterable<? extends Long> iterable) {
            zzif zzifVar = this.zze;
            if (!zzifVar.zza()) {
                this.zze = zzhz.m12431m(zzifVar);
            }
            zzgh.m12661e(iterable, this.zze);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: H */
        public final void m12847H(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* renamed from: L */
        public static zza m12844L() {
            return zzf.m12424v();
        }

        /* renamed from: A */
        public final long m12853A(int i) {
            return this.zze.mo12365b(i);
        }

        /* renamed from: F */
        public final boolean m12849F() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: G */
        public final int m12848G() {
            return this.zzd;
        }

        /* renamed from: J */
        public final List<Long> m12846J() {
            return this.zze;
        }

        /* renamed from: K */
        public final int m12845K() {
            return this.zze.size();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001င��\u0002\u0014", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzju<zzj> zzjuVar = zzg;
                    zzju<zzj> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzj.class) {
                            try {
                                zzju<zzj> zzjuVar3 = zzg;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzf);
                                    zzg = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzk.class */
    public static final class zzk extends zzhz<zzk, zza> implements zzjj {
        private static final zzk zzj;
        private static volatile zzju<zzk> zzk;
        private int zzc;
        private long zzd;
        private String zze = "";
        private String zzf = "";
        private long zzg;
        private float zzh;
        private double zzi;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzk$zza.class */
        public static final class zza extends zzhz.zza<zzk, zza> implements zzjj {
            private zza() {
                super(zzk.zzj);
            }

            /* synthetic */ zza(zzcf zzcfVar) {
                this();
            }

            /* renamed from: A */
            public final zza m12813A(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzk) this.f8519g).m12834H(str);
                return this;
            }

            /* renamed from: C */
            public final zza m12812C() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzk) this.f8519g).m12815b0();
                return this;
            }

            /* renamed from: D */
            public final zza m12811D(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzk) this.f8519g).m12831L(j);
                return this;
            }

            /* renamed from: E */
            public final zza m12810E(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzk) this.f8519g).m12827P(str);
                return this;
            }

            /* renamed from: F */
            public final zza m12809F() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzk) this.f8519g).m12814c0();
                return this;
            }

            /* renamed from: x */
            public final zza m12808x() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzk) this.f8519g).m12816a0();
                return this;
            }

            /* renamed from: y */
            public final zza m12807y(double d) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzk) this.f8519g).m12840A(d);
                return this;
            }

            /* renamed from: z */
            public final zza m12806z(long j) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzk) this.f8519g).m12839C(j);
                return this;
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzj = zzkVar;
            zzhz.m12426r(zzk.class, zzkVar);
        }

        private zzk() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: A */
        public final void m12840A(double d) {
            this.zzc |= 32;
            this.zzi = d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C */
        public final void m12839C(long j) {
            this.zzc |= 1;
            this.zzd = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: H */
        public final void m12834H(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: L */
        public final void m12831L(long j) {
            this.zzc |= 8;
            this.zzg = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: P */
        public final void m12827P(String str) {
            str.getClass();
            this.zzc |= 4;
            this.zzf = str;
        }

        /* renamed from: Y */
        public static zza m12818Y() {
            return zzj.m12424v();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a0 */
        public final void m12816a0() {
            this.zzc &= -5;
            this.zzf = zzj.zzf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b0 */
        public final void m12815b0() {
            this.zzc &= -9;
            this.zzg = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c0 */
        public final void m12814c0() {
            this.zzc &= -33;
            this.zzi = 0.0d;
        }

        /* renamed from: J */
        public final boolean m12833J() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: K */
        public final long m12832K() {
            return this.zzd;
        }

        /* renamed from: Q */
        public final String m12826Q() {
            return this.zze;
        }

        /* renamed from: S */
        public final boolean m12824S() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: T */
        public final String m12823T() {
            return this.zzf;
        }

        /* renamed from: U */
        public final boolean m12822U() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: V */
        public final long m12821V() {
            return this.zzg;
        }

        /* renamed from: W */
        public final boolean m12820W() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: X */
        public final double m12819X() {
            return this.zzi;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcf.f8303a[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzju<zzk> zzjuVar = zzk;
                    zzju<zzk> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzk.class) {
                            try {
                                zzju<zzk> zzjuVar3 = zzk;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzj);
                                    zzk = zzjuVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjuVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
