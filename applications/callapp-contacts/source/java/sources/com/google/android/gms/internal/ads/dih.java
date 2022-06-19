package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dih.class */
public final class dih extends dnh<dih, C12359b> implements dov {
    private static volatile dpc<dih> zzek;
    private static final dih zzijy;
    String zzijv = "";
    dlw zzijw = dlw.f47199a;
    private int zzijx;

    /* renamed from: com.google.android.gms.internal.ads.dih$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dih$a.class */
    public enum EnumC12358a implements dnm {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);
        
        private static final dnl<EnumC12358a> zzes = new dij();
        private final int value;

        EnumC12358a(int i) {
            this.value = i;
        }

        public static EnumC12358a zzfr(int i) {
            if (i != 0) {
                if (i == 1) {
                    return SYMMETRIC;
                }
                if (i == 2) {
                    return ASYMMETRIC_PRIVATE;
                }
                if (i == 3) {
                    return ASYMMETRIC_PUBLIC;
                }
                if (i == 4) {
                    return REMOTE;
                }
                return null;
            }
            return UNKNOWN_KEYMATERIAL;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(getClass().getName());
            sb.append('@');
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=");
                sb.append(zzv());
            }
            sb.append(" name=");
            sb.append(name());
            sb.append('>');
            return sb.toString();
        }

        @Override // com.google.android.gms.internal.ads.dnm
        public final int zzv() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dih$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dih$b.class */
    public static final class C12359b extends dnh.C12383b<dih, C12359b> implements dov {
        private C12359b() {
            super(dih.zzijy);
        }

        /* synthetic */ C12359b(dig digVar) {
            this();
        }

        /* renamed from: a */
        public final C12359b m16631a(EnumC12358a enumC12358a) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dih.m16637a((dih) this.f47274a, enumC12358a);
            return this;
        }

        /* renamed from: a */
        public final C12359b m16630a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dih.m16636a((dih) this.f47274a, dlwVar);
            return this;
        }

        /* renamed from: a */
        public final C12359b m16629a(String str) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dih.m16635a((dih) this.f47274a, str);
            return this;
        }
    }

    static {
        dih dihVar = new dih();
        zzijy = dihVar;
        dnh.m16339a(dih.class, dihVar);
    }

    private dih() {
    }

    /* renamed from: a */
    static /* synthetic */ void m16637a(dih dihVar, EnumC12358a enumC12358a) {
        dihVar.zzijx = enumC12358a.zzv();
    }

    /* renamed from: a */
    static /* synthetic */ void m16636a(dih dihVar, dlw dlwVar) {
        dlwVar.getClass();
        dihVar.zzijw = dlwVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m16635a(dih dihVar, String str) {
        str.getClass();
        dihVar.zzijv = str;
    }

    /* renamed from: b */
    public static C12359b m16634b() {
        return zzijy.m16335i();
    }

    /* renamed from: c */
    public static dih m16633c() {
        return zzijy;
    }

    /* renamed from: a */
    public final EnumC12358a m16638a() {
        EnumC12358a zzfr = EnumC12358a.zzfr(this.zzijx);
        EnumC12358a enumC12358a = zzfr;
        if (zzfr == null) {
            enumC12358a = EnumC12358a.UNRECOGNIZED;
        }
        return enumC12358a;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dig.f47091a[i - 1]) {
            case 1:
                return new dih();
            case 2:
                return new C12359b(null);
            case 3:
                return m16341a(zzijy, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzijv", "zzijw", "zzijx"});
            case 4:
                return zzijy;
            case 5:
                dpc<dih> dpcVar = zzek;
                dpc<dih> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dih.class) {
                        try {
                            dpc<dih> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzijy);
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
