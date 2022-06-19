package com.google.firebase.messaging;

import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/SendException.class */
public final class SendException extends Exception {

    /* renamed from: a */
    private final int f56314a;

    public SendException(String str) {
        super(str);
        this.f56314a = m8243a(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static int m8243a(String str) {
        boolean z;
        if (str == null) {
            return 0;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        switch (lowerCase.hashCode()) {
            case -1743242157:
                if (lowerCase.equals("service_not_available")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1290953729:
                if (lowerCase.equals("toomanymessages")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -920906446:
                if (lowerCase.equals("invalid_parameters")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -617027085:
                if (lowerCase.equals("messagetoobig")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -95047692:
                if (lowerCase.equals("missing_to")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (!z || z) {
            return 1;
        }
        if (z) {
            return 2;
        }
        if (z) {
            return 3;
        }
        return !z ? 0 : 4;
    }
}
