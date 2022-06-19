package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.ag */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag.class */
public final class C3748ag {

    /* renamed from: com.google.android.gms.internal.measurement.ag$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$a.class */
    public static final class C3749a extends AbstractC3900ed<C3749a, C3750a> implements AbstractC3945fp {
        private static final C3749a zzi;
        private static volatile AbstractC3953fx<C3749a> zzj;
        private int zzc;
        private int zzd;
        private AbstractC3914el<C3758e> zze = m5639aq();
        private AbstractC3914el<C3751b> zzf = m5639aq();
        private boolean zzg;
        private boolean zzh;

        /* renamed from: com.google.android.gms.internal.measurement.ag$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$a$a.class */
        public static final class C3750a extends AbstractC3900ed.C3902b<C3749a, C3750a> implements AbstractC3945fp {
            private C3750a() {
                super(C3749a.zzi);
            }

            /* synthetic */ C3750a(C3763ah c3763ah) {
                this();
            }

            /* renamed from: a */
            public final int m6488a() {
                return ((C3749a) this.f18089a).m6492d();
            }

            /* renamed from: a */
            public final C3750a m6486a(int i, C3751b.C3752a c3752a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3749a) this.f18089a).m6499a(i, (C3751b) ((AbstractC3900ed) c3752a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3750a m6485a(int i, C3758e.C3759a c3759a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3749a) this.f18089a).m6498a(i, (C3758e) ((AbstractC3900ed) c3759a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3758e m6487a(int i) {
                return ((C3749a) this.f18089a).m6500a(i);
            }

            /* renamed from: b */
            public final int m6484b() {
                return ((C3749a) this.f18089a).m6490f();
            }

            /* renamed from: b */
            public final C3751b m6483b(int i) {
                return ((C3749a) this.f18089a).m6494b(i);
            }
        }

        static {
            C3749a c3749a = new C3749a();
            zzi = c3749a;
            AbstractC3900ed.m5646a(C3749a.class, c3749a);
        }

        private C3749a() {
        }

        /* renamed from: a */
        public final void m6499a(int i, C3751b c3751b) {
            c3751b.getClass();
            AbstractC3914el<C3751b> abstractC3914el = this.zzf;
            if (!abstractC3914el.mo5588a()) {
                this.zzf = AbstractC3900ed.m5650a(abstractC3914el);
            }
            this.zzf.set(i, c3751b);
        }

        /* renamed from: a */
        public final void m6498a(int i, C3758e c3758e) {
            c3758e.getClass();
            AbstractC3914el<C3758e> abstractC3914el = this.zze;
            if (!abstractC3914el.mo5588a()) {
                this.zze = AbstractC3900ed.m5650a(abstractC3914el);
            }
            this.zze.set(i, c3758e);
        }

        /* renamed from: a */
        public final C3758e m6500a(int i) {
            return this.zze.get(i);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3749a> abstractC3953fx;
            switch (C3763ah.f17832a[i - 1]) {
                case 1:
                    obj3 = new C3749a();
                    break;
                case 2:
                    obj3 = new C3750a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzc", "zzd", "zze", C3758e.class, "zzf", C3751b.class, "zzg", "zzh"});
                    break;
                case 4:
                    obj3 = zzi;
                    break;
                case 5:
                    Object obj4 = zzj;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3749a.class) {
                            try {
                                AbstractC3953fx<C3749a> abstractC3953fx2 = zzj;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzi);
                                    zzj = abstractC3953fx;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = abstractC3953fx;
                        break;
                    }
                    break;
                case 6:
                    obj3 = (byte) 1;
                    break;
                case 7:
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }

        /* renamed from: a */
        public final boolean m6501a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final int m6495b() {
            return this.zzd;
        }

        /* renamed from: b */
        public final C3751b m6494b(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: c */
        public final List<C3758e> m6493c() {
            return this.zze;
        }

        /* renamed from: d */
        public final int m6492d() {
            return this.zze.size();
        }

        /* renamed from: e */
        public final List<C3751b> m6491e() {
            return this.zzf;
        }

        /* renamed from: f */
        public final int m6490f() {
            return this.zzf.size();
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ag$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$b.class */
    public static final class C3751b extends AbstractC3900ed<C3751b, C3752a> implements AbstractC3945fp {
        private static final C3751b zzl;
        private static volatile AbstractC3953fx<C3751b> zzm;
        private int zzc;
        private int zzd;
        private String zze = "";
        private AbstractC3914el<C3753c> zzf = m5639aq();
        private boolean zzg;
        private C3755d zzh;
        private boolean zzi;
        private boolean zzj;
        private boolean zzk;

        /* renamed from: com.google.android.gms.internal.measurement.ag$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$b$a.class */
        public static final class C3752a extends AbstractC3900ed.C3902b<C3751b, C3752a> implements AbstractC3945fp {
            private C3752a() {
                super(C3751b.zzl);
            }

            /* synthetic */ C3752a(C3763ah c3763ah) {
                this();
            }

            /* renamed from: a */
            public final C3752a m6462a(int i, C3753c c3753c) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3751b) this.f18089a).m6480a(i, c3753c);
                return this;
            }

            /* renamed from: a */
            public final C3752a m6461a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3751b) this.f18089a).m6477a(str);
                return this;
            }

            /* renamed from: a */
            public final C3753c m6463a(int i) {
                return ((C3751b) this.f18089a).m6481a(i);
            }

            /* renamed from: a */
            public final String m6464a() {
                return ((C3751b) this.f18089a).m6475c();
            }

            /* renamed from: b */
            public final int m6460b() {
                return ((C3751b) this.f18089a).m6473e();
            }
        }

        static {
            C3751b c3751b = new C3751b();
            zzl = c3751b;
            AbstractC3900ed.m5646a(C3751b.class, c3751b);
        }

        private C3751b() {
        }

        /* renamed from: a */
        public final void m6480a(int i, C3753c c3753c) {
            c3753c.getClass();
            AbstractC3914el<C3753c> abstractC3914el = this.zzf;
            if (!abstractC3914el.mo5588a()) {
                this.zzf = AbstractC3900ed.m5650a(abstractC3914el);
            }
            this.zzf.set(i, c3753c);
        }

        /* renamed from: a */
        public final void m6477a(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: l */
        public static C3752a m6466l() {
            return zzl.m5643ak();
        }

        /* renamed from: a */
        public final C3753c m6481a(int i) {
            return this.zzf.get(i);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3751b> abstractC3953fx;
            switch (C3763ah.f17832a[i - 1]) {
                case 1:
                    obj3 = new C3751b();
                    break;
                case 2:
                    obj3 = new C3752a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzl, "\u0001\b��\u0001\u0001\b\b��\u0001��\u0001င��\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", C3753c.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
                    break;
                case 4:
                    obj3 = zzl;
                    break;
                case 5:
                    Object obj4 = zzm;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3751b.class) {
                            try {
                                AbstractC3953fx<C3751b> abstractC3953fx2 = zzm;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzl);
                                    zzm = abstractC3953fx;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = abstractC3953fx;
                        break;
                    }
                    break;
                case 6:
                    obj3 = (byte) 1;
                    break;
                case 7:
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }

        /* renamed from: a */
        public final boolean m6482a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final int m6476b() {
            return this.zzd;
        }

        /* renamed from: c */
        public final String m6475c() {
            return this.zze;
        }

        /* renamed from: d */
        public final List<C3753c> m6474d() {
            return this.zzf;
        }

        /* renamed from: e */
        public final int m6473e() {
            return this.zzf.size();
        }

        /* renamed from: f */
        public final boolean m6472f() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: g */
        public final C3755d m6471g() {
            return this.zzh == null ? C3755d.m6436k() : this.zzh;
        }

        /* renamed from: h */
        public final boolean m6470h() {
            return this.zzi;
        }

        /* renamed from: i */
        public final boolean m6469i() {
            return this.zzj;
        }

        /* renamed from: j */
        public final boolean m6468j() {
            return (this.zzc & 64) != 0;
        }

        /* renamed from: k */
        public final boolean m6467k() {
            return this.zzk;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ag$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$c.class */
    public static final class C3753c extends AbstractC3900ed<C3753c, C3754a> implements AbstractC3945fp {
        private static final C3753c zzh;
        private static volatile AbstractC3953fx<C3753c> zzi;
        private int zzc;
        private C3760f zzd;
        private C3755d zze;
        private boolean zzf;
        private String zzg = "";

        /* renamed from: com.google.android.gms.internal.measurement.ag$c$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$c$a.class */
        public static final class C3754a extends AbstractC3900ed.C3902b<C3753c, C3754a> implements AbstractC3945fp {
            private C3754a() {
                super(C3753c.zzh);
            }

            /* synthetic */ C3754a(C3763ah c3763ah) {
                this();
            }

            /* renamed from: a */
            public final C3754a m6447a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3753c) this.f18089a).m6457a(str);
                return this;
            }
        }

        static {
            C3753c c3753c = new C3753c();
            zzh = c3753c;
            AbstractC3900ed.m5646a(C3753c.class, c3753c);
        }

        private C3753c() {
        }

        /* renamed from: a */
        public final void m6457a(String str) {
            str.getClass();
            this.zzc |= 8;
            this.zzg = str;
        }

        /* renamed from: i */
        public static C3753c m6449i() {
            return zzh;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3753c> abstractC3953fx;
            switch (C3763ah.f17832a[i - 1]) {
                case 1:
                    obj3 = new C3753c();
                    break;
                case 2:
                    obj3 = new C3754a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                    break;
                case 4:
                    obj3 = zzh;
                    break;
                case 5:
                    Object obj4 = zzi;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3753c.class) {
                            try {
                                AbstractC3953fx<C3753c> abstractC3953fx2 = zzi;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzh);
                                    zzi = abstractC3953fx;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = abstractC3953fx;
                        break;
                    }
                    break;
                case 6:
                    obj3 = (byte) 1;
                    break;
                case 7:
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }

        /* renamed from: a */
        public final boolean m6459a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final C3760f m6456b() {
            return this.zzd == null ? C3760f.m6411i() : this.zzd;
        }

        /* renamed from: c */
        public final boolean m6455c() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: d */
        public final C3755d m6454d() {
            return this.zze == null ? C3755d.m6436k() : this.zze;
        }

        /* renamed from: e */
        public final boolean m6453e() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: f */
        public final boolean m6452f() {
            return this.zzf;
        }

        /* renamed from: g */
        public final boolean m6451g() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: h */
        public final String m6450h() {
            return this.zzg;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ag$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$d.class */
    public static final class C3755d extends AbstractC3900ed<C3755d, C3757b> implements AbstractC3945fp {
        private static final C3755d zzi;
        private static volatile AbstractC3953fx<C3755d> zzj;
        private int zzc;
        private int zzd;
        private boolean zze;
        private String zzf = "";
        private String zzg = "";
        private String zzh = "";

        /* renamed from: com.google.android.gms.internal.measurement.ag$d$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$d$a.class */
        public enum EnumC3756a implements AbstractC3911ei {
            UNKNOWN_COMPARISON_TYPE(0),
            LESS_THAN(1),
            GREATER_THAN(2),
            EQUAL(3),
            BETWEEN(4);
            

            /* renamed from: f */
            private static final AbstractC3910eh<EnumC3756a> f17819f = new C3765aj();

            /* renamed from: g */
            private final int f17821g;

            EnumC3756a(int i) {
                this.f17821g = i;
            }

            /* renamed from: a */
            public static EnumC3756a m6434a(int i) {
                EnumC3756a enumC3756a;
                switch (i) {
                    case 0:
                        enumC3756a = UNKNOWN_COMPARISON_TYPE;
                        break;
                    case 1:
                        enumC3756a = LESS_THAN;
                        break;
                    case 2:
                        enumC3756a = GREATER_THAN;
                        break;
                    case 3:
                        enumC3756a = EQUAL;
                        break;
                    case 4:
                        enumC3756a = BETWEEN;
                        break;
                    default:
                        enumC3756a = null;
                        break;
                }
                return enumC3756a;
            }

            /* renamed from: b */
            public static AbstractC3913ek m6433b() {
                return C3764ai.f17833a;
            }

            @Override // com.google.android.gms.internal.measurement.AbstractC3911ei
            /* renamed from: a */
            public final int mo5600a() {
                return this.f17821g;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.f17821g);
                return sb.append(" name=").append(name()).append('>').toString();
            }
        }

        /* renamed from: com.google.android.gms.internal.measurement.ag$d$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$d$b.class */
        public static final class C3757b extends AbstractC3900ed.C3902b<C3755d, C3757b> implements AbstractC3945fp {
            private C3757b() {
                super(C3755d.zzi);
            }

            /* synthetic */ C3757b(C3763ah c3763ah) {
                this();
            }
        }

        static {
            C3755d c3755d = new C3755d();
            zzi = c3755d;
            AbstractC3900ed.m5646a(C3755d.class, c3755d);
        }

        private C3755d() {
        }

        /* renamed from: k */
        public static C3755d m6436k() {
            return zzi;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3755d> abstractC3953fx;
            switch (C3763ah.f17832a[i - 1]) {
                case 1:
                    obj3 = new C3755d();
                    break;
                case 2:
                    obj3 = new C3757b(null);
                    break;
                case 3:
                    obj3 = m5648a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzc", "zzd", EnumC3756a.m6433b(), "zze", "zzf", "zzg", "zzh"});
                    break;
                case 4:
                    obj3 = zzi;
                    break;
                case 5:
                    Object obj4 = zzj;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3755d.class) {
                            try {
                                AbstractC3953fx<C3755d> abstractC3953fx2 = zzj;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzi);
                                    zzj = abstractC3953fx;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = abstractC3953fx;
                        break;
                    }
                    break;
                case 6:
                    obj3 = (byte) 1;
                    break;
                case 7:
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }

        /* renamed from: a */
        public final boolean m6446a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final EnumC3756a m6445b() {
            EnumC3756a m6434a = EnumC3756a.m6434a(this.zzd);
            EnumC3756a enumC3756a = m6434a;
            if (m6434a == null) {
                enumC3756a = EnumC3756a.UNKNOWN_COMPARISON_TYPE;
            }
            return enumC3756a;
        }

        /* renamed from: c */
        public final boolean m6444c() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: d */
        public final boolean m6443d() {
            return this.zze;
        }

        /* renamed from: e */
        public final boolean m6442e() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: f */
        public final String m6441f() {
            return this.zzf;
        }

        /* renamed from: g */
        public final boolean m6440g() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: h */
        public final String m6439h() {
            return this.zzg;
        }

        /* renamed from: i */
        public final boolean m6438i() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: j */
        public final String m6437j() {
            return this.zzh;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ag$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$e.class */
    public static final class C3758e extends AbstractC3900ed<C3758e, C3759a> implements AbstractC3945fp {
        private static final C3758e zzj;
        private static volatile AbstractC3953fx<C3758e> zzk;
        private int zzc;
        private int zzd;
        private String zze = "";
        private C3753c zzf;
        private boolean zzg;
        private boolean zzh;
        private boolean zzi;

        /* renamed from: com.google.android.gms.internal.measurement.ag$e$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$e$a.class */
        public static final class C3759a extends AbstractC3900ed.C3902b<C3758e, C3759a> implements AbstractC3945fp {
            private C3759a() {
                super(C3758e.zzj);
            }

            /* synthetic */ C3759a(C3763ah c3763ah) {
                this();
            }

            /* renamed from: a */
            public final C3759a m6420a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3758e) this.f18089a).m6430a(str);
                return this;
            }
        }

        static {
            C3758e c3758e = new C3758e();
            zzj = c3758e;
            AbstractC3900ed.m5646a(C3758e.class, c3758e);
        }

        private C3758e() {
        }

        /* renamed from: a */
        public final void m6430a(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: i */
        public static C3759a m6422i() {
            return zzj.m5643ak();
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3758e> abstractC3953fx;
            switch (C3763ah.f17832a[i - 1]) {
                case 1:
                    obj3 = new C3758e();
                    break;
                case 2:
                    obj3 = new C3759a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001င��\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                    break;
                case 4:
                    obj3 = zzj;
                    break;
                case 5:
                    Object obj4 = zzk;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3758e.class) {
                            try {
                                AbstractC3953fx<C3758e> abstractC3953fx2 = zzk;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzj);
                                    zzk = abstractC3953fx;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = abstractC3953fx;
                        break;
                    }
                    break;
                case 6:
                    obj3 = (byte) 1;
                    break;
                case 7:
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }

        /* renamed from: a */
        public final boolean m6432a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final int m6429b() {
            return this.zzd;
        }

        /* renamed from: c */
        public final String m6428c() {
            return this.zze;
        }

        /* renamed from: d */
        public final C3753c m6427d() {
            return this.zzf == null ? C3753c.m6449i() : this.zzf;
        }

        /* renamed from: e */
        public final boolean m6426e() {
            return this.zzg;
        }

        /* renamed from: f */
        public final boolean m6425f() {
            return this.zzh;
        }

        /* renamed from: g */
        public final boolean m6424g() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: h */
        public final boolean m6423h() {
            return this.zzi;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ag$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$f.class */
    public static final class C3760f extends AbstractC3900ed<C3760f, C3761a> implements AbstractC3945fp {
        private static final C3760f zzh;
        private static volatile AbstractC3953fx<C3760f> zzi;
        private int zzc;
        private int zzd;
        private boolean zzf;
        private String zze = "";
        private AbstractC3914el<String> zzg = AbstractC3900ed.m5639aq();

        /* renamed from: com.google.android.gms.internal.measurement.ag$f$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$f$a.class */
        public static final class C3761a extends AbstractC3900ed.C3902b<C3760f, C3761a> implements AbstractC3945fp {
            private C3761a() {
                super(C3760f.zzh);
            }

            /* synthetic */ C3761a(C3763ah c3763ah) {
                this();
            }
        }

        /* renamed from: com.google.android.gms.internal.measurement.ag$f$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ag$f$b.class */
        public enum EnumC3762b implements AbstractC3911ei {
            UNKNOWN_MATCH_TYPE(0),
            REGEXP(1),
            BEGINS_WITH(2),
            ENDS_WITH(3),
            PARTIAL(4),
            EXACT(5),
            IN_LIST(6);
            

            /* renamed from: h */
            private static final AbstractC3910eh<EnumC3762b> f17829h = new C3766ak();

            /* renamed from: i */
            private final int f17831i;

            EnumC3762b(int i) {
                this.f17831i = i;
            }

            /* renamed from: a */
            public static EnumC3762b m6409a(int i) {
                EnumC3762b enumC3762b;
                switch (i) {
                    case 0:
                        enumC3762b = UNKNOWN_MATCH_TYPE;
                        break;
                    case 1:
                        enumC3762b = REGEXP;
                        break;
                    case 2:
                        enumC3762b = BEGINS_WITH;
                        break;
                    case 3:
                        enumC3762b = ENDS_WITH;
                        break;
                    case 4:
                        enumC3762b = PARTIAL;
                        break;
                    case 5:
                        enumC3762b = EXACT;
                        break;
                    case 6:
                        enumC3762b = IN_LIST;
                        break;
                    default:
                        enumC3762b = null;
                        break;
                }
                return enumC3762b;
            }

            /* renamed from: b */
            public static AbstractC3913ek m6408b() {
                return C3774am.f17834a;
            }

            @Override // com.google.android.gms.internal.measurement.AbstractC3911ei
            /* renamed from: a */
            public final int mo5600a() {
                return this.f17831i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.f17831i);
                return sb.append(" name=").append(name()).append('>').toString();
            }
        }

        static {
            C3760f c3760f = new C3760f();
            zzh = c3760f;
            AbstractC3900ed.m5646a(C3760f.class, c3760f);
        }

        private C3760f() {
        }

        /* renamed from: i */
        public static C3760f m6411i() {
            return zzh;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3760f> abstractC3953fx;
            switch (C3763ah.f17832a[i - 1]) {
                case 1:
                    obj3 = new C3760f();
                    break;
                case 2:
                    obj3 = new C3761a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zzc", "zzd", EnumC3762b.m6408b(), "zze", "zzf", "zzg"});
                    break;
                case 4:
                    obj3 = zzh;
                    break;
                case 5:
                    Object obj4 = zzi;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3760f.class) {
                            try {
                                AbstractC3953fx<C3760f> abstractC3953fx2 = zzi;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzh);
                                    zzi = abstractC3953fx;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = abstractC3953fx;
                        break;
                    }
                    break;
                case 6:
                    obj3 = (byte) 1;
                    break;
                case 7:
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }

        /* renamed from: a */
        public final boolean m6419a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final EnumC3762b m6418b() {
            EnumC3762b m6409a = EnumC3762b.m6409a(this.zzd);
            EnumC3762b enumC3762b = m6409a;
            if (m6409a == null) {
                enumC3762b = EnumC3762b.UNKNOWN_MATCH_TYPE;
            }
            return enumC3762b;
        }

        /* renamed from: c */
        public final boolean m6417c() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: d */
        public final String m6416d() {
            return this.zze;
        }

        /* renamed from: e */
        public final boolean m6415e() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: f */
        public final boolean m6414f() {
            return this.zzf;
        }

        /* renamed from: g */
        public final List<String> m6413g() {
            return this.zzg;
        }

        /* renamed from: h */
        public final int m6412h() {
            return this.zzg.size();
        }
    }
}
