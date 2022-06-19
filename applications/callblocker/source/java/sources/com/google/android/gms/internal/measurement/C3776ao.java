package com.google.android.gms.internal.measurement;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.measurement.AbstractC3900ed;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.ao */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao.class */
public final class C3776ao {

    /* renamed from: com.google.android.gms.internal.measurement.ao$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$a.class */
    public static final class C3777a extends AbstractC3900ed<C3777a, C3778a> implements AbstractC3945fp {
        private static final C3777a zzh;
        private static volatile AbstractC3953fx<C3777a> zzi;
        private int zzc;
        private int zzd;
        private C3794i zze;
        private C3794i zzf;
        private boolean zzg;

        /* renamed from: com.google.android.gms.internal.measurement.ao$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$a$a.class */
        public static final class C3778a extends AbstractC3900ed.C3902b<C3777a, C3778a> implements AbstractC3945fp {
            private C3778a() {
                super(C3777a.zzh);
            }

            /* synthetic */ C3778a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3778a m6352a(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3777a) this.f18089a).m6368a(i);
                return this;
            }

            /* renamed from: a */
            public final C3778a m6351a(C3794i.C3795a c3795a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3777a) this.f18089a).m6364a((C3794i) ((AbstractC3900ed) c3795a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3778a m6350a(C3794i c3794i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3777a) this.f18089a).m6360b(c3794i);
                return this;
            }

            /* renamed from: a */
            public final C3778a m6349a(boolean z) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3777a) this.f18089a).m6363a(z);
                return this;
            }
        }

        static {
            C3777a c3777a = new C3777a();
            zzh = c3777a;
            AbstractC3900ed.m5646a(C3777a.class, c3777a);
        }

        private C3777a() {
        }

        /* renamed from: a */
        public final void m6368a(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* renamed from: a */
        public final void m6364a(C3794i c3794i) {
            c3794i.getClass();
            this.zze = c3794i;
            this.zzc |= 2;
        }

        /* renamed from: a */
        public final void m6363a(boolean z) {
            this.zzc |= 8;
            this.zzg = z;
        }

        /* renamed from: b */
        public final void m6360b(C3794i c3794i) {
            c3794i.getClass();
            this.zzf = c3794i;
            this.zzc |= 4;
        }

        /* renamed from: h */
        public static C3778a m6354h() {
            return zzh.m5643ak();
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3777a> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3777a();
                    break;
                case 2:
                    obj3 = new C3778a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                    break;
                case 4:
                    obj3 = zzh;
                    break;
                case 5:
                    Object obj4 = zzi;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3777a.class) {
                            try {
                                AbstractC3953fx<C3777a> abstractC3953fx2 = zzi;
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
        public final boolean m6369a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final int m6362b() {
            return this.zzd;
        }

        /* renamed from: c */
        public final C3794i m6359c() {
            return this.zze == null ? C3794i.m5967j() : this.zze;
        }

        /* renamed from: d */
        public final boolean m6358d() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: e */
        public final C3794i m6357e() {
            return this.zzf == null ? C3794i.m5967j() : this.zzf;
        }

        /* renamed from: f */
        public final boolean m6356f() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: g */
        public final boolean m6355g() {
            return this.zzg;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$b.class */
    public static final class C3779b extends AbstractC3900ed<C3779b, C3780a> implements AbstractC3945fp {
        private static final C3779b zzf;
        private static volatile AbstractC3953fx<C3779b> zzg;
        private int zzc;
        private int zzd;
        private long zze;

        /* renamed from: com.google.android.gms.internal.measurement.ao$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$b$a.class */
        public static final class C3780a extends AbstractC3900ed.C3902b<C3779b, C3780a> implements AbstractC3945fp {
            private C3780a() {
                super(C3779b.zzf);
            }

            /* synthetic */ C3780a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3780a m6338a(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3779b) this.f18089a).m6347a(i);
                return this;
            }

            /* renamed from: a */
            public final C3780a m6337a(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3779b) this.f18089a).m6346a(j);
                return this;
            }
        }

        static {
            C3779b c3779b = new C3779b();
            zzf = c3779b;
            AbstractC3900ed.m5646a(C3779b.class, c3779b);
        }

        private C3779b() {
        }

        /* renamed from: a */
        public final void m6347a(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* renamed from: a */
        public final void m6346a(long j) {
            this.zzc |= 2;
            this.zze = j;
        }

        /* renamed from: e */
        public static C3780a m6340e() {
            return zzf.m5643ak();
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3779b> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3779b();
                    break;
                case 2:
                    obj3 = new C3780a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
                    break;
                case 4:
                    obj3 = zzf;
                    break;
                case 5:
                    Object obj4 = zzg;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3779b.class) {
                            try {
                                AbstractC3953fx<C3779b> abstractC3953fx2 = zzg;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzf);
                                    zzg = abstractC3953fx;
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
        public final boolean m6348a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final int m6343b() {
            return this.zzd;
        }

        /* renamed from: c */
        public final boolean m6342c() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: d */
        public final long m6341d() {
            return this.zze;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$c.class */
    public static final class C3781c extends AbstractC3900ed<C3781c, C3782a> implements AbstractC3945fp {
        private static final C3781c zzi;
        private static volatile AbstractC3953fx<C3781c> zzj;
        private int zzc;
        private AbstractC3914el<C3785e> zzd = m5639aq();
        private String zze = "";
        private long zzf;
        private long zzg;
        private int zzh;

        /* renamed from: com.google.android.gms.internal.measurement.ao$c$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$c$a.class */
        public static final class C3782a extends AbstractC3900ed.C3902b<C3781c, C3782a> implements AbstractC3945fp {
            private C3782a() {
                super(C3781c.zzi);
            }

            /* synthetic */ C3782a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3782a m6305a(int i, C3785e.C3786a c3786a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6334a(i, (C3785e) ((AbstractC3900ed) c3786a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3782a m6304a(int i, C3785e c3785e) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6334a(i, c3785e);
                return this;
            }

            /* renamed from: a */
            public final C3782a m6303a(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6333a(j);
                return this;
            }

            /* renamed from: a */
            public final C3782a m6302a(C3785e.C3786a c3786a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6325a((C3785e) ((AbstractC3900ed) c3786a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3782a m6301a(C3785e c3785e) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6325a(c3785e);
                return this;
            }

            /* renamed from: a */
            public final C3782a m6300a(Iterable<? extends C3785e> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6324a(iterable);
                return this;
            }

            /* renamed from: a */
            public final C3782a m6299a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6323a(str);
                return this;
            }

            /* renamed from: a */
            public final C3785e m6306a(int i) {
                return ((C3781c) this.f18089a).m6335a(i);
            }

            /* renamed from: a */
            public final List<C3785e> m6307a() {
                return Collections.unmodifiableList(((C3781c) this.f18089a).m6336a());
            }

            /* renamed from: b */
            public final int m6298b() {
                return ((C3781c) this.f18089a).m6322b();
            }

            /* renamed from: b */
            public final C3782a m6297b(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6321b(i);
                return this;
            }

            /* renamed from: b */
            public final C3782a m6296b(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6320b(j);
                return this;
            }

            /* renamed from: c */
            public final C3782a m6295c() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3781c) this.f18089a).m6308m();
                return this;
            }

            /* renamed from: d */
            public final String m6294d() {
                return ((C3781c) this.f18089a).m6318c();
            }

            /* renamed from: e */
            public final boolean m6293e() {
                return ((C3781c) this.f18089a).m6317d();
            }

            /* renamed from: f */
            public final long m6292f() {
                return ((C3781c) this.f18089a).m6316e();
            }

            /* renamed from: g */
            public final long m6291g() {
                return ((C3781c) this.f18089a).m6314g();
            }
        }

        static {
            C3781c c3781c = new C3781c();
            zzi = c3781c;
            AbstractC3900ed.m5646a(C3781c.class, c3781c);
        }

        private C3781c() {
        }

        /* renamed from: a */
        public final void m6334a(int i, C3785e c3785e) {
            c3785e.getClass();
            m6309l();
            this.zzd.set(i, c3785e);
        }

        /* renamed from: a */
        public final void m6333a(long j) {
            this.zzc |= 2;
            this.zzf = j;
        }

        /* renamed from: a */
        public final void m6325a(C3785e c3785e) {
            c3785e.getClass();
            m6309l();
            this.zzd.add(c3785e);
        }

        /* renamed from: a */
        public final void m6324a(Iterable<? extends C3785e> iterable) {
            m6309l();
            AbstractC3850ck.m5840a(iterable, this.zzd);
        }

        /* renamed from: a */
        public final void m6323a(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zze = str;
        }

        /* renamed from: b */
        public final void m6321b(int i) {
            m6309l();
            this.zzd.remove(i);
        }

        /* renamed from: b */
        public final void m6320b(long j) {
            this.zzc |= 4;
            this.zzg = j;
        }

        /* renamed from: j */
        public static C3782a m6311j() {
            return zzi.m5643ak();
        }

        /* renamed from: l */
        private final void m6309l() {
            AbstractC3914el<C3785e> abstractC3914el = this.zzd;
            if (!abstractC3914el.mo5588a()) {
                this.zzd = AbstractC3900ed.m5650a(abstractC3914el);
            }
        }

        /* renamed from: m */
        public final void m6308m() {
            this.zzd = m5639aq();
        }

        /* renamed from: a */
        public final C3785e m6335a(int i) {
            return this.zzd.get(i);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3781c> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3781c();
                    break;
                case 2:
                    obj3 = new C3782a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzi, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\u001b\u0002ဈ��\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", C3785e.class, "zze", "zzf", "zzg", "zzh"});
                    break;
                case 4:
                    obj3 = zzi;
                    break;
                case 5:
                    Object obj4 = zzj;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3781c.class) {
                            try {
                                AbstractC3953fx<C3781c> abstractC3953fx2 = zzj;
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
        public final List<C3785e> m6336a() {
            return this.zzd;
        }

        /* renamed from: b */
        public final int m6322b() {
            return this.zzd.size();
        }

        /* renamed from: c */
        public final String m6318c() {
            return this.zze;
        }

        /* renamed from: d */
        public final boolean m6317d() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: e */
        public final long m6316e() {
            return this.zzf;
        }

        /* renamed from: f */
        public final boolean m6315f() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: g */
        public final long m6314g() {
            return this.zzg;
        }

        /* renamed from: h */
        public final boolean m6313h() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: i */
        public final int m6312i() {
            return this.zzh;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$d.class */
    public static final class C3783d extends AbstractC3900ed<C3783d, C3784a> implements AbstractC3945fp {
        private static final C3783d zzf;
        private static volatile AbstractC3953fx<C3783d> zzg;
        private int zzc;
        private String zzd = "";
        private long zze;

        /* renamed from: com.google.android.gms.internal.measurement.ao$d$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$d$a.class */
        public static final class C3784a extends AbstractC3900ed.C3902b<C3783d, C3784a> implements AbstractC3945fp {
            private C3784a() {
                super(C3783d.zzf);
            }

            /* synthetic */ C3784a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3784a m6284a(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3783d) this.f18089a).m6289a(j);
                return this;
            }

            /* renamed from: a */
            public final C3784a m6283a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3783d) this.f18089a).m6286a(str);
                return this;
            }
        }

        static {
            C3783d c3783d = new C3783d();
            zzf = c3783d;
            AbstractC3900ed.m5646a(C3783d.class, c3783d);
        }

        private C3783d() {
        }

        /* renamed from: a */
        public static C3784a m6290a() {
            return zzf.m5643ak();
        }

        /* renamed from: a */
        public final void m6289a(long j) {
            this.zzc |= 2;
            this.zze = j;
        }

        /* renamed from: a */
        public final void m6286a(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3783d> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3783d();
                    break;
                case 2:
                    obj3 = new C3784a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
                    break;
                case 4:
                    obj3 = zzf;
                    break;
                case 5:
                    Object obj4 = zzg;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3783d.class) {
                            try {
                                AbstractC3953fx<C3783d> abstractC3953fx2 = zzg;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzf);
                                    zzg = abstractC3953fx;
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
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$e.class */
    public static final class C3785e extends AbstractC3900ed<C3785e, C3786a> implements AbstractC3945fp {
        private static final C3785e zzj;
        private static volatile AbstractC3953fx<C3785e> zzk;
        private int zzc;
        private long zzf;
        private float zzg;
        private double zzh;
        private String zzd = "";
        private String zze = "";
        private AbstractC3914el<C3785e> zzi = m5639aq();

        /* renamed from: com.google.android.gms.internal.measurement.ao$e$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$e$a.class */
        public static final class C3786a extends AbstractC3900ed.C3902b<C3785e, C3786a> implements AbstractC3945fp {
            private C3786a() {
                super(C3785e.zzj);
            }

            /* synthetic */ C3786a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3786a m6249a() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6254m();
                return this;
            }

            /* renamed from: a */
            public final C3786a m6248a(double d) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6281a(d);
                return this;
            }

            /* renamed from: a */
            public final C3786a m6247a(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6280a(j);
                return this;
            }

            /* renamed from: a */
            public final C3786a m6246a(C3786a c3786a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6262e((C3785e) ((AbstractC3900ed) c3786a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3786a m6245a(Iterable<? extends C3785e> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6273a(iterable);
                return this;
            }

            /* renamed from: a */
            public final C3786a m6244a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6272a(str);
                return this;
            }

            /* renamed from: b */
            public final C3786a m6243b() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6253n();
                return this;
            }

            /* renamed from: b */
            public final C3786a m6242b(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6268b(str);
                return this;
            }

            /* renamed from: c */
            public final C3786a m6241c() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6252o();
                return this;
            }

            /* renamed from: d */
            public final int m6240d() {
                return ((C3785e) this.f18089a).m6257j();
            }

            /* renamed from: e */
            public final C3786a m6239e() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3785e) this.f18089a).m6250q();
                return this;
            }
        }

        static {
            C3785e c3785e = new C3785e();
            zzj = c3785e;
            AbstractC3900ed.m5646a(C3785e.class, c3785e);
        }

        private C3785e() {
        }

        /* renamed from: a */
        public final void m6281a(double d) {
            this.zzc |= 16;
            this.zzh = d;
        }

        /* renamed from: a */
        public final void m6280a(long j) {
            this.zzc |= 4;
            this.zzf = j;
        }

        /* renamed from: a */
        public final void m6273a(Iterable<? extends C3785e> iterable) {
            m6251p();
            AbstractC3850ck.m5840a(iterable, this.zzi);
        }

        /* renamed from: a */
        public final void m6272a(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        /* renamed from: b */
        public final void m6268b(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: e */
        public final void m6262e(C3785e c3785e) {
            c3785e.getClass();
            m6251p();
            this.zzi.add(c3785e);
        }

        /* renamed from: k */
        public static C3786a m6256k() {
            return zzj.m5643ak();
        }

        /* renamed from: m */
        public final void m6254m() {
            this.zzc &= -3;
            this.zze = zzj.zze;
        }

        /* renamed from: n */
        public final void m6253n() {
            this.zzc &= -5;
            this.zzf = 0L;
        }

        /* renamed from: o */
        public final void m6252o() {
            this.zzc &= -17;
            this.zzh = 0.0d;
        }

        /* renamed from: p */
        private final void m6251p() {
            AbstractC3914el<C3785e> abstractC3914el = this.zzi;
            if (!abstractC3914el.mo5588a()) {
                this.zzi = AbstractC3900ed.m5650a(abstractC3914el);
            }
        }

        /* renamed from: q */
        public final void m6250q() {
            this.zzi = m5639aq();
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3785e> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3785e();
                    break;
                case 2:
                    obj3 = new C3786a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဈ��\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", C3785e.class});
                    break;
                case 4:
                    obj3 = zzj;
                    break;
                case 5:
                    Object obj4 = zzk;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3785e.class) {
                            try {
                                AbstractC3953fx<C3785e> abstractC3953fx2 = zzk;
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
        public final boolean m6282a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final String m6271b() {
            return this.zzd;
        }

        /* renamed from: c */
        public final boolean m6267c() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: d */
        public final String m6265d() {
            return this.zze;
        }

        /* renamed from: e */
        public final boolean m6263e() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: f */
        public final long m6261f() {
            return this.zzf;
        }

        /* renamed from: g */
        public final boolean m6260g() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: h */
        public final double m6259h() {
            return this.zzh;
        }

        /* renamed from: i */
        public final List<C3785e> m6258i() {
            return this.zzi;
        }

        /* renamed from: j */
        public final int m6257j() {
            return this.zzi.size();
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$f.class */
    public static final class C3787f extends AbstractC3900ed<C3787f, C3788a> implements AbstractC3945fp {
        private static final C3787f zzd;
        private static volatile AbstractC3953fx<C3787f> zze;
        private AbstractC3914el<C3789g> zzc = m5639aq();

        /* renamed from: com.google.android.gms.internal.measurement.ao$f$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$f$a.class */
        public static final class C3788a extends AbstractC3900ed.C3902b<C3787f, C3788a> implements AbstractC3945fp {
            private C3788a() {
                super(C3787f.zzd);
            }

            /* synthetic */ C3788a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3788a m6231a(C3789g.C3790a c3790a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3787f) this.f18089a).m6235a((C3789g) ((AbstractC3900ed) c3790a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3789g m6232a(int i) {
                return ((C3787f) this.f18089a).m6237a(0);
            }
        }

        static {
            C3787f c3787f = new C3787f();
            zzd = c3787f;
            AbstractC3900ed.m5646a(C3787f.class, c3787f);
        }

        private C3787f() {
        }

        /* renamed from: a */
        public final void m6235a(C3789g c3789g) {
            c3789g.getClass();
            AbstractC3914el<C3789g> abstractC3914el = this.zzc;
            if (!abstractC3914el.mo5588a()) {
                this.zzc = AbstractC3900ed.m5650a(abstractC3914el);
            }
            this.zzc.add(c3789g);
        }

        /* renamed from: b */
        public static C3788a m6234b() {
            return zzd.m5643ak();
        }

        /* renamed from: a */
        public final C3789g m6237a(int i) {
            return this.zzc.get(0);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3787f> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3787f();
                    break;
                case 2:
                    obj3 = new C3788a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzc", C3789g.class});
                    break;
                case 4:
                    obj3 = zzd;
                    break;
                case 5:
                    Object obj4 = zze;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3787f.class) {
                            try {
                                AbstractC3953fx<C3787f> abstractC3953fx2 = zze;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzd);
                                    zze = abstractC3953fx;
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
        public final List<C3789g> m6238a() {
            return this.zzc;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$g.class */
    public static final class C3789g extends AbstractC3900ed<C3789g, C3790a> implements AbstractC3945fp {
        private static final C3789g zzav;
        private static volatile AbstractC3953fx<C3789g> zzaw;
        private int zzaa;
        private boolean zzad;
        private int zzag;
        private int zzah;
        private int zzai;
        private long zzak;
        private long zzal;
        private int zzao;
        private C3791h zzaq;
        private long zzas;
        private long zzat;
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
        private AbstractC3914el<C3781c> zzf = m5639aq();
        private AbstractC3914el<C3798k> zzg = m5639aq();
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
        private AbstractC3914el<C3777a> zzae = m5639aq();
        private String zzaf = "";
        private String zzaj = "";
        private String zzam = "";
        private String zzan = "";
        private String zzap = "";
        private AbstractC3912ej zzar = m5641ao();
        private String zzau = "";

        /* renamed from: com.google.android.gms.internal.measurement.ao$g$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$g$a.class */
        public static final class C3790a extends AbstractC3900ed.C3902b<C3789g, C3790a> implements AbstractC3945fp {
            private C3790a() {
                super(C3789g.zzav);
            }

            /* synthetic */ C3790a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3790a m6062a(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6145d(1);
                return this;
            }

            /* renamed from: a */
            public final C3790a m6061a(int i, C3781c.C3782a c3782a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6202a(i, (C3781c) ((AbstractC3900ed) c3782a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3790a m6060a(int i, C3798k c3798k) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6201a(i, c3798k);
                return this;
            }

            /* renamed from: a */
            public final C3790a m6059a(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6200a(j);
                return this;
            }

            /* renamed from: a */
            public final C3790a m6058a(C3781c.C3782a c3782a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6199a((C3781c) ((AbstractC3900ed) c3782a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3790a m6057a(C3791h.C3793b c3793b) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6187a((C3791h) ((AbstractC3900ed) c3793b.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3790a m6056a(C3798k.C3799a c3799a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6186a((C3798k) ((AbstractC3900ed) c3799a.mo5544u()));
                return this;
            }

            /* renamed from: a */
            public final C3790a m6055a(C3798k c3798k) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6186a(c3798k);
                return this;
            }

            /* renamed from: a */
            public final C3790a m6054a(Iterable<? extends C3781c> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6185a(iterable);
                return this;
            }

            /* renamed from: a */
            public final C3790a m6053a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6184a(str);
                return this;
            }

            /* renamed from: a */
            public final C3790a m6052a(boolean z) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6183a(z);
                return this;
            }

            /* renamed from: a */
            public final List<C3781c> m6063a() {
                return Collections.unmodifiableList(((C3789g) this.f18089a).m6155c());
            }

            /* renamed from: b */
            public final int m6051b() {
                return ((C3789g) this.f18089a).m6146d();
            }

            /* renamed from: b */
            public final C3781c m6050b(int i) {
                return ((C3789g) this.f18089a).m6203a(i);
            }

            /* renamed from: b */
            public final C3790a m6049b(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6165b(j);
                return this;
            }

            /* renamed from: b */
            public final C3790a m6048b(Iterable<? extends C3798k> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6158b(iterable);
                return this;
            }

            /* renamed from: b */
            public final C3790a m6047b(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6157b(str);
                return this;
            }

            /* renamed from: b */
            public final C3790a m6046b(boolean z) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6156b(z);
                return this;
            }

            /* renamed from: c */
            public final C3790a m6045c() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6172av();
                return this;
            }

            /* renamed from: c */
            public final C3790a m6044c(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6135e(i);
                return this;
            }

            /* renamed from: c */
            public final C3790a m6043c(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6154c(j);
                return this;
            }

            /* renamed from: c */
            public final C3790a m6042c(Iterable<? extends C3777a> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6148c(iterable);
                return this;
            }

            /* renamed from: c */
            public final C3790a m6041c(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6147c(str);
                return this;
            }

            /* renamed from: d */
            public final C3790a m6038d(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6144d(j);
                return this;
            }

            /* renamed from: d */
            public final C3790a m6037d(Iterable<? extends Integer> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6138d(iterable);
                return this;
            }

            /* renamed from: d */
            public final C3790a m6036d(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6137d(str);
                return this;
            }

            /* renamed from: d */
            public final C3798k m6039d(int i) {
                return ((C3789g) this.f18089a).m6166b(i);
            }

            /* renamed from: d */
            public final List<C3798k> m6040d() {
                return Collections.unmodifiableList(((C3789g) this.f18089a).m6136e());
            }

            /* renamed from: e */
            public final int m6035e() {
                return ((C3789g) this.f18089a).m6128f();
            }

            /* renamed from: e */
            public final C3790a m6034e(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6127f(i);
                return this;
            }

            /* renamed from: e */
            public final C3790a m6033e(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6134e(j);
                return this;
            }

            /* renamed from: e */
            public final C3790a m6032e(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6129e(str);
                return this;
            }

            /* renamed from: f */
            public final long m6031f() {
                return ((C3789g) this.f18089a).m6101j();
            }

            /* renamed from: f */
            public final C3790a m6030f(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6119g(i);
                return this;
            }

            /* renamed from: f */
            public final C3790a m6029f(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6126f(j);
                return this;
            }

            /* renamed from: f */
            public final C3790a m6028f(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6121f(str);
                return this;
            }

            /* renamed from: g */
            public final long m6027g() {
                return ((C3789g) this.f18089a).m6090l();
            }

            /* renamed from: g */
            public final C3790a m6026g(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6112h(i);
                return this;
            }

            /* renamed from: g */
            public final C3790a m6025g(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6118g(j);
                return this;
            }

            /* renamed from: g */
            public final C3790a m6024g(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6114g(str);
                return this;
            }

            /* renamed from: h */
            public final C3790a m6023h() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6170ax();
                return this;
            }

            /* renamed from: h */
            public final C3790a m6022h(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6106i(i);
                return this;
            }

            /* renamed from: h */
            public final C3790a m6021h(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6111h(j);
                return this;
            }

            /* renamed from: h */
            public final C3790a m6020h(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6108h(str);
                return this;
            }

            /* renamed from: i */
            public final C3790a m6019i() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6169ay();
                return this;
            }

            /* renamed from: i */
            public final C3790a m6018i(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6100j(i);
                return this;
            }

            /* renamed from: i */
            public final C3790a m6017i(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6105i(j);
                return this;
            }

            /* renamed from: i */
            public final C3790a m6016i(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6102i(str);
                return this;
            }

            /* renamed from: j */
            public final C3790a m6014j(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6099j(j);
                return this;
            }

            /* renamed from: j */
            public final C3790a m6013j(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6096j(str);
                return this;
            }

            /* renamed from: j */
            public final String m6015j() {
                return ((C3789g) this.f18089a).m6066x();
            }

            /* renamed from: k */
            public final C3790a m6012k() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6168az();
                return this;
            }

            /* renamed from: k */
            public final C3790a m6011k(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6094k(j);
                return this;
            }

            /* renamed from: k */
            public final C3790a m6010k(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6091k(str);
                return this;
            }

            /* renamed from: l */
            public final C3790a m6008l(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6089l(j);
                return this;
            }

            /* renamed from: l */
            public final C3790a m6007l(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6086l(str);
                return this;
            }

            /* renamed from: l */
            public final String m6009l() {
                return ((C3789g) this.f18089a).m6218M();
            }

            /* renamed from: m */
            public final C3790a m6006m() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6182aA();
                return this;
            }

            /* renamed from: m */
            public final C3790a m6005m(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6083m(str);
                return this;
            }

            /* renamed from: n */
            public final C3790a m6004n() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6181aB();
                return this;
            }

            /* renamed from: n */
            public final C3790a m6003n(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6080n(null);
                return this;
            }

            /* renamed from: o */
            public final C3790a m6001o(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6077o(str);
                return this;
            }

            /* renamed from: o */
            public final String m6002o() {
                return ((C3789g) this.f18089a).m6176ae();
            }

            /* renamed from: p */
            public final C3790a m6000p(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3789g) this.f18089a).m6074p(str);
                return this;
            }
        }

        static {
            C3789g c3789g = new C3789g();
            zzav = c3789g;
            AbstractC3900ed.m5646a(C3789g.class, c3789g);
        }

        private C3789g() {
        }

        /* renamed from: a */
        public final void m6202a(int i, C3781c c3781c) {
            c3781c.getClass();
            m6173au();
            this.zzf.set(i, c3781c);
        }

        /* renamed from: a */
        public final void m6201a(int i, C3798k c3798k) {
            c3798k.getClass();
            m6171aw();
            this.zzg.set(i, c3798k);
        }

        /* renamed from: a */
        public final void m6200a(long j) {
            this.zzc |= 2;
            this.zzh = j;
        }

        /* renamed from: a */
        public final void m6199a(C3781c c3781c) {
            c3781c.getClass();
            m6173au();
            this.zzf.add(c3781c);
        }

        /* renamed from: a */
        public final void m6187a(C3791h c3791h) {
            c3791h.getClass();
            this.zzaq = c3791h;
            this.zzd |= 8;
        }

        /* renamed from: a */
        public final void m6186a(C3798k c3798k) {
            c3798k.getClass();
            m6171aw();
            this.zzg.add(c3798k);
        }

        /* renamed from: a */
        public final void m6185a(Iterable<? extends C3781c> iterable) {
            m6173au();
            AbstractC3850ck.m5840a(iterable, this.zzf);
        }

        /* renamed from: a */
        public final void m6184a(String str) {
            str.getClass();
            this.zzc |= 64;
            this.zzm = str;
        }

        /* renamed from: a */
        public final void m6183a(boolean z) {
            this.zzc |= 131072;
            this.zzx = z;
        }

        /* renamed from: aA */
        public final void m6182aA() {
            this.zzae = m5639aq();
        }

        /* renamed from: aB */
        public final void m6181aB() {
            this.zzc &= Integer.MAX_VALUE;
            this.zzam = zzav.zzam;
        }

        /* renamed from: af */
        public static C3790a m6175af() {
            return zzav.m5643ak();
        }

        /* renamed from: au */
        private final void m6173au() {
            AbstractC3914el<C3781c> abstractC3914el = this.zzf;
            if (!abstractC3914el.mo5588a()) {
                this.zzf = AbstractC3900ed.m5650a(abstractC3914el);
            }
        }

        /* renamed from: av */
        public final void m6172av() {
            this.zzf = m5639aq();
        }

        /* renamed from: aw */
        private final void m6171aw() {
            AbstractC3914el<C3798k> abstractC3914el = this.zzg;
            if (!abstractC3914el.mo5588a()) {
                this.zzg = AbstractC3900ed.m5650a(abstractC3914el);
            }
        }

        /* renamed from: ax */
        public final void m6170ax() {
            this.zzc &= -17;
            this.zzk = 0L;
        }

        /* renamed from: ay */
        public final void m6169ay() {
            this.zzc &= -33;
            this.zzl = 0L;
        }

        /* renamed from: az */
        public final void m6168az() {
            this.zzc &= -2097153;
            this.zzab = zzav.zzab;
        }

        /* renamed from: b */
        public final void m6165b(long j) {
            this.zzc |= 4;
            this.zzi = j;
        }

        /* renamed from: b */
        public final void m6158b(Iterable<? extends C3798k> iterable) {
            m6171aw();
            AbstractC3850ck.m5840a(iterable, this.zzg);
        }

        /* renamed from: b */
        public final void m6157b(String str) {
            str.getClass();
            this.zzc |= 128;
            this.zzn = str;
        }

        /* renamed from: b */
        public final void m6156b(boolean z) {
            this.zzc |= 8388608;
            this.zzad = z;
        }

        /* renamed from: c */
        public final void m6154c(long j) {
            this.zzc |= 8;
            this.zzj = j;
        }

        /* renamed from: c */
        public final void m6148c(Iterable<? extends C3777a> iterable) {
            AbstractC3914el<C3777a> abstractC3914el = this.zzae;
            if (!abstractC3914el.mo5588a()) {
                this.zzae = AbstractC3900ed.m5650a(abstractC3914el);
            }
            AbstractC3850ck.m5840a(iterable, this.zzae);
        }

        /* renamed from: c */
        public final void m6147c(String str) {
            str.getClass();
            this.zzc |= 256;
            this.zzo = str;
        }

        /* renamed from: d */
        public final void m6145d(int i) {
            this.zzc |= 1;
            this.zze = i;
        }

        /* renamed from: d */
        public final void m6144d(long j) {
            this.zzc |= 16;
            this.zzk = j;
        }

        /* renamed from: d */
        public final void m6138d(Iterable<? extends Integer> iterable) {
            AbstractC3912ej abstractC3912ej = this.zzar;
            if (!abstractC3912ej.mo5588a()) {
                int size = abstractC3912ej.size();
                this.zzar = abstractC3912ej.mo5599b(size == 0 ? 10 : size << 1);
            }
            AbstractC3850ck.m5840a(iterable, this.zzar);
        }

        /* renamed from: d */
        public final void m6137d(String str) {
            str.getClass();
            this.zzc |= 512;
            this.zzp = str;
        }

        /* renamed from: e */
        public final void m6135e(int i) {
            m6173au();
            this.zzf.remove(i);
        }

        /* renamed from: e */
        public final void m6134e(long j) {
            this.zzc |= 32;
            this.zzl = j;
        }

        /* renamed from: e */
        public final void m6129e(String str) {
            str.getClass();
            this.zzc |= 2048;
            this.zzr = str;
        }

        /* renamed from: f */
        public final void m6127f(int i) {
            m6171aw();
            this.zzg.remove(i);
        }

        /* renamed from: f */
        public final void m6126f(long j) {
            this.zzc |= 16384;
            this.zzu = j;
        }

        /* renamed from: f */
        public final void m6121f(String str) {
            str.getClass();
            this.zzc |= 4096;
            this.zzs = str;
        }

        /* renamed from: g */
        public final void m6119g(int i) {
            this.zzc |= 1024;
            this.zzq = i;
        }

        /* renamed from: g */
        public final void m6118g(long j) {
            this.zzc |= 32768;
            this.zzv = j;
        }

        /* renamed from: g */
        public final void m6114g(String str) {
            str.getClass();
            this.zzc |= 8192;
            this.zzt = str;
        }

        /* renamed from: h */
        public final void m6112h(int i) {
            this.zzc |= 1048576;
            this.zzaa = i;
        }

        /* renamed from: h */
        public final void m6111h(long j) {
            this.zzc |= 524288;
            this.zzz = j;
        }

        /* renamed from: h */
        public final void m6108h(String str) {
            str.getClass();
            this.zzc |= 65536;
            this.zzw = str;
        }

        /* renamed from: i */
        public final void m6106i(int i) {
            this.zzc |= 33554432;
            this.zzag = i;
        }

        /* renamed from: i */
        public final void m6105i(long j) {
            this.zzc |= 536870912;
            this.zzak = j;
        }

        /* renamed from: i */
        public final void m6102i(String str) {
            str.getClass();
            this.zzc |= 262144;
            this.zzy = str;
        }

        /* renamed from: j */
        public final void m6100j(int i) {
            this.zzd |= 2;
            this.zzao = i;
        }

        /* renamed from: j */
        public final void m6099j(long j) {
            this.zzc |= 1073741824;
            this.zzal = j;
        }

        /* renamed from: j */
        public final void m6096j(String str) {
            str.getClass();
            this.zzc |= 2097152;
            this.zzab = str;
        }

        /* renamed from: k */
        public final void m6094k(long j) {
            this.zzd |= 16;
            this.zzas = j;
        }

        /* renamed from: k */
        public final void m6091k(String str) {
            str.getClass();
            this.zzc |= 4194304;
            this.zzac = str;
        }

        /* renamed from: l */
        public final void m6089l(long j) {
            this.zzd |= 32;
            this.zzat = j;
        }

        /* renamed from: l */
        public final void m6086l(String str) {
            str.getClass();
            this.zzc |= 16777216;
            this.zzaf = str;
        }

        /* renamed from: m */
        public final void m6083m(String str) {
            str.getClass();
            this.zzc |= 268435456;
            this.zzaj = str;
        }

        /* renamed from: n */
        public final void m6080n(String str) {
            str.getClass();
            this.zzc |= RecyclerView.UNDEFINED_DURATION;
            this.zzam = str;
        }

        /* renamed from: o */
        public final void m6077o(String str) {
            str.getClass();
            this.zzd |= 4;
            this.zzap = str;
        }

        /* renamed from: p */
        public final void m6074p(String str) {
            str.getClass();
            this.zzd |= 64;
            this.zzau = str;
        }

        /* renamed from: A */
        public final long m6230A() {
            return this.zzu;
        }

        /* renamed from: B */
        public final boolean m6229B() {
            return (this.zzc & 32768) != 0;
        }

        /* renamed from: C */
        public final long m6228C() {
            return this.zzv;
        }

        /* renamed from: D */
        public final String m6227D() {
            return this.zzw;
        }

        /* renamed from: E */
        public final boolean m6226E() {
            return (this.zzc & 131072) != 0;
        }

        /* renamed from: F */
        public final boolean m6225F() {
            return this.zzx;
        }

        /* renamed from: G */
        public final String m6224G() {
            return this.zzy;
        }

        /* renamed from: H */
        public final boolean m6223H() {
            return (this.zzc & 524288) != 0;
        }

        /* renamed from: I */
        public final long m6222I() {
            return this.zzz;
        }

        /* renamed from: J */
        public final boolean m6221J() {
            return (this.zzc & 1048576) != 0;
        }

        /* renamed from: K */
        public final int m6220K() {
            return this.zzaa;
        }

        /* renamed from: L */
        public final String m6219L() {
            return this.zzab;
        }

        /* renamed from: M */
        public final String m6218M() {
            return this.zzac;
        }

        /* renamed from: N */
        public final boolean m6217N() {
            return (this.zzc & 8388608) != 0;
        }

        /* renamed from: O */
        public final boolean m6216O() {
            return this.zzad;
        }

        /* renamed from: P */
        public final List<C3777a> m6215P() {
            return this.zzae;
        }

        /* renamed from: Q */
        public final String m6214Q() {
            return this.zzaf;
        }

        /* renamed from: R */
        public final boolean m6213R() {
            return (this.zzc & 33554432) != 0;
        }

        /* renamed from: S */
        public final int m6212S() {
            return this.zzag;
        }

        /* renamed from: T */
        public final String m6211T() {
            return this.zzaj;
        }

        /* renamed from: U */
        public final boolean m6210U() {
            return (this.zzc & 536870912) != 0;
        }

        /* renamed from: V */
        public final long m6209V() {
            return this.zzak;
        }

        /* renamed from: W */
        public final boolean m6208W() {
            return (this.zzc & 1073741824) != 0;
        }

        /* renamed from: X */
        public final long m6207X() {
            return this.zzal;
        }

        /* renamed from: Y */
        public final String m6206Y() {
            return this.zzam;
        }

        /* renamed from: Z */
        public final boolean m6205Z() {
            return (this.zzd & 2) != 0;
        }

        /* renamed from: a */
        public final C3781c m6203a(int i) {
            return this.zzf.get(i);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3789g> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3789g();
                    break;
                case 2:
                    obj3 = new C3790a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzav, "\u0001+��\u0002\u00012+��\u0004��\u0001င��\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&", new Object[]{"zzc", "zzd", "zze", "zzf", C3781c.class, "zzg", C3798k.class, "zzh", "zzi", "zzj", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzaa", "zzab", "zzac", "zzk", "zzad", "zzae", C3777a.class, "zzaf", "zzag", "zzah", "zzai", "zzaj", "zzak", "zzal", "zzam", "zzan", "zzao", "zzap", "zzaq", "zzar", "zzas", "zzat", "zzau"});
                    break;
                case 4:
                    obj3 = zzav;
                    break;
                case 5:
                    Object obj4 = zzaw;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3789g.class) {
                            try {
                                AbstractC3953fx<C3789g> abstractC3953fx2 = zzaw;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzav);
                                    zzaw = abstractC3953fx;
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
        public final boolean m6204a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: aa */
        public final int m6180aa() {
            return this.zzao;
        }

        /* renamed from: ab */
        public final String m6179ab() {
            return this.zzap;
        }

        /* renamed from: ac */
        public final boolean m6178ac() {
            return (this.zzd & 16) != 0;
        }

        /* renamed from: ad */
        public final long m6177ad() {
            return this.zzas;
        }

        /* renamed from: ae */
        public final String m6176ae() {
            return this.zzau;
        }

        /* renamed from: b */
        public final int m6167b() {
            return this.zze;
        }

        /* renamed from: b */
        public final C3798k m6166b(int i) {
            return this.zzg.get(i);
        }

        /* renamed from: c */
        public final List<C3781c> m6155c() {
            return this.zzf;
        }

        /* renamed from: d */
        public final int m6146d() {
            return this.zzf.size();
        }

        /* renamed from: e */
        public final List<C3798k> m6136e() {
            return this.zzg;
        }

        /* renamed from: f */
        public final int m6128f() {
            return this.zzg.size();
        }

        /* renamed from: g */
        public final boolean m6120g() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: h */
        public final long m6113h() {
            return this.zzh;
        }

        /* renamed from: i */
        public final boolean m6107i() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: j */
        public final long m6101j() {
            return this.zzi;
        }

        /* renamed from: k */
        public final boolean m6095k() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: l */
        public final long m6090l() {
            return this.zzj;
        }

        /* renamed from: m */
        public final boolean m6085m() {
            return (this.zzc & 16) != 0;
        }

        /* renamed from: n */
        public final long m6082n() {
            return this.zzk;
        }

        /* renamed from: o */
        public final boolean m6079o() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: p */
        public final long m6076p() {
            return this.zzl;
        }

        /* renamed from: q */
        public final String m6073q() {
            return this.zzm;
        }

        /* renamed from: r */
        public final String m6072r() {
            return this.zzn;
        }

        /* renamed from: s */
        public final String m6071s() {
            return this.zzo;
        }

        /* renamed from: t */
        public final String m6070t() {
            return this.zzp;
        }

        /* renamed from: u */
        public final boolean m6069u() {
            return (this.zzc & 1024) != 0;
        }

        /* renamed from: v */
        public final int m6068v() {
            return this.zzq;
        }

        /* renamed from: w */
        public final String m6067w() {
            return this.zzr;
        }

        /* renamed from: x */
        public final String m6066x() {
            return this.zzs;
        }

        /* renamed from: y */
        public final String m6065y() {
            return this.zzt;
        }

        /* renamed from: z */
        public final boolean m6064z() {
            return (this.zzc & 16384) != 0;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$h.class */
    public static final class C3791h extends AbstractC3900ed<C3791h, C3793b> implements AbstractC3945fp {
        private static final C3791h zzf;
        private static volatile AbstractC3953fx<C3791h> zzg;
        private int zzc;
        private int zzd = 1;
        private AbstractC3914el<C3783d> zze = m5639aq();

        /* renamed from: com.google.android.gms.internal.measurement.ao$h$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$h$a.class */
        public enum EnumC3792a implements AbstractC3911ei {
            RADS(1),
            PROVISIONING(2);
            

            /* renamed from: c */
            private static final AbstractC3910eh<EnumC3792a> f17838c = new C3802ar();

            /* renamed from: d */
            private final int f17840d;

            EnumC3792a(int i) {
                this.f17840d = i;
            }

            /* renamed from: a */
            public static EnumC3792a m5995a(int i) {
                EnumC3792a enumC3792a;
                switch (i) {
                    case 1:
                        enumC3792a = RADS;
                        break;
                    case 2:
                        enumC3792a = PROVISIONING;
                        break;
                    default:
                        enumC3792a = null;
                        break;
                }
                return enumC3792a;
            }

            /* renamed from: b */
            public static AbstractC3913ek m5994b() {
                return C3801aq.f17842a;
            }

            @Override // com.google.android.gms.internal.measurement.AbstractC3911ei
            /* renamed from: a */
            public final int mo5600a() {
                return this.f17840d;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.f17840d);
                return sb.append(" name=").append(name()).append('>').toString();
            }
        }

        /* renamed from: com.google.android.gms.internal.measurement.ao$h$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$h$b.class */
        public static final class C3793b extends AbstractC3900ed.C3902b<C3791h, C3793b> implements AbstractC3945fp {
            private C3793b() {
                super(C3791h.zzf);
            }

            /* synthetic */ C3793b(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3793b m5993a(C3783d.C3784a c3784a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3791h) this.f18089a).m5998a((C3783d) ((AbstractC3900ed) c3784a.mo5544u()));
                return this;
            }
        }

        static {
            C3791h c3791h = new C3791h();
            zzf = c3791h;
            AbstractC3900ed.m5646a(C3791h.class, c3791h);
        }

        private C3791h() {
        }

        /* renamed from: a */
        public static C3793b m5999a() {
            return zzf.m5643ak();
        }

        /* renamed from: a */
        public final void m5998a(C3783d c3783d) {
            c3783d.getClass();
            AbstractC3914el<C3783d> abstractC3914el = this.zze;
            if (!abstractC3914el.mo5588a()) {
                this.zze = AbstractC3900ed.m5650a(abstractC3914el);
            }
            this.zze.add(c3783d);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3791h> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3791h();
                    break;
                case 2:
                    obj3 = new C3793b(null);
                    break;
                case 3:
                    obj3 = m5648a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u001b", new Object[]{"zzc", "zzd", EnumC3792a.m5994b(), "zze", C3783d.class});
                    break;
                case 4:
                    obj3 = zzf;
                    break;
                case 5:
                    Object obj4 = zzg;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3791h.class) {
                            try {
                                AbstractC3953fx<C3791h> abstractC3953fx2 = zzg;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzf);
                                    zzg = abstractC3953fx;
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
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$i.class */
    public static final class C3794i extends AbstractC3900ed<C3794i, C3795a> implements AbstractC3945fp {
        private static final C3794i zzg;
        private static volatile AbstractC3953fx<C3794i> zzh;
        private AbstractC3915em zzc = m5640ap();
        private AbstractC3915em zzd = m5640ap();
        private AbstractC3914el<C3779b> zze = m5639aq();
        private AbstractC3914el<C3796j> zzf = m5639aq();

        /* renamed from: com.google.android.gms.internal.measurement.ao$i$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$i$a.class */
        public static final class C3795a extends AbstractC3900ed.C3902b<C3794i, C3795a> implements AbstractC3945fp {
            private C3795a() {
                super(C3794i.zzg);
            }

            /* synthetic */ C3795a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3795a m5961a() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3794i) this.f18089a).m5965l();
                return this;
            }

            /* renamed from: a */
            public final C3795a m5960a(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3794i) this.f18089a).m5976d(i);
                return this;
            }

            /* renamed from: a */
            public final C3795a m5959a(Iterable<? extends Long> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3794i) this.f18089a).m5987a(iterable);
                return this;
            }

            /* renamed from: b */
            public final C3795a m5958b() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3794i) this.f18089a).m5964m();
                return this;
            }

            /* renamed from: b */
            public final C3795a m5957b(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3794i) this.f18089a).m5972e(i);
                return this;
            }

            /* renamed from: b */
            public final C3795a m5956b(Iterable<? extends Long> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3794i) this.f18089a).m5981b(iterable);
                return this;
            }

            /* renamed from: c */
            public final C3795a m5955c(Iterable<? extends C3779b> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3794i) this.f18089a).m5978c(iterable);
                return this;
            }

            /* renamed from: d */
            public final C3795a m5954d(Iterable<? extends C3796j> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3794i) this.f18089a).m5974d(iterable);
                return this;
            }
        }

        static {
            C3794i c3794i = new C3794i();
            zzg = c3794i;
            AbstractC3900ed.m5646a(C3794i.class, c3794i);
        }

        private C3794i() {
        }

        /* renamed from: a */
        public final void m5987a(Iterable<? extends Long> iterable) {
            AbstractC3915em abstractC3915em = this.zzc;
            if (!abstractC3915em.mo5588a()) {
                this.zzc = AbstractC3900ed.m5649a(abstractC3915em);
            }
            AbstractC3850ck.m5840a(iterable, this.zzc);
        }

        /* renamed from: b */
        public final void m5981b(Iterable<? extends Long> iterable) {
            AbstractC3915em abstractC3915em = this.zzd;
            if (!abstractC3915em.mo5588a()) {
                this.zzd = AbstractC3900ed.m5649a(abstractC3915em);
            }
            AbstractC3850ck.m5840a(iterable, this.zzd);
        }

        /* renamed from: c */
        public final void m5978c(Iterable<? extends C3779b> iterable) {
            m5963n();
            AbstractC3850ck.m5840a(iterable, this.zze);
        }

        /* renamed from: d */
        public final void m5976d(int i) {
            m5963n();
            this.zze.remove(i);
        }

        /* renamed from: d */
        public final void m5974d(Iterable<? extends C3796j> iterable) {
            m5962o();
            AbstractC3850ck.m5840a(iterable, this.zzf);
        }

        /* renamed from: e */
        public final void m5972e(int i) {
            m5962o();
            this.zzf.remove(i);
        }

        /* renamed from: i */
        public static C3795a m5968i() {
            return zzg.m5643ak();
        }

        /* renamed from: j */
        public static C3794i m5967j() {
            return zzg;
        }

        /* renamed from: l */
        public final void m5965l() {
            this.zzc = m5640ap();
        }

        /* renamed from: m */
        public final void m5964m() {
            this.zzd = m5640ap();
        }

        /* renamed from: n */
        private final void m5963n() {
            AbstractC3914el<C3779b> abstractC3914el = this.zze;
            if (!abstractC3914el.mo5588a()) {
                this.zze = AbstractC3900ed.m5650a(abstractC3914el);
            }
        }

        /* renamed from: o */
        private final void m5962o() {
            AbstractC3914el<C3796j> abstractC3914el = this.zzf;
            if (!abstractC3914el.mo5588a()) {
                this.zzf = AbstractC3900ed.m5650a(abstractC3914el);
            }
        }

        /* renamed from: a */
        public final C3779b m5991a(int i) {
            return this.zze.get(i);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3794i> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3794i();
                    break;
                case 2:
                    obj3 = new C3795a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzg, "\u0001\u0004����\u0001\u0004\u0004��\u0004��\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zzc", "zzd", "zze", C3779b.class, "zzf", C3796j.class});
                    break;
                case 4:
                    obj3 = zzg;
                    break;
                case 5:
                    Object obj4 = zzh;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3794i.class) {
                            try {
                                AbstractC3953fx<C3794i> abstractC3953fx2 = zzh;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzg);
                                    zzh = abstractC3953fx;
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
        public final List<Long> m5992a() {
            return this.zzc;
        }

        /* renamed from: b */
        public final int m5986b() {
            return this.zzc.size();
        }

        /* renamed from: b */
        public final C3796j m5985b(int i) {
            return this.zzf.get(i);
        }

        /* renamed from: c */
        public final List<Long> m5980c() {
            return this.zzd;
        }

        /* renamed from: d */
        public final int m5977d() {
            return this.zzd.size();
        }

        /* renamed from: e */
        public final List<C3779b> m5973e() {
            return this.zze;
        }

        /* renamed from: f */
        public final int m5971f() {
            return this.zze.size();
        }

        /* renamed from: g */
        public final List<C3796j> m5970g() {
            return this.zzf;
        }

        /* renamed from: h */
        public final int m5969h() {
            return this.zzf.size();
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$j */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$j.class */
    public static final class C3796j extends AbstractC3900ed<C3796j, C3797a> implements AbstractC3945fp {
        private static final C3796j zzf;
        private static volatile AbstractC3953fx<C3796j> zzg;
        private int zzc;
        private int zzd;
        private AbstractC3915em zze = m5640ap();

        /* renamed from: com.google.android.gms.internal.measurement.ao$j$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$j$a.class */
        public static final class C3797a extends AbstractC3900ed.C3902b<C3796j, C3797a> implements AbstractC3945fp {
            private C3797a() {
                super(C3796j.zzf);
            }

            /* synthetic */ C3797a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3797a m5942a(int i) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3796j) this.f18089a).m5947b(i);
                return this;
            }

            /* renamed from: a */
            public final C3797a m5941a(Iterable<? extends Long> iterable) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3796j) this.f18089a).m5949a(iterable);
                return this;
            }
        }

        static {
            C3796j c3796j = new C3796j();
            zzf = c3796j;
            AbstractC3900ed.m5646a(C3796j.class, c3796j);
        }

        private C3796j() {
        }

        /* renamed from: a */
        public final void m5949a(Iterable<? extends Long> iterable) {
            AbstractC3915em abstractC3915em = this.zze;
            if (!abstractC3915em.mo5588a()) {
                this.zze = AbstractC3900ed.m5649a(abstractC3915em);
            }
            AbstractC3850ck.m5840a(iterable, this.zze);
        }

        /* renamed from: b */
        public final void m5947b(int i) {
            this.zzc |= 1;
            this.zzd = i;
        }

        /* renamed from: e */
        public static C3797a m5944e() {
            return zzf.m5643ak();
        }

        /* renamed from: a */
        public final long m5952a(int i) {
            return this.zze.mo5575b(i);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3796j> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3796j();
                    break;
                case 2:
                    obj3 = new C3797a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001င��\u0002\u0014", new Object[]{"zzc", "zzd", "zze"});
                    break;
                case 4:
                    obj3 = zzf;
                    break;
                case 5:
                    Object obj4 = zzg;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3796j.class) {
                            try {
                                AbstractC3953fx<C3796j> abstractC3953fx2 = zzg;
                                abstractC3953fx = abstractC3953fx2;
                                if (abstractC3953fx2 == null) {
                                    abstractC3953fx = new AbstractC3900ed.C3901a<>(zzf);
                                    zzg = abstractC3953fx;
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
        public final boolean m5953a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final int m5948b() {
            return this.zzd;
        }

        /* renamed from: c */
        public final List<Long> m5946c() {
            return this.zze;
        }

        /* renamed from: d */
        public final int m5945d() {
            return this.zze.size();
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ao$k */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$k.class */
    public static final class C3798k extends AbstractC3900ed<C3798k, C3799a> implements AbstractC3945fp {
        private static final C3798k zzj;
        private static volatile AbstractC3953fx<C3798k> zzk;
        private int zzc;
        private long zzd;
        private String zze = "";
        private String zzf = "";
        private long zzg;
        private float zzh;
        private double zzi;

        /* renamed from: com.google.android.gms.internal.measurement.ao$k$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ao$k$a.class */
        public static final class C3799a extends AbstractC3900ed.C3902b<C3798k, C3799a> implements AbstractC3945fp {
            private C3799a() {
                super(C3798k.zzj);
            }

            /* synthetic */ C3799a(C3800ap c3800ap) {
                this();
            }

            /* renamed from: a */
            public final C3799a m5913a() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3798k) this.f18089a).m5916l();
                return this;
            }

            /* renamed from: a */
            public final C3799a m5912a(double d) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3798k) this.f18089a).m5939a(d);
                return this;
            }

            /* renamed from: a */
            public final C3799a m5911a(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3798k) this.f18089a).m5938a(j);
                return this;
            }

            /* renamed from: a */
            public final C3799a m5910a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3798k) this.f18089a).m5933a(str);
                return this;
            }

            /* renamed from: b */
            public final C3799a m5909b() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3798k) this.f18089a).m5915m();
                return this;
            }

            /* renamed from: b */
            public final C3799a m5908b(long j) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3798k) this.f18089a).m5931b(j);
                return this;
            }

            /* renamed from: b */
            public final C3799a m5907b(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3798k) this.f18089a).m5927b(str);
                return this;
            }

            /* renamed from: c */
            public final C3799a m5906c() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3798k) this.f18089a).m5914n();
                return this;
            }
        }

        static {
            C3798k c3798k = new C3798k();
            zzj = c3798k;
            AbstractC3900ed.m5646a(C3798k.class, c3798k);
        }

        private C3798k() {
        }

        /* renamed from: a */
        public final void m5939a(double d) {
            this.zzc |= 32;
            this.zzi = d;
        }

        /* renamed from: a */
        public final void m5938a(long j) {
            this.zzc |= 1;
            this.zzd = j;
        }

        /* renamed from: a */
        public final void m5933a(String str) {
            str.getClass();
            this.zzc |= 2;
            this.zze = str;
        }

        /* renamed from: b */
        public final void m5931b(long j) {
            this.zzc |= 8;
            this.zzg = j;
        }

        /* renamed from: b */
        public final void m5927b(String str) {
            str.getClass();
            this.zzc |= 4;
            this.zzf = str;
        }

        /* renamed from: j */
        public static C3799a m5918j() {
            return zzj.m5643ak();
        }

        /* renamed from: l */
        public final void m5916l() {
            this.zzc &= -5;
            this.zzf = zzj.zzf;
        }

        /* renamed from: m */
        public final void m5915m() {
            this.zzc &= -9;
            this.zzg = 0L;
        }

        /* renamed from: n */
        public final void m5914n() {
            this.zzc &= -33;
            this.zzi = 0.0d;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3798k> abstractC3953fx;
            switch (C3800ap.f17841a[i - 1]) {
                case 1:
                    obj3 = new C3798k();
                    break;
                case 2:
                    obj3 = new C3799a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဂ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
                    break;
                case 4:
                    obj3 = zzj;
                    break;
                case 5:
                    Object obj4 = zzk;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3798k.class) {
                            try {
                                AbstractC3953fx<C3798k> abstractC3953fx2 = zzk;
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
        public final boolean m5940a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final long m5932b() {
            return this.zzd;
        }

        /* renamed from: c */
        public final String m5926c() {
            return this.zze;
        }

        /* renamed from: d */
        public final boolean m5924d() {
            return (this.zzc & 4) != 0;
        }

        /* renamed from: e */
        public final String m5923e() {
            return this.zzf;
        }

        /* renamed from: f */
        public final boolean m5922f() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: g */
        public final long m5921g() {
            return this.zzg;
        }

        /* renamed from: h */
        public final boolean m5920h() {
            return (this.zzc & 32) != 0;
        }

        /* renamed from: i */
        public final double m5919i() {
            return this.zzi;
        }
    }
}
