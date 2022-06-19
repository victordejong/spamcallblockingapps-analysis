package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azz.class */
public final class azz {

    /* renamed from: com.google.android.gms.internal.ads.azz$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azz$a.class */
    public static final class C12205a extends dnh<C12205a, C12206a> implements dov {
        private static volatile dpc<C12205a> zzek;
        private static final C12205a zzex;
        int zzdv;
        C12207b zzev;
        private C12209c zzew;

        /* renamed from: com.google.android.gms.internal.ads.azz$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azz$a$a.class */
        public static final class C12206a extends dnh.C12383b<C12205a, C12206a> implements dov {
            private C12206a() {
                super(C12205a.zzex);
            }

            /* synthetic */ C12206a(ayy ayyVar) {
                this();
            }
        }

        static {
            C12205a c12205a = new C12205a();
            zzex = c12205a;
            dnh.m16339a(C12205a.class, c12205a);
        }

        private C12205a() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (ayy.f43335a[i - 1]) {
                case 1:
                    return new C12205a();
                case 2:
                    return new C12206a(null);
                case 3:
                    return m16341a(zzex, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဉ��\u0002ဉ\u0001", new Object[]{"zzdv", "zzev", "zzew"});
                case 4:
                    return zzex;
                case 5:
                    dpc<C12205a> dpcVar = zzek;
                    dpc<C12205a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12205a.class) {
                            try {
                                dpc<C12205a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzex);
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

        /* renamed from: a */
        public final boolean m18292a() {
            return (this.zzdv & 2) != 0;
        }

        /* renamed from: b */
        public final C12209c m18291b() {
            C12209c c12209c = this.zzew;
            C12209c c12209c2 = c12209c;
            if (c12209c == null) {
                c12209c2 = C12209c.m18287a();
            }
            return c12209c2;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.azz$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azz$b.class */
    public static final class C12207b extends dnh<C12207b, C12208a> implements dov {
        private static volatile dpc<C12207b> zzek;
        private static final C12207b zzez;
        private int zzdv;
        int zzey = 2;

        /* renamed from: com.google.android.gms.internal.ads.azz$b$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azz$b$a.class */
        public static final class C12208a extends dnh.C12383b<C12207b, C12208a> implements dov {
            private C12208a() {
                super(C12207b.zzez);
            }

            /* synthetic */ C12208a(ayy ayyVar) {
                this();
            }
        }

        static {
            C12207b c12207b = new C12207b();
            zzez = c12207b;
            dnh.m16339a(C12207b.class, c12207b);
        }

        private C12207b() {
        }

        /* renamed from: a */
        public static C12207b m18289a() {
            return zzez;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (ayy.f43335a[i - 1]) {
                case 1:
                    return new C12207b();
                case 2:
                    return new C12208a(null);
                case 3:
                    return m16341a(zzez, "\u0001\u0001��\u0001\u001b\u001b\u0001������\u001bဌ��", new Object[]{"zzdv", "zzey", bbz.zzw()});
                case 4:
                    return zzez;
                case 5:
                    dpc<C12207b> dpcVar = zzek;
                    dpc<C12207b> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12207b.class) {
                            try {
                                dpc<C12207b> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzez);
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

    /* renamed from: com.google.android.gms.internal.ads.azz$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azz$c.class */
    public static final class C12209c extends dnh<C12209c, C12210a> implements dov {
        private static volatile dpc<C12209c> zzek;
        private static final C12209c zzfm;
        private int zzdv;
        String zzfg = "";
        private String zzfh = "";
        private String zzfi = "";
        private String zzfj = "";
        private String zzfk = "";
        private String zzfl = "";

        /* renamed from: com.google.android.gms.internal.ads.azz$c$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azz$c$a.class */
        public static final class C12210a extends dnh.C12383b<C12209c, C12210a> implements dov {
            private C12210a() {
                super(C12209c.zzfm);
            }

            /* synthetic */ C12210a(ayy ayyVar) {
                this();
            }
        }

        static {
            C12209c c12209c = new C12209c();
            zzfm = c12209c;
            dnh.m16339a(C12209c.class, c12209c);
        }

        private C12209c() {
        }

        /* renamed from: a */
        public static C12209c m18287a() {
            return zzfm;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (ayy.f43335a[i - 1]) {
                case 1:
                    return new C12209c();
                case 2:
                    return new C12210a(null);
                case 3:
                    return m16341a(zzfm, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzdv", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzfl"});
                case 4:
                    return zzfm;
                case 5:
                    dpc<C12209c> dpcVar = zzek;
                    dpc<C12209c> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12209c.class) {
                            try {
                                dpc<C12209c> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzfm);
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
