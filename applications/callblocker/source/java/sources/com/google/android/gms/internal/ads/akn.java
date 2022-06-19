package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akn.class */
public final class akn {

    /* renamed from: com.google.android.gms.internal.ads.akn$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akn$a.class */
    public static final class C2774a extends dcw<C2774a, C2775a> implements dei {
        private static final C2774a zzdz;
        private static volatile dep<C2774a> zzea;
        private int zzdl;
        private long zzdn;
        private long zzdr;
        private long zzds;
        private long zzdu;
        private int zzdy;
        private String zzdm = "";
        private String zzdo = "";
        private String zzdp = "";
        private String zzdq = "";
        private String zzdt = "";
        private String zzdv = "";
        private String zzdw = "";
        private dde<C2776b> zzdx = m10075t();

        /* renamed from: com.google.android.gms.internal.ads.akn$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akn$a$a.class */
        public static final class C2775a extends dcw.C2955a<C2774a, C2775a> implements dei {
            private C2775a() {
                super(C2774a.zzdz);
            }

            /* synthetic */ C2775a(ajm ajmVar) {
                this();
            }

            /* renamed from: a */
            public final C2775a m13002a(long j) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2774a) this.f14072a).m13017a(j);
                return this;
            }

            /* renamed from: a */
            public final C2775a m13001a(EnumC2778c enumC2778c) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2774a) this.f14072a).m13016a(enumC2778c);
                return this;
            }

            /* renamed from: a */
            public final C2775a m13000a(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2774a) this.f14072a).m13012a(str);
                return this;
            }

            /* renamed from: b */
            public final C2775a m12999b(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2774a) this.f14072a).m13009b(str);
                return this;
            }

            /* renamed from: c */
            public final C2775a m12998c(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2774a) this.f14072a).m13007c(str);
                return this;
            }

            /* renamed from: d */
            public final C2775a m12997d(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2774a) this.f14072a).m13005d(str);
                return this;
            }

            /* renamed from: e */
            public final C2775a m12996e(String str) {
                if (this.f14073b) {
                    m10066c();
                    this.f14073b = false;
                }
                ((C2774a) this.f14072a).m13003e(str);
                return this;
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.akn$a$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akn$a$b.class */
        public static final class C2776b extends dcw<C2776b, C2777a> implements dei {
            private static volatile dep<C2776b> zzea;
            private static final C2776b zzed;
            private int zzdl;
            private String zzeb = "";
            private String zzec = "";

            /* renamed from: com.google.android.gms.internal.ads.akn$a$b$a */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akn$a$b$a.class */
            public static final class C2777a extends dcw.C2955a<C2776b, C2777a> implements dei {
                private C2777a() {
                    super(C2776b.zzed);
                }

                /* synthetic */ C2777a(ajm ajmVar) {
                    this();
                }
            }

            static {
                C2776b c2776b = new C2776b();
                zzed = c2776b;
                dcw.m10083a(C2776b.class, c2776b);
            }

            private C2776b() {
            }

            /* JADX WARN: Type inference failed for: r9v6 */
            @Override // com.google.android.gms.internal.ads.dcw
            /* renamed from: a */
            public final Object mo8219a(int i, Object obj, Object obj2) {
                Object obj3;
                dep<C2776b> depVar;
                switch (ajm.f9832a[i - 1]) {
                    case 1:
                        obj3 = new C2776b();
                        break;
                    case 2:
                        obj3 = new C2777a(null);
                        break;
                    case 3:
                        obj3 = m10085a(zzed, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\b\u0001", new Object[]{"zzdl", "zzeb", "zzec"});
                        break;
                    case 4:
                        obj3 = zzed;
                        break;
                    case 5:
                        Object obj4 = zzea;
                        obj3 = obj4;
                        if (obj4 == null) {
                            synchronized (C2776b.class) {
                                try {
                                    dep<C2776b> depVar2 = zzea;
                                    depVar = depVar2;
                                    if (depVar2 == null) {
                                        depVar = new dcw.C2957c<>(zzed);
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

        /* renamed from: com.google.android.gms.internal.ads.akn$a$c */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akn$a$c.class */
        public enum EnumC2778c implements dcy {
            UNKNOWN(0),
            ENABLED(1),
            DISABLED(2);
            

            /* renamed from: d */
            private static final ddb<EnumC2778c> f9892d = new alo();

            /* renamed from: e */
            private final int f9894e;

            EnumC2778c(int i) {
                this.f9894e = i;
            }

            /* renamed from: a */
            public static EnumC2778c m12994a(int i) {
                EnumC2778c enumC2778c;
                switch (i) {
                    case 0:
                        enumC2778c = UNKNOWN;
                        break;
                    case 1:
                        enumC2778c = ENABLED;
                        break;
                    case 2:
                        enumC2778c = DISABLED;
                        break;
                    default:
                        enumC2778c = null;
                        break;
                }
                return enumC2778c;
            }

            /* renamed from: b */
            public static dda m12993b() {
                return anq.f10064a;
            }

            @Override // com.google.android.gms.internal.ads.dcy
            /* renamed from: a */
            public final int mo8208a() {
                return this.f9894e;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.f9894e);
                return sb.append(" name=").append(name()).append('>').toString();
            }
        }

        static {
            C2774a c2774a = new C2774a();
            zzdz = c2774a;
            dcw.m10083a(C2774a.class, c2774a);
        }

        private C2774a() {
        }

        /* renamed from: a */
        public static C2775a m13018a() {
            return zzdz.m10079n();
        }

        /* renamed from: a */
        public final void m13017a(long j) {
            this.zzdl |= 2;
            this.zzdn = j;
        }

        /* renamed from: a */
        public final void m13016a(EnumC2778c enumC2778c) {
            this.zzdy = enumC2778c.mo8208a();
            this.zzdl |= 2048;
        }

        /* renamed from: a */
        public final void m13012a(String str) {
            str.getClass();
            this.zzdl |= 1;
            this.zzdm = str;
        }

        /* renamed from: b */
        public final void m13009b(String str) {
            str.getClass();
            this.zzdl |= 4;
            this.zzdo = str;
        }

        /* renamed from: c */
        public final void m13007c(String str) {
            str.getClass();
            this.zzdl |= 8;
            this.zzdp = str;
        }

        /* renamed from: d */
        public final void m13005d(String str) {
            str.getClass();
            this.zzdl |= 16;
            this.zzdq = str;
        }

        /* renamed from: e */
        public final void m13003e(String str) {
            str.getClass();
            this.zzdl |= 1024;
            this.zzdw = str;
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C2774a> depVar;
            switch (ajm.f9832a[i - 1]) {
                case 1:
                    obj3 = new C2774a();
                    break;
                case 2:
                    obj3 = new C2775a(null);
                    break;
                case 3:
                    obj3 = m10085a(zzdz, "\u0001\r��\u0001\u0001\r\r��\u0001��\u0001\b��\u0002\u0002\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\u0002\u0005\u0007\u0002\u0006\b\b\u0007\t\u0002\b\n\b\t\u000b\b\n\f\u001b\r\f\u000b", new Object[]{"zzdl", "zzdm", "zzdn", "zzdo", "zzdp", "zzdq", "zzdr", "zzds", "zzdt", "zzdu", "zzdv", "zzdw", "zzdx", C2776b.class, "zzdy", EnumC2778c.m12993b()});
                    break;
                case 4:
                    obj3 = zzdz;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C2774a.class) {
                            try {
                                dep<C2774a> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zzdz);
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
}
