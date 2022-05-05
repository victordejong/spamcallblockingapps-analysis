package org.spongycastle.x509;

import java.util.ArrayList;
import java.util.Collection;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/x509/X509CollectionStoreParameters.class */
public class X509CollectionStoreParameters implements X509StoreParameters {
    private Collection collection;

    public X509CollectionStoreParameters(Collection collection) {
        if (collection == null) {
            throw new NullPointerException("collection cannot be null");
        }
        this.collection = collection;
    }

    public Object clone() {
        return new X509CollectionStoreParameters(this.collection);
    }

    public Collection getCollection() {
        return new ArrayList(this.collection);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("X509CollectionStoreParameters: [\n");
        stringBuffer.append("  collection: " + this.collection + IOUtils.LINE_SEPARATOR_UNIX);
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
