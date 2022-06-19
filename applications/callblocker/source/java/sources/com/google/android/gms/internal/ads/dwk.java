package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwk.class */
public final class dwk {

    /* renamed from: com.google.android.gms.internal.ads.dwk$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwk$a.class */
    public static final class C3018a extends dcw<C3018a, C3020b> implements dei {
        private static final C3018a zzbth;
        private static volatile dep<C3018a> zzea;

        /* renamed from: com.google.android.gms.internal.ads.dwk$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwk$a$a.class */
        public enum EnumC3019a implements dcy {
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
            REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS(1002),
            REQUEST_FAILED_TO_BUILD_URL(1003),
            REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST(1004),
            REQUEST_FAILED_TO_PROCESS_RESPONSE(1005),
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
            

            /* renamed from: W */
            private static final ddb<EnumC3019a> f15906W = new dwo();

            /* renamed from: X */
            private final int f15934X;

            EnumC3019a(int i) {
                this.f15934X = i;
            }

            @Override // com.google.android.gms.internal.ads.dcy
            /* renamed from: a */
            public final int mo8208a() {
                return this.f15934X;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.f15934X);
                return sb.append(" name=").append(name()).append('>').toString();
            }
        }

        /* renamed from: com.google.android.gms.internal.ads.dwk$a$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwk$a$b.class */
        public static final class C3020b extends dcw.C2955a<C3018a, C3020b> implements dei {
            private C3020b() {
                super(C3018a.zzbth);
            }

            /* synthetic */ C3020b(dwm dwmVar) {
                this();
            }
        }

        static {
            C3018a c3018a = new C3018a();
            zzbth = c3018a;
            dcw.m10083a(C3018a.class, c3018a);
        }

        private C3018a() {
        }

        /* JADX WARN: Type inference failed for: r6v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C3018a> depVar;
            switch (dwm.f15935a[i - 1]) {
                case 1:
                    obj3 = new C3018a();
                    break;
                case 2:
                    obj3 = new C3020b(null);
                    break;
                case 3:
                    obj3 = m10085a(zzbth, "\u0001��", (Object[]) null);
                    break;
                case 4:
                    obj3 = zzbth;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C3018a.class) {
                            try {
                                dep<C3018a> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zzbth);
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
}
