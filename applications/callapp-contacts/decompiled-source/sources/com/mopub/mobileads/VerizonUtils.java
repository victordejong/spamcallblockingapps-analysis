package com.mopub.mobileads;

import android.os.Handler;
import android.os.Looper;
import com.mopub.nativeads.NativeErrorCode;
import com.verizon.ads.ErrorInfo;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VerizonUtils.class */
public final class VerizonUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f34354a = new Handler(Looper.getMainLooper());

    public static MoPubErrorCode convertErrorInfoToMoPub(ErrorInfo errorInfo) {
        if (errorInfo == null) {
            return MoPubErrorCode.UNSPECIFIED;
        }
        int errorCode = errorInfo.getErrorCode();
        return errorCode != -2 ? errorCode != -1 ? MoPubErrorCode.NETWORK_INVALID_STATE : MoPubErrorCode.NETWORK_NO_FILL : MoPubErrorCode.NETWORK_TIMEOUT;
    }

    public static NativeErrorCode convertErrorInfoToMoPubNative(ErrorInfo errorInfo) {
        if (errorInfo == null) {
            return NativeErrorCode.UNSPECIFIED;
        }
        int errorCode = errorInfo.getErrorCode();
        return errorCode != -2 ? errorCode != -1 ? NativeErrorCode.NETWORK_INVALID_STATE : NativeErrorCode.NETWORK_NO_FILL : NativeErrorCode.NETWORK_TIMEOUT;
    }

    public static void postOnUiThread(Runnable runnable) {
        f34354a.post(runnable);
    }
}
