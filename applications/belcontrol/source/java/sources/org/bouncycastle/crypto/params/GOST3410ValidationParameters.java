package org.bouncycastle.crypto.params;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/GOST3410ValidationParameters.class */
public class GOST3410ValidationParameters {

    /* renamed from: c */
    private int f7585c;

    /* renamed from: cL */
    private long f7586cL;

    /* renamed from: x0 */
    private int f7587x0;
    private long x0L;

    public GOST3410ValidationParameters(int i, int i2) {
        this.f7587x0 = i;
        this.f7585c = i2;
    }

    public GOST3410ValidationParameters(long j, long j2) {
        this.x0L = j;
        this.f7586cL = j2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410ValidationParameters)) {
            return false;
        }
        GOST3410ValidationParameters gOST3410ValidationParameters = (GOST3410ValidationParameters) obj;
        return gOST3410ValidationParameters.f7585c == this.f7585c && gOST3410ValidationParameters.f7587x0 == this.f7587x0 && gOST3410ValidationParameters.f7586cL == this.f7586cL && gOST3410ValidationParameters.x0L == this.x0L;
    }

    public int getC() {
        return this.f7585c;
    }

    public long getCL() {
        return this.f7586cL;
    }

    public int getX0() {
        return this.f7587x0;
    }

    public long getX0L() {
        return this.x0L;
    }

    public int hashCode() {
        int i = this.f7587x0;
        int i2 = this.f7585c;
        long j = this.x0L;
        int i3 = (int) j;
        int i4 = (int) (j >> 32);
        long j2 = this.f7586cL;
        return ((((i ^ i2) ^ i3) ^ i4) ^ ((int) j2)) ^ ((int) (j2 >> 32));
    }
}
