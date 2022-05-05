package com.fasterxml.jackson.core.sym;

import androidx.media2.session.MediaSessionImplBase;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/sym/CharsToNameCanonicalizer.class */
public final class CharsToNameCanonicalizer {
    public static final CharsToNameCanonicalizer sBootstrapSymbolTable = new CharsToNameCanonicalizer();
    public Bucket[] _buckets;
    public boolean _canonicalize;
    public boolean _dirty;
    public final int _flags;
    public final int _hashSeed;
    public int _indexMask;
    public int _longestCollisionList;
    public BitSet _overflows;
    public CharsToNameCanonicalizer _parent;
    public int _size;
    public int _sizeThreshold;
    public String[] _symbols;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/sym/CharsToNameCanonicalizer$Bucket.class */
    public static final class Bucket {
        public final int length;
        public final Bucket next;
        public final String symbol;

        public Bucket(String str, Bucket bucket) {
            this.symbol = str;
            this.next = bucket;
            this.length = bucket != null ? 1 + bucket.length : 1;
        }

        public String has(char[] cArr, int i, int i2) {
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

    public CharsToNameCanonicalizer() {
        this._canonicalize = true;
        this._flags = -1;
        this._dirty = true;
        this._hashSeed = 0;
        this._longestCollisionList = 0;
        initTables(64);
    }

    public CharsToNameCanonicalizer(CharsToNameCanonicalizer charsToNameCanonicalizer, int i, String[] strArr, Bucket[] bucketArr, int i2, int i3, int i4) {
        this._parent = charsToNameCanonicalizer;
        this._flags = i;
        this._canonicalize = JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i);
        this._symbols = strArr;
        this._buckets = bucketArr;
        this._size = i2;
        this._hashSeed = i3;
        int length = strArr.length;
        this._sizeThreshold = _thresholdSize(length);
        this._indexMask = length - 1;
        this._longestCollisionList = i4;
        this._dirty = false;
    }

    public static int _thresholdSize(int i) {
        return i - (i >> 2);
    }

    public static CharsToNameCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    public static CharsToNameCanonicalizer createRoot(int i) {
        return sBootstrapSymbolTable.makeOrphan(i);
    }

    public final String _addSymbol(char[] cArr, int i, int i2, int i3, int i4) {
        if (!this._dirty) {
            copyArrays();
            this._dirty = true;
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
                _handleSpillOverflow(i5, bucket);
            } else {
                this._buckets[i5] = bucket;
                this._longestCollisionList = Math.max(i6, this._longestCollisionList);
            }
        }
        return str2;
    }

    public final String _findSymbol2(char[] cArr, int i, int i2, Bucket bucket) {
        while (bucket != null) {
            String has = bucket.has(cArr, i, i2);
            if (has != null) {
                return has;
            }
            bucket = bucket.next;
        }
        return null;
    }

    public final void _handleSpillOverflow(int i, Bucket bucket) {
        BitSet bitSet = this._overflows;
        if (bitSet == null) {
            this._overflows = new BitSet();
            this._overflows.set(i);
        } else if (!bitSet.get(i)) {
            this._overflows.set(i);
        } else if (!JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(this._flags)) {
            this._canonicalize = false;
        } else {
            reportTooManyCollisions(100);
            throw null;
        }
        this._symbols[i + i] = bucket.symbol;
        this._buckets[i] = null;
        this._size -= bucket.length;
        this._longestCollisionList = -1;
    }

    public int _hashToIndex(int i) {
        int i2 = i + (i >>> 15);
        int i3 = i2 ^ (i2 << 7);
        return (i3 + (i3 >>> 3)) & this._indexMask;
    }

    public int calcHash(String str) {
        int length = str.length();
        int i = this._hashSeed;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i * 33) + str.charAt(i2);
        }
        int i3 = i;
        if (i == 0) {
            i3 = 1;
        }
        return i3;
    }

    public int calcHash(char[] cArr, int i, int i2) {
        int i3 = this._hashSeed;
        for (int i4 = i; i4 < i2 + i; i4++) {
            i3 = (i3 * 33) + cArr[i4];
        }
        int i5 = i3;
        if (i3 == 0) {
            i5 = 1;
        }
        return i5;
    }

    public final void copyArrays() {
        String[] strArr = this._symbols;
        this._symbols = (String[]) Arrays.copyOf(strArr, strArr.length);
        Bucket[] bucketArr = this._buckets;
        this._buckets = (Bucket[]) Arrays.copyOf(bucketArr, bucketArr.length);
    }

    public String findSymbol(char[] cArr, int i, int i2, int i3) {
        if (i2 < 1) {
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

    public int hashSeed() {
        return this._hashSeed;
    }

    public final void initTables(int i) {
        this._symbols = new String[i];
        this._buckets = new Bucket[i >> 1];
        this._indexMask = i - 1;
        this._size = 0;
        this._longestCollisionList = 0;
        this._sizeThreshold = _thresholdSize(i);
    }

    public CharsToNameCanonicalizer makeChild(int i) {
        String[] strArr;
        Bucket[] bucketArr;
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            strArr = this._symbols;
            bucketArr = this._buckets;
            i2 = this._size;
            i3 = this._hashSeed;
            i4 = this._longestCollisionList;
        }
        return new CharsToNameCanonicalizer(this, i, strArr, bucketArr, i2, i3, i4);
    }

    public final CharsToNameCanonicalizer makeOrphan(int i) {
        return new CharsToNameCanonicalizer(null, -1, this._symbols, this._buckets, this._size, i, this._longestCollisionList);
    }

    public boolean maybeDirty() {
        return this._dirty;
    }

    public final void mergeChild(CharsToNameCanonicalizer charsToNameCanonicalizer) {
        if (charsToNameCanonicalizer.size() > 12000) {
            synchronized (this) {
                initTables(256);
                this._dirty = false;
            }
        } else if (charsToNameCanonicalizer.size() > size()) {
            synchronized (this) {
                this._symbols = charsToNameCanonicalizer._symbols;
                this._buckets = charsToNameCanonicalizer._buckets;
                this._size = charsToNameCanonicalizer._size;
                this._sizeThreshold = charsToNameCanonicalizer._sizeThreshold;
                this._indexMask = charsToNameCanonicalizer._indexMask;
                this._longestCollisionList = charsToNameCanonicalizer._longestCollisionList;
                this._dirty = false;
            }
        }
    }

    public final void rehash() {
        String[] strArr = this._symbols;
        int length = strArr.length;
        int i = length + length;
        int i2 = 0;
        if (i > 65536) {
            this._size = 0;
            this._canonicalize = false;
            this._symbols = new String[64];
            this._buckets = new Bucket[32];
            this._indexMask = 63;
            this._dirty = true;
            return;
        }
        Bucket[] bucketArr = this._buckets;
        this._symbols = new String[i];
        this._buckets = new Bucket[i >> 1];
        this._indexMask = i - 1;
        this._sizeThreshold = _thresholdSize(i);
        int i3 = 0;
        int i4 = 0;
        for (String str : strArr) {
            i3 = i3;
            i4 = i4;
            if (str != null) {
                i3++;
                int _hashToIndex = _hashToIndex(calcHash(str));
                String[] strArr2 = this._symbols;
                if (strArr2[_hashToIndex] == null) {
                    strArr2[_hashToIndex] = str;
                    i4 = i4;
                } else {
                    int i5 = _hashToIndex >> 1;
                    Bucket bucket = new Bucket(str, this._buckets[i5]);
                    this._buckets[i5] = bucket;
                    i4 = Math.max(i4, bucket.length);
                }
            }
        }
        int i6 = i4;
        int i7 = i3;
        while (i2 < (length >> 1)) {
            int i8 = i6;
            int i9 = i7;
            for (Bucket bucket2 = bucketArr[i2]; bucket2 != null; bucket2 = bucket2.next) {
                i9++;
                String str2 = bucket2.symbol;
                int _hashToIndex2 = _hashToIndex(calcHash(str2));
                String[] strArr3 = this._symbols;
                if (strArr3[_hashToIndex2] == null) {
                    strArr3[_hashToIndex2] = str2;
                } else {
                    int i10 = _hashToIndex2 >> 1;
                    Bucket bucket3 = new Bucket(str2, this._buckets[i10]);
                    this._buckets[i10] = bucket3;
                    i8 = Math.max(i8, bucket3.length);
                }
            }
            i2++;
            i7 = i9;
            i6 = i8;
        }
        this._longestCollisionList = i6;
        this._overflows = null;
        if (i7 != this._size) {
            throw new Error("Internal error on SymbolTable.rehash(): had " + this._size + " entries; now have " + i7 + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        }
    }

    public void release() {
        CharsToNameCanonicalizer charsToNameCanonicalizer;
        if (maybeDirty() && (charsToNameCanonicalizer = this._parent) != null && this._canonicalize) {
            charsToNameCanonicalizer.mergeChild(this);
            this._dirty = false;
        }
    }

    public void reportTooManyCollisions(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._size + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }

    public int size() {
        return this._size;
    }
}
