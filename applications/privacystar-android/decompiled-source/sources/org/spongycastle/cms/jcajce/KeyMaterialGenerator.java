package org.spongycastle.cms.jcajce;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/KeyMaterialGenerator.class */
interface KeyMaterialGenerator {
    byte[] generateKDFMaterial(AlgorithmIdentifier algorithmIdentifier, int i, byte[] bArr);
}
