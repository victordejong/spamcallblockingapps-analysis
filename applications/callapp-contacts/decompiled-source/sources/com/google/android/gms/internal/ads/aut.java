package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aut.class */
public final class aut {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aut$a.class */
    public static final class a extends dnh<a, b> implements dov {
        private static final a zzej;
        private static volatile dpc<a> zzek;
        private int zzdv;
        private long zzdx;
        private long zzeb;
        private long zzec;
        private long zzee;
        private int zzei;
        private String zzdw = "";
        private String zzdy = "";
        private String zzdz = "";
        private String zzea = "";
        private String zzed = "";
        private String zzef = "";
        private String zzeg = "";
        private dnr<C0458a> zzeh = dph.d();

        /* renamed from: com.google.android.gms.internal.ads.aut$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aut$a$a.class */
        public static final class C0458a extends dnh<C0458a, C0459a> implements dov {
            private static volatile dpc<C0458a> zzek;
            private static final C0458a zzeo;
            private int zzdv;
            private String zzem = "";
            private String zzen = "";

            /* renamed from: com.google.android.gms.internal.ads.aut$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aut$a$a$a.class */
            public static final class C0459a extends dnh.b<C0458a, C0459a> implements dov {
                private C0459a() {
                    super(C0458a.zzeo);
                }

                /* synthetic */ C0459a(avu avuVar) {
                    this();
                }
            }

            static {
                C0458a aVar = new C0458a();
                zzeo = aVar;
                dnh.a(C0458a.class, aVar);
            }

            private C0458a() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.dnh
            public final Object a(int i, Object obj) {
                switch (avu.f23932a[i - 1]) {
                    case 1:
                        return new C0458a();
                    case 2:
                        return new C0459a(null);
                    case 3:
                        return a(zzeo, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzdv", "zzem", "zzen"});
                    case 4:
                        return zzeo;
                    case 5:
                        dpc<C0458a> dpcVar = zzek;
                        dpc<C0458a> dpcVar2 = dpcVar;
                        if (dpcVar == null) {
                            synchronized (C0458a.class) {
                                try {
                                    dpc<C0458a> dpcVar3 = zzek;
                                    dpcVar2 = dpcVar3;
                                    if (dpcVar3 == null) {
                                        dpcVar2 = new dnh.a<>(zzeo);
                                        zzek = dpcVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return dpcVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aut$a$b.class */
        public static final class b extends dnh.b<a, b> implements dov {
            private b() {
                super(a.zzej);
            }

            /* synthetic */ b(avu avuVar) {
                this();
            }

            public final b a(long j) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, j);
                return this;
            }

            public final b a(c cVar) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, cVar);
                return this;
            }

            public final b a(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.a((a) this.f26993a, str);
                return this;
            }

            public final b b(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.b((a) this.f26993a, str);
                return this;
            }

            public final b c(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.c((a) this.f26993a, str);
                return this;
            }

            public final b d(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.d((a) this.f26993a, str);
                return this;
            }

            public final b e(String str) {
                if (this.f26994b) {
                    c();
                    this.f26994b = false;
                }
                a.e((a) this.f26993a, str);
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aut$a$c.class */
        public enum c implements dnm {
            UNKNOWN(0),
            ENABLED(1),
            DISABLED(2);
            
            private static final dnl<c> zzes = new axw();
            private final int value;

            c(int i) {
                this.value = i;
            }

            public static c zzh(int i) {
                if (i == 0) {
                    return UNKNOWN;
                }
                if (i == 1) {
                    return ENABLED;
                }
                if (i != 2) {
                    return null;
                }
                return DISABLED;
            }

            public static dno zzw() {
                return awv.f23964a;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.dnm
            public final int zzv() {
                return this.value;
            }
        }

        static {
            a aVar = new a();
            zzej = aVar;
            dnh.a(a.class, aVar);
        }

        private a() {
        }

        public static b a() {
            return zzej.i();
        }

        static /* synthetic */ void a(a aVar, long j) {
            aVar.zzdv |= 2;
            aVar.zzdx = j;
        }

        static /* synthetic */ void a(a aVar, c cVar) {
            aVar.zzei = cVar.zzv();
            aVar.zzdv |= 2048;
        }

        static /* synthetic */ void a(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 1;
            aVar.zzdw = str;
        }

        static /* synthetic */ void b(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 4;
            aVar.zzdy = str;
        }

        static /* synthetic */ void c(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 8;
            aVar.zzdz = str;
        }

        static /* synthetic */ void d(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 16;
            aVar.zzea = str;
        }

        static /* synthetic */ void e(a aVar, String str) {
            str.getClass();
            aVar.zzdv |= 1024;
            aVar.zzeg = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (avu.f23932a[i - 1]) {
                case 1:
                    return new a();
                case 2:
                    return new b(null);
                case 3:
                    return a(zzej, "\u0001\r��\u0001\u0001\r\r��\u0001��\u0001ဈ��\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzdv", "zzdw", "zzdx", "zzdy", "zzdz", "zzea", "zzeb", "zzec", "zzed", "zzee", "zzef", "zzeg", "zzeh", C0458a.class, "zzei", c.zzw()});
                case 4:
                    return zzej;
                case 5:
                    dpc<a> dpcVar = zzek;
                    dpc<a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (a.class) {
                            try {
                                dpc<a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzej);
                                    zzek = dpcVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return dpcVar2;
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
