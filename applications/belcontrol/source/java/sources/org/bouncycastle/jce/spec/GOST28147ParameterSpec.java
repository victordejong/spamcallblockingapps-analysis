package org.bouncycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.engines.GOST28147Engine;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/spec/GOST28147ParameterSpec.class */
public class GOST28147ParameterSpec implements AlgorithmParameterSpec {

    /* renamed from: iv */
    private byte[] f7642iv;
    private byte[] sBox;

    public GOST28147ParameterSpec(String str) {
        this.f7642iv = null;
        this.sBox = null;
        this.sBox = GOST28147Engine.getSBox(str);
    }

    public GOST28147ParameterSpec(String str, byte[] bArr) {
        this(str);
        byte[] bArr2 = new byte[bArr.length];
        this.f7642iv = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public GOST28147ParameterSpec(byte[] bArr) {
        this.f7642iv = null;
        this.sBox = null;
        byte[] bArr2 = new byte[bArr.length];
        this.sBox = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public GOST28147ParameterSpec(byte[] bArr, byte[] bArr2) {
        this(bArr);
        byte[] bArr3 = new byte[bArr2.length];
        this.f7642iv = bArr3;
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
    }

    public byte[] getIV() {
        byte[] bArr = this.f7642iv;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public byte[] getSbox() {
        return this.sBox;
    }
}
