package org.spongycastle.crypto.params;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/GOST3410ValidationParameters.class */
public class GOST3410ValidationParameters {

    /* renamed from: c */
    private int f1423c;

    /* renamed from: cL */
    private long f1424cL;

    /* renamed from: x0 */
    private int f1425x0;
    private long x0L;

    public GOST3410ValidationParameters(int i, int i2) {
        this.f1425x0 = i;
        this.f1423c = i2;
    }

    public GOST3410ValidationParameters(long j, long j2) {
        this.x0L = j;
        this.f1424cL = j2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410ValidationParameters)) {
            return false;
        }
        GOST3410ValidationParameters gOST3410ValidationParameters = (GOST3410ValidationParameters) obj;
        return gOST3410ValidationParameters.f1423c == this.f1423c && gOST3410ValidationParameters.f1425x0 == this.f1425x0 && gOST3410ValidationParameters.f1424cL == this.f1424cL && gOST3410ValidationParameters.x0L == this.x0L;
    }

    public int getC() {
        return this.f1423c;
    }

    public long getCL() {
        return this.f1424cL;
    }

    public int getX0() {
        return this.f1425x0;
    }

    public long getX0L() {
        return this.x0L;
    }

    public int hashCode() {
        return ((((this.f1425x0 ^ this.f1423c) ^ ((int) this.x0L)) ^ ((int) (this.x0L >> 32))) ^ ((int) this.f1424cL)) ^ ((int) (this.f1424cL >> 32));
    }
}
