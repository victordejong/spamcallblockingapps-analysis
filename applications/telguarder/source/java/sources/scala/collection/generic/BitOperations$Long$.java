package scala.collection.generic;

import scala.collection.generic.BitOperations;
import scala.collection.immutable.IndexedSeq;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Long$.class */
public class BitOperations$Long$ implements BitOperations.Long {
    public static final BitOperations$Long$ MODULE$ = null;

    static {
        new BitOperations$Long$();
    }

    public BitOperations$Long$() {
        MODULE$ = this;
        BitOperations.Long.Cclass.$init$(this);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public String bitString(long j, String str) {
        return BitOperations.Long.Cclass.bitString(this, j, str);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public String bitString$default$2() {
        return BitOperations.Long.Cclass.bitString$default$2(this);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public IndexedSeq<Object> bits(long j) {
        return BitOperations.Long.Cclass.bits(this, j);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public long complement(long j) {
        return BitOperations.Long.Cclass.complement(this, j);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public boolean hasMatch(long j, long j2, long j3) {
        return BitOperations.Long.Cclass.hasMatch(this, j, j2, j3);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public long highestOneBit(long j) {
        return BitOperations.Long.Cclass.highestOneBit(this, j);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public long mask(long j, long j2) {
        return BitOperations.Long.Cclass.mask(this, j, j2);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public boolean shorter(long j, long j2) {
        return BitOperations.Long.Cclass.shorter(this, j, j2);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public boolean unsignedCompare(long j, long j2) {
        return BitOperations.Long.Cclass.unsignedCompare(this, j, j2);
    }

    @Override // scala.collection.generic.BitOperations.Long
    public boolean zero(long j, long j2) {
        return BitOperations.Long.Cclass.zero(this, j, j2);
    }
}
