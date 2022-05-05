package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/HeartbeatMode.class */
public class HeartbeatMode {
    public static final short peer_allowed_to_send = 1;
    public static final short peer_not_allowed_to_send = 2;

    public static boolean isValid(short s) {
        boolean z = true;
        if (s < 1 || s > 2) {
            z = false;
        }
        return z;
    }
}
