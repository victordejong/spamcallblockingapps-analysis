package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cmm;
import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmt.class */
public final class cmt extends dcw<cmt, C2868b> implements dei {
    private static volatile dep<cmt> zzea;
    private static final cmt zzhch;
    private int zzdl;
    private int zzhce;
    private cmm zzhcg;
    private String zzdm = "";
    private String zzhcf = "";

    /* renamed from: com.google.android.gms.internal.ads.cmt$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmt$a.class */
    public enum EnumC2867a implements dcy {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);
        

        /* renamed from: c */
        private static final ddb<EnumC2867a> f13373c = new cmv();

        /* renamed from: d */
        private final int f13375d;

        EnumC2867a(int i) {
            this.f13375d = i;
        }

        /* renamed from: a */
        public static EnumC2867a m11011a(int i) {
            EnumC2867a enumC2867a;
            switch (i) {
                case 0:
                    enumC2867a = EVENT_TYPE_UNKNOWN;
                    break;
                case 1:
                    enumC2867a = BLOCKED_IMPRESSION;
                    break;
                default:
                    enumC2867a = null;
                    break;
            }
            return enumC2867a;
        }

        /* renamed from: b */
        public static dda m11010b() {
            return cmu.f13376a;
        }

        @Override // com.google.android.gms.internal.ads.dcy
        /* renamed from: a */
        public final int mo8208a() {
            return this.f13375d;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" number=").append(this.f13375d);
            return sb.append(" name=").append(name()).append('>').toString();
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cmt$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmt$b.class */
    public static final class C2868b extends dcw.C2955a<cmt, C2868b> implements dei {
        private C2868b() {
            super(cmt.zzhch);
        }

        /* synthetic */ C2868b(cms cmsVar) {
            this();
        }

        /* renamed from: a */
        public final C2868b m11009a(cmm.C2866b c2866b) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cmt) this.f14072a).m11018a((cmm) ((dcw) c2866b.mo9987g()));
            return this;
        }

        /* renamed from: a */
        public final C2868b m11008a(EnumC2867a enumC2867a) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cmt) this.f14072a).m11017a(enumC2867a);
            return this;
        }

        /* renamed from: a */
        public final C2868b m11007a(String str) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cmt) this.f14072a).m11013a(str);
            return this;
        }
    }

    static {
        cmt cmtVar = new cmt();
        zzhch = cmtVar;
        dcw.m10083a(cmt.class, cmtVar);
    }

    private cmt() {
    }

    /* renamed from: a */
    public static C2868b m11019a() {
        return zzhch.m10079n();
    }

    /* renamed from: a */
    public final void m11018a(cmm cmmVar) {
        cmmVar.getClass();
        this.zzhcg = cmmVar;
        this.zzdl |= 8;
    }

    /* renamed from: a */
    public final void m11017a(EnumC2867a enumC2867a) {
        this.zzhce = enumC2867a.mo8208a();
        this.zzdl |= 1;
    }

    /* renamed from: a */
    public final void m11013a(String str) {
        str.getClass();
        this.zzdl |= 2;
        this.zzdm = str;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cmt> depVar;
        switch (cms.f13370a[i - 1]) {
            case 1:
                obj3 = new cmt();
                break;
            case 2:
                obj3 = new C2868b(null);
                break;
            case 3:
                obj3 = m10085a(zzhch, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\f��\u0002\b\u0001\u0003\b\u0002\u0004\t\u0003", new Object[]{"zzdl", "zzhce", EnumC2867a.m11010b(), "zzdm", "zzhcf", "zzhcg"});
                break;
            case 4:
                obj3 = zzhch;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cmt.class) {
                        try {
                            dep<cmt> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhch);
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
