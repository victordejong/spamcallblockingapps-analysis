package com.pubmatic.sdk.video;

import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.network.POBTrackerHandler;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/POBVastErrorHandler.class */
public class POBVastErrorHandler {

    /* renamed from: a */
    private POBTrackerHandler f867a;

    public POBVastErrorHandler(POBTrackerHandler pOBTrackerHandler) {
        this.f867a = pOBTrackerHandler;
    }

    /* renamed from: a */
    private boolean m715a(POBVastError pOBVastError) {
        return (pOBVastError == null || convertToPOBError(pOBVastError) == null) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.pubmatic.sdk.common.POBError convertToPOBError(com.pubmatic.sdk.video.POBVastError r5) {
        /*
            r0 = r5
            int r0 = r0.getErrorCode()
            r6 = r0
            r0 = r6
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 == r1) goto Led
            r0 = r6
            r1 = 201(0xc9, float:2.82E-43)
            if (r0 == r1) goto Led
            r0 = r6
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto Led
            r0 = r6
            r1 = 900(0x384, float:1.261E-42)
            if (r0 == r1) goto Lde
            r0 = r6
            switch(r0) {
                case 100: goto La2;
                case 101: goto La2;
                case 102: goto La2;
                default: goto L3c;
            }
        L3c:
            r0 = r6
            switch(r0) {
                case 300: goto Lde;
                case 301: goto Lb1;
                case 302: goto Lcf;
                case 303: goto Lcf;
                case 304: goto Lb1;
                default: goto L60;
            }
        L60:
            r0 = r6
            switch(r0) {
                case 400: goto Led;
                case 401: goto Lcf;
                case 402: goto Lc0;
                case 403: goto Led;
                default: goto L80;
            }
        L80:
            r0 = r6
            switch(r0) {
                case 500: goto Led;
                case 501: goto Lcf;
                case 502: goto Lcf;
                case 503: goto Led;
                default: goto La0;
            }
        La0:
            r0 = 0
            return r0
        La2:
            com.pubmatic.sdk.common.POBError r0 = new com.pubmatic.sdk.common.POBError
            r1 = r0
            r2 = 1007(0x3ef, float:1.411E-42)
            r3 = r5
            java.lang.String r3 = r3.getErrorMessage()
            r1.<init>(r2, r3)
            return r0
        Lb1:
            com.pubmatic.sdk.common.POBError r0 = new com.pubmatic.sdk.common.POBError
            r1 = r0
            r2 = 1005(0x3ed, float:1.408E-42)
            r3 = r5
            java.lang.String r3 = r3.getErrorMessage()
            r1.<init>(r2, r3)
            return r0
        Lc0:
            com.pubmatic.sdk.common.POBError r0 = new com.pubmatic.sdk.common.POBError
            r1 = r0
            r2 = 1003(0x3eb, float:1.406E-42)
            r3 = r5
            java.lang.String r3 = r3.getErrorMessage()
            r1.<init>(r2, r3)
            return r0
        Lcf:
            com.pubmatic.sdk.common.POBError r0 = new com.pubmatic.sdk.common.POBError
            r1 = r0
            r2 = 1002(0x3ea, float:1.404E-42)
            r3 = r5
            java.lang.String r3 = r3.getErrorMessage()
            r1.<init>(r2, r3)
            return r0
        Lde:
            com.pubmatic.sdk.common.POBError r0 = new com.pubmatic.sdk.common.POBError
            r1 = r0
            r2 = 1006(0x3ee, float:1.41E-42)
            r3 = r5
            java.lang.String r3 = r3.getErrorMessage()
            r1.<init>(r2, r3)
            return r0
        Led:
            com.pubmatic.sdk.common.POBError r0 = new com.pubmatic.sdk.common.POBError
            r1 = r0
            r2 = 1009(0x3f1, float:1.414E-42)
            r3 = r5
            java.lang.String r3 = r3.getErrorMessage()
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pubmatic.sdk.video.POBVastErrorHandler.convertToPOBError(com.pubmatic.sdk.video.POBVastError):com.pubmatic.sdk.common.POBError");
    }

    public void executeVastErrors(List<String> list, POBVastError pOBVastError) {
        PMLog.debug("POBVastErrorHandler", POBLogConstants.MSG_ERROR_HANDLER_VAST_ERROR, pOBVastError.toString());
        if (list == null || list.isEmpty()) {
            PMLog.warn("POBVastErrorHandler", POBLogConstants.MSG_ERROR_HANDLER_ERROR_EMPTY_TRACKER_URLS, new Object[0]);
        } else if (!m715a(pOBVastError)) {
            PMLog.warn("POBVastErrorHandler", POBLogConstants.MSG_ERROR_HANDLER_ERROR_EXECUTING_TRACKER, Integer.valueOf(pOBVastError.getErrorCode()));
        } else {
            POBTrackerHandler pOBTrackerHandler = this.f867a;
            pOBTrackerHandler.sendTrackers(list, "[ERRORCODE]", "" + pOBVastError.getErrorCode());
        }
    }
}
