package org.spongycastle.operator.jcajce;

import java.security.PrivateKey;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.util.DefaultJcaJceHelper;
import org.spongycastle.jcajce.util.NamedJcaJceHelper;
import org.spongycastle.jcajce.util.ProviderJcaJceHelper;
import org.spongycastle.operator.AsymmetricKeyUnwrapper;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/jcajce/JceAsymmetricKeyUnwrapper.class */
public class JceAsymmetricKeyUnwrapper extends AsymmetricKeyUnwrapper {
    private PrivateKey privKey;
    private boolean unwrappedKeyMustBeEncodable;
    private OperatorHelper helper = new OperatorHelper(new DefaultJcaJceHelper());
    private Map extraMappings = new HashMap();

    public JceAsymmetricKeyUnwrapper(AlgorithmIdentifier algorithmIdentifier, PrivateKey privateKey) {
        super(algorithmIdentifier);
        this.privKey = privateKey;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x008d A[Catch: BadPaddingException -> 0x00b9, IllegalBlockSizeException -> 0x00df, InvalidKeyException -> 0x0105, TRY_ENTER, TryCatch #4 {InvalidKeyException -> 0x0105, BadPaddingException -> 0x00b9, IllegalBlockSizeException -> 0x00df, blocks: (B:2:0x0000, B:5:0x0028, B:6:0x0036, B:8:0x0040, B:10:0x0053, B:12:0x005d, B:15:0x006f, B:21:0x008d, B:22:0x00ac, B:22:0x00ac, B:23:0x00af), top: B:41:0x0000 }] */
    @Override // org.spongycastle.operator.KeyUnwrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.operator.GenericKey generateUnwrappedKey(org.spongycastle.asn1.x509.AlgorithmIdentifier r6, byte[] r7) throws org.spongycastle.operator.OperatorException {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.operator.jcajce.JceAsymmetricKeyUnwrapper.generateUnwrappedKey(org.spongycastle.asn1.x509.AlgorithmIdentifier, byte[]):org.spongycastle.operator.GenericKey");
    }

    public JceAsymmetricKeyUnwrapper setAlgorithmMapping(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        this.extraMappings.put(aSN1ObjectIdentifier, str);
        return this;
    }

    public JceAsymmetricKeyUnwrapper setMustProduceEncodableUnwrappedKey(boolean z) {
        this.unwrappedKeyMustBeEncodable = z;
        return this;
    }

    public JceAsymmetricKeyUnwrapper setProvider(String str) {
        this.helper = new OperatorHelper(new NamedJcaJceHelper(str));
        return this;
    }

    public JceAsymmetricKeyUnwrapper setProvider(Provider provider) {
        this.helper = new OperatorHelper(new ProviderJcaJceHelper(provider));
        return this;
    }
}
