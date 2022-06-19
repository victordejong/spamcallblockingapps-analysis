package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.C3748ag;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.al */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/al.class */
public final class C3767al {

    /* renamed from: com.google.android.gms.internal.measurement.al$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/al$a.class */
    public static final class C3768a extends AbstractC3900ed<C3768a, C3769a> implements AbstractC3945fp {
        private static final C3768a zzh;
        private static volatile AbstractC3953fx<C3768a> zzi;
        private int zzc;
        private String zzd = "";
        private boolean zze;
        private boolean zzf;
        private int zzg;

        /* renamed from: com.google.android.gms.internal.measurement.al$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/al$a$a.class */
        public static final class C3769a extends AbstractC3900ed.C3902b<C3768a, C3769a> implements AbstractC3945fp {
            private C3769a() {
                super(C3768a.zzh);
            }

            /* synthetic */ C3769a(C3775an c3775an) {
                this();
            }

            /* renamed from: a */
            public final C3769a m6398a(String str) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3768a) this.f18089a).m6405a(str);
                return this;
            }

            /* renamed from: a */
            public final String m6399a() {
                return ((C3768a) this.f18089a).m6407a();
            }

            /* renamed from: b */
            public final boolean m6397b() {
                return ((C3768a) this.f18089a).m6404b();
            }

            /* renamed from: c */
            public final boolean m6396c() {
                return ((C3768a) this.f18089a).m6403c();
            }

            /* renamed from: d */
            public final boolean m6395d() {
                return ((C3768a) this.f18089a).m6402d();
            }

            /* renamed from: e */
            public final int m6394e() {
                return ((C3768a) this.f18089a).m6401e();
            }
        }

        static {
            C3768a c3768a = new C3768a();
            zzh = c3768a;
            AbstractC3900ed.m5646a(C3768a.class, c3768a);
        }

        private C3768a() {
        }

        /* renamed from: a */
        public final void m6405a(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3768a> abstractC3953fx;
            switch (C3775an.f17835a[i - 1]) {
                case 1:
                    obj3 = new C3768a();
                    break;
                case 2:
                    obj3 = new C3769a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                    break;
                case 4:
                    obj3 = zzh;
                    break;
                case 5:
                    Object obj4 = zzi;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3768a.class) {
                            try {
                                AbstractC3953fx<C3768a> abstractC3953fx2 = zzi;
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
        public final String m6407a() {
            return this.zzd;
        }

        /* renamed from: b */
        public final boolean m6404b() {
            return this.zze;
        }

        /* renamed from: c */
        public final boolean m6403c() {
            return this.zzf;
        }

        /* renamed from: d */
        public final boolean m6402d() {
            return (this.zzc & 8) != 0;
        }

        /* renamed from: e */
        public final int m6401e() {
            return this.zzg;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.al$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/al$b.class */
    public static final class C3770b extends AbstractC3900ed<C3770b, C3771a> implements AbstractC3945fp {
        private static final C3770b zzl;
        private static volatile AbstractC3953fx<C3770b> zzm;
        private int zzc;
        private long zzd;
        private int zzf;
        private boolean zzk;
        private String zze = "";
        private AbstractC3914el<C3772c> zzg = m5639aq();
        private AbstractC3914el<C3768a> zzh = m5639aq();
        private AbstractC3914el<C3748ag.C3749a> zzi = m5639aq();
        private String zzj = "";

        /* renamed from: com.google.android.gms.internal.measurement.al$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/al$b$a.class */
        public static final class C3771a extends AbstractC3900ed.C3902b<C3770b, C3771a> implements AbstractC3945fp {
            private C3771a() {
                super(C3770b.zzl);
            }

            /* synthetic */ C3771a(C3775an c3775an) {
                this();
            }

            /* renamed from: a */
            public final int m6377a() {
                return ((C3770b) this.f18089a).m6384f();
            }

            /* renamed from: a */
            public final C3768a m6376a(int i) {
                return ((C3770b) this.f18089a).m6392a(i);
            }

            /* renamed from: a */
            public final C3771a m6375a(int i, C3768a.C3769a c3769a) {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3770b) this.f18089a).m6391a(i, (C3768a) ((AbstractC3900ed) c3769a.mo5544u()));
                return this;
            }

            /* renamed from: b */
            public final List<C3748ag.C3749a> m6374b() {
                return Collections.unmodifiableList(((C3770b) this.f18089a).m6383g());
            }

            /* renamed from: c */
            public final C3771a m6373c() {
                if (this.f18090b) {
                    m5628q();
                    this.f18090b = false;
                }
                ((C3770b) this.f18089a).m6378l();
                return this;
            }
        }

        static {
            C3770b c3770b = new C3770b();
            zzl = c3770b;
            AbstractC3900ed.m5646a(C3770b.class, c3770b);
        }

        private C3770b() {
        }

        /* renamed from: a */
        public final void m6391a(int i, C3768a c3768a) {
            c3768a.getClass();
            AbstractC3914el<C3768a> abstractC3914el = this.zzh;
            if (!abstractC3914el.mo5588a()) {
                this.zzh = AbstractC3900ed.m5650a(abstractC3914el);
            }
            this.zzh.set(i, c3768a);
        }

        /* renamed from: i */
        public static C3771a m6381i() {
            return zzl.m5643ak();
        }

        /* renamed from: j */
        public static C3770b m6380j() {
            return zzl;
        }

        /* renamed from: l */
        public final void m6378l() {
            this.zzi = m5639aq();
        }

        /* renamed from: a */
        public final C3768a m6392a(int i) {
            return this.zzh.get(i);
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3770b> abstractC3953fx;
            switch (C3775an.f17835a[i - 1]) {
                case 1:
                    obj3 = new C3770b();
                    break;
                case 2:
                    obj3 = new C3771a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzl, "\u0001\b��\u0001\u0001\b\b��\u0003��\u0001ဂ��\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", C3772c.class, "zzh", C3768a.class, "zzi", C3748ag.C3749a.class, "zzj", "zzk"});
                    break;
                case 4:
                    obj3 = zzl;
                    break;
                case 5:
                    Object obj4 = zzm;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3770b.class) {
                            try {
                                AbstractC3953fx<C3770b> abstractC3953fx2 = zzm;
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
        public final boolean m6393a() {
            return (this.zzc & 1) != 0;
        }

        /* renamed from: b */
        public final long m6388b() {
            return this.zzd;
        }

        /* renamed from: c */
        public final boolean m6387c() {
            return (this.zzc & 2) != 0;
        }

        /* renamed from: d */
        public final String m6386d() {
            return this.zze;
        }

        /* renamed from: e */
        public final List<C3772c> m6385e() {
            return this.zzg;
        }

        /* renamed from: f */
        public final int m6384f() {
            return this.zzh.size();
        }

        /* renamed from: g */
        public final List<C3748ag.C3749a> m6383g() {
            return this.zzi;
        }

        /* renamed from: h */
        public final boolean m6382h() {
            return this.zzk;
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.al$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/al$c.class */
    public static final class C3772c extends AbstractC3900ed<C3772c, C3773a> implements AbstractC3945fp {
        private static final C3772c zzf;
        private static volatile AbstractC3953fx<C3772c> zzg;
        private int zzc;
        private String zzd = "";
        private String zze = "";

        /* renamed from: com.google.android.gms.internal.measurement.al$c$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/al$c$a.class */
        public static final class C3773a extends AbstractC3900ed.C3902b<C3772c, C3773a> implements AbstractC3945fp {
            private C3773a() {
                super(C3772c.zzf);
            }

            /* synthetic */ C3773a(C3775an c3775an) {
                this();
            }
        }

        static {
            C3772c c3772c = new C3772c();
            zzf = c3772c;
            AbstractC3900ed.m5646a(C3772c.class, c3772c);
        }

        private C3772c() {
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.measurement.AbstractC3900ed
        /* renamed from: a */
        public final Object mo5652a(int i, Object obj, Object obj2) {
            Object obj3;
            AbstractC3953fx<C3772c> abstractC3953fx;
            switch (C3775an.f17835a[i - 1]) {
                case 1:
                    obj3 = new C3772c();
                    break;
                case 2:
                    obj3 = new C3773a(null);
                    break;
                case 3:
                    obj3 = m5648a(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
                    break;
                case 4:
                    obj3 = zzf;
                    break;
                case 5:
                    Object obj4 = zzg;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3772c.class) {
                            try {
                                AbstractC3953fx<C3772c> abstractC3953fx2 = zzg;
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
        public final String m6372a() {
            return this.zzd;
        }

        /* renamed from: b */
        public final String m6371b() {
            return this.zze;
        }
    }
}
