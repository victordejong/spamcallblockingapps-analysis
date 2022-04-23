package com.google.android.gms.internal.measurement;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.RegularImmutableMap;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p258f.C4510i0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4535l0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4542m0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd.class */
public final class zzcd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zza.class */
    public static final class zza extends zzhy<zza, C10517zza> implements zzjl {
        public static final zza zzh;
        public static volatile zzjs<zza> zzi;
        public int zzc;
        public int zzd;
        public zzi zze;
        public zzi zzf;
        public boolean zzg;

        /* renamed from: com.google.android.gms.internal.measurement.zzcd$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zza$zza.class */
        public static final class C10517zza extends zzhy.zzb<zza, C10517zza> implements zzjl {
            public C10517zza() {
                super(zza.zzh);
            }

            public /* synthetic */ C10517zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: a */
            public final C10517zza m10297a(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zza) this.f29500b).m10308b(i);
                return this;
            }

            /* renamed from: a */
            public final C10517zza m10296a(zzi.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zza) this.f29500b).m10310a((zzi) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final C10517zza m10295a(zzi zziVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zza) this.f29500b).m10306b(zziVar);
                return this;
            }

            /* renamed from: a */
            public final C10517zza m10294a(boolean z) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zza) this.f29500b).m10309a(z);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzh = zzaVar;
            zzhy.m9666a(zza.class, zzaVar);
        }

        /* renamed from: v */
        public static C10517zza m10299v() {
            return zzh.m9663k();
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C10517zza(null);
                case 3:
                    return zzhy.m9668a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzjs<zza> zzjsVar = zzi;
                    zzjs<zza> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzjs<zza> zzjsVar3 = zzi;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzh);
                                    zzi = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10310a(zzi zziVar) {
            zziVar.getClass();
            this.zze = zziVar;
            this.zzc |= 2;
        }

        /* renamed from: a */
        public final void m10309a(boolean z) {
            this.zzc |= 8;
            this.zzg = z;
        }

        /* renamed from: b */
        public final void m10308b(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* renamed from: b */
        public final void m10306b(zzi zziVar) {
            zziVar.getClass();
            this.zzf = zziVar;
            this.zzc |= 4;
        }

        /* renamed from: p */
        public final int m10305p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final zzi m10304q() {
            zzi zziVar = this.zze;
            zzi zziVar2 = zziVar;
            if (zziVar == null) {
                zziVar2 = zzi.m9948B();
            }
            return zziVar2;
        }

        /* renamed from: r */
        public final boolean m10303r() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: s */
        public final zzi m10302s() {
            zzi zziVar = this.zzf;
            zzi zziVar2 = zziVar;
            if (zziVar == null) {
                zziVar2 = zzi.m9948B();
            }
            return zziVar2;
        }

        /* renamed from: t */
        public final boolean m10301t() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: u */
        public final boolean m10300u() {
            return this.zzg;
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzb.class */
    public static final class zzb extends zzhy<zzb, zza> implements zzjl {
        public static final zzb zzf;
        public static volatile zzjs<zzb> zzg;
        public int zzc;
        public int zzd;
        public long zze;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzb$zza.class */
        public static final class zza extends zzhy.zzb<zzb, zza> implements zzjl {
            public zza() {
                super(zzb.zzf);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m10284a(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzb) this.f29500b).m10290b(i);
                return this;
            }

            /* renamed from: a */
            public final zza m10283a(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzb) this.f29500b).m10293a(j);
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzf = zzbVar;
            zzhy.m9666a(zzb.class, zzbVar);
        }

        /* renamed from: s */
        public static zza m10286s() {
            return zzf.m9663k();
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzjs<zzb> zzjsVar = zzg;
                    zzjs<zzb> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzjs<zzb> zzjsVar3 = zzg;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzf);
                                    zzg = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10293a(long j) {
            this.zzc |= 2;
            this.zze = j;
        }

        /* renamed from: b */
        public final void m10290b(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* renamed from: p */
        public final int m10289p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final boolean m10288q() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: r */
        public final long m10287r() {
            return this.zze;
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzc.class */
    public static final class zzc extends zzhy<zzc, zza> implements zzjl {
        public static final zzc zzi;
        public static volatile zzjs<zzc> zzj;
        public int zzc;
        public zzig<zze> zzd = zzhy.m9659o();
        public String zze = "";
        public long zzf;
        public long zzg;
        public int zzh;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzc$zza.class */
        public static final class zza extends zzhy.zzb<zzc, zza> implements zzjl {
            public zza() {
                super(zzc.zzi);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m10253a(int i, zze.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10281a(i, (zze) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final zza m10252a(int i, zze zzeVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10281a(i, zzeVar);
                return this;
            }

            /* renamed from: a */
            public final zza m10251a(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10280a(j);
                return this;
            }

            /* renamed from: a */
            public final zza m10250a(zze.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10272a((zze) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final zza m10249a(zze zzeVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10272a(zzeVar);
                return this;
            }

            /* renamed from: a */
            public final zza m10248a(Iterable<? extends zze> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10271a(iterable);
                return this;
            }

            @Override // com.google.android.gms.internal.measurement.zzgi
            /* renamed from: a */
            public final zza mo9794a(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10270a(str);
                return this;
            }

            /* renamed from: a */
            public final zze m10254a(int i) {
                return ((zzc) this.f29500b).m10269b(i);
            }

            /* renamed from: b */
            public final zza m10247b(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10266c(i);
                return this;
            }

            /* renamed from: b */
            public final zza m10246b(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10268b(j);
                return this;
            }

            /* renamed from: o */
            public final int m10245o() {
                return ((zzc) this.f29500b).m10265p();
            }

            /* renamed from: p */
            public final zza m10244p() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzc) this.f29500b).m10256y();
                return this;
            }

            /* renamed from: q */
            public final String m10243q() {
                return ((zzc) this.f29500b).m10264q();
            }

            /* renamed from: r */
            public final long m10242r() {
                return ((zzc) this.f29500b).m10262s();
            }

            /* renamed from: s */
            public final long m10241s() {
                return ((zzc) this.f29500b).m10260u();
            }

            public final List<zze> zza() {
                return Collections.unmodifiableList(((zzc) this.f29500b).zza());
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzi = zzcVar;
            zzhy.m9666a(zzc.class, zzcVar);
        }

        /* renamed from: z */
        public static zza m10255z() {
            return zzi.m9663k();
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002ဈ��\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", zze.class, "zze", "zzf", "zzg", "zzh"});
                case 4:
                    return zzi;
                case 5:
                    zzjs<zzc> zzjsVar = zzj;
                    zzjs<zzc> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzjs<zzc> zzjsVar3 = zzj;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzi);
                                    zzj = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10281a(int i, zze zzeVar) {
            zzeVar.getClass();
            m10257x();
            this.zzd.set(i, zzeVar);
        }

        /* renamed from: a */
        public final void m10280a(long j) {
            this.zzc |= 2;
            this.zzf = j;
        }

        /* renamed from: a */
        public final void m10272a(zze zzeVar) {
            zzeVar.getClass();
            m10257x();
            this.zzd.add(zzeVar);
        }

        /* renamed from: a */
        public final void m10271a(Iterable<? extends zze> iterable) {
            m10257x();
            zzgg.m9795a(iterable, this.zzd);
        }

        /* renamed from: a */
        public final void m10270a(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zze = str;
        }

        /* renamed from: b */
        public final zze m10269b(int i) {
            return this.zzd.get(i);
        }

        /* renamed from: b */
        public final void m10268b(long j) {
            this.zzc |= 4;
            this.zzg = j;
        }

        /* renamed from: c */
        public final void m10266c(int i) {
            m10257x();
            this.zzd.remove(i);
        }

        /* renamed from: p */
        public final int m10265p() {
            return this.zzd.size();
        }

        /* renamed from: q */
        public final String m10264q() {
            return this.zze;
        }

        /* renamed from: r */
        public final boolean m10263r() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: s */
        public final long m10262s() {
            return this.zzf;
        }

        /* renamed from: t */
        public final boolean m10261t() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: u */
        public final long m10260u() {
            return this.zzg;
        }

        /* renamed from: v */
        public final boolean m10259v() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: w */
        public final int m10258w() {
            return this.zzh;
        }

        /* renamed from: x */
        public final void m10257x() {
            zzig<zze> zzigVar = this.zzd;
            if (!zzigVar.zza()) {
                this.zzd = zzhy.m9670a(zzigVar);
            }
        }

        /* renamed from: y */
        public final void m10256y() {
            this.zzd = zzhy.m9659o();
        }

        public final List<zze> zza() {
            return this.zzd;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzd.class */
    public static final class zzd extends zzhy<zzd, zza> implements zzjl {
        public static final zzd zzf;
        public static volatile zzjs<zzd> zzg;
        public int zzc;
        public String zzd = "";
        public long zze;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzd$zza.class */
        public static final class zza extends zzhy.zzb<zzd, zza> implements zzjl {
            public zza() {
                super(zzd.zzf);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzf = zzdVar;
            zzhy.m9666a(zzd.class, zzdVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzjs<zzd> zzjsVar = zzg;
                    zzjs<zzd> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzjs<zzd> zzjsVar3 = zzg;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzf);
                                    zzg = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
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
    public static final class zze extends zzhy<zze, zza> implements zzjl {
        public static final zze zzj;
        public static volatile zzjs<zze> zzk;
        public int zzc;
        public long zzf;
        public float zzg;
        public double zzh;
        public String zzd = "";
        public String zze = "";
        public zzig<zze> zzi = zzhy.m9659o();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zze$zza.class */
        public static final class zza extends zzhy.zzb<zze, zza> implements zzjl {
            public zza() {
                super(zze.zzj);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m10205a(double d) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10232a(d);
                return this;
            }

            /* renamed from: a */
            public final zza m10204a(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10231a(j);
                return this;
            }

            /* renamed from: a */
            public final zza m10203a(zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10230a((zze) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final zza m10202a(Iterable<? extends zze> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10224a(iterable);
                return this;
            }

            @Override // com.google.android.gms.internal.measurement.zzgi
            /* renamed from: a */
            public final zza mo9794a(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10223a(str);
                return this;
            }

            /* renamed from: b */
            public final zza m10201b(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10220b(str);
                return this;
            }

            /* renamed from: o */
            public final zza m10200o() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10238B();
                return this;
            }

            /* renamed from: p */
            public final zza m10199p() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10237C();
                return this;
            }

            /* renamed from: q */
            public final int m10198q() {
                return ((zze) this.f29500b).m10206z();
            }

            /* renamed from: r */
            public final zza m10197r() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10235E();
                return this;
            }

            public final zza zza() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zze) this.f29500b).m10239A();
                return this;
            }
        }

        static {
            zze zzeVar = new zze();
            zzj = zzeVar;
            zzhy.m9666a(zze.class, zzeVar);
        }

        /* renamed from: F */
        public static zza m10234F() {
            return zzj.m9663k();
        }

        /* renamed from: A */
        public final void m10239A() {
            this.zzc &= -3;
            this.zze = zzj.zze;
        }

        /* renamed from: B */
        public final void m10238B() {
            this.zzc &= -5;
            this.zzf = 0L;
        }

        /* renamed from: C */
        public final void m10237C() {
            this.zzc &= -17;
            this.zzh = 0.0d;
        }

        /* renamed from: D */
        public final void m10236D() {
            zzig<zze> zzigVar = this.zzi;
            if (!zzigVar.zza()) {
                this.zzi = zzhy.m9670a(zzigVar);
            }
        }

        /* renamed from: E */
        public final void m10235E() {
            this.zzi = zzhy.m9659o();
        }

        /* JADX WARN: Finally extract failed */
        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", zze.class});
                case 4:
                    return zzj;
                case 5:
                    zzjs<zze> zzjsVar = zzk;
                    zzjs<zze> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzjs<zze> zzjsVar3 = zzk;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzj);
                                    zzk = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10232a(double d) {
            this.zzc |= 16;
            this.zzh = d;
        }

        /* renamed from: a */
        public final void m10231a(long j) {
            this.zzc |= 4;
            this.zzf = j;
        }

        /* renamed from: a */
        public final void m10230a(zze zzeVar) {
            zzeVar.getClass();
            m10236D();
            this.zzi.add(zzeVar);
        }

        /* renamed from: a */
        public final void m10224a(Iterable<? extends zze> iterable) {
            m10236D();
            zzgg.m9795a(iterable, this.zzi);
        }

        /* renamed from: a */
        public final void m10223a(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        /* renamed from: b */
        public final void m10220b(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: p */
        public final String m10216p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final boolean m10215q() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: r */
        public final String m10214r() {
            return this.zze;
        }

        /* renamed from: s */
        public final boolean m10213s() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: t */
        public final long m10212t() {
            return this.zzf;
        }

        /* renamed from: u */
        public final boolean m10211u() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: v */
        public final float m10210v() {
            return this.zzg;
        }

        /* renamed from: w */
        public final boolean m10209w() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: x */
        public final double m10208x() {
            return this.zzh;
        }

        /* renamed from: y */
        public final List<zze> m10207y() {
            return this.zzi;
        }

        /* renamed from: z */
        public final int m10206z() {
            return this.zzi.size();
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzf.class */
    public static final class zzf extends zzhy<zzf, zza> implements zzjl {
        public static final zzf zzd;
        public static volatile zzjs<zzf> zze;
        public zzig<zzg> zzc = zzhy.m9659o();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzf$zza.class */
        public static final class zza extends zzhy.zzb<zzf, zza> implements zzjl {
            public zza() {
                super(zzf.zzd);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m10190a(zzg.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzf) this.f29500b).m10195a((zzg) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final zzg m10191a(int i) {
                return ((zzf) this.f29500b).m10194b(0);
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzd = zzfVar;
            zzhy.m9666a(zzf.class, zzfVar);
        }

        /* renamed from: p */
        public static zza m10193p() {
            return zzd.m9663k();
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzc", zzg.class});
                case 4:
                    return zzd;
                case 5:
                    zzjs<zzf> zzjsVar = zze;
                    zzjs<zzf> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzjs<zzf> zzjsVar3 = zze;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzd);
                                    zze = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10195a(zzg zzgVar) {
            zzgVar.getClass();
            zzig<zzg> zzigVar = this.zzc;
            if (!zzigVar.zza()) {
                this.zzc = zzhy.m9670a(zzigVar);
            }
            this.zzc.add(zzgVar);
        }

        /* renamed from: b */
        public final zzg m10194b(int i) {
            return this.zzc.get(0);
        }

        public final List<zzg> zza() {
            return this.zzc;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzg.class */
    public static final class zzg extends zzhy<zzg, zza> implements zzjl {
        public static final zzg zzax;
        public static volatile zzjs<zzg> zzay;
        public int zzaa;
        public boolean zzad;
        public int zzag;
        public int zzah;
        public int zzai;
        public long zzak;
        public long zzal;
        public int zzao;
        public zzh zzaq;
        public long zzas;
        public long zzat;
        public int zzaw;
        public int zzc;
        public int zzd;
        public int zze;
        public long zzh;
        public long zzi;
        public long zzj;
        public long zzk;
        public long zzl;
        public int zzq;
        public long zzu;
        public long zzv;
        public boolean zzx;
        public long zzz;
        public zzig<zzc> zzf = zzhy.m9659o();
        public zzig<zzk> zzg = zzhy.m9659o();
        public String zzm = "";
        public String zzn = "";
        public String zzo = "";
        public String zzp = "";
        public String zzr = "";
        public String zzs = "";
        public String zzt = "";
        public String zzw = "";
        public String zzy = "";
        public String zzab = "";
        public String zzac = "";
        public zzig<zza> zzae = zzhy.m9659o();
        public String zzaf = "";
        public String zzaj = "";
        public String zzam = "";
        public String zzan = "";
        public String zzap = "";
        public zzie zzar = zzhy.m9661m();
        public String zzau = "";
        public String zzav = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzg$zza.class */
        public static final class zza extends zzhy.zzb<zzg, zza> implements zzjl {
            public zza() {
                super(zzg.zzax);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: A */
            public final zza m10015A() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10107d0();
                return this;
            }

            /* renamed from: C */
            public final zza m10014C() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10099e0();
                return this;
            }

            /* renamed from: E */
            public final zza m10013E() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10090f0();
                return this;
            }

            /* renamed from: G */
            public final zza m10012G() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10082g0();
                return this;
            }

            /* renamed from: H */
            public final String m10011H() {
                return ((zzg) this.f29500b).m10187B();
            }

            /* renamed from: I */
            public final zza m10010I() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10075h0();
                return this;
            }

            /* renamed from: J */
            public final zza m10009J() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10068i0();
                return this;
            }

            /* renamed from: L */
            public final zza m10008L() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10061j0();
                return this;
            }

            /* renamed from: N */
            public final String m10007N() {
                return ((zzg) this.f29500b).m10162U();
            }

            /* renamed from: a */
            public final zza m10006a(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10114d(1);
                return this;
            }

            /* renamed from: a */
            public final zza m10005a(int i, zzc.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10156a(i, (zzc) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final zza m10004a(int i, zzk zzkVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10155a(i, zzkVar);
                return this;
            }

            /* renamed from: a */
            public final zza m10003a(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10154a(j);
                return this;
            }

            /* renamed from: a */
            public final zza m10002a(zzc.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10153a((zzc) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final zza m10001a(zzk.zza zzaVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10142a((zzk) ((zzhy) zzaVar.mo9619b()));
                return this;
            }

            /* renamed from: a */
            public final zza m10000a(zzk zzkVar) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10142a(zzkVar);
                return this;
            }

            /* renamed from: a */
            public final zza m9999a(Iterable<? extends zzc> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10141a(iterable);
                return this;
            }

            @Override // com.google.android.gms.internal.measurement.zzgi
            /* renamed from: a */
            public final zza mo9794a(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10140a(str);
                return this;
            }

            /* renamed from: a */
            public final zza m9998a(boolean z) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10139a(z);
                return this;
            }

            /* renamed from: b */
            public final zzc m9997b(int i) {
                return ((zzg) this.f29500b).m10136b(i);
            }

            /* renamed from: b */
            public final zza m9996b(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10135b(j);
                return this;
            }

            /* renamed from: b */
            public final zza m9995b(Iterable<? extends zza> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10128b(iterable);
                return this;
            }

            /* renamed from: b */
            public final zza m9994b(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10127b(str);
                return this;
            }

            /* renamed from: b */
            public final zza m9993b(boolean z) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10126b(z);
                return this;
            }

            /* renamed from: c */
            public final zza m9992c(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10106e(i);
                return this;
            }

            /* renamed from: c */
            public final zza m9991c(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10123c(j);
                return this;
            }

            /* renamed from: c */
            public final zza m9990c(Iterable<? extends Integer> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10117c(iterable);
                return this;
            }

            /* renamed from: c */
            public final zza m9989c(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10116c(str);
                return this;
            }

            /* renamed from: d */
            public final zza m9987d(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10113d(j);
                return this;
            }

            /* renamed from: d */
            public final zza m9986d(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10108d(str);
                return this;
            }

            /* renamed from: d */
            public final zzk m9988d(int i) {
                return ((zzg) this.f29500b).m10124c(i);
            }

            /* renamed from: e */
            public final zza m9985e(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10097f(i);
                return this;
            }

            /* renamed from: e */
            public final zza m9984e(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10105e(j);
                return this;
            }

            /* renamed from: e */
            public final zza m9983e(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10100e(str);
                return this;
            }

            /* renamed from: f */
            public final zza m9982f(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10089g(i);
                return this;
            }

            /* renamed from: f */
            public final zza m9981f(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10096f(j);
                return this;
            }

            /* renamed from: f */
            public final zza m9980f(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10091f(str);
                return this;
            }

            /* renamed from: g */
            public final zza m9979g(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10081h(i);
                return this;
            }

            /* renamed from: g */
            public final zza m9978g(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10088g(j);
                return this;
            }

            /* renamed from: g */
            public final zza m9977g(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10083g(str);
                return this;
            }

            /* renamed from: h */
            public final zza m9976h(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10074i(i);
                return this;
            }

            /* renamed from: h */
            public final zza m9975h(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10080h(j);
                return this;
            }

            /* renamed from: h */
            public final zza m9974h(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10076h(str);
                return this;
            }

            /* renamed from: i */
            public final zza m9973i(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10067j(i);
                return this;
            }

            /* renamed from: i */
            public final zza m9972i(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10073i(j);
                return this;
            }

            /* renamed from: i */
            public final zza m9971i(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10069i(str);
                return this;
            }

            /* renamed from: j */
            public final zza m9970j(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10066j(j);
                return this;
            }

            /* renamed from: j */
            public final zza m9969j(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10062j(str);
                return this;
            }

            /* renamed from: k */
            public final zza m9968k(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10060k(j);
                return this;
            }

            /* renamed from: k */
            public final zza m9967k(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10057k(str);
                return this;
            }

            /* renamed from: l */
            public final zza m9966l(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10055l(j);
                return this;
            }

            /* renamed from: l */
            public final zza m9965l(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10052l(str);
                return this;
            }

            /* renamed from: m */
            public final zza m9964m(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10049m(str);
                return this;
            }

            /* renamed from: n */
            public final zza m9963n(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10046n(null);
                return this;
            }

            /* renamed from: o */
            public final int m9962o() {
                return ((zzg) this.f29500b).m10056k0();
            }

            /* renamed from: o */
            public final zza m9961o(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10043o(str);
                return this;
            }

            /* renamed from: p */
            public final zza m9960p() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10158Y();
                return this;
            }

            /* renamed from: p */
            public final zza m9959p(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10039p(str);
                return this;
            }

            /* renamed from: q */
            public final zza m9957q(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10035q(str);
                return this;
            }

            /* renamed from: q */
            public final List<zzk> m9958q() {
                return Collections.unmodifiableList(((zzg) this.f29500b).m10051l0());
            }

            /* renamed from: r */
            public final int m9956r() {
                return ((zzg) this.f29500b).m10048m0();
            }

            /* renamed from: s */
            public final long m9955s() {
                return ((zzg) this.f29500b).m10034q0();
            }

            /* renamed from: t */
            public final long m9954t() {
                return ((zzg) this.f29500b).m10030s0();
            }

            /* renamed from: w */
            public final zza m9953w() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10138a0();
                return this;
            }

            /* renamed from: x */
            public final zza m9952x() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzg) this.f29500b).m10115c0();
                return this;
            }

            /* renamed from: z */
            public final String m9951z() {
                return ((zzg) this.f29500b).m10098f();
            }

            public final List<zzc> zza() {
                return Collections.unmodifiableList(((zzg) this.f29500b).m10125b0());
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzax = zzgVar;
            zzhy.m9666a(zzg.class, zzgVar);
        }

        /* renamed from: F0 */
        public static zza m10178F0() {
            return zzax.m9663k();
        }

        /* renamed from: A */
        public final String m10189A() {
            return this.zzab;
        }

        /* renamed from: A0 */
        public final String m10188A0() {
            return this.zzp;
        }

        /* renamed from: B */
        public final String m10187B() {
            return this.zzac;
        }

        /* renamed from: B0 */
        public final boolean m10186B0() {
            return (this.zzc & 1024) != 0;
        }

        /* renamed from: C */
        public final boolean m10185C() {
            return (this.zzc & 8388608) != 0;
        }

        /* renamed from: C0 */
        public final int m10184C0() {
            return this.zzq;
        }

        /* renamed from: D */
        public final boolean m10183D() {
            return this.zzad;
        }

        /* renamed from: D0 */
        public final String m10182D0() {
            return this.zzr;
        }

        /* renamed from: E */
        public final List<zza> m10181E() {
            return this.zzae;
        }

        /* renamed from: E0 */
        public final boolean m10180E0() {
            return (this.zzc & 16384) != 0;
        }

        /* renamed from: F */
        public final String m10179F() {
            return this.zzaf;
        }

        /* renamed from: G */
        public final boolean m10177G() {
            return (this.zzc & 33554432) != 0;
        }

        /* renamed from: H */
        public final int m10175H() {
            return this.zzag;
        }

        /* renamed from: I */
        public final String m10174I() {
            return this.zzaj;
        }

        /* renamed from: J */
        public final boolean m10173J() {
            return (this.zzc & 536870912) != 0;
        }

        /* renamed from: K */
        public final long m10172K() {
            return this.zzak;
        }

        /* renamed from: L */
        public final boolean m10171L() {
            return (this.zzc & 1073741824) != 0;
        }

        /* renamed from: M */
        public final long m10170M() {
            return this.zzal;
        }

        /* renamed from: N */
        public final String m10169N() {
            return this.zzam;
        }

        /* renamed from: O */
        public final boolean m10168O() {
            return (this.zzd & 2) != 0;
        }

        /* renamed from: P */
        public final int m10167P() {
            return this.zze;
        }

        /* renamed from: Q */
        public final int m10166Q() {
            return this.zzao;
        }

        /* renamed from: R */
        public final String m10165R() {
            return this.zzap;
        }

        /* renamed from: S */
        public final boolean m10164S() {
            return (this.zzd & 16) != 0;
        }

        /* renamed from: T */
        public final long m10163T() {
            return this.zzas;
        }

        /* renamed from: U */
        public final String m10162U() {
            return this.zzau;
        }

        /* renamed from: V */
        public final boolean m10161V() {
            return (this.zzd & 128) != 0;
        }

        /* renamed from: W */
        public final String m10160W() {
            return this.zzav;
        }

        /* renamed from: X */
        public final void m10159X() {
            zzig<zzc> zzigVar = this.zzf;
            if (!zzigVar.zza()) {
                this.zzf = zzhy.m9670a(zzigVar);
            }
        }

        /* renamed from: Y */
        public final void m10158Y() {
            this.zzf = zzhy.m9659o();
        }

        /* renamed from: Z */
        public final void m10157Z() {
            zzig<zzk> zzigVar = this.zzg;
            if (!zzigVar.zza()) {
                this.zzg = zzhy.m9670a(zzigVar);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzax, "\u0001-��\u0002\u00015-��\u0004��\u0001င��\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(", new Object[]{"zzc", "zzd", "zze", "zzf", zzc.class, "zzg", zzk.class, "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaa", "zzab", "zzac", "zzk", "zzad", "zzae", zza.class, "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau", "zzav", "zzaw", zzce.zzb()});
                case 4:
                    return zzax;
                case 5:
                    zzjs<zzg> zzjsVar = zzay;
                    zzjs<zzg> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzg.class) {
                            try {
                                zzjs<zzg> zzjsVar3 = zzay;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzax);
                                    zzay = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m10156a(int i, zzc zzcVar) {
            zzcVar.getClass();
            m10159X();
            this.zzf.set(i, zzcVar);
        }

        /* renamed from: a */
        public final void m10155a(int i, zzk zzkVar) {
            zzkVar.getClass();
            m10157Z();
            this.zzg.set(i, zzkVar);
        }

        /* renamed from: a */
        public final void m10154a(long j) {
            this.zzc |= 2;
            this.zzh = j;
        }

        /* renamed from: a */
        public final void m10153a(zzc zzcVar) {
            zzcVar.getClass();
            m10159X();
            this.zzf.add(zzcVar);
        }

        /* renamed from: a */
        public final void m10142a(zzk zzkVar) {
            zzkVar.getClass();
            m10157Z();
            this.zzg.add(zzkVar);
        }

        /* renamed from: a */
        public final void m10141a(Iterable<? extends zzc> iterable) {
            m10159X();
            zzgg.m9795a(iterable, this.zzf);
        }

        /* renamed from: a */
        public final void m10140a(String str) {
            str.getClass();
            this.zzc |= 64;
            this.zzm = str;
        }

        /* renamed from: a */
        public final void m10139a(boolean z) {
            this.zzc |= 131072;
            this.zzx = z;
        }

        /* renamed from: a0 */
        public final void m10138a0() {
            this.zzc &= -17;
            this.zzk = 0L;
        }

        /* renamed from: b */
        public final zzc m10136b(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: b */
        public final String m10137b() {
            return this.zzt;
        }

        /* renamed from: b */
        public final void m10135b(long j) {
            this.zzc |= 4;
            this.zzi = j;
        }

        /* renamed from: b */
        public final void m10128b(Iterable<? extends zza> iterable) {
            zzig<zza> zzigVar = this.zzae;
            if (!zzigVar.zza()) {
                this.zzae = zzhy.m9670a(zzigVar);
            }
            zzgg.m9795a(iterable, this.zzae);
        }

        /* renamed from: b */
        public final void m10127b(String str) {
            str.getClass();
            this.zzc |= 128;
            this.zzn = str;
        }

        /* renamed from: b */
        public final void m10126b(boolean z) {
            this.zzc |= 8388608;
            this.zzad = z;
        }

        /* renamed from: b0 */
        public final List<zzc> m10125b0() {
            return this.zzf;
        }

        /* renamed from: c */
        public final zzk m10124c(int i) {
            return this.zzg.get(i);
        }

        /* renamed from: c */
        public final void m10123c(long j) {
            this.zzc |= 8;
            this.zzj = j;
        }

        /* renamed from: c */
        public final void m10117c(Iterable<? extends Integer> iterable) {
            zzie zzieVar = this.zzar;
            if (!zzieVar.zza()) {
                int size = zzieVar.size();
                this.zzar = zzieVar.zzb(size == 0 ? 10 : size << 1);
            }
            zzgg.m9795a(iterable, this.zzar);
        }

        /* renamed from: c */
        public final void m10116c(String str) {
            str.getClass();
            this.zzc |= 256;
            this.zzo = str;
        }

        /* renamed from: c0 */
        public final void m10115c0() {
            this.zzc &= -33;
            this.zzl = 0L;
        }

        /* renamed from: d */
        public final void m10114d(int i) {
            this.zzc |= 1;
            this.zze = 1;
        }

        /* renamed from: d */
        public final void m10113d(long j) {
            this.zzc |= 16;
            this.zzk = j;
        }

        /* renamed from: d */
        public final void m10108d(String str) {
            str.getClass();
            this.zzc |= RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN;
            this.zzp = str;
        }

        /* renamed from: d0 */
        public final void m10107d0() {
            this.zzc &= -65537;
            this.zzw = zzax.zzw;
        }

        /* renamed from: e */
        public final void m10106e(int i) {
            m10159X();
            this.zzf.remove(i);
        }

        /* renamed from: e */
        public final void m10105e(long j) {
            this.zzc |= 32;
            this.zzl = j;
        }

        /* renamed from: e */
        public final void m10100e(String str) {
            str.getClass();
            this.zzc |= RecyclerView.AbstractC0495b0.FLAG_MOVED;
            this.zzr = str;
        }

        /* renamed from: e0 */
        public final void m10099e0() {
            this.zzc &= -131073;
            this.zzx = false;
        }

        /* renamed from: f */
        public final String m10098f() {
            return this.zzs;
        }

        /* renamed from: f */
        public final void m10097f(int i) {
            m10157Z();
            this.zzg.remove(i);
        }

        /* renamed from: f */
        public final void m10096f(long j) {
            this.zzc |= 16384;
            this.zzu = j;
        }

        /* renamed from: f */
        public final void m10091f(String str) {
            str.getClass();
            this.zzc |= 4096;
            this.zzs = str;
        }

        /* renamed from: f0 */
        public final void m10090f0() {
            this.zzc &= -262145;
            this.zzy = zzax.zzy;
        }

        /* renamed from: g */
        public final void m10089g(int i) {
            this.zzc |= 1024;
            this.zzq = i;
        }

        /* renamed from: g */
        public final void m10088g(long j) {
            this.zzc |= RegularImmutableMap.SHORT_MAX_SIZE;
            this.zzv = j;
        }

        /* renamed from: g */
        public final void m10083g(String str) {
            str.getClass();
            this.zzc |= 8192;
            this.zzt = str;
        }

        /* renamed from: g0 */
        public final void m10082g0() {
            this.zzc &= -2097153;
            this.zzab = zzax.zzab;
        }

        /* renamed from: h */
        public final void m10081h(int i) {
            this.zzc |= 1048576;
            this.zzaa = i;
        }

        /* renamed from: h */
        public final void m10080h(long j) {
            this.zzc |= 524288;
            this.zzz = j;
        }

        /* renamed from: h */
        public final void m10076h(String str) {
            str.getClass();
            this.zzc |= MapMakerInternalMap.MAX_SEGMENTS;
            this.zzw = str;
        }

        /* renamed from: h0 */
        public final void m10075h0() {
            this.zzae = zzhy.m9659o();
        }

        /* renamed from: i */
        public final void m10074i(int i) {
            this.zzc |= 33554432;
            this.zzag = i;
        }

        /* renamed from: i */
        public final void m10073i(long j) {
            this.zzc |= 536870912;
            this.zzak = j;
        }

        /* renamed from: i */
        public final void m10069i(String str) {
            str.getClass();
            this.zzc |= 262144;
            this.zzy = str;
        }

        /* renamed from: i0 */
        public final void m10068i0() {
            this.zzc &= -268435457;
            this.zzaj = zzax.zzaj;
        }

        /* renamed from: j */
        public final void m10067j(int i) {
            this.zzd |= 2;
            this.zzao = i;
        }

        /* renamed from: j */
        public final void m10066j(long j) {
            this.zzc |= 1073741824;
            this.zzal = j;
        }

        /* renamed from: j */
        public final void m10062j(String str) {
            str.getClass();
            this.zzc |= 2097152;
            this.zzab = str;
        }

        /* renamed from: j0 */
        public final void m10061j0() {
            this.zzc &= MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.zzam = zzax.zzam;
        }

        /* renamed from: k */
        public final void m10060k(long j) {
            this.zzd |= 16;
            this.zzas = j;
        }

        /* renamed from: k */
        public final void m10057k(String str) {
            str.getClass();
            this.zzc |= 4194304;
            this.zzac = str;
        }

        /* renamed from: k0 */
        public final int m10056k0() {
            return this.zzf.size();
        }

        /* renamed from: l */
        public final void m10055l(long j) {
            this.zzd |= 32;
            this.zzat = j;
        }

        /* renamed from: l */
        public final void m10052l(String str) {
            str.getClass();
            this.zzc |= 16777216;
            this.zzaf = str;
        }

        /* renamed from: l0 */
        public final List<zzk> m10051l0() {
            return this.zzg;
        }

        /* renamed from: m */
        public final void m10049m(String str) {
            str.getClass();
            this.zzc |= 268435456;
            this.zzaj = str;
        }

        /* renamed from: m0 */
        public final int m10048m0() {
            return this.zzg.size();
        }

        /* renamed from: n */
        public final void m10046n(String str) {
            str.getClass();
            this.zzc |= Integer.MIN_VALUE;
            this.zzam = str;
        }

        /* renamed from: n0 */
        public final boolean m10045n0() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: o */
        public final void m10043o(String str) {
            str.getClass();
            this.zzd |= 4;
            this.zzap = str;
        }

        /* renamed from: o0 */
        public final long m10042o0() {
            return this.zzh;
        }

        /* renamed from: p */
        public final long m10041p() {
            return this.zzu;
        }

        /* renamed from: p */
        public final void m10039p(String str) {
            str.getClass();
            this.zzd |= 64;
            this.zzau = str;
        }

        /* renamed from: p0 */
        public final boolean m10038p0() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: q */
        public final void m10035q(String str) {
            str.getClass();
            this.zzd |= 128;
            this.zzav = str;
        }

        /* renamed from: q */
        public final boolean m10037q() {
            return (this.zzc & RegularImmutableMap.SHORT_MAX_SIZE) != 0;
        }

        /* renamed from: q0 */
        public final long m10034q0() {
            return this.zzi;
        }

        /* renamed from: r */
        public final long m10033r() {
            return this.zzv;
        }

        /* renamed from: r0 */
        public final boolean m10032r0() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: s */
        public final String m10031s() {
            return this.zzw;
        }

        /* renamed from: s0 */
        public final long m10030s0() {
            return this.zzj;
        }

        /* renamed from: t */
        public final boolean m10029t() {
            return (this.zzc & 131072) != 0;
        }

        /* renamed from: t0 */
        public final boolean m10028t0() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: u */
        public final boolean m10027u() {
            return this.zzx;
        }

        /* renamed from: u0 */
        public final long m10026u0() {
            return this.zzk;
        }

        /* renamed from: v */
        public final String m10025v() {
            return this.zzy;
        }

        /* renamed from: v0 */
        public final boolean m10024v0() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: w */
        public final boolean m10023w() {
            return (this.zzc & 524288) != 0;
        }

        /* renamed from: w0 */
        public final long m10022w0() {
            return this.zzl;
        }

        /* renamed from: x */
        public final long m10021x() {
            return this.zzz;
        }

        /* renamed from: x0 */
        public final String m10020x0() {
            return this.zzm;
        }

        /* renamed from: y */
        public final boolean m10019y() {
            return (this.zzc & 1048576) != 0;
        }

        /* renamed from: y0 */
        public final String m10018y0() {
            return this.zzn;
        }

        /* renamed from: z */
        public final int m10017z() {
            return this.zzaa;
        }

        /* renamed from: z0 */
        public final String m10016z0() {
            return this.zzo;
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzh.class */
    public static final class zzh extends zzhy<zzh, zza> implements zzjl {
        public static final zzh zzf;
        public static volatile zzjs<zzh> zzg;
        public int zzc;
        public int zzd = 1;
        public zzig<zzd> zze = zzhy.m9659o();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzh$zza.class */
        public static final class zza extends zzhy.zzb<zzh, zza> implements zzjl {
            public zza() {
                super(zzh.zzf);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzh$zzb.class */
        public enum zzb implements zzid {
            RADS(1),
            PROVISIONING(2);
            
            public static final zzic<zzb> zzc = new C4535l0();
            public final int zzd;

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

            public static zzif zzb() {
                return C4542m0.f16816a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.measurement.zzid
            public final int zza() {
                return this.zzd;
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzf = zzhVar;
            zzhy.m9666a(zzh.class, zzhVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zzc", "zzd", zzb.zzb(), "zze", zzd.class});
                case 4:
                    return zzf;
                case 5:
                    zzjs<zzh> zzjsVar = zzg;
                    zzjs<zzh> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzh.class) {
                            try {
                                zzjs<zzh> zzjsVar3 = zzg;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzf);
                                    zzg = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
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
    public static final class zzi extends zzhy<zzi, zza> implements zzjl {
        public static final zzi zzg;
        public static volatile zzjs<zzi> zzh;
        public zzih zzc = zzhy.m9660n();
        public zzih zzd = zzhy.m9660n();
        public zzig<zzb> zze = zzhy.m9659o();
        public zzig<zzj> zzf = zzhy.m9659o();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzi$zza.class */
        public static final class zza extends zzhy.zzb<zzi, zza> implements zzjl {
            public zza() {
                super(zzi.zzg);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m9919a(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzi) this.f29500b).m9934d(i);
                return this;
            }

            /* renamed from: a */
            public final zza m9918a(Iterable<? extends Long> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzi) this.f29500b).m9943a(iterable);
                return this;
            }

            /* renamed from: b */
            public final zza m9917b(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzi) this.f29500b).m9931e(i);
                return this;
            }

            /* renamed from: b */
            public final zza m9916b(Iterable<? extends Long> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzi) this.f29500b).m9938b(iterable);
                return this;
            }

            /* renamed from: c */
            public final zza m9915c(Iterable<? extends zzb> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzi) this.f29500b).m9935c(iterable);
                return this;
            }

            /* renamed from: d */
            public final zza m9914d(Iterable<? extends zzj> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzi) this.f29500b).m9932d(iterable);
                return this;
            }

            /* renamed from: o */
            public final zza m9913o() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzi) this.f29500b).m9922x();
                return this;
            }

            public final zza zza() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzi) this.f29500b).m9923w();
                return this;
            }
        }

        static {
            zzi zziVar = new zzi();
            zzg = zziVar;
            zzhy.m9666a(zzi.class, zziVar);
        }

        /* renamed from: A */
        public static zza m9949A() {
            return zzg.m9663k();
        }

        /* renamed from: B */
        public static zzi m9948B() {
            return zzg;
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzg, "\u0001\u0004����\u0001\u0004\u0004��\u0004��\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzc", "zzd", "zze", zzb.class, "zzf", zzj.class});
                case 4:
                    return zzg;
                case 5:
                    zzjs<zzi> zzjsVar = zzh;
                    zzjs<zzi> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzi.class) {
                            try {
                                zzjs<zzi> zzjsVar3 = zzh;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzg);
                                    zzh = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m9943a(Iterable<? extends Long> iterable) {
            zzih zzihVar = this.zzc;
            if (!zzihVar.zza()) {
                this.zzc = zzhy.m9669a(zzihVar);
            }
            zzgg.m9795a(iterable, this.zzc);
        }

        /* renamed from: b */
        public final zzb m9942b(int i) {
            return this.zze.get(i);
        }

        /* renamed from: b */
        public final void m9938b(Iterable<? extends Long> iterable) {
            zzih zzihVar = this.zzd;
            if (!zzihVar.zza()) {
                this.zzd = zzhy.m9669a(zzihVar);
            }
            zzgg.m9795a(iterable, this.zzd);
        }

        /* renamed from: c */
        public final zzj m9937c(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: c */
        public final void m9935c(Iterable<? extends zzb> iterable) {
            m9921y();
            zzgg.m9795a(iterable, this.zze);
        }

        /* renamed from: d */
        public final void m9934d(int i) {
            m9921y();
            this.zze.remove(i);
        }

        /* renamed from: d */
        public final void m9932d(Iterable<? extends zzj> iterable) {
            m9920z();
            zzgg.m9795a(iterable, this.zzf);
        }

        /* renamed from: e */
        public final void m9931e(int i) {
            m9920z();
            this.zzf.remove(i);
        }

        /* renamed from: p */
        public final int m9930p() {
            return this.zzc.size();
        }

        /* renamed from: q */
        public final List<Long> m9929q() {
            return this.zzd;
        }

        /* renamed from: r */
        public final int m9928r() {
            return this.zzd.size();
        }

        /* renamed from: s */
        public final List<zzb> m9927s() {
            return this.zze;
        }

        /* renamed from: t */
        public final int m9926t() {
            return this.zze.size();
        }

        /* renamed from: u */
        public final List<zzj> m9925u() {
            return this.zzf;
        }

        /* renamed from: v */
        public final int m9924v() {
            return this.zzf.size();
        }

        /* renamed from: w */
        public final void m9923w() {
            this.zzc = zzhy.m9660n();
        }

        /* renamed from: x */
        public final void m9922x() {
            this.zzd = zzhy.m9660n();
        }

        /* renamed from: y */
        public final void m9921y() {
            zzig<zzb> zzigVar = this.zze;
            if (!zzigVar.zza()) {
                this.zze = zzhy.m9670a(zzigVar);
            }
        }

        /* renamed from: z */
        public final void m9920z() {
            zzig<zzj> zzigVar = this.zzf;
            if (!zzigVar.zza()) {
                this.zzf = zzhy.m9670a(zzigVar);
            }
        }

        public final List<Long> zza() {
            return this.zzc;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzj.class */
    public static final class zzj extends zzhy<zzj, zza> implements zzjl {
        public static final zzj zzf;
        public static volatile zzjs<zzj> zzg;
        public int zzc;
        public int zzd;
        public zzih zze = zzhy.m9660n();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzj$zza.class */
        public static final class zza extends zzhy.zzb<zzj, zza> implements zzjl {
            public zza() {
                super(zzj.zzf);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m9902a(int i) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzj) this.f29500b).m9908c(i);
                return this;
            }

            /* renamed from: a */
            public final zza m9901a(Iterable<? extends Long> iterable) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzj) this.f29500b).m9910a(iterable);
                return this;
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzf = zzjVar;
            zzhy.m9666a(zzj.class, zzjVar);
        }

        /* renamed from: s */
        public static zza m9904s() {
            return zzf.m9663k();
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001င��\u0002\u0014", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzjs<zzj> zzjsVar = zzg;
                    zzjs<zzj> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzj.class) {
                            try {
                                zzjs<zzj> zzjsVar3 = zzg;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzf);
                                    zzg = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m9910a(Iterable<? extends Long> iterable) {
            zzih zzihVar = this.zze;
            if (!zzihVar.zza()) {
                this.zze = zzhy.m9669a(zzihVar);
            }
            zzgg.m9795a(iterable, this.zze);
        }

        /* renamed from: b */
        public final long m9909b(int i) {
            return this.zze.zzb(i);
        }

        /* renamed from: c */
        public final void m9908c(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* renamed from: p */
        public final int m9907p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final List<Long> m9906q() {
            return this.zze;
        }

        /* renamed from: r */
        public final int m9905r() {
            return this.zze.size();
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzk.class */
    public static final class zzk extends zzhy<zzk, zza> implements zzjl {
        public static final zzk zzj;
        public static volatile zzjs<zzk> zzk;
        public int zzc;
        public long zzd;
        public String zze = "";
        public String zzf = "";
        public long zzg;
        public float zzh;
        public double zzi;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcd$zzk$zza.class */
        public static final class zza extends zzhy.zzb<zzk, zza> implements zzjl {
            public zza() {
                super(zzk.zzj);
            }

            public /* synthetic */ zza(C4510i0 i0Var) {
                this();
            }

            /* renamed from: a */
            public final zza m9874a(double d) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzk) this.f29500b).m9898a(d);
                return this;
            }

            /* renamed from: a */
            public final zza m9873a(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzk) this.f29500b).m9897a(j);
                return this;
            }

            @Override // com.google.android.gms.internal.measurement.zzgi
            /* renamed from: a */
            public final zza mo9794a(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzk) this.f29500b).m9892a(str);
                return this;
            }

            /* renamed from: b */
            public final zza m9872b(long j) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzk) this.f29500b).m9891b(j);
                return this;
            }

            /* renamed from: b */
            public final zza m9871b(String str) {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzk) this.f29500b).m9887b(str);
                return this;
            }

            /* renamed from: o */
            public final zza m9870o() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzk) this.f29500b).m9876y();
                return this;
            }

            /* renamed from: p */
            public final zza m9869p() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzk) this.f29500b).m9875z();
                return this;
            }

            public final zza zza() {
                if (this.f29501c) {
                    m9646l();
                    this.f29501c = false;
                }
                ((zzk) this.f29500b).m9877x();
                return this;
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzj = zzkVar;
            zzhy.m9666a(zzk.class, zzkVar);
        }

        /* renamed from: A */
        public static zza m9900A() {
            return zzj.m9663k();
        }

        @Override // com.google.android.gms.internal.measurement.zzhy
        /* renamed from: a */
        public final Object mo9672a(int i, Object obj, Object obj2) {
            switch (C4510i0.f16765a[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza(null);
                case 3:
                    return zzhy.m9668a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzjs<zzk> zzjsVar = zzk;
                    zzjs<zzk> zzjsVar2 = zzjsVar;
                    if (zzjsVar == null) {
                        synchronized (zzk.class) {
                            try {
                                zzjs<zzk> zzjsVar3 = zzk;
                                zzjsVar2 = zzjsVar3;
                                if (zzjsVar3 == null) {
                                    zzjsVar2 = new zzhy.zza<>(zzj);
                                    zzk = zzjsVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzjsVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: a */
        public final void m9898a(double d) {
            this.zzc |= 32;
            this.zzi = d;
        }

        /* renamed from: a */
        public final void m9897a(long j) {
            this.zzc |= 1;
            this.zzd = j;
        }

        /* renamed from: a */
        public final void m9892a(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: b */
        public final void m9891b(long j) {
            this.zzc |= 8;
            this.zzg = j;
        }

        /* renamed from: b */
        public final void m9887b(String str) {
            str.getClass();
            this.zzc |= 4;
            this.zzf = str;
        }

        /* renamed from: p */
        public final long m9885p() {
            return this.zzd;
        }

        /* renamed from: q */
        public final String m9884q() {
            return this.zze;
        }

        /* renamed from: r */
        public final boolean m9883r() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: s */
        public final String m9882s() {
            return this.zzf;
        }

        /* renamed from: t */
        public final boolean m9881t() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: u */
        public final long m9880u() {
            return this.zzg;
        }

        /* renamed from: v */
        public final boolean m9879v() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: w */
        public final double m9878w() {
            return this.zzi;
        }

        /* renamed from: x */
        public final void m9877x() {
            this.zzc &= -5;
            this.zzf = zzj.zzf;
        }

        /* renamed from: y */
        public final void m9876y() {
            this.zzc &= -9;
            this.zzg = 0L;
        }

        /* renamed from: z */
        public final void m9875z() {
            this.zzc &= -33;
            this.zzi = 0.0d;
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }
    }
}
