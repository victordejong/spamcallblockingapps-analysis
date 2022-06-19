package scala.collection.generic;

import scala.collection.generic.BitOperations;
import scala.collection.immutable.IndexedSeq;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Int$.class */
public class BitOperations$Int$ implements BitOperations.Int {
    public static final BitOperations$Int$ MODULE$ = null;

    static {
        new BitOperations$Int$();
    }

    public BitOperations$Int$() {
        MODULE$ = this;
        BitOperations.Int.Cclass.$init$(this);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public String bitString(int i, String str) {
        return BitOperations.Int.Cclass.bitString(this, i, str);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public String bitString$default$2() {
        return BitOperations.Int.Cclass.bitString$default$2(this);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public IndexedSeq<Object> bits(int i) {
        return BitOperations.Int.Cclass.bits(this, i);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public int complement(int i) {
        return BitOperations.Int.Cclass.complement(this, i);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public boolean hasMatch(int i, int i2, int i3) {
        return BitOperations.Int.Cclass.hasMatch(this, i, i2, i3);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public int highestOneBit(int i) {
        return BitOperations.Int.Cclass.highestOneBit(this, i);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public int mask(int i, int i2) {
        return BitOperations.Int.Cclass.mask(this, i, i2);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public boolean shorter(int i, int i2) {
        return BitOperations.Int.Cclass.shorter(this, i, i2);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public boolean unsignedCompare(int i, int i2) {
        return BitOperations.Int.Cclass.unsignedCompare(this, i, i2);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public boolean zero(int i, int i2) {
        return BitOperations.Int.Cclass.zero(this, i, i2);
    }
}
