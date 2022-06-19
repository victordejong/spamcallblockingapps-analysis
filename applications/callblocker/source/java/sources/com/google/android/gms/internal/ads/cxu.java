package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxu.class */
public final class cxu extends dcw<cxu, C2930a> implements dei {
    private static volatile dep<cxu> zzea;
    private static final cxu zzhoc;
    private String zzhnz = "";
    private dbi zzhoa = dbi.f13932a;
    private int zzhob;

    /* renamed from: com.google.android.gms.internal.ads.cxu$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxu$a.class */
    public static final class C2930a extends dcw.C2955a<cxu, C2930a> implements dei {
        private C2930a() {
            super(cxu.zzhoc);
        }

        /* synthetic */ C2930a(cxv cxvVar) {
            this();
        }

        /* renamed from: a */
        public final C2930a m10413a(EnumC2931b enumC2931b) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxu) this.f14072a).m10424a(enumC2931b);
            return this;
        }

        /* renamed from: a */
        public final C2930a m10412a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxu) this.f14072a).m10420a(dbiVar);
            return this;
        }

        /* renamed from: a */
        public final C2930a m10411a(String str) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxu) this.f14072a).m10419a(str);
            return this;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cxu$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxu$b.class */
    public enum EnumC2931b implements dcy {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);
        

        /* renamed from: g */
        private static final ddb<EnumC2931b> f13799g = new cxw();

        /* renamed from: h */
        private final int f13801h;

        EnumC2931b(int i) {
            this.f13801h = i;
        }

        /* renamed from: a */
        public static EnumC2931b m10410a(int i) {
            EnumC2931b enumC2931b;
            switch (i) {
                case 0:
                    enumC2931b = UNKNOWN_KEYMATERIAL;
                    break;
                case 1:
                    enumC2931b = SYMMETRIC;
                    break;
                case 2:
                    enumC2931b = ASYMMETRIC_PRIVATE;
                    break;
                case 3:
                    enumC2931b = ASYMMETRIC_PUBLIC;
                    break;
                case 4:
                    enumC2931b = REMOTE;
                    break;
                default:
                    enumC2931b = null;
                    break;
            }
            return enumC2931b;
        }

        @Override // com.google.android.gms.internal.ads.dcy
        /* renamed from: a */
        public final int mo8208a() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.f13801h;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=").append(mo8208a());
            }
            return sb.append(" name=").append(name()).append('>').toString();
        }
    }

    static {
        cxu cxuVar = new cxu();
        zzhoc = cxuVar;
        dcw.m10083a(cxu.class, cxuVar);
    }

    private cxu() {
    }

    /* renamed from: a */
    public final void m10424a(EnumC2931b enumC2931b) {
        this.zzhob = enumC2931b.mo8208a();
    }

    /* renamed from: a */
    public final void m10420a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhoa = dbiVar;
    }

    /* renamed from: a */
    public final void m10419a(String str) {
        str.getClass();
        this.zzhnz = str;
    }

    /* renamed from: d */
    public static C2930a m10416d() {
        return zzhoc.m10079n();
    }

    /* renamed from: e */
    public static cxu m10415e() {
        return zzhoc;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cxu> depVar;
        switch (cxv.f13802a[i - 1]) {
            case 1:
                obj3 = new cxu();
                break;
            case 2:
                obj3 = new C2930a(null);
                break;
            case 3:
                obj3 = m10085a(zzhoc, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzhnz", "zzhoa", "zzhob"});
                break;
            case 4:
                obj3 = zzhoc;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cxu.class) {
                        try {
                            dep<cxu> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhoc);
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
    public final String m10425a() {
        return this.zzhnz;
    }

    /* renamed from: b */
    public final dbi m10418b() {
        return this.zzhoa;
    }

    /* renamed from: c */
    public final EnumC2931b m10417c() {
        EnumC2931b m10410a = EnumC2931b.m10410a(this.zzhob);
        EnumC2931b enumC2931b = m10410a;
        if (m10410a == null) {
            enumC2931b = EnumC2931b.UNRECOGNIZED;
        }
        return enumC2931b;
    }
}
