package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cvt;
import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwa.class */
public final class cwa extends dnh<cwa, b> implements dov {
    private static volatile dpc<cwa> zzek;
    private static final cwa zzhwu;
    private int zzdv;
    private int zzhwr;
    private cvt zzhwt;
    private String zzdw = "";
    private String zzhws = "";

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwa$a.class */
    public enum a implements dnm {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);
        
        private static final dnl<a> zzes = new cwc();
        private final int value;

        a(int i) {
            this.value = i;
        }

        public static a zzeq(int i) {
            if (i == 0) {
                return EVENT_TYPE_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return BLOCKED_IMPRESSION;
        }

        public static dno zzw() {
            return cwb.f26488a;
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwa$b.class */
    public static final class b extends dnh.b<cwa, b> implements dov {
        private b() {
            super(cwa.zzhwu);
        }

        /* synthetic */ b(cvz cvzVar) {
            this();
        }

        public final b a(cvt.b bVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            cwa.a((cwa) this.f26993a, bVar.f());
            return this;
        }

        public final b a(a aVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            cwa.a((cwa) this.f26993a, aVar);
            return this;
        }

        public final b a(String str) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            cwa.a((cwa) this.f26993a, str);
            return this;
        }
    }

    static {
        cwa cwaVar = new cwa();
        zzhwu = cwaVar;
        dnh.a(cwa.class, cwaVar);
    }

    private cwa() {
    }

    public static b a() {
        return zzhwu.i();
    }

    static /* synthetic */ void a(cwa cwaVar, cvt cvtVar) {
        cvtVar.getClass();
        cwaVar.zzhwt = cvtVar;
        cwaVar.zzdv |= 8;
    }

    static /* synthetic */ void a(cwa cwaVar, a aVar) {
        cwaVar.zzhwr = aVar.zzv();
        cwaVar.zzdv |= 1;
    }

    static /* synthetic */ void a(cwa cwaVar, String str) {
        str.getClass();
        cwaVar.zzdv |= 2;
        cwaVar.zzdw = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (cvz.f26486a[i - 1]) {
            case 1:
                return new cwa();
            case 2:
                return new b(null);
            case 3:
                return a(zzhwu, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဌ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzdv", "zzhwr", a.zzw(), "zzdw", "zzhws", "zzhwt"});
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
                                dpcVar2 = new dnh.a<>(zzhwu);
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
