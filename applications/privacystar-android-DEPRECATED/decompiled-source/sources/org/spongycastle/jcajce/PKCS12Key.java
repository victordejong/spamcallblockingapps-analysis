package org.spongycastle.jcajce;

import org.spongycastle.crypto.PBEParametersGenerator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/PKCS12Key.class */
public class PKCS12Key implements PBKDFKey {
    private final char[] password;
    private final boolean useWrongZeroLengthConversion;

    public PKCS12Key(char[] cArr) {
        this(cArr, false);
    }

    public PKCS12Key(char[] cArr, boolean z) {
        char[] cArr2 = cArr == null ? new char[0] : cArr;
        this.password = new char[cArr2.length];
        this.useWrongZeroLengthConversion = z;
        System.arraycopy(cArr2, 0, this.password, 0, cArr2.length);
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "PKCS12";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return (!this.useWrongZeroLengthConversion || this.password.length != 0) ? PBEParametersGenerator.PKCS12PasswordToBytes(this.password) : new byte[2];
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS12";
    }

    public char[] getPassword() {
        return this.password;
    }
}
