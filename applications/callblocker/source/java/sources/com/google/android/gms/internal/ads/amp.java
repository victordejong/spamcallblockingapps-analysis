package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amp.class */
public final class amp {

    /* renamed from: com.google.android.gms.internal.ads.amp$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amp$a.class */
    public static final class C2781a extends dcw<C2781a, C2782a> implements dei {
        private static volatile dep<C2781a> zzea;
        private static final C2781a zzem;
        private int zzdl;
        private C2783b zzek;
        private C2785c zzel;

        /* renamed from: com.google.android.gms.internal.ads.amp$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amp$a$a.class */
        public static final class C2782a extends dcw.C2955a<C2781a, C2782a> implements dei {
            private C2782a() {
                super(C2781a.zzem);
            }

            /* synthetic */ C2782a(aor aorVar) {
                this();
            }
        }

        static {
            C2781a c2781a = new C2781a();
            zzem = c2781a;
            dcw.m10083a(C2781a.class, c2781a);
        }

        private C2781a() {
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C2781a> depVar;
            switch (aor.f10134a[i - 1]) {
                case 1:
                    obj3 = new C2781a();
                    break;
                case 2:
                    obj3 = new C2782a(null);
                    break;
                case 3:
                    obj3 = m10085a(zzem, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\t��\u0002\t\u0001", new Object[]{"zzdl", "zzek", "zzel"});
                    break;
                case 4:
                    obj3 = zzem;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C2781a.class) {
                            try {
                                dep<C2781a> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zzem);
                                    zzea = depVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = depVar;
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
        public final boolean m12928a() {
            return (this.zzdl & 1) != 0;
        }

        /* renamed from: b */
        public final C2783b m12927b() {
            return this.zzek == null ? C2783b.m12922b() : this.zzek;
        }

        /* renamed from: c */
        public final boolean m12926c() {
            return (this.zzdl & 2) != 0;
        }

        /* renamed from: d */
        public final C2785c m12925d() {
            return this.zzel == null ? C2785c.m12919b() : this.zzel;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.amp$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amp$b.class */
    public static final class C2783b extends dcw<C2783b, C2784a> implements dei {
        private static volatile dep<C2783b> zzea;
        private static final C2783b zzeo;
        private int zzdl;
        private int zzen = 2;

        /* renamed from: com.google.android.gms.internal.ads.amp$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amp$b$a.class */
        public static final class C2784a extends dcw.C2955a<C2783b, C2784a> implements dei {
            private C2784a() {
                super(C2783b.zzeo);
            }

            /* synthetic */ C2784a(aor aorVar) {
                this();
            }
        }

        static {
            C2783b c2783b = new C2783b();
            zzeo = c2783b;
            dcw.m10083a(C2783b.class, c2783b);
        }

        private C2783b() {
        }

        /* renamed from: b */
        public static C2783b m12922b() {
            return zzeo;
        }

        /* renamed from: a */
        public final aps m12923a() {
            aps m12815a = aps.m12815a(this.zzen);
            aps apsVar = m12815a;
            if (m12815a == null) {
                apsVar = aps.ENUM_SIGNAL_SOURCE_ADSHIELD;
            }
            return apsVar;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C2783b> depVar;
            switch (aor.f10134a[i - 1]) {
                case 1:
                    obj3 = new C2783b();
                    break;
                case 2:
                    obj3 = new C2784a(null);
                    break;
                case 3:
                    obj3 = m10085a(zzeo, "\u0001\u0001��\u0001\u001b\u001b\u0001������\u001b\f��", new Object[]{"zzdl", "zzen", aps.m12814b()});
                    break;
                case 4:
                    obj3 = zzeo;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C2783b.class) {
                            try {
                                dep<C2783b> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zzeo);
                                    zzea = depVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = depVar;
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

    /* renamed from: com.google.android.gms.internal.ads.amp$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amp$c.class */
    public static final class C2785c extends dcw<C2785c, C2786a> implements dei {
        private static volatile dep<C2785c> zzea;
        private static final C2785c zzfb;
        private int zzdl;
        private String zzev = "";
        private String zzew = "";
        private String zzex = "";
        private String zzey = "";
        private String zzez = "";
        private String zzfa = "";

        /* renamed from: com.google.android.gms.internal.ads.amp$c$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amp$c$a.class */
        public static final class C2786a extends dcw.C2955a<C2785c, C2786a> implements dei {
            private C2786a() {
                super(C2785c.zzfb);
            }

            /* synthetic */ C2786a(aor aorVar) {
                this();
            }
        }

        static {
            C2785c c2785c = new C2785c();
            zzfb = c2785c;
            dcw.m10083a(C2785c.class, c2785c);
        }

        private C2785c() {
        }

        /* renamed from: b */
        public static C2785c m12919b() {
            return zzfb;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C2785c> depVar;
            switch (aor.f10134a[i - 1]) {
                case 1:
                    obj3 = new C2785c();
                    break;
                case 2:
                    obj3 = new C2786a(null);
                    break;
                case 3:
                    obj3 = m10085a(zzfb, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001\b��\u0002\b\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\b\u0005", new Object[]{"zzdl", "zzev", "zzew", "zzex", "zzey", "zzez", "zzfa"});
                    break;
                case 4:
                    obj3 = zzfb;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C2785c.class) {
                            try {
                                dep<C2785c> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zzfb);
                                    zzea = depVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = depVar;
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
        public final String m12920a() {
            return this.zzev;
        }
    }
}
