package org.spongycastle.operator.p037bc;

import java.security.Key;
import org.spongycastle.operator.GenericKey;
/* renamed from: org.spongycastle.operator.bc.OperatorUtils */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/bc/OperatorUtils.class */
class OperatorUtils {
    OperatorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] getKeyBytes(GenericKey genericKey) {
        if (genericKey.getRepresentation() instanceof Key) {
            return ((Key) genericKey.getRepresentation()).getEncoded();
        }
        if (genericKey.getRepresentation() instanceof byte[]) {
            return (byte[]) genericKey.getRepresentation();
        }
        throw new IllegalArgumentException("unknown generic key type");
    }
}
