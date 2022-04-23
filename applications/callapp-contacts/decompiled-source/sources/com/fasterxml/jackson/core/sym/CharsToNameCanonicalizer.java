package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/sym/CharsToNameCanonicalizer.class */
public final class CharsToNameCanonicalizer {
    protected Bucket[] _buckets;
    protected boolean _canonicalize;
    protected final int _flags;
    protected boolean _hashShared;
    protected int _indexMask;
    protected int _longestCollisionList;
    protected BitSet _overflows;
    protected final CharsToNameCanonicalizer _parent;
    protected final int _seed;
    protected int _size;
    protected int _sizeThreshold;
    protected String[] _symbols;
    protected final AtomicReference<TableInfo> _tableInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket.class */
    public static final class Bucket {
        public final int length;
        public final Bucket next;
        public final String symbol;

        public Bucket(String str, Bucket bucket) {
            this.symbol = str;
            this.next = bucket;
            this.length = bucket != null ? 1 + bucket.length : 1;
        }

        public final String has(char[] cArr, int i, int i2) {
            if (this.symbol.length() != i2) {
                return null;
            }
            int i3 = 0;
            while (this.symbol.charAt(i3) == cArr[i + i3]) {
                int i4 = i3 + 1;
                i3 = i4;
                if (i4 >= i2) {
                    return this.symbol;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$TableInfo.class */
    public static final class TableInfo {
        final Bucket[] buckets;
        final int longestCollisionList;
        final int size;
        final String[] symbols;

        public TableInfo(int i, int i2, String[] strArr, Bucket[] bucketArr) {
            this.size = i;
            this.longestCollisionList = i2;
            this.symbols = strArr;
            this.buckets = bucketArr;
        }

        public TableInfo(CharsToNameCanonicalizer charsToNameCanonicalizer) {
            this.size = charsToNameCanonicalizer._size;
            this.longestCollisionList = charsToNameCanonicalizer._longestCollisionList;
            this.symbols = charsToNameCanonicalizer._symbols;
            this.buckets = charsToNameCanonicalizer._buckets;
        }

        public static TableInfo createInitial(int i) {
            return new TableInfo(0, 0, new String[i], new Bucket[i >> 1]);
        }
    }

    private CharsToNameCanonicalizer(int i) {
        this._parent = null;
        this._seed = i;
        this._canonicalize = true;
        this._flags = -1;
        this._hashShared = false;
        this._longestCollisionList = 0;
        this._tableInfo = new AtomicReference<>(TableInfo.createInitial(64));
    }

    private CharsToNameCanonicalizer(CharsToNameCanonicalizer charsToNameCanonicalizer, int i, int i2, TableInfo tableInfo) {
        this._parent = charsToNameCanonicalizer;
        this._seed = i2;
        this._tableInfo = null;
        this._flags = i;
        this._canonicalize = JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i);
        this._symbols = tableInfo.symbols;
        this._buckets = tableInfo.buckets;
        this._size = tableInfo.size;
        this._longestCollisionList = tableInfo.longestCollisionList;
        int length = this._symbols.length;
        this._sizeThreshold = _thresholdSize(length);
        this._indexMask = length - 1;
        this._hashShared = true;
    }

    private String _addSymbol(char[] cArr, int i, int i2, int i3, int i4) {
        if (this._hashShared) {
            copyArrays();
            this._hashShared = false;
        } else if (this._size >= this._sizeThreshold) {
            rehash();
            i4 = _hashToIndex(calcHash(cArr, i, i2));
        }
        String str = new String(cArr, i, i2);
        String str2 = str;
        if (JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(this._flags)) {
            str2 = InternCache.instance.intern(str);
        }
        this._size++;
        String[] strArr = this._symbols;
        if (strArr[i4] == null) {
            strArr[i4] = str2;
        } else {
            int i5 = i4 >> 1;
            Bucket bucket = new Bucket(str2, this._buckets[i5]);
            int i6 = bucket.length;
            if (i6 > 100) {
                _handleSpillOverflow(i5, bucket, i4);
            } else {
                this._buckets[i5] = bucket;
                this._longestCollisionList = Math.max(i6, this._longestCollisionList);
            }
        }
        return str2;
    }

    private String _findSymbol2(char[] cArr, int i, int i2, Bucket bucket) {
        while (bucket != null) {
            String has = bucket.has(cArr, i, i2);
            if (has != null) {
                return has;
            }
            bucket = bucket.next;
        }
        return null;
    }

    private void _handleSpillOverflow(int i, Bucket bucket, int i2) {
        BitSet bitSet = this._overflows;
        if (bitSet == null) {
            this._overflows = new BitSet();
        } else if (bitSet.get(i)) {
            if (JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(this._flags)) {
                reportTooManyCollisions(100);
            }
            this._canonicalize = false;
            this._symbols[i2] = bucket.symbol;
            this._buckets[i] = null;
            this._size -= bucket.length;
            this._longestCollisionList = -1;
        }
        this._overflows.set(i);
        this._symbols[i2] = bucket.symbol;
        this._buckets[i] = null;
        this._size -= bucket.length;
        this._longestCollisionList = -1;
    }

    private static int _thresholdSize(int i) {
        return i - (i >> 2);
    }

    private void copyArrays() {
        String[] strArr = this._symbols;
        this._symbols = (String[]) Arrays.copyOf(strArr, strArr.length);
        Bucket[] bucketArr = this._buckets;
        this._buckets = (Bucket[]) Arrays.copyOf(bucketArr, bucketArr.length);
    }

    public static CharsToNameCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    protected static CharsToNameCanonicalizer createRoot(int i) {
        return new CharsToNameCanonicalizer(i);
    }

    private void mergeChild(TableInfo tableInfo) {
        int i = tableInfo.size;
        TableInfo tableInfo2 = this._tableInfo.get();
        if (i != tableInfo2.size) {
            if (i > 12000) {
                tableInfo = TableInfo.createInitial(64);
            }
            this._tableInfo.compareAndSet(tableInfo2, tableInfo);
        }
    }

    private void rehash() {
        String[] strArr = this._symbols;
        int length = strArr.length;
        int i = length + length;
        if (i > 65536) {
            this._size = 0;
            this._canonicalize = false;
            this._symbols = new String[64];
            this._buckets = new Bucket[32];
            this._indexMask = 63;
            this._hashShared = false;
            return;
        }
        Bucket[] bucketArr = this._buckets;
        this._symbols = new String[i];
        this._buckets = new Bucket[i >> 1];
        this._indexMask = i - 1;
        this._sizeThreshold = _thresholdSize(i);
        int i2 = 0;
        int i3 = 0;
        for (String str : strArr) {
            i2 = i2;
            i3 = i3;
            if (str != null) {
                i2++;
                int _hashToIndex = _hashToIndex(calcHash(str));
                String[] strArr2 = this._symbols;
                if (strArr2[_hashToIndex] == null) {
                    strArr2[_hashToIndex] = str;
                    i3 = i3;
                } else {
                    int i4 = _hashToIndex >> 1;
                    Bucket bucket = new Bucket(str, this._buckets[i4]);
                    this._buckets[i4] = bucket;
                    i3 = Math.max(i3, bucket.length);
                }
            }
        }
        int i5 = 0;
        int i6 = i3;
        int i7 = i2;
        while (i5 < (length >> 1)) {
            int i8 = i6;
            for (Bucket bucket2 = bucketArr[i5]; bucket2 != null; bucket2 = bucket2.next) {
                i7++;
                String str2 = bucket2.symbol;
                int _hashToIndex2 = _hashToIndex(calcHash(str2));
                String[] strArr3 = this._symbols;
                if (strArr3[_hashToIndex2] == null) {
                    strArr3[_hashToIndex2] = str2;
                } else {
                    int i9 = _hashToIndex2 >> 1;
                    Bucket bucket3 = new Bucket(str2, this._buckets[i9]);
                    this._buckets[i9] = bucket3;
                    i8 = Math.max(i8, bucket3.length);
                }
            }
            i5++;
            i6 = i8;
        }
        this._longestCollisionList = i6;
        this._overflows = null;
        if (i7 != this._size) {
            throw new IllegalStateException(String.format("Internal error on SymbolTable.rehash(): had %d entries; now have %d", Integer.valueOf(this._size), Integer.valueOf(i7)));
        }
    }

    public final int _hashToIndex(int i) {
        int i2 = i + (i >>> 15);
        int i3 = i2 ^ (i2 << 7);
        return (i3 + (i3 >>> 3)) & this._indexMask;
    }

    public final int calcHash(String str) {
        int length = str.length();
        int i = this._seed;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i * 33) + str.charAt(i2);
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public final int calcHash(char[] cArr, int i, int i2) {
        int i3 = this._seed;
        for (int i4 = i; i4 < i2 + i; i4++) {
            i3 = (i3 * 33) + cArr[i4];
        }
        if (i3 == 0) {
            return 1;
        }
        return i3;
    }

    public final String findSymbol(char[] cArr, int i, int i2, int i3) {
        if (i2 <= 0) {
            return "";
        }
        if (!this._canonicalize) {
            return new String(cArr, i, i2);
        }
        int _hashToIndex = _hashToIndex(i3);
        String str = this._symbols[_hashToIndex];
        if (str != null) {
            if (str.length() == i2) {
                int i4 = 0;
                while (str.charAt(i4) == cArr[i + i4]) {
                    int i5 = i4 + 1;
                    i4 = i5;
                    if (i5 == i2) {
                        return str;
                    }
                }
            }
            Bucket bucket = this._buckets[_hashToIndex >> 1];
            if (bucket != null) {
                String has = bucket.has(cArr, i, i2);
                if (has != null) {
                    return has;
                }
                String _findSymbol2 = _findSymbol2(cArr, i, i2, bucket.next);
                if (_findSymbol2 != null) {
                    return _findSymbol2;
                }
            }
        }
        return _addSymbol(cArr, i, i2, i3, _hashToIndex);
    }

    public final int hashSeed() {
        return this._seed;
    }

    public final CharsToNameCanonicalizer makeChild(int i) {
        return new CharsToNameCanonicalizer(this, i, this._seed, this._tableInfo.get());
    }

    public final boolean maybeDirty() {
        return !this._hashShared;
    }

    public final void release() {
        CharsToNameCanonicalizer charsToNameCanonicalizer;
        if (maybeDirty() && (charsToNameCanonicalizer = this._parent) != null && this._canonicalize) {
            charsToNameCanonicalizer.mergeChild(new TableInfo(this));
            this._hashShared = true;
        }
    }

    protected final void reportTooManyCollisions(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._size + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }
}
