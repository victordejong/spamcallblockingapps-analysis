package org.spongycastle.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.crypto.engines.GOST28147Engine;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/spec/GOST28147ParameterSpec.class */
public class GOST28147ParameterSpec implements AlgorithmParameterSpec {
    private static Map oidMappings = new HashMap();

    /* renamed from: iv */
    private byte[] f1501iv;
    private byte[] sBox;

    static {
        oidMappings.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_A_ParamSet, "E-A");
        oidMappings.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_B_ParamSet, "E-B");
        oidMappings.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_C_ParamSet, "E-C");
        oidMappings.put(CryptoProObjectIdentifiers.id_Gost28147_89_CryptoPro_D_ParamSet, "E-D");
    }

    public GOST28147ParameterSpec(String str) {
        this.f1501iv = null;
        this.sBox = null;
        this.sBox = GOST28147Engine.getSBox(str);
    }

    public GOST28147ParameterSpec(String str, byte[] bArr) {
        this(str);
        this.f1501iv = new byte[bArr.length];
        System.arraycopy(bArr, 0, this.f1501iv, 0, bArr.length);
    }

    public GOST28147ParameterSpec(ASN1ObjectIdentifier aSN1ObjectIdentifier, byte[] bArr) {
        this(getName(aSN1ObjectIdentifier));
        this.f1501iv = Arrays.clone(bArr);
    }

    public GOST28147ParameterSpec(byte[] bArr) {
        this.f1501iv = null;
        this.sBox = null;
        this.sBox = new byte[bArr.length];
        System.arraycopy(bArr, 0, this.sBox, 0, bArr.length);
    }

    public GOST28147ParameterSpec(byte[] bArr, byte[] bArr2) {
        this(bArr);
        this.f1501iv = new byte[bArr2.length];
        System.arraycopy(bArr2, 0, this.f1501iv, 0, bArr2.length);
    }

    private static String getName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String str = (String) oidMappings.get(aSN1ObjectIdentifier);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unknown OID: " + aSN1ObjectIdentifier);
    }

    public byte[] getIV() {
        return Arrays.clone(this.f1501iv);
    }

    public byte[] getSBox() {
        return Arrays.clone(this.sBox);
    }

    public byte[] getSbox() {
        return Arrays.clone(this.sBox);
    }
}
