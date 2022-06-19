package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cvt;
import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwa.class */
public final class cwa extends dnh<cwa, C12292b> implements dov {
    private static volatile dpc<cwa> zzek;
    private static final cwa zzhwu;
    private int zzdv;
    private int zzhwr;
    private cvt zzhwt;
    private String zzdw = "";
    private String zzhws = "";

    /* renamed from: com.google.android.gms.internal.ads.cwa$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwa$a.class */
    public enum EnumC12291a implements dnm {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);
        
        private static final dnl<EnumC12291a> zzes = new cwc();
        private final int value;

        EnumC12291a(int i) {
            this.value = i;
        }

        public static EnumC12291a zzeq(int i) {
            if (i != 0) {
                if (i == 1) {
                    return BLOCKED_IMPRESSION;
                }
                return null;
            }
            return EVENT_TYPE_UNKNOWN;
        }

        public static dno zzw() {
            return cwb.f46656a;
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

    /* renamed from: com.google.android.gms.internal.ads.cwa$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwa$b.class */
    public static final class C12292b extends dnh.C12383b<cwa, C12292b> implements dov {
        private C12292b() {
            super(cwa.zzhwu);
        }

        /* synthetic */ C12292b(cvz cvzVar) {
            this();
        }

        /* renamed from: a */
        public final C12292b m17146a(cvt.C12289b c12289b) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            cwa.m17150a((cwa) this.f47274a, c12289b.mo16259f());
            return this;
        }

        /* renamed from: a */
        public final C12292b m17145a(EnumC12291a enumC12291a) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            cwa.m17149a((cwa) this.f47274a, enumC12291a);
            return this;
        }

        /* renamed from: a */
        public final C12292b m17144a(String str) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            cwa.m17148a((cwa) this.f47274a, str);
            return this;
        }
    }

    static {
        cwa cwaVar = new cwa();
        zzhwu = cwaVar;
        dnh.m16339a(cwa.class, cwaVar);
    }

    private cwa() {
    }

    /* renamed from: a */
    public static C12292b m17151a() {
        return zzhwu.m16335i();
    }

    /* renamed from: a */
    static /* synthetic */ void m17150a(cwa cwaVar, cvt cvtVar) {
        cvtVar.getClass();
        cwaVar.zzhwt = cvtVar;
        cwaVar.zzdv |= 8;
    }

    /* renamed from: a */
    static /* synthetic */ void m17149a(cwa cwaVar, EnumC12291a enumC12291a) {
        cwaVar.zzhwr = enumC12291a.zzv();
        cwaVar.zzdv |= 1;
    }

    /* renamed from: a */
    static /* synthetic */ void m17148a(cwa cwaVar, String str) {
        str.getClass();
        cwaVar.zzdv |= 2;
        cwaVar.zzdw = str;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (cvz.f46654a[i - 1]) {
            case 1:
                return new cwa();
            case 2:
                return new C12292b(null);
            case 3:
                return m16341a(zzhwu, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဌ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzdv", "zzhwr", EnumC12291a.zzw(), "zzdw", "zzhws", "zzhwt"});
            case 4:
                return zzhwu;
            case 5:
                dpc<cwa> dpcVar = zzek;
                dpc<cwa> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (cwa.class) {
                        try {
                            dpc<cwa> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzhwu);
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
