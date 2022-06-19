package scala.collection.immutable;

import scala.Predef$;
import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.ImmutableSetFactory;
import scala.collection.immutable.HashSet;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$.class */
public final class HashSet$ extends ImmutableSetFactory<HashSet> implements Serializable {
    public static final HashSet$ MODULE$ = null;

    static {
        new HashSet$();
    }

    private HashSet$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<HashSet<?>, A, HashSet<A>> canBuildFrom() {
        return setCanBuildFrom();
    }

    @Override // scala.collection.generic.ImmutableSetFactory
    /* renamed from: emptyInstance */
    public HashSet emptyInstance2() {
        return HashSet$EmptyHashSet$.MODULE$;
    }

    public int scala$collection$immutable$HashSet$$bufferSize(int i) {
        return RichInt$.MODULE$.min$extension(Predef$.MODULE$.intWrapper(i + 6), 224);
    }

    public int scala$collection$immutable$HashSet$$keepBits(int i, int i2) {
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

    public <A> HashSet.HashTrieSet<A> scala$collection$immutable$HashSet$$makeHashTrieSet(int i, HashSet<A> hashSet, int i2, HashSet<A> hashSet2, int i3) {
        HashSet.HashTrieSet<A> hashTrieSet;
        int i4 = (i >>> i3) & 31;
        int i5 = (i2 >>> i3) & 31;
        if (i4 != i5) {
            HashSet[] hashSetArr = new HashSet[2];
            if (i4 < i5) {
                hashSetArr[0] = hashSet;
                hashSetArr[1] = hashSet2;
            } else {
                hashSetArr[0] = hashSet2;
                hashSetArr[1] = hashSet;
            }
            hashTrieSet = new HashSet.HashTrieSet<>((1 << i4) | (1 << i5), hashSetArr, hashSet.size() + hashSet2.size());
        } else {
            HashSet.HashTrieSet<A> scala$collection$immutable$HashSet$$makeHashTrieSet = scala$collection$immutable$HashSet$$makeHashTrieSet(i, hashSet, i2, hashSet2, i3 + 5);
            hashTrieSet = new HashSet.HashTrieSet<>(1 << i4, new HashSet[]{scala$collection$immutable$HashSet$$makeHashTrieSet}, scala$collection$immutable$HashSet$$makeHashTrieSet.size());
        }
        return hashTrieSet;
    }

    public <A> HashSet<A> scala$collection$immutable$HashSet$$nullToEmpty(HashSet<A> hashSet) {
        HashSet<A> hashSet2 = hashSet;
        if (hashSet == null) {
            hashSet2 = (HashSet) empty();
        }
        return hashSet2;
    }

    public boolean scala$collection$immutable$HashSet$$unsignedCompare(int i, int i2) {
        boolean z = i < i2;
        return ((i < 0) ^ z) ^ (i2 < 0);
    }
}
