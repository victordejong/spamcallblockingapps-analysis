package org.spongycastle.jcajce.provider.config;

import java.io.OutputStream;
import java.security.KeyStore;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/config/PKCS12StoreParameter.class */
public class PKCS12StoreParameter extends org.spongycastle.jcajce.PKCS12StoreParameter {
    public PKCS12StoreParameter(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter) {
        super(outputStream, protectionParameter, false);
    }

    public PKCS12StoreParameter(OutputStream outputStream, KeyStore.ProtectionParameter protectionParameter, boolean z) {
        super(outputStream, protectionParameter, z);
    }

    public PKCS12StoreParameter(OutputStream outputStream, char[] cArr) {
        super(outputStream, cArr, false);
    }

    public PKCS12StoreParameter(OutputStream outputStream, char[] cArr, boolean z) {
        super(outputStream, new KeyStore.PasswordProtection(cArr), z);
    }
}
