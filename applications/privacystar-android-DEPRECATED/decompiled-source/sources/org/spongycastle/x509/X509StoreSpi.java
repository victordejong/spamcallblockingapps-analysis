package org.spongycastle.x509;

import java.util.Collection;
import org.spongycastle.util.Selector;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/x509/X509StoreSpi.class */
public abstract class X509StoreSpi {
    public abstract Collection engineGetMatches(Selector selector);

    public abstract void engineInit(X509StoreParameters x509StoreParameters);
}
