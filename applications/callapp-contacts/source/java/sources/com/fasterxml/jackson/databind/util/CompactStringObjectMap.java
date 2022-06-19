package com.fasterxml.jackson.databind.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/CompactStringObjectMap.class */
public final class CompactStringObjectMap implements Serializable {
    private static final CompactStringObjectMap EMPTY = new CompactStringObjectMap(1, 0, new Object[4]);
    private final Object[] _hashArea;
    private final int _hashMask;
    private final int _spillCount;

    private CompactStringObjectMap(int i, int i2, Object[] objArr) {
        this._hashMask = i;
        this._spillCount = i2;
        this._hashArea = objArr;
    }

    private final Object _find2(String str, int i, Object obj) {
        if (obj == null) {
            return null;
        }
        int i2 = this._hashMask + 1;
        int i3 = ((i >> 1) + i2) << 1;
        Object obj2 = this._hashArea[i3];
        if (str.equals(obj2)) {
            return this._hashArea[i3 + 1];
        }
        if (obj2 == null) {
            return null;
        }
        int i4 = (i2 + (i2 >> 1)) << 1;
        int i5 = this._spillCount;
        for (int i6 = i4; i6 < i5 + i4; i6 += 2) {
            Object obj3 = this._hashArea[i6];
            if (obj3 == str || str.equals(obj3)) {
                return this._hashArea[i6 + 1];
            }
        }
        return null;
    }

    public static <T> CompactStringObjectMap construct(Map<String, T> map) {
        if (map.isEmpty()) {
            return EMPTY;
        }
        int findSize = findSize(map.size());
        int i = findSize - 1;
        int i2 = (findSize >> 1) + findSize;
        Object[] objArr = new Object[i2 * 2];
        int i3 = 0;
        Object[] objArr2 = objArr;
        for (Map.Entry<String, T> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                int hashCode = key.hashCode() & i;
                int i4 = hashCode + hashCode;
                Object[] objArr3 = objArr2;
                int i5 = i3;
                int i6 = i4;
                if (objArr2[i4] != null) {
                    int i7 = ((hashCode >> 1) + findSize) << 1;
                    objArr3 = objArr2;
                    i5 = i3;
                    i6 = i7;
                    if (objArr2[i7] != null) {
                        int i8 = (i2 << 1) + i3;
                        int i9 = i3 + 2;
                        objArr3 = objArr2;
                        i5 = i9;
                        i6 = i8;
                        if (i8 >= objArr2.length) {
                            objArr3 = Arrays.copyOf(objArr2, objArr2.length + 4);
                            i6 = i8;
                            i5 = i9;
                        }
                    }
                }
                objArr3[i6] = key;
                objArr3[i6 + 1] = entry.getValue();
                objArr2 = objArr3;
                i3 = i5;
            }
        }
        return new CompactStringObjectMap(i, i3, objArr2);
    }

    private static final int findSize(int i) {
        if (i <= 5) {
            return 8;
        }
        if (i <= 12) {
            return 16;
        }
        int i2 = 32;
        while (true) {
            int i3 = i2;
            if (i3 >= i + (i >> 2)) {
                return i3;
            }
            i2 = i3 + i3;
        }
    }

    public final Object find(String str) {
        int hashCode = str.hashCode() & this._hashMask;
        int i = hashCode << 1;
        Object obj = this._hashArea[i];
        return (obj == str || str.equals(obj)) ? this._hashArea[i + 1] : _find2(str, hashCode, obj);
    }

    public final Object findCaseInsensitive(String str) {
        int length = this._hashArea.length;
        for (int i = 0; i < length; i += 2) {
            Object obj = this._hashArea[i];
            if (obj != null && ((String) obj).equalsIgnoreCase(str)) {
                return this._hashArea[i + 1];
            }
        }
        return null;
    }

    public final List<String> keys() {
        int length = this._hashArea.length;
        ArrayList arrayList = new ArrayList(length >> 2);
        for (int i = 0; i < length; i += 2) {
            Object obj = this._hashArea[i];
            if (obj != null) {
                arrayList.add((String) obj);
            }
        }
        return arrayList;
    }
}
