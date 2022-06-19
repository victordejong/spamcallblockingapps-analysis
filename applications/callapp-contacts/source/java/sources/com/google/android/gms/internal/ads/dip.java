package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dip.class */
public final class dip extends dnh<dip, C12362a> implements dov {
    private static volatile dpc<dip> zzek;
    private static final dip zzikv;
    int zzikt;
    dnr<C12363b> zziku = dph.m16197d();

    /* renamed from: com.google.android.gms.internal.ads.dip$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dip$a.class */
    public static final class C12362a extends dnh.C12383b<dip, C12362a> implements dov {
        private C12362a() {
            super(dip.zzikv);
        }

        /* synthetic */ C12362a(diq diqVar) {
            this();
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dip$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dip$b.class */
    public static final class C12363b extends dnh<C12363b, C12364a> implements dov {
        private static volatile dpc<C12363b> zzek;
        private static final C12363b zzikz;
        private int zzikm;
        dih zzikw;
        private int zzikx;
        int zziky;

        /* renamed from: com.google.android.gms.internal.ads.dip$b$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dip$b$a.class */
        public static final class C12364a extends dnh.C12383b<C12363b, C12364a> implements dov {
            private C12364a() {
                super(C12363b.zzikz);
            }

            /* synthetic */ C12364a(diq diqVar) {
                this();
            }
        }

        static {
            C12363b c12363b = new C12363b();
            zzikz = c12363b;
            dnh.m16339a(C12363b.class, c12363b);
        }

        private C12363b() {
        }

        /* renamed from: a */
        public final dih m16623a() {
            dih dihVar = this.zzikw;
            dih dihVar2 = dihVar;
            if (dihVar == null) {
                dihVar2 = dih.m16633c();
            }
            return dihVar2;
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (diq.f47094a[i - 1]) {
                case 1:
                    return new C12363b();
                case 2:
                    return new C12364a(null);
                case 3:
                    return m16341a(zzikz, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzikw", "zzikx", "zziky", "zzikm"});
                case 4:
                    return zzikz;
                case 5:
                    dpc<C12363b> dpcVar = zzek;
                    dpc<C12363b> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12363b.class) {
                            try {
                                dpc<C12363b> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzikz);
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

        /* renamed from: b */
        public final dii m16622b() {
            dii zzfs = dii.zzfs(this.zzikx);
            dii diiVar = zzfs;
            if (zzfs == null) {
                diiVar = dii.UNRECOGNIZED;
            }
            return diiVar;
        }

        /* renamed from: c */
        public final djb m16621c() {
            djb zzfz = djb.zzfz(this.zzikm);
            djb djbVar = zzfz;
            if (zzfz == null) {
                djbVar = djb.UNRECOGNIZED;
            }
            return djbVar;
        }
    }

    static {
        dip dipVar = new dip();
        zzikv = dipVar;
        dnh.m16339a(dip.class, dipVar);
    }

    private dip() {
    }

    /* renamed from: a */
    public static dip m16624a(byte[] bArr, dmt dmtVar) throws zzenn {
        return (dip) dnh.m16344a(zzikv, bArr, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (diq.f47094a[i - 1]) {
            case 1:
                return new dip();
            case 2:
                return new C12362a(null);
            case 3:
                return m16341a(zzikv, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzikt", "zziku", C12363b.class});
            case 4:
                return zzikv;
            case 5:
                dpc<dip> dpcVar = zzek;
                dpc<dip> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dip.class) {
                        try {
                            dpc<dip> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzikv);
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
