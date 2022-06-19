package com.google.firebase.messaging;

import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/SendException.class */
public final class SendException extends Exception {
    public static final int ERROR_INVALID_PARAMETERS = 1;
    public static final int ERROR_SIZE = 2;
    public static final int ERROR_TOO_MANY_MESSAGES = 4;
    public static final int ERROR_TTL_EXCEEDED = 3;
    public static final int ERROR_UNKNOWN = 0;
    private final int zza;

    public SendException(String str) {
        super(str);
        int i = 0;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.US);
            boolean z = true;
            switch (lowerCase.hashCode()) {
                case -1743242157:
                    if (lowerCase.equals("service_not_available")) {
                        z = true;
                        break;
                    }
                    break;
                case -1290953729:
                    if (lowerCase.equals("toomanymessages")) {
                        z = true;
                        break;
                    }
                    break;
                case -920906446:
                    if (lowerCase.equals("invalid_parameters")) {
                        z = false;
                        break;
                    }
                    break;
                case -617027085:
                    if (lowerCase.equals("messagetoobig")) {
                        z = true;
                        break;
                    }
                    break;
                case -95047692:
                    if (lowerCase.equals("missing_to")) {
                        z = true;
                        break;
                    }
                    break;
            }
            i = (!z || z) ? 1 : !z ? !z ? !z ? 0 : 4 : 3 : 2;
        }
        this.zza = i;
    }

    public final int getErrorCode() {
        return this.zza;
    }
}
