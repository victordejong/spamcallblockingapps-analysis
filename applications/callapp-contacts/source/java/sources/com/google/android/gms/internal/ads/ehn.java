package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.dnh;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehn.class */
public final class ehn {

    /* renamed from: com.google.android.gms.internal.ads.ehn$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehn$a.class */
    public static final class C12444a extends dnh<C12444a, C12445a> implements dov {
        private static final C12444a zzbwu;
        private static volatile dpc<C12444a> zzek;

        /* renamed from: com.google.android.gms.internal.ads.ehn$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehn$a$a.class */
        public static final class C12445a extends dnh.C12383b<C12444a, C12445a> implements dov {
            private C12445a() {
                super(C12444a.zzbwu);
            }

            /* synthetic */ C12445a(ehm ehmVar) {
                this();
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.ehn$a$b */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehn$a$b.class */
        public enum EnumC12446b implements dnm {
            UNKNOWN_EVENT_TYPE(0),
            AD_REQUEST(1),
            AD_LOADED(2),
            AD_IMPRESSION(5),
            AD_FIRST_CLICK(6),
            AD_SUBSEQUENT_CLICK(7),
            REQUEST_WILL_START(8),
            REQUEST_DID_END(9),
            REQUEST_WILL_UPDATE_SIGNALS(10),
            REQUEST_DID_UPDATE_SIGNALS(11),
            REQUEST_WILL_BUILD_URL(12),
            REQUEST_DID_BUILD_URL(13),
            REQUEST_WILL_MAKE_NETWORK_REQUEST(14),
            REQUEST_DID_RECEIVE_NETWORK_RESPONSE(15),
            REQUEST_WILL_PROCESS_RESPONSE(16),
            REQUEST_DID_PROCESS_RESPONSE(17),
            REQUEST_WILL_RENDER(18),
            REQUEST_DID_RENDER(19),
            AD_FAILED_TO_LOAD(3),
            AD_FAILED_TO_LOAD_NO_FILL(4),
            AD_FAILED_TO_LOAD_INVALID_REQUEST(100),
            AD_FAILED_TO_LOAD_NETWORK_ERROR(101),
            AD_FAILED_TO_LOAD_TIMEOUT(102),
            AD_FAILED_TO_LOAD_CANCELLED(103),
            AD_FAILED_TO_LOAD_NO_ERROR(104),
            AD_FAILED_TO_LOAD_NOT_FOUND(105),
            REQUEST_WILL_UPDATE_GMS_SIGNALS(1000),
            REQUEST_DID_UPDATE_GMS_SIGNALS(1001),
            REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE),
            REQUEST_FAILED_TO_BUILD_URL(1003),
            REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST(1004),
            REQUEST_FAILED_TO_PROCESS_RESPONSE(WebSocketProtocol.CLOSE_NO_STATUS_CODE),
            REQUEST_FAILED_TO_UPDATE_SIGNALS(1006),
            REQUEST_FAILED_TO_RENDER(1007),
            REQUEST_IS_PREFETCH(1100),
            REQUEST_SAVED_TO_CACHE(1101),
            REQUEST_LOADED_FROM_CACHE(1102),
            REQUEST_PREFETCH_INTERCEPTED(1103),
            REQUESTED_CACHE_KEY_FROM_SERVICE_SUCCEEDED(1104),
            REQUESTED_CACHE_KEY_FROM_SERVICE_FAILED(1105),
            NOTIFIED_CACHE_HIT_TO_SERVICE_SUCCEEDED(1106),
            NOTIFIED_CACHE_HIT_TO_SERVICE_FAILED(1107),
            REQUEST_FAILED_TO_LOAD_FROM_CACHE(1108),
            BANNER_SIZE_INVALID(10000),
            BANNER_SIZE_VALID(10001),
            ANDROID_WEBVIEW_CRASH(10002),
            OFFLINE_UPLOAD(10003),
            DELAY_PAGE_LOAD_CANCELLED_AD(10004);
            
            private static final dnl<EnumC12446b> zzes = new eho();
            private final int value;

            EnumC12446b(int i) {
                this.value = i;
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

        static {
            C12444a c12444a = new C12444a();
            zzbwu = c12444a;
            dnh.m16339a(C12444a.class, c12444a);
        }

        private C12444a() {
        }

        @Override // com.google.android.gms.internal.ads.dnh
        /* renamed from: a */
        public final Object mo14895a(int i, Object obj) {
            switch (ehm.f49038a[i - 1]) {
                case 1:
                    return new C12444a();
                case 2:
                    return new C12445a(null);
                case 3:
                    return m16341a(zzbwu, "\u0001��", (Object[]) null);
                case 4:
                    return zzbwu;
                case 5:
                    dpc<C12444a> dpcVar = zzek;
                    dpc<C12444a> dpcVar2 = dpcVar;
                    if (dpcVar == null) {
                        synchronized (C12444a.class) {
                            try {
                                dpc<C12444a> dpcVar3 = zzek;
                                dpcVar2 = dpcVar3;
                                if (dpcVar3 == null) {
                                    dpcVar2 = new dnh.C12382a<>(zzbwu);
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
}
