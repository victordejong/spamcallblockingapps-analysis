package org.spongycastle.asn1;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/InMemoryRepresentable.class */
public interface InMemoryRepresentable {
    ASN1Primitive getLoadedObject() throws IOException;
}
