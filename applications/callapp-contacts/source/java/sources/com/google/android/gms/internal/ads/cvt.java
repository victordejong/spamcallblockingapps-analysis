package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvt.class */
public final class cvt extends dnh<cvt, C12289b> implements dov {
    private static volatile dpc<cvt> zzek;
    private static final dnp<Integer, EnumC12288a> zzhwj = new cvw();
    private static final cvt zzhwn;
    private int zzdv;
    private dnn zzhwi = dnk.m16308d();
    private String zzhwk = "";
    private String zzhwl = "";
    private String zzhwm = "";

    /* renamed from: com.google.android.gms.internal.ads.cvt$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvt$a.class */
    public enum EnumC12288a implements dnm {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);
        
        private static final dnl<EnumC12288a> zzes = new cvx();
        private final int value;

        EnumC12288a(int i) {
            this.value = i;
        }

        public static EnumC12288a zzep(int i) {
            if (i != 1) {
                if (i == 2) {
                    return BLOCKED_REASON_BACKGROUND;
                }
                return null;
            }
            return BLOCKED_REASON_UNKNOWN;
        }

        public static dno zzw() {
            return cvy.f46653a;
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

    /* renamed from: com.google.android.gms.internal.ads.cvt$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvt$b.class */
    public static final class C12289b extends dnh.C12383b<cvt, C12289b> implements dov {
        private C12289b() {
            super(cvt.zzhwn);
        }

        /* synthetic */ C12289b(cvw cvwVar) {
            this();
        }

        /* renamed from: a */
        public final C12289b m17155a(EnumC12288a enumC12288a) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            cvt.m17158a((cvt) this.f47274a, enumC12288a);
            return this;
        }

        /* renamed from: a */
        public final C12289b m17154a(String str) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            cvt.m17157a((cvt) this.f47274a, str);
            return this;
        }
    }

    static {
        cvt cvtVar = new cvt();
        zzhwn = cvtVar;
        dnh.m16339a(cvt.class, cvtVar);
    }

    private cvt() {
    }

    /* renamed from: a */
    public static C12289b m17159a() {
        return zzhwn.m16335i();
    }

    /* renamed from: a */
    static /* synthetic */ void m17158a(cvt cvtVar, EnumC12288a enumC12288a) {
        enumC12288a.getClass();
        dnn dnnVar = cvtVar.zzhwi;
        if (!dnnVar.mo16298a()) {
            cvtVar.zzhwi = dnh.m16343a(dnnVar);
        }
        cvtVar.zzhwi.mo16304d(enumC12288a.zzv());
    }

    /* renamed from: a */
    static /* synthetic */ void m17157a(cvt cvtVar, String str) {
        str.getClass();
        cvtVar.zzdv |= 1;
        cvtVar.zzhwk = str;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (cvv.f46652a[i - 1]) {
            case 1:
                return new cvt();
            case 2:
                return new C12289b(null);
            case 3:
                return m16341a(zzhwn, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002ဈ��\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzdv", "zzhwi", EnumC12288a.zzw(), "zzhwk", "zzhwl", "zzhwm"});
            case 4:
                return zzhwn;
            case 5:
                dpc<cvt> dpcVar = zzek;
                dpc<cvt> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (cvt.class) {
                        try {
                            dpc<cvt> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzhwn);
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
