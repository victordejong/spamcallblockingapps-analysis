package org.spongycastle.pqc.math.linearalgebra;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/Vector.class */
public abstract class Vector {
    protected int length;

    public abstract Vector add(Vector vector);

    public abstract boolean equals(Object obj);

    public abstract byte[] getEncoded();

    public final int getLength() {
        return this.length;
    }

    public abstract int hashCode();

    public abstract boolean isZero();

    public abstract Vector multiply(Permutation permutation);

    public abstract String toString();
}
