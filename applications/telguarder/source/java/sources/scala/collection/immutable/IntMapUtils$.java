package scala.collection.immutable;

import scala.Tuple2;
import scala.collection.generic.BitOperations;
import scala.collection.immutable.IntMap;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMapUtils$.class */
public final class IntMapUtils$ implements BitOperations.Int {
    public static final IntMapUtils$ MODULE$ = null;

    static {
        new IntMapUtils$();
    }

    private IntMapUtils$() {
        MODULE$ = this;
        BitOperations.Int.Cclass.$init$(this);
    }

    public <T> IntMap<T> bin(int i, int i2, IntMap<T> intMap, IntMap<T> intMap2) {
        Tuple2 tuple2 = new Tuple2(intMap, intMap2);
        return IntMap$Nil$.MODULE$.equals(tuple2.mo268_2()) ? (IntMap) tuple2.mo269_1() : IntMap$Nil$.MODULE$.equals(tuple2.mo269_1()) ? (IntMap) tuple2.mo268_2() : new IntMap.Bin(i, i2, (IntMap) tuple2.mo269_1(), (IntMap) tuple2.mo268_2());
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

    public int branchMask(int i, int i2) {
        return highestOneBit(i ^ i2);
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

    public <T> IntMap<T> join(int i, IntMap<T> intMap, int i2, IntMap<T> intMap2) {
        int branchMask = branchMask(i, i2);
        int mask = mask(i, branchMask);
        return zero(i, branchMask) ? new IntMap.Bin(mask, branchMask, intMap, intMap2) : new IntMap.Bin(mask, branchMask, intMap2, intMap);
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
