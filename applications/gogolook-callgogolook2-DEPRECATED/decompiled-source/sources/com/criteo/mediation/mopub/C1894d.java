package com.criteo.mediation.mopub;

import androidx.annotation.NonNull;
import com.criteo.publisher.CriteoErrorCode;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.NativeErrorCode;
/* renamed from: com.criteo.mediation.mopub.d */
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/d.class */
public class C1894d {

    /* renamed from: com.criteo.mediation.mopub.d$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/d$a.class */
    public static /* synthetic */ class C1895a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f1973a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[CriteoErrorCode.values().length];
            f1973a = iArr;
            try {
                iArr[CriteoErrorCode.ERROR_CODE_INTERNAL_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1973a[CriteoErrorCode.ERROR_CODE_NETWORK_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1973a[CriteoErrorCode.ERROR_CODE_INVALID_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1973a[CriteoErrorCode.ERROR_CODE_NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @NonNull
    /* renamed from: a */
    public static MoPubErrorCode m36070a(@NonNull CriteoErrorCode criteoErrorCode) {
        int i = C1895a.f1973a[criteoErrorCode.ordinal()];
        if (i == 1) {
            return MoPubErrorCode.INTERNAL_ERROR;
        }
        if (i == 2) {
            return MoPubErrorCode.NETWORK_TIMEOUT;
        }
        if (i == 3) {
            return MoPubErrorCode.SERVER_ERROR;
        }
        if (i == 4) {
            return MoPubErrorCode.NETWORK_NO_FILL;
        }
        throw new UnsupportedOperationException("Unknown Criteo error code: " + criteoErrorCode);
    }

    @NonNull
    /* renamed from: b */
    public static NativeErrorCode m36069b(@NonNull CriteoErrorCode criteoErrorCode) {
        int i = C1895a.f1973a[criteoErrorCode.ordinal()];
        if (i == 1) {
            return NativeErrorCode.NETWORK_INVALID_STATE;
        }
        if (i == 2) {
            return NativeErrorCode.NETWORK_TIMEOUT;
        }
        if (i == 3) {
            return NativeErrorCode.NETWORK_INVALID_REQUEST;
        }
        if (i == 4) {
            return NativeErrorCode.NETWORK_NO_FILL;
        }
        throw new UnsupportedOperationException("Unknown Criteo error code: " + criteoErrorCode);
    }
}
