package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dip.class */
public final class dip extends dnh<dip, a> implements dov {
    private static volatile dpc<dip> zzek;
    private static final dip zzikv;
    int zzikt;
    dnr<b> zziku = dph.d();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dip$a.class */
    public static final class a extends dnh.b<dip, a> implements dov {
        private a() {
            super(dip.zzikv);
        }

        /* synthetic */ a(diq diqVar) {
            this();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dip$b.class */
    public static final class b extends dnh<b, a> implements dov {
        private static volatile dpc<b> zzek;
        private static final b zzikz;
        private int zzikm;
        dih zzikw;
        private int zzikx;
        int zziky;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dip$b$a.class */
        public static final class a extends dnh.b<b, a> implements dov {
            private a() {
                super(b.zzikz);
            }

            /* synthetic */ a(diq diqVar) {
                this();
            }
        }

        static {
            b bVar = new b();
            zzikz = bVar;
            dnh.a(b.class, bVar);
        }

        private b() {
        }

        public final dih a() {
            dih dihVar = this.zzikw;
            dih dihVar2 = dihVar;
            if (dihVar == null) {
                dihVar2 = dih.c();
            }
            return dihVar2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.dnh
        public final Object a(int i, Object obj) {
            switch (diq.f26851a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(null);
                case 3:
                    return a(zzikz, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzikw", "zzikx", "zziky", "zzikm"});
                case 4:
                    return zzikz;
                case 5:
                    dpc<b> dpcVar = zzek;
                    dpc<b> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (b.class) {
                            try {
                                dpc<b> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.a<>(zzikz);
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

        public final dii b() {
            dii zzfs = dii.zzfs(this.zzikx);
            dii diiVar = zzfs;
            if (zzfs == null) {
                diiVar = dii.UNRECOGNIZED;
            }
            return diiVar;
        }

        public final djb c() {
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
        dnh.a(dip.class, dipVar);
    }

    private dip() {
    }

    public static dip a(byte[] bArr, dmt dmtVar) throws zzenn {
        return (dip) dnh.a(zzikv, bArr, dmtVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (diq.f26851a[i - 1]) {
            case 1:
                return new dip();
            case 2:
                return new a(null);
            case 3:
                return a(zzikv, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzikt", "zziku", b.class});
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
                                dpcVar2 = new dnh.a<>(zzikv);
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
