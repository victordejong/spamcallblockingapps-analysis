package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvt.class */
public final class cvt extends dnh<cvt, b> implements dov {
    private static volatile dpc<cvt> zzek;
    private static final dnp<Integer, a> zzhwj = new cvw();
    private static final cvt zzhwn;
    private int zzdv;
    private dnn zzhwi = dnk.d();
    private String zzhwk = "";
    private String zzhwl = "";
    private String zzhwm = "";

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvt$a.class */
    public enum a implements dnm {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);
        
        private static final dnl<a> zzes = new cvx();
        private final int value;

        a(int i) {
            this.value = i;
        }

        public static a zzep(int i) {
            if (i == 1) {
                return BLOCKED_REASON_UNKNOWN;
            }
            if (i != 2) {
                return null;
            }
            return BLOCKED_REASON_BACKGROUND;
        }

        public static dno zzw() {
            return cvy.f26485a;
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvt$b.class */
    public static final class b extends dnh.b<cvt, b> implements dov {
        private b() {
            super(cvt.zzhwn);
        }

        /* synthetic */ b(cvw cvwVar) {
            this();
        }

        public final b a(a aVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            cvt.a((cvt) this.f26993a, aVar);
            return this;
        }

        public final b a(String str) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            cvt.a((cvt) this.f26993a, str);
            return this;
        }
    }

    static {
        cvt cvtVar = new cvt();
        zzhwn = cvtVar;
        dnh.a(cvt.class, cvtVar);
    }

    private cvt() {
    }

    public static b a() {
        return zzhwn.i();
    }

    static /* synthetic */ void a(cvt cvtVar, a aVar) {
        aVar.getClass();
        dnn dnnVar = cvtVar.zzhwi;
        if (!dnnVar.a()) {
            cvtVar.zzhwi = dnh.a(dnnVar);
        }
        cvtVar.zzhwi.d(aVar.zzv());
    }

    static /* synthetic */ void a(cvt cvtVar, String str) {
        str.getClass();
        cvtVar.zzdv |= 1;
        cvtVar.zzhwk = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (cvv.f26484a[i - 1]) {
            case 1:
                return new cvt();
            case 2:
                return new b(null);
            case 3:
                return a(zzhwn, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002ဈ��\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzdv", "zzhwi", a.zzw(), "zzhwk", "zzhwl", "zzhwm"});
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
                                dpcVar2 = new dnh.a<>(zzhwn);
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
