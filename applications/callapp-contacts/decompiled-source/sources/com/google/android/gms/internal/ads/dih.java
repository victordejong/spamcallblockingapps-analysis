package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dih.class */
public final class dih extends dnh<dih, b> implements dov {
    private static volatile dpc<dih> zzek;
    private static final dih zzijy;
    String zzijv = "";
    dlw zzijw = dlw.f26941a;
    private int zzijx;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dih$a.class */
    public enum a implements dnm {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);
        
        private static final dnl<a> zzes = new dij();
        private final int value;

        a(int i) {
            this.value = i;
        }

        public static a zzfr(int i) {
            if (i == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i == 1) {
                return SYMMETRIC;
            }
            if (i == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i != 4) {
                return null;
            }
            return REMOTE;
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dih$b.class */
    public static final class b extends dnh.b<dih, b> implements dov {
        private b() {
            super(dih.zzijy);
        }

        /* synthetic */ b(dig digVar) {
            this();
        }

        public final b a(a aVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dih.a((dih) this.f26993a, aVar);
            return this;
        }

        public final b a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dih.a((dih) this.f26993a, dlwVar);
            return this;
        }

        public final b a(String str) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dih.a((dih) this.f26993a, str);
            return this;
        }
    }

    static {
        dih dihVar = new dih();
        zzijy = dihVar;
        dnh.a(dih.class, dihVar);
    }

    private dih() {
    }

    static /* synthetic */ void a(dih dihVar, a aVar) {
        dihVar.zzijx = aVar.zzv();
    }

    static /* synthetic */ void a(dih dihVar, dlw dlwVar) {
        dlwVar.getClass();
        dihVar.zzijw = dlwVar;
    }

    static /* synthetic */ void a(dih dihVar, String str) {
        str.getClass();
        dihVar.zzijv = str;
    }

    public static b b() {
        return zzijy.i();
    }

    public static dih c() {
        return zzijy;
    }

    public final a a() {
        a zzfr = a.zzfr(this.zzijx);
        a aVar = zzfr;
        if (zzfr == null) {
            aVar = a.UNRECOGNIZED;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dig.f26848a[i - 1]) {
            case 1:
                return new dih();
            case 2:
                return new b(null);
            case 3:
                return a(zzijy, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzijv", "zzijw", "zzijx"});
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
                                dpcVar2 = new dnh.a<>(zzijy);
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
