package com.truecaller.presence;

import androidx.annotation.Keep;
import com.truecaller.api.services.presence.p139v1.models.Availability;
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/presence/AvailabilityStatus.class */
public enum AvailabilityStatus {
    AVAILABLE(Availability.Status.AVAILABLE),
    BUSY(Availability.Status.BUSY),
    UNKNOWN(Availability.Status.UNKNOWN);
    
    private final Availability.Status mGrpcStatus;

    AvailabilityStatus(Availability.Status status) {
        this.mGrpcStatus = status;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
        if (r0 != 4) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.truecaller.presence.AvailabilityStatus fromGrpsStatus(com.truecaller.api.services.presence.p139v1.models.Availability.Status r3) {
        /*
            r0 = r3
            if (r0 == 0) goto L30
            r0 = r3
            int r0 = r0.ordinal()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L2c
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L28
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L24
            r0 = r4
            r1 = 3
            if (r0 == r1) goto L2c
            r0 = r4
            r1 = 4
            if (r0 == r1) goto L2c
            goto L30
        L24:
            com.truecaller.presence.AvailabilityStatus r0 = com.truecaller.presence.AvailabilityStatus.BUSY
            return r0
        L28:
            com.truecaller.presence.AvailabilityStatus r0 = com.truecaller.presence.AvailabilityStatus.AVAILABLE
            return r0
        L2c:
            com.truecaller.presence.AvailabilityStatus r0 = com.truecaller.presence.AvailabilityStatus.UNKNOWN
            return r0
        L30:
            com.truecaller.presence.AvailabilityStatus r0 = com.truecaller.presence.AvailabilityStatus.UNKNOWN
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.presence.AvailabilityStatus.fromGrpsStatus(com.truecaller.api.services.presence.v1.models.Availability$Status):com.truecaller.presence.AvailabilityStatus");
    }

    public static AvailabilityStatus fromString(String str, AvailabilityStatus availabilityStatus) {
        if (str == null) {
            return availabilityStatus;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case 2050553:
                if (str.equals("BUSY")) {
                    z = false;
                    break;
                }
                break;
            case 433141802:
                if (str.equals("UNKNOWN")) {
                    z = true;
                    break;
                }
                break;
            case 2052692649:
                if (str.equals("AVAILABLE")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return BUSY;
            case true:
                return UNKNOWN;
            case true:
                return AVAILABLE;
            default:
                return availabilityStatus;
        }
    }

    public Availability.Status toGrpcStatus() {
        return this.mGrpcStatus;
    }
}
