package scala.collection.immutable;

import scala.Tuple2;
import scala.collection.generic.BitOperations;
import scala.collection.immutable.LongMap;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMapUtils$.class */
public final class LongMapUtils$ implements BitOperations.Long {
    public static final LongMapUtils$ MODULE$ = null;

    static {
        new LongMapUtils$();
    }

    private LongMapUtils$() {
        MODULE$ = this;
        BitOperations.Long.Cclass.$init$(this);
    }

    public <T> LongMap<T> bin(long j, long j2, LongMap<T> longMap, LongMap<T> longMap2) {
        Tuple2 tuple2 = new Tuple2(longMap, longMap2);
        return LongMap$Nil$.MODULE$.equals(tuple2.mo268_2()) ? (LongMap) tuple2.mo269_1() : LongMap$Nil$.MODULE$.equals(tuple2.mo269_1()) ? (LongMap) tuple2.mo268_2() : new LongMap.Bin(j, j2, (LongMap) tuple2.mo269_1(), (LongMap) tuple2.mo268_2());
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

    public long branchMask(long j, long j2) {
        return highestOneBit(j ^ j2);
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

    public <T> LongMap<T> join(long j, LongMap<T> longMap, long j2, LongMap<T> longMap2) {
        long branchMask = branchMask(j, j2);
        long mask = mask(j, branchMask);
        return zero(j, branchMask) ? new LongMap.Bin(mask, branchMask, longMap, longMap2) : new LongMap.Bin(mask, branchMask, longMap2, longMap);
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
