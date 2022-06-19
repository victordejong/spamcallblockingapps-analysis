package com.pubmatic.sdk.common.log;

import android.util.Log;
import com.pubmatic.sdk.common.OpenWrapSDK;
import com.pubmatic.sdk.common.log.PMLog;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/log/PMDefaultLogger.class */
public class PMDefaultLogger implements PMLog.PMLogging {

    /* renamed from: com.pubmatic.sdk.common.log.PMDefaultLogger$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/log/PMDefaultLogger$a.class */
    static /* synthetic */ class C1861a {

        /* renamed from: a */
        static final /* synthetic */ int[] f422a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[OpenWrapSDK.LogLevel.values().length];
            f422a = iArr;
            try {
                iArr[OpenWrapSDK.LogLevel.Info.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f422a[OpenWrapSDK.LogLevel.Warn.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f422a[OpenWrapSDK.LogLevel.Debug.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f422a[OpenWrapSDK.LogLevel.Verbose.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @Override // com.pubmatic.sdk.common.log.PMLog.PMLogging
    public void log(PMLog.PMLogMessage pMLogMessage) {
        int i = C1861a.f422a[pMLogMessage.mLogLevel.ordinal()];
        if (i == 1) {
            Log.i(pMLogMessage.mTAG, pMLogMessage.mMsg);
        } else if (i == 2) {
            Log.w(pMLogMessage.mTAG, pMLogMessage.mMsg);
        } else if (i == 3) {
            Log.d(pMLogMessage.mTAG, pMLogMessage.mMsg);
        } else if (i == 4) {
            Log.v(pMLogMessage.mTAG, pMLogMessage.mMsg);
        }
        if (pMLogMessage.mLogLevel == OpenWrapSDK.LogLevel.Error) {
            Log.e(pMLogMessage.mTAG, pMLogMessage.mMsg);
        }
    }
}
