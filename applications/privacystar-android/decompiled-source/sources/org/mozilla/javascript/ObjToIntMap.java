package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ObjToIntMap.class */
public class ObjToIntMap implements Serializable {

    /* renamed from: A */
    private static final int f781A = -1640531527;
    private static final Object DELETED = new Object();
    private static final boolean check = false;
    static final long serialVersionUID = -1542220580748809402L;
    private int keyCount;
    private transient Object[] keys;
    private transient int occupiedCount;
    private int power;
    private transient int[] values;

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ObjToIntMap$Iterator.class */
    public static class Iterator {
        private int cursor;
        private Object[] keys;
        ObjToIntMap master;
        private int remaining;
        private int[] values;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Iterator(ObjToIntMap objToIntMap) {
            this.master = objToIntMap;
        }

        public boolean done() {
            return this.remaining < 0;
        }

        public Object getKey() {
            Object obj = this.keys[this.cursor];
            Object obj2 = obj;
            if (obj == UniqueTag.NULL_VALUE) {
                obj2 = null;
            }
            return obj2;
        }

        public int getValue() {
            return this.values[this.cursor];
        }

        final void init(Object[] objArr, int[] iArr, int i) {
            this.keys = objArr;
            this.values = iArr;
            this.cursor = -1;
            this.remaining = i;
        }

        public void next() {
            if (this.remaining == -1) {
                Kit.codeBug();
            }
            if (this.remaining == 0) {
                this.remaining = -1;
                this.cursor = -1;
                return;
            }
            int i = this.cursor;
            while (true) {
                this.cursor = i + 1;
                Object obj = this.keys[this.cursor];
                if (obj == null || obj == ObjToIntMap.DELETED) {
                    i = this.cursor;
                } else {
                    this.remaining--;
                    return;
                }
            }
        }

        public void setValue(int i) {
            this.values[this.cursor] = i;
        }

        public void start() {
            this.master.initIterator(this);
            next();
        }
    }

    public ObjToIntMap() {
        this(4);
    }

    public ObjToIntMap(int i) {
        if (i < 0) {
            Kit.codeBug();
        }
        int i2 = (i * 4) / 3;
        int i3 = 2;
        while ((1 << i3) < i2) {
            i3++;
        }
        this.power = i3;
    }

    private int ensureIndex(Object obj) {
        int i;
        int i2;
        int hashCode = obj.hashCode();
        if (this.keys != null) {
            int i3 = f781A * hashCode;
            int i4 = i3 >>> (32 - this.power);
            Object obj2 = this.keys[i4];
            i2 = -1;
            i = i4;
            if (obj2 != null) {
                int i5 = 1 << this.power;
                if (obj2 == obj || (this.values[i5 + i4] == hashCode && obj2.equals(obj))) {
                    return i4;
                }
                i2 = -1;
                if (obj2 == DELETED) {
                    i2 = i4;
                }
                int i6 = i5 - 1;
                int tableLookupStep = tableLookupStep(i3, i6, this.power);
                while (true) {
                    i = (i4 + tableLookupStep) & i6;
                    Object obj3 = this.keys[i];
                    if (obj3 == null) {
                        break;
                    } else if (obj3 == obj || (this.values[i5 + i] == hashCode && obj3.equals(obj))) {
                        break;
                    } else {
                        i4 = i;
                        if (obj3 == DELETED) {
                            i4 = i;
                            if (i2 < 0) {
                                i2 = i;
                                i4 = i;
                            }
                        }
                    }
                }
                return i;
            }
        } else {
            i = -1;
            i2 = -1;
        }
        if (i2 >= 0) {
            i = i2;
        } else if (this.keys == null || this.occupiedCount * 4 >= (1 << this.power) * 3) {
            rehashTable();
            return insertNewKey(obj, hashCode);
        } else {
            this.occupiedCount++;
        }
        this.keys[i] = obj;
        this.values[(1 << this.power) + i] = hashCode;
        this.keyCount++;
        return i;
    }

    private int findIndex(Object obj) {
        int i;
        if (this.keys == null) {
            return -1;
        }
        int hashCode = obj.hashCode();
        int i2 = f781A * hashCode;
        int i3 = i2 >>> (32 - this.power);
        Object obj2 = this.keys[i3];
        if (obj2 == null) {
            return -1;
        }
        int i4 = 1 << this.power;
        if (obj2 == obj || (this.values[i4 + i3] == hashCode && obj2.equals(obj))) {
            return i3;
        }
        int i5 = i4 - 1;
        int tableLookupStep = tableLookupStep(i2, i5, this.power);
        while (true) {
            i = (i3 + tableLookupStep) & i5;
            Object obj3 = this.keys[i];
            if (obj3 != null) {
                if (obj3 == obj) {
                    break;
                }
                i3 = i;
                if (this.values[i4 + i] == hashCode) {
                    i3 = i;
                    if (obj3.equals(obj)) {
                        break;
                    }
                }
            } else {
                return -1;
            }
        }
        return i;
    }

    private int insertNewKey(Object obj, int i) {
        int i2;
        int i3 = f781A * i;
        int i4 = i3 >>> (32 - this.power);
        int i5 = 1 << this.power;
        int i6 = i4;
        if (this.keys[i4] != null) {
            int i7 = i5 - 1;
            int tableLookupStep = tableLookupStep(i3, i7, this.power);
            int i8 = i4;
            do {
                i2 = (i8 + tableLookupStep) & i7;
                i8 = i2;
            } while (this.keys[i2] != null);
            i6 = i2;
        }
        this.keys[i6] = obj;
        this.values[i5 + i6] = i;
        this.occupiedCount++;
        this.keyCount++;
        return i6;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int i = this.keyCount;
        if (i != 0) {
            this.keyCount = 0;
            int i2 = 1 << this.power;
            this.keys = new Object[i2];
            this.values = new int[i2 * 2];
            for (int i3 = 0; i3 != i; i3++) {
                Object readObject = objectInputStream.readObject();
                this.values[insertNewKey(readObject, readObject.hashCode())] = objectInputStream.readInt();
            }
        }
    }

    private void rehashTable() {
        if (this.keys == null) {
            int i = 1 << this.power;
            this.keys = new Object[i];
            this.values = new int[i * 2];
            return;
        }
        if (this.keyCount * 2 >= this.occupiedCount) {
            this.power++;
        }
        int i2 = 1 << this.power;
        Object[] objArr = this.keys;
        int[] iArr = this.values;
        int length = objArr.length;
        this.keys = new Object[i2];
        this.values = new int[i2 * 2];
        int i3 = this.keyCount;
        int i4 = 0;
        this.keyCount = 0;
        this.occupiedCount = 0;
        while (i3 != 0) {
            Object obj = objArr[i4];
            i3 = i3;
            if (obj != null) {
                i3 = i3;
                if (obj != DELETED) {
                    this.values[insertNewKey(obj, iArr[length + i4])] = iArr[i4];
                    i3--;
                }
            }
            i4++;
        }
    }

    private static int tableLookupStep(int i, int i2, int i3) {
        int i4 = 32 - (i3 * 2);
        return i4 >= 0 ? ((i >>> i4) & i2) | 1 : (i & (i2 >>> (-i4))) | 1;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int i = this.keyCount;
        int i2 = 0;
        while (i != 0) {
            Object obj = this.keys[i2];
            i = i;
            if (obj != null) {
                i = i;
                if (obj != DELETED) {
                    i--;
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.writeInt(this.values[i2]);
                }
            }
            i2++;
        }
    }

    public void clear() {
        int length = this.keys.length;
        while (length != 0) {
            length--;
            this.keys[length] = null;
        }
        this.keyCount = 0;
        this.occupiedCount = 0;
    }

    public int get(Object obj, int i) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = UniqueTag.NULL_VALUE;
        }
        int findIndex = findIndex(obj2);
        return findIndex >= 0 ? this.values[findIndex] : i;
    }

    public int getExisting(Object obj) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = UniqueTag.NULL_VALUE;
        }
        int findIndex = findIndex(obj2);
        if (findIndex >= 0) {
            return this.values[findIndex];
        }
        Kit.codeBug();
        return 0;
    }

    public void getKeys(Object[] objArr, int i) {
        int i2 = this.keyCount;
        int i3 = 0;
        int i4 = i;
        while (i2 != 0) {
            Object obj = this.keys[i3];
            i2 = i2;
            i4 = i4;
            if (obj != null) {
                i2 = i2;
                i4 = i4;
                if (obj != DELETED) {
                    Object obj2 = obj;
                    if (obj == UniqueTag.NULL_VALUE) {
                        obj2 = null;
                    }
                    objArr[i4] = obj2;
                    i4++;
                    i2--;
                }
            }
            i3++;
        }
    }

    public Object[] getKeys() {
        Object[] objArr = new Object[this.keyCount];
        getKeys(objArr, 0);
        return objArr;
    }

    public boolean has(Object obj) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = UniqueTag.NULL_VALUE;
        }
        return findIndex(obj2) >= 0;
    }

    final void initIterator(Iterator iterator) {
        iterator.init(this.keys, this.values, this.keyCount);
    }

    public Object intern(Object obj) {
        boolean z;
        if (obj == null) {
            obj = UniqueTag.NULL_VALUE;
            z = true;
        } else {
            z = false;
        }
        int ensureIndex = ensureIndex(obj);
        this.values[ensureIndex] = 0;
        return z ? null : this.keys[ensureIndex];
    }

    public boolean isEmpty() {
        return this.keyCount == 0;
    }

    public Iterator newIterator() {
        return new Iterator(this);
    }

    public void put(Object obj, int i) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = UniqueTag.NULL_VALUE;
        }
        this.values[ensureIndex(obj2)] = i;
    }

    public void remove(Object obj) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = UniqueTag.NULL_VALUE;
        }
        int findIndex = findIndex(obj2);
        if (findIndex >= 0) {
            this.keys[findIndex] = DELETED;
            this.keyCount--;
        }
    }

    public int size() {
        return this.keyCount;
    }
}
