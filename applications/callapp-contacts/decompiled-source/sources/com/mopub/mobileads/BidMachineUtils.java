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
            if (r0 == r1) goto L_0x0064
            r0 = r4
            switch(r0) {
                case 98: goto L_0x0060;
                case 99: goto L_0x0064;
                case 100: goto L_0x0060;
                case 101: goto L_0x005c;
                case 102: goto L_0x0058;
                case 103: goto L_0x0060;
                default: goto L_0x0030;
            }
        L_0x0030:
            r0 = r4
            switch(r0) {
                case 106: goto L_0x0064;
                case 107: goto L_0x0064;
                case 108: goto L_0x0054;
                case 109: goto L_0x0060;
                default: goto L_0x0050;
            }
        L_0x0050:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.UNSPECIFIED
            return r0
        L_0x0054:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.INTERNAL_ERROR
            return r0
        L_0x0058:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.NETWORK_TIMEOUT
            return r0
        L_0x005c:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR
            return r0
        L_0x0060:
            com.mopub.mobileads.MoPubErrorCode r0 = com.mopub.mobileads.MoPubErrorCode.NO_FILL
            return r0
        L_0x0064:
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
            if (r0 == r1) goto L_0x0064
            r0 = r4
            switch(r0) {
                case 98: goto L_0x0060;
                case 99: goto L_0x0064;
                case 100: goto L_0x0060;
                case 101: goto L_0x005c;
                case 102: goto L_0x0058;
                case 103: goto L_0x0060;
                default: goto L_0x0030;
            }
        L_0x0030:
            r0 = r4
            switch(r0) {
                case 106: goto L_0x0064;
                case 107: goto L_0x0064;
                case 108: goto L_0x0054;
                case 109: goto L_0x0060;
                default: goto L_0x0050;
            }
        L_0x0050:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.UNSPECIFIED
            return r0
        L_0x0054:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NETWORK_INVALID_STATE
            return r0
        L_0x0058:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NETWORK_TIMEOUT
            return r0
        L_0x005c:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR
            return r0
        L_0x0060:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NETWORK_NO_FILL
            return r0
        L_0x0064:
            com.mopub.nativeads.NativeErrorCode r0 = com.mopub.nativeads.NativeErrorCode.NETWORK_INVALID_STATE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.BidMachineUtils.transformToMoPubNativeErrorCode(io.bidmachine.utils.BMError):com.mopub.nativeads.NativeErrorCode");
    }
}
