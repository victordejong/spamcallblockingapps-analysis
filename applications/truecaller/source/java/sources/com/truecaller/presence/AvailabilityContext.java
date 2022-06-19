package com.truecaller.presence;

import androidx.annotation.Keep;
import com.truecaller.api.services.presence.p139v1.models.Availability;
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/presence/AvailabilityContext.class */
public enum AvailabilityContext {
    CALL(Availability.Context.CALL),
    MEETING(Availability.Context.MEETING),
    SLEEP(Availability.Context.SLEEP),
    UNKNOWN(Availability.Context.NOTSET);
    
    private final Availability.Context mGrpcContext;

    AvailabilityContext(Availability.Context context) {
        this.mGrpcContext = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
        if (r0 != 4) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.truecaller.presence.AvailabilityContext fromGrpcContext(com.truecaller.api.services.presence.p139v1.models.Availability.Context r3) {
        /*
            r0 = r3
            if (r0 == 0) goto L34
            r0 = r3
            int r0 = r0.ordinal()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L30
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L2c
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L28
            r0 = r4
            r1 = 3
            if (r0 == r1) goto L24
            r0 = r4
            r1 = 4
            if (r0 == r1) goto L30
            goto L34
        L24:
            com.truecaller.presence.AvailabilityContext r0 = com.truecaller.presence.AvailabilityContext.SLEEP
            return r0
        L28:
            com.truecaller.presence.AvailabilityContext r0 = com.truecaller.presence.AvailabilityContext.MEETING
            return r0
        L2c:
            com.truecaller.presence.AvailabilityContext r0 = com.truecaller.presence.AvailabilityContext.CALL
            return r0
        L30:
            com.truecaller.presence.AvailabilityContext r0 = com.truecaller.presence.AvailabilityContext.UNKNOWN
            return r0
        L34:
            com.truecaller.presence.AvailabilityContext r0 = com.truecaller.presence.AvailabilityContext.UNKNOWN
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.presence.AvailabilityContext.fromGrpcContext(com.truecaller.api.services.presence.v1.models.Availability$Context):com.truecaller.presence.AvailabilityContext");
    }

    public static AvailabilityContext fromString(String str, AvailabilityContext availabilityContext) {
        if (str == null) {
            return availabilityContext;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case 2060894:
                if (str.equals("CALL")) {
                    z = false;
                    break;
                }
                break;
            case 78984887:
                if (str.equals("SLEEP")) {
                    z = true;
                    break;
                }
                break;
            case 433141802:
                if (str.equals("UNKNOWN")) {
                    z = true;
                    break;
                }
                break;
            case 1660016155:
                if (str.equals("MEETING")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return CALL;
            case true:
                return SLEEP;
            case true:
                return UNKNOWN;
            case true:
                return MEETING;
            default:
                return availabilityContext;
        }
    }

    public Availability.Context toGrpcContext() {
        return this.mGrpcContext;
    }
}
