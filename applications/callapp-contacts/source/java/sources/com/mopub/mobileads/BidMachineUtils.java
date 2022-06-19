package com.mopub.mobileads;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BidMachineUtils.class */
public class BidMachineUtils {
    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mopub.mobileads.MoPubErrorCode transformToMoPubErrorCode(io.bidmachine.utils.BMError r3) {
        /*
            r0 = r3
            int r0 = r0.getCode()
            r4 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L64
            r0 = r4
            switch(r0) {
                case 98: goto L60;
                case 99: goto L64;
                case 100: goto L60;
                case 101: goto L5c;
                case 102: goto L58;
                case 103: goto L60;
                default: goto L30;
            }
        L30:
            r0 = r4
            switch(r0) {
                case 106: goto L64;
                case 107: goto L64;
                case 108: goto L54;
                case 109: goto L60;
                default: goto L50;
            }
        L50:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.UNSPECIFIED
            return r0
        L54:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.INTERNAL_ERROR
            return r0
        L58:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.NETWORK_TIMEOUT
            return r0
        L5c:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR
            return r0
        L60:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.NO_FILL
            return r0
        L64:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.NETWORK_INVALID_STATE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.BidMachineUtils.transformToMoPubErrorCode(io.bidmachine.utils.BMError):com.mopub.mobileads.MoPubErrorCode");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mopub.nativeads.NativeErrorCode transformToMoPubNativeErrorCode(io.bidmachine.utils.BMError r3) {
        /*
            r0 = r3
            int r0 = r0.getCode()
            r4 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L64
            r0 = r4
            switch(r0) {
                case 98: goto L60;
                case 99: goto L64;
                case 100: goto L60;
                case 101: goto L5c;
                case 102: goto L58;
                case 103: goto L60;
                default: goto L30;
            }
        L30:
            r0 = r4
            switch(r0) {
                case 106: goto L64;
                case 107: goto L64;
                case 108: goto L54;
                case 109: goto L60;
                default: goto L50;
            }
        L50:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.UNSPECIFIED
            return r0
        L54:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NETWORK_INVALID_STATE
            return r0
        L58:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NETWORK_TIMEOUT
            return r0
        L5c:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR
            return r0
        L60:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NETWORK_NO_FILL
            return r0
        L64:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NETWORK_INVALID_STATE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.BidMachineUtils.transformToMoPubNativeErrorCode(io.bidmachine.utils.BMError):com.mopub.nativeads.NativeErrorCode");
    }
}
