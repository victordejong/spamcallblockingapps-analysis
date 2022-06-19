package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmm.class */
public final class cmm extends dcw<cmm, C2866b> implements dei {
    private static volatile dep<cmm> zzea;
    private static final ddc<Integer, EnumC2865a> zzhbw = new cmp();
    private static final cmm zzhca;
    private int zzdl;
    private ddd zzhbv = m10077r();
    private String zzhbx = "";
    private String zzhby = "";
    private String zzhbz = "";

    /* renamed from: com.google.android.gms.internal.ads.cmm$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmm$a.class */
    public enum EnumC2865a implements dcy {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);
        

        /* renamed from: c */
        private static final ddb<EnumC2865a> f13365c = new cmq();

        /* renamed from: d */
        private final int f13367d;

        EnumC2865a(int i) {
            this.f13367d = i;
        }

        /* renamed from: a */
        public static EnumC2865a m11023a(int i) {
            EnumC2865a enumC2865a;
            switch (i) {
                case 1:
                    enumC2865a = BLOCKED_REASON_UNKNOWN;
                    break;
                case 2:
                    enumC2865a = BLOCKED_REASON_BACKGROUND;
                    break;
                default:
                    enumC2865a = null;
                    break;
            }
            return enumC2865a;
        }

        /* renamed from: b */
        public static dda m11022b() {
            return cmr.f13369a;
        }

        @Override // com.google.android.gms.internal.ads.dcy
        /* renamed from: a */
        public final int mo8208a() {
            return this.f13367d;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" number=").append(this.f13367d);
            return sb.append(" name=").append(name()).append('>').toString();
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cmm$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmm$b.class */
    public static final class C2866b extends dcw.C2955a<cmm, C2866b> implements dei {
        private C2866b() {
            super(cmm.zzhca);
        }

        /* synthetic */ C2866b(cmp cmpVar) {
            this();
        }

        /* renamed from: a */
        public final C2866b m11021a(EnumC2865a enumC2865a) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cmm) this.f14072a).m11028a(enumC2865a);
            return this;
        }

        /* renamed from: a */
        public final C2866b m11020a(String str) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cmm) this.f14072a).m11025a(str);
            return this;
        }
    }

    static {
        cmm cmmVar = new cmm();
        zzhca = cmmVar;
        dcw.m10083a(cmm.class, cmmVar);
    }

    private cmm() {
    }

    /* renamed from: a */
    public static C2866b m11029a() {
        return zzhca.m10079n();
    }

    /* renamed from: a */
    public final void m11028a(EnumC2865a enumC2865a) {
        enumC2865a.getClass();
        if (!this.zzhbv.mo10030a()) {
            this.zzhbv = dcw.m10087a(this.zzhbv);
        }
        this.zzhbv.mo10039d(enumC2865a.mo8208a());
    }

    /* renamed from: a */
    public final void m11025a(String str) {
        str.getClass();
        this.zzdl |= 1;
        this.zzhbx = str;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cmm> depVar;
        switch (cmo.f13368a[i - 1]) {
            case 1:
                obj3 = new cmm();
                break;
            case 2:
                obj3 = new C2866b(null);
                break;
            case 3:
                obj3 = m10085a(zzhca, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002\b��\u0003\b\u0001\u0004\b\u0002", new Object[]{"zzdl", "zzhbv", EnumC2865a.m11022b(), "zzhbx", "zzhby", "zzhbz"});
                break;
            case 4:
                obj3 = zzhca;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cmm.class) {
                        try {
                            dep<cmm> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhca);
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
