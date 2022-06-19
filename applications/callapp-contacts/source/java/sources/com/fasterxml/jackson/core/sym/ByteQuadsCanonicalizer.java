package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer.class */
public final class ByteQuadsCanonicalizer {
    protected int _count;
    protected final boolean _failOnDoS;
    protected int[] _hashArea;
    protected boolean _hashShared;
    protected int _hashSize;
    protected boolean _intern;
    protected int _longNameOffset;
    protected String[] _names;
    protected final ByteQuadsCanonicalizer _parent;
    protected int _secondaryStart;
    protected final int _seed;
    protected int _spilloverEnd;
    protected final AtomicReference<TableInfo> _tableInfo;
    protected int _tertiaryShift;
    protected int _tertiaryStart;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo.class */
    public static final class TableInfo {
        public final int count;
        public final int longNameOffset;
        public final int[] mainHash;
        public final String[] names;
        public final int size;
        public final int spilloverEnd;
        public final int tertiaryShift;

        public TableInfo(int i, int i2, int i3, int[] iArr, String[] strArr, int i4, int i5) {
            this.size = i;
            this.count = i2;
            this.tertiaryShift = i3;
            this.mainHash = iArr;
            this.names = strArr;
            this.spilloverEnd = i4;
            this.longNameOffset = i5;
        }

        public TableInfo(ByteQuadsCanonicalizer byteQuadsCanonicalizer) {
            this.size = byteQuadsCanonicalizer._hashSize;
            this.count = byteQuadsCanonicalizer._count;
            this.tertiaryShift = byteQuadsCanonicalizer._tertiaryShift;
            this.mainHash = byteQuadsCanonicalizer._hashArea;
            this.names = byteQuadsCanonicalizer._names;
            this.spilloverEnd = byteQuadsCanonicalizer._spilloverEnd;
            this.longNameOffset = byteQuadsCanonicalizer._longNameOffset;
        }

        public static TableInfo createInitial(int i) {
            int i2 = i << 3;
            return new TableInfo(i, 0, ByteQuadsCanonicalizer._calcTertiaryShift(i), new int[i2], new String[i << 1], i2 - i, i2);
        }
    }

    private ByteQuadsCanonicalizer(int i, boolean z, int i2, boolean z2) {
        int i3;
        this._parent = null;
        this._seed = i2;
        this._intern = z;
        this._failOnDoS = z2;
        if (i < 16) {
            i3 = 16;
        } else {
            i3 = i;
            if (((i - 1) & i) != 0) {
                int i4 = 16;
                while (true) {
                    i3 = i4;
                    if (i3 >= i) {
                        break;
                    }
                    i4 = i3 + i3;
                }
            }
        }
        this._tableInfo = new AtomicReference<>(TableInfo.createInitial(i3));
    }

    private ByteQuadsCanonicalizer(ByteQuadsCanonicalizer byteQuadsCanonicalizer, boolean z, int i, boolean z2, TableInfo tableInfo) {
        this._parent = byteQuadsCanonicalizer;
        this._seed = i;
        this._intern = z;
        this._failOnDoS = z2;
        this._tableInfo = null;
        this._count = tableInfo.count;
        int i2 = tableInfo.size;
        this._hashSize = i2;
        int i3 = i2 << 2;
        this._secondaryStart = i3;
        this._tertiaryStart = i3 + (i3 >> 1);
        this._tertiaryShift = tableInfo.tertiaryShift;
        this._hashArea = tableInfo.mainHash;
        this._names = tableInfo.names;
        this._spilloverEnd = tableInfo.spilloverEnd;
        this._longNameOffset = tableInfo.longNameOffset;
        this._hashShared = true;
    }

    private int _appendLongName(int[] iArr, int i) {
        int i2 = this._longNameOffset;
        int i3 = i2 + i;
        int[] iArr2 = this._hashArea;
        if (i3 > iArr2.length) {
            int length = iArr2.length;
            this._hashArea = Arrays.copyOf(this._hashArea, this._hashArea.length + Math.max(i3 - length, Math.min(4096, this._hashSize)));
        }
        System.arraycopy(iArr, 0, this._hashArea, i2, i);
        this._longNameOffset += i;
        return i2;
    }

    private final int _calcOffset(int i) {
        return (i & (this._hashSize - 1)) << 2;
    }

    static int _calcTertiaryShift(int i) {
        int i2 = i >> 2;
        if (i2 < 64) {
            return 4;
        }
        if (i2 <= 256) {
            return 5;
        }
        return i2 <= 1024 ? 6 : 7;
    }

    private boolean _checkNeedForRehash() {
        if (this._count > (this._hashSize >> 1)) {
            int i = this._spilloverEnd;
            int _spilloverStart = _spilloverStart();
            int i2 = this._count;
            return ((i - _spilloverStart) >> 2) > ((i2 + 1) >> 7) || ((double) i2) > ((double) this._hashSize) * 0.8d;
        }
        return false;
    }

    private int _findOffsetForAdd(int i) {
        int _calcOffset = _calcOffset(i);
        int[] iArr = this._hashArea;
        if (iArr[_calcOffset + 3] == 0) {
            return _calcOffset;
        }
        if (_checkNeedForRehash()) {
            return _resizeAndFindOffsetForAdd(i);
        }
        int i2 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        if (iArr[i2 + 3] == 0) {
            return i2;
        }
        int i3 = this._tertiaryStart;
        int i4 = this._tertiaryShift;
        int i5 = i3 + ((_calcOffset >> (i4 + 2)) << i4);
        for (int i6 = i5; i6 < (1 << i4) + i5; i6 += 4) {
            if (iArr[i6 + 3] == 0) {
                return i6;
            }
        }
        int i7 = this._spilloverEnd;
        int i8 = i7 + 4;
        this._spilloverEnd = i8;
        if (i8 < (this._hashSize << 3)) {
            return i7;
        }
        if (this._failOnDoS) {
            _reportTooManyCollisions();
        }
        return _resizeAndFindOffsetForAdd(i);
    }

    private String _findSecondary(int i, int i2) {
        int i3 = this._tertiaryStart;
        int i4 = this._tertiaryShift;
        int i5 = i3 + ((i >> (i4 + 2)) << i4);
        int[] iArr = this._hashArea;
        for (int i6 = i5; i6 < (1 << i4) + i5; i6 += 4) {
            int i7 = iArr[i6 + 3];
            if (i2 == iArr[i6] && 1 == i7) {
                return this._names[i6 >> 2];
            }
            if (i7 == 0) {
                return null;
            }
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && 1 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int i3) {
        int i4 = this._tertiaryStart;
        int i5 = this._tertiaryShift;
        int i6 = i4 + ((i >> (i5 + 2)) << i5);
        int[] iArr = this._hashArea;
        for (int i7 = i6; i7 < (1 << i5) + i6; i7 += 4) {
            int i8 = iArr[i7 + 3];
            if (i2 == iArr[i7] && i3 == iArr[i7 + 1] && 2 == i8) {
                return this._names[i7 >> 2];
            }
            if (i8 == 0) {
                return null;
            }
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && i3 == iArr[_spilloverStart + 1] && 2 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int i3, int i4) {
        int i5 = this._tertiaryStart;
        int i6 = this._tertiaryShift;
        int i7 = i5 + ((i >> (i6 + 2)) << i6);
        int[] iArr = this._hashArea;
        for (int i8 = i7; i8 < (1 << i6) + i7; i8 += 4) {
            int i9 = iArr[i8 + 3];
            if (i2 == iArr[i8] && i3 == iArr[i8 + 1] && i4 == iArr[i8 + 2] && 3 == i9) {
                return this._names[i8 >> 2];
            }
            if (i9 == 0) {
                return null;
            }
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && i3 == iArr[_spilloverStart + 1] && i4 == iArr[_spilloverStart + 2] && 3 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int[] iArr, int i3) {
        int i4 = this._tertiaryStart;
        int i5 = this._tertiaryShift;
        int i6 = i4 + ((i >> (i5 + 2)) << i5);
        int[] iArr2 = this._hashArea;
        for (int i7 = i6; i7 < (1 << i5) + i6; i7 += 4) {
            int i8 = iArr2[i7 + 3];
            if (i2 == iArr2[i7] && i3 == i8 && _verifyLongName(iArr, i3, iArr2[i7 + 1])) {
                return this._names[i7 >> 2];
            }
            if (i8 == 0) {
                return null;
            }
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr2[_spilloverStart] && i3 == iArr2[_spilloverStart + 3] && _verifyLongName(iArr, i3, iArr2[_spilloverStart + 1])) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private int _resizeAndFindOffsetForAdd(int i) {
        rehash();
        int _calcOffset = _calcOffset(i);
        int[] iArr = this._hashArea;
        if (iArr[_calcOffset + 3] == 0) {
            return _calcOffset;
        }
        int i2 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        if (iArr[i2 + 3] == 0) {
            return i2;
        }
        int i3 = this._tertiaryStart;
        int i4 = this._tertiaryShift;
        int i5 = i3 + ((_calcOffset >> (i4 + 2)) << i4);
        for (int i6 = i5; i6 < (1 << i4) + i5; i6 += 4) {
            if (iArr[i6 + 3] == 0) {
                return i6;
            }
        }
        int i7 = this._spilloverEnd;
        this._spilloverEnd = i7 + 4;
        return i7;
    }

    private final int _spilloverStart() {
        int i = this._hashSize;
        return (i << 3) - i;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0071 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean _verifyLongName(int[] r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer._verifyLongName(int[], int, int):boolean");
    }

    private boolean _verifyLongName2(int[] iArr, int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (iArr[i3] != this._hashArea[i2]) {
                return false;
            }
            if (i4 >= i) {
                return true;
            }
            i3 = i4;
            i2++;
        }
    }

    private void _verifySharing() {
        if (this._hashShared) {
            int[] iArr = this._hashArea;
            this._hashArea = Arrays.copyOf(iArr, iArr.length);
            String[] strArr = this._names;
            this._names = (String[]) Arrays.copyOf(strArr, strArr.length);
            this._hashShared = false;
        }
    }

    public static ByteQuadsCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    protected static ByteQuadsCanonicalizer createRoot(int i) {
        return new ByteQuadsCanonicalizer(64, true, i, true);
    }

    private void mergeChild(TableInfo tableInfo) {
        int i = tableInfo.count;
        TableInfo tableInfo2 = this._tableInfo.get();
        if (i == tableInfo2.count) {
            return;
        }
        if (i > 6000) {
            tableInfo = TableInfo.createInitial(64);
        }
        this._tableInfo.compareAndSet(tableInfo2, tableInfo);
    }

    private void nukeSymbols(boolean z) {
        this._count = 0;
        this._spilloverEnd = _spilloverStart();
        this._longNameOffset = this._hashSize << 3;
        if (z) {
            Arrays.fill(this._hashArea, 0);
            Arrays.fill(this._names, (Object) null);
        }
    }

    private void rehash() {
        int i;
        this._hashShared = false;
        int[] iArr = this._hashArea;
        String[] strArr = this._names;
        int i2 = this._hashSize;
        int i3 = this._count;
        int i4 = i2 + i2;
        int i5 = this._spilloverEnd;
        if (i4 > 65536) {
            nukeSymbols(true);
            return;
        }
        this._hashArea = new int[iArr.length + (i2 << 3)];
        this._hashSize = i4;
        int i6 = i4 << 2;
        this._secondaryStart = i6;
        this._tertiaryStart = i6 + (i6 >> 1);
        this._tertiaryShift = _calcTertiaryShift(i4);
        this._names = new String[strArr.length << 1];
        nukeSymbols(false);
        int[] iArr2 = new int[16];
        int i7 = 0;
        int i8 = 0;
        while (true) {
            i = i8;
            if (i7 >= i5) {
                break;
            }
            int i9 = iArr[i7 + 3];
            int[] iArr3 = iArr2;
            int i10 = i;
            if (i9 != 0) {
                i10 = i + 1;
                String str = strArr[i7 >> 2];
                if (i9 == 1) {
                    iArr2[0] = iArr[i7];
                    addName(str, iArr2, 1);
                    iArr3 = iArr2;
                } else if (i9 == 2) {
                    iArr2[0] = iArr[i7];
                    iArr2[1] = iArr[i7 + 1];
                    addName(str, iArr2, 2);
                    iArr3 = iArr2;
                } else if (i9 != 3) {
                    iArr3 = iArr2;
                    if (i9 > iArr2.length) {
                        iArr3 = new int[i9];
                    }
                    System.arraycopy(iArr, iArr[i7 + 1], iArr3, 0, i9);
                    addName(str, iArr3, i9);
                } else {
                    iArr2[0] = iArr[i7];
                    iArr2[1] = iArr[i7 + 1];
                    iArr2[2] = iArr[i7 + 2];
                    addName(str, iArr2, 3);
                    iArr3 = iArr2;
                }
            }
            i7 += 4;
            iArr2 = iArr3;
            i8 = i10;
        }
        if (i == i3) {
            return;
        }
        throw new IllegalStateException("Failed rehash(): old count=" + i3 + ", copyCount=" + i);
    }

    protected final void _reportTooManyCollisions() {
        if (this._hashSize <= 1024) {
            return;
        }
        throw new IllegalStateException("Spill-over slots in symbol table with " + this._count + " entries, hash area of " + this._hashSize + " slots is now full (all " + (this._hashSize >> 3) + " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`");
    }

    public final String addName(String str, int[] iArr, int i) {
        int i2;
        _verifySharing();
        String str2 = str;
        if (this._intern) {
            str2 = InternCache.instance.intern(str);
        }
        if (i == 1) {
            i2 = _findOffsetForAdd(calcHash(iArr[0]));
            int[] iArr2 = this._hashArea;
            iArr2[i2] = iArr[0];
            iArr2[i2 + 3] = 1;
        } else if (i == 2) {
            i2 = _findOffsetForAdd(calcHash(iArr[0], iArr[1]));
            int[] iArr3 = this._hashArea;
            iArr3[i2] = iArr[0];
            iArr3[i2 + 1] = iArr[1];
            iArr3[i2 + 3] = 2;
        } else if (i != 3) {
            int calcHash = calcHash(iArr, i);
            int _findOffsetForAdd = _findOffsetForAdd(calcHash);
            this._hashArea[_findOffsetForAdd] = calcHash;
            int _appendLongName = _appendLongName(iArr, i);
            int[] iArr4 = this._hashArea;
            iArr4[_findOffsetForAdd + 1] = _appendLongName;
            iArr4[_findOffsetForAdd + 3] = i;
            i2 = _findOffsetForAdd;
        } else {
            i2 = _findOffsetForAdd(calcHash(iArr[0], iArr[1], iArr[2]));
            int[] iArr5 = this._hashArea;
            iArr5[i2] = iArr[0];
            iArr5[i2 + 1] = iArr[1];
            iArr5[i2 + 2] = iArr[2];
            iArr5[i2 + 3] = 3;
        }
        this._names[i2 >> 2] = str2;
        this._count++;
        return str2;
    }

    public final int calcHash(int i) {
        int i2 = i ^ this._seed;
        int i3 = i2 + (i2 >>> 16);
        int i4 = i3 ^ (i3 << 3);
        return i4 + (i4 >>> 12);
    }

    public final int calcHash(int i, int i2) {
        int i3 = i + (i >>> 15);
        int i4 = ((i3 ^ (i3 >>> 9)) + (i2 * 33)) ^ this._seed;
        int i5 = i4 + (i4 >>> 16);
        int i6 = i5 ^ (i5 >>> 4);
        return i6 + (i6 << 3);
    }

    public final int calcHash(int i, int i2, int i3) {
        int i4 = i ^ this._seed;
        int i5 = (((i4 + (i4 >>> 9)) * 31) + i2) * 33;
        int i6 = (i5 + (i5 >>> 15)) ^ i3;
        int i7 = i6 + (i6 >>> 4);
        int i8 = i7 + (i7 >>> 15);
        return i8 ^ (i8 << 9);
    }

    public final int calcHash(int[] iArr, int i) {
        if (i >= 4) {
            int i2 = iArr[0] ^ this._seed;
            int i3 = i2 + (i2 >>> 9) + iArr[1];
            int i4 = ((i3 + (i3 >>> 15)) * 33) ^ iArr[2];
            int i5 = i4 + (i4 >>> 4);
            for (int i6 = 3; i6 < i; i6++) {
                int i7 = iArr[i6];
                i5 += i7 ^ (i7 >> 21);
            }
            int i8 = i5 * 65599;
            int i9 = i8 + (i8 >>> 19);
            return (i9 << 5) ^ i9;
        }
        throw new IllegalArgumentException();
    }

    public final String findName(int i) {
        int _calcOffset = _calcOffset(calcHash(i));
        int[] iArr = this._hashArea;
        int i2 = iArr[_calcOffset + 3];
        if (i2 == 1) {
            if (iArr[_calcOffset] == i) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i2 == 0) {
            return null;
        }
        int i3 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i4 = iArr[i3 + 3];
        if (i4 == 1) {
            if (iArr[i3] == i) {
                return this._names[i3 >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i);
    }

    public final String findName(int i, int i2) {
        int _calcOffset = _calcOffset(calcHash(i, i2));
        int[] iArr = this._hashArea;
        int i3 = iArr[_calcOffset + 3];
        if (i3 == 2) {
            if (i == iArr[_calcOffset] && i2 == iArr[_calcOffset + 1]) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i3 == 0) {
            return null;
        }
        int i4 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i5 = iArr[i4 + 3];
        if (i5 == 2) {
            if (i == iArr[i4] && i2 == iArr[i4 + 1]) {
                return this._names[i4 >> 2];
            }
        } else if (i5 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i, i2);
    }

    public final String findName(int i, int i2, int i3) {
        int _calcOffset = _calcOffset(calcHash(i, i2, i3));
        int[] iArr = this._hashArea;
        int i4 = iArr[_calcOffset + 3];
        if (i4 == 3) {
            if (i == iArr[_calcOffset] && iArr[_calcOffset + 1] == i2 && iArr[_calcOffset + 2] == i3) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i6 = iArr[i5 + 3];
        if (i6 == 3) {
            if (i == iArr[i5] && iArr[i5 + 1] == i2 && iArr[i5 + 2] == i3) {
                return this._names[i5 >> 2];
            }
        } else if (i6 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i, i2, i3);
    }

    public final String findName(int[] iArr, int i) {
        if (i < 4) {
            return i != 1 ? i != 2 ? i != 3 ? "" : findName(iArr[0], iArr[1], iArr[2]) : findName(iArr[0], iArr[1]) : findName(iArr[0]);
        }
        int calcHash = calcHash(iArr, i);
        int _calcOffset = _calcOffset(calcHash);
        int[] iArr2 = this._hashArea;
        int i2 = iArr2[_calcOffset + 3];
        if (calcHash == iArr2[_calcOffset] && i2 == i && _verifyLongName(iArr, i, iArr2[_calcOffset + 1])) {
            return this._names[_calcOffset >> 2];
        }
        if (i2 == 0) {
            return null;
        }
        int i3 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        return (calcHash == iArr2[i3] && iArr2[i3 + 3] == i && _verifyLongName(iArr, i, iArr2[i3 + 1])) ? this._names[i3 >> 2] : _findSecondary(_calcOffset, calcHash, iArr, i);
    }

    public final ByteQuadsCanonicalizer makeChild(int i) {
        return new ByteQuadsCanonicalizer(this, JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(i), this._seed, JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i), this._tableInfo.get());
    }

    public final boolean maybeDirty() {
        return !this._hashShared;
    }

    public final int primaryCount() {
        int i = this._secondaryStart;
        int i2 = 0;
        int i3 = 3;
        while (i3 < i) {
            int i4 = i2;
            if (this._hashArea[i3] != 0) {
                i4 = i2 + 1;
            }
            i3 += 4;
            i2 = i4;
        }
        return i2;
    }

    public final void release() {
        if (this._parent == null || !maybeDirty()) {
            return;
        }
        this._parent.mergeChild(new TableInfo(this));
        this._hashShared = true;
    }

    public final int secondaryCount() {
        int i = this._secondaryStart + 3;
        int i2 = this._tertiaryStart;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i < i2) {
                int i5 = i4;
                if (this._hashArea[i] != 0) {
                    i5 = i4 + 1;
                }
                i += 4;
                i3 = i5;
            } else {
                return i4;
            }
        }
    }

    public final int spilloverCount() {
        return (this._spilloverEnd - _spilloverStart()) >> 2;
    }

    public final int tertiaryCount() {
        int i = this._tertiaryStart + 3;
        int i2 = this._hashSize;
        int i3 = 0;
        int i4 = i;
        while (i4 < i2 + i) {
            int i5 = i3;
            if (this._hashArea[i4] != 0) {
                i5 = i3 + 1;
            }
            i4 += 4;
            i3 = i5;
        }
        return i3;
    }

    public final String toString() {
        int primaryCount = primaryCount();
        int secondaryCount = secondaryCount();
        int tertiaryCount = tertiaryCount();
        int spilloverCount = spilloverCount();
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", getClass().getName(), Integer.valueOf(this._count), Integer.valueOf(this._hashSize), Integer.valueOf(primaryCount), Integer.valueOf(secondaryCount), Integer.valueOf(tertiaryCount), Integer.valueOf(spilloverCount), Integer.valueOf(primaryCount + secondaryCount + tertiaryCount + spilloverCount), Integer.valueOf(totalCount()));
    }

    public final int totalCount() {
        int i = this._hashSize;
        int i2 = 3;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i2 < (i << 3)) {
                int i5 = i4;
                if (this._hashArea[i2] != 0) {
                    i5 = i4 + 1;
                }
                i2 += 4;
                i3 = i5;
            } else {
                return i4;
            }
        }
    }
}
