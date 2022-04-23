package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.internal.measurement.zzck;
import com.google.android.gms.internal.measurement.zzhz;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca.class */
public final class zzca {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zza.class */
    public static final class zza extends zzhz<zza, C2484zza> implements zzjj {
        private static final zza zzh;
        private static volatile zzju<zza> zzi;
        private int zzc;
        private String zzd = "";
        private boolean zze;
        private boolean zzf;
        private int zzg;

        /* renamed from: com.google.android.gms.internal.measurement.zzca$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zza$zza.class */
        public static final class C2484zza extends zzhz.zza<zza, C2484zza> implements zzjj {
            private C2484zza() {
                super(zza.zzh);
            }

            /* synthetic */ C2484zza(zzcc zzccVar) {
                this();
            }

            /* renamed from: A */
            public final boolean m13298A() {
                return ((zza) this.f8519g).m13302F();
            }

            /* renamed from: C */
            public final boolean m13297C() {
                return ((zza) this.f8519g).m13301G();
            }

            /* renamed from: D */
            public final int m13296D() {
                return ((zza) this.f8519g).m13300H();
            }

            /* renamed from: x */
            public final C2484zza m13295x(String str) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zza) this.f8519g).m13304D(str);
                return this;
            }

            /* renamed from: y */
            public final String m13294y() {
                return ((zza) this.f8519g).m13306A();
            }

            /* renamed from: z */
            public final boolean m13293z() {
                return ((zza) this.f8519g).m13303E();
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
        /* renamed from: D */
        public final void m13304D(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        /* renamed from: A */
        public final String m13306A() {
            return this.zzd;
        }

        /* renamed from: E */
        public final boolean m13303E() {
            return this.zze;
        }

        /* renamed from: F */
        public final boolean m13302F() {
            return this.zzf;
        }

        /* renamed from: G */
        public final boolean m13301G() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: H */
        public final int m13300H() {
            return this.zzg;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcc.f8302a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2484zza(null);
                case 3:
                    return zzhz.m12428p(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zzb.class */
    public static final class zzb extends zzhz<zzb, zza> implements zzjj {
        private static final zzb zzm;
        private static volatile zzju<zzb> zzn;
        private int zzc;
        private long zzd;
        private int zzf;
        private boolean zzk;
        private String zze = "";
        private zzii<zzc> zzg = zzhz.m12420z();
        private zzii<zza> zzh = zzhz.m12420z();
        private zzii<zzbv.zza> zzi = zzhz.m12420z();
        private String zzj = "";
        private zzii<zzck.zza> zzl = zzhz.m12420z();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zzb$zza.class */
        public static final class zza extends zzhz.zza<zzb, zza> implements zzjj {
            private zza() {
                super(zzb.zzm);
            }

            /* synthetic */ zza(zzcc zzccVar) {
                this();
            }

            /* renamed from: A */
            public final List<zzbv.zza> m13276A() {
                return Collections.unmodifiableList(((zzb) this.f8519g).m13282M());
            }

            /* renamed from: C */
            public final zza m13275C() {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzb) this.f8519g).m13277R();
                return this;
            }

            /* renamed from: x */
            public final int m13274x() {
                return ((zzb) this.f8519g).m13283L();
            }

            /* renamed from: y */
            public final zza m13273y(int i) {
                return ((zzb) this.f8519g).m13292A(i);
            }

            /* renamed from: z */
            public final zza m13272z(int i, zza.C2484zza zzaVar) {
                if (this.f8520h) {
                    m12410s();
                    this.f8520h = false;
                }
                ((zzb) this.f8519g).m13291C(i, (zza) ((zzhz) zzaVar.mo12321k()));
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzm = zzbVar;
            zzhz.m12426r(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: C */
        public final void m13291C(int i, zza zzaVar) {
            zzaVar.getClass();
            zzii<zza> zziiVar = this.zzh;
            if (!zziiVar.zza()) {
                this.zzh = zzhz.m12430n(zziiVar);
            }
            this.zzh.set(i, zzaVar);
        }

        /* renamed from: O */
        public static zza m13280O() {
            return zzm.m12424v();
        }

        /* renamed from: P */
        public static zzb m13279P() {
            return zzm;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: R */
        public final void m13277R() {
            this.zzi = zzhz.m12420z();
        }

        /* renamed from: A */
        public final zza m13292A(int i) {
            return this.zzh.get(i);
        }

        /* renamed from: F */
        public final boolean m13288F() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: G */
        public final long m13287G() {
            return this.zzd;
        }

        /* renamed from: H */
        public final boolean m13286H() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: J */
        public final String m13285J() {
            return this.zze;
        }

        /* renamed from: K */
        public final List<zzc> m13284K() {
            return this.zzg;
        }

        /* renamed from: L */
        public final int m13283L() {
            return this.zzh.size();
        }

        /* renamed from: M */
        public final List<zzbv.zza> m13282M() {
            return this.zzi;
        }

        /* renamed from: N */
        public final boolean m13281N() {
            return this.zzk;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcc.f8302a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzm, "\u0001\t��\u0001\u0001\t\t��\u0004��\u0001ဂ��\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", zzc.class, "zzh", zza.class, "zzi", zzbv.zza.class, "zzj", "zzk", "zzl", zzck.zza.class});
                case 4:
                    return zzm;
                case 5:
                    zzju<zzb> zzjuVar = zzn;
                    zzju<zzb> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzju<zzb> zzjuVar3 = zzn;
                                zzjuVar2 = zzjuVar3;
                                if (zzjuVar3 == null) {
                                    zzjuVar2 = new zzhz.zzc<>(zzm);
                                    zzn = zzjuVar2;
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zzc.class */
    public static final class zzc extends zzhz<zzc, zza> implements zzjj {
        private static final zzc zzf;
        private static volatile zzju<zzc> zzg;
        private int zzc;
        private String zzd = "";
        private String zze = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzca$zzc$zza.class */
        public static final class zza extends zzhz.zza<zzc, zza> implements zzjj {
            private zza() {
                super(zzc.zzf);
            }

            /* synthetic */ zza(zzcc zzccVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzf = zzcVar;
            zzhz.m12426r(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* renamed from: A */
        public final String m13271A() {
            return this.zzd;
        }

        /* renamed from: C */
        public final String m13270C() {
            return this.zze;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzhz
        /* renamed from: o */
        public final Object mo12429o(int i, Object obj, Object obj2) {
            switch (zzcc.f8302a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhz.m12428p(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzju<zzc> zzjuVar = zzg;
                    zzju<zzc> zzjuVar2 = zzjuVar;
                    if (zzjuVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzju<zzc> zzjuVar3 = zzg;
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
}
