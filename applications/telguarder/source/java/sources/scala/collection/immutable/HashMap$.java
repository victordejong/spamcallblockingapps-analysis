package scala.collection.immutable;

import scala.Function2;
import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.generic.BitOperations;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenMapFactory;
import scala.collection.generic.ImmutableMapFactory;
import scala.collection.immutable.HashMap;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$.class */
public final class HashMap$ extends ImmutableMapFactory<HashMap> implements BitOperations.Int, Serializable {
    public static final HashMap$ MODULE$ = null;
    private final HashMap.Merger<Object, Object> defaultMerger = new HashMap$$anon$2(new HashMap$$anonfun$1());

    static {
        new HashMap$();
    }

    private HashMap$() {
        MODULE$ = this;
        BitOperations.Int.Cclass.$init$(this);
    }

    private <A1, B1> HashMap.Merger<A1, B1> liftMerger0(Function2<Tuple2<A1, B1>, Tuple2<A1, B1>, Tuple2<A1, B1>> function2) {
        return new HashMap$$anon$2(function2);
    }

    private Object readResolve() {
        return MODULE$;
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

    public <A, B> CanBuildFrom<HashMap<?, ?>, Tuple2<A, B>, HashMap<A, B>> canBuildFrom() {
        return new GenMapFactory.MapCanBuildFrom(this);
    }

    @Override // scala.collection.generic.BitOperations.Int
    public int complement(int i) {
        return BitOperations.Int.Cclass.complement(this, i);
    }

    @Override // scala.collection.generic.MapFactory, scala.collection.generic.GenMapFactory
    public <A, B> HashMap<A, B> empty() {
        return HashMap$EmptyHashMap$.MODULE$;
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

    public int scala$collection$immutable$HashMap$$bufferSize(int i) {
        return RichInt$.MODULE$.min$extension(Predef$.MODULE$.intWrapper(i + 6), 224);
    }

    public int scala$collection$immutable$HashMap$$keepBits(int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 != 0) {
                int i5 = ((i - 1) & i) ^ i;
                int i6 = i4;
                if ((i2 & 1) != 0) {
                    i6 = i4 | i5;
                }
                i &= i5 ^ (-1);
                i2 >>>= 1;
                i3 = i6;
            } else {
                return i4;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <A1, B1> HashMap.Merger<A1, B1> scala$collection$immutable$HashMap$$liftMerger(Function2<Tuple2<A1, B1>, Tuple2<A1, B1>, Tuple2<A1, B1>> function2) {
        return function2 == null ? this.defaultMerger : new HashMap$$anon$2(function2);
    }

    public <A, B> HashMap.HashTrieMap<A, B> scala$collection$immutable$HashMap$$makeHashTrieMap(int i, HashMap<A, B> hashMap, int i2, HashMap<A, B> hashMap2, int i3, int i4) {
        HashMap.HashTrieMap<A, B> hashTrieMap;
        int i5 = (i >>> i3) & 31;
        int i6 = (i2 >>> i3) & 31;
        if (i5 != i6) {
            HashMap[] hashMapArr = new HashMap[2];
            if (i5 < i6) {
                hashMapArr[0] = hashMap;
                hashMapArr[1] = hashMap2;
            } else {
                hashMapArr[0] = hashMap2;
                hashMapArr[1] = hashMap;
            }
            hashTrieMap = new HashMap.HashTrieMap<>((1 << i5) | (1 << i6), hashMapArr, i4);
        } else {
            hashTrieMap = new HashMap.HashTrieMap<>(1 << i5, new HashMap[]{scala$collection$immutable$HashMap$$makeHashTrieMap(i, hashMap, i2, hashMap2, i3 + 5, i4)}, i4);
        }
        return hashTrieMap;
    }

    public <A, B> HashMap<A, B> scala$collection$immutable$HashMap$$nullToEmpty(HashMap<A, B> hashMap) {
        HashMap<A, B> hashMap2 = hashMap;
        if (hashMap == null) {
            hashMap2 = empty();
        }
        return hashMap2;
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
