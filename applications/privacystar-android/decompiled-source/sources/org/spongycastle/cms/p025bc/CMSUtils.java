package org.spongycastle.cms.p025bc;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.operator.GenericKey;
/* renamed from: org.spongycastle.cms.bc.CMSUtils */
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/bc/CMSUtils.class */
class CMSUtils {
    CMSUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CipherParameters getBcKey(GenericKey genericKey) {
        if (genericKey.getRepresentation() instanceof CipherParameters) {
            return (CipherParameters) genericKey.getRepresentation();
        }
        if (genericKey.getRepresentation() instanceof byte[]) {
            return new KeyParameter((byte[]) genericKey.getRepresentation());
        }
        throw new IllegalArgumentException("unknown generic key type");
    }
}
