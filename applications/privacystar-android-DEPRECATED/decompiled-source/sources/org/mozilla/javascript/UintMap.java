package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/UintMap.class */
public class UintMap implements Serializable {

    /* renamed from: A */
    private static final int f802A = -1640531527;
    private static final int DELETED = -2;
    private static final int EMPTY = -1;
    private static final boolean check = false;
    static final long serialVersionUID = 4242698212885848444L;
    private transient int ivaluesShift;
    private int keyCount;
    private transient int[] keys;
    private transient int occupiedCount;
    private int power;
    private transient Object[] values;

    public UintMap() {
        this(4);
    }

    public UintMap(int i) {
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

    private int ensureIndex(int i, boolean z) {
        int i2;
        int i3;
        int[] iArr = this.keys;
        int i4 = -1;
        if (iArr != null) {
            int i5 = f802A * i;
            int i6 = i5 >>> (32 - this.power);
            int i7 = iArr[i6];
            if (i7 == i) {
                return i6;
            }
            i4 = i6;
            if (i7 != -1) {
                int i8 = i7 == -2 ? i6 : -1;
                int i9 = (1 << this.power) - 1;
                int tableLookupStep = tableLookupStep(i5, i9, this.power);
                int i10 = i6;
                do {
                    i4 = (i10 + tableLookupStep) & i9;
                    i2 = iArr[i4];
                    if (i2 == i) {
                        return i4;
                    }
                    i3 = i8;
                    if (i2 == -2) {
                        i3 = i8;
                        if (i8 < 0) {
                            i3 = i4;
                        }
                    }
                    i10 = i4;
                    i8 = i3;
                } while (i2 != -1);
                i4 = i3;
            }
        } else {
            i4 = -1;
        }
        if (i4 < 0) {
            if (iArr == null || this.occupiedCount * 4 >= (1 << this.power) * 3) {
                rehashTable(z);
                return insertNewKey(i);
            }
            this.occupiedCount++;
        }
        iArr[i4] = i;
        this.keyCount++;
        return i4;
    }

    private int findIndex(int i) {
        int i2;
        int[] iArr = this.keys;
        if (iArr == null) {
            return -1;
        }
        int i3 = f802A * i;
        int i4 = i3 >>> (32 - this.power);
        int i5 = iArr[i4];
        if (i5 == i) {
            return i4;
        }
        if (i5 == -1) {
            return -1;
        }
        int i6 = (1 << this.power) - 1;
        int tableLookupStep = tableLookupStep(i3, i6, this.power);
        do {
            i4 = (i4 + tableLookupStep) & i6;
            i2 = iArr[i4];
            if (i2 == i) {
                return i4;
            }
        } while (i2 != -1);
        return -1;
    }

    private int insertNewKey(int i) {
        int i2;
        int[] iArr = this.keys;
        int i3 = f802A * i;
        int i4 = i3 >>> (32 - this.power);
        int i5 = i4;
        if (iArr[i4] != -1) {
            int i6 = (1 << this.power) - 1;
            int tableLookupStep = tableLookupStep(i3, i6, this.power);
            int i7 = i4;
            do {
                i2 = (i7 + tableLookupStep) & i6;
                i7 = i2;
            } while (iArr[i2] != -1);
            i5 = i2;
        }
        iArr[i5] = i;
        this.occupiedCount++;
        this.keyCount++;
        return i5;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int i = this.keyCount;
        if (i != 0) {
            this.keyCount = 0;
            boolean readBoolean = objectInputStream.readBoolean();
            boolean readBoolean2 = objectInputStream.readBoolean();
            int i2 = 1 << this.power;
            if (readBoolean) {
                this.keys = new int[i2 * 2];
                this.ivaluesShift = i2;
            } else {
                this.keys = new int[i2];
            }
            for (int i3 = 0; i3 != i2; i3++) {
                this.keys[i3] = -1;
            }
            int i4 = 0;
            if (readBoolean2) {
                this.values = new Object[i2];
                i4 = 0;
            }
            while (i4 != i) {
                int insertNewKey = insertNewKey(objectInputStream.readInt());
                if (readBoolean) {
                    this.keys[this.ivaluesShift + insertNewKey] = objectInputStream.readInt();
                }
                if (readBoolean2) {
                    this.values[insertNewKey] = objectInputStream.readObject();
                }
                i4++;
            }
        }
    }

    private void rehashTable(boolean z) {
        if (this.keys != null && this.keyCount * 2 >= this.occupiedCount) {
            this.power++;
        }
        int i = 1 << this.power;
        int[] iArr = this.keys;
        int i2 = this.ivaluesShift;
        if (i2 != 0 || z) {
            this.ivaluesShift = i;
            this.keys = new int[i * 2];
        } else {
            this.keys = new int[i];
        }
        int i3 = 0;
        for (int i4 = 0; i4 != i; i4++) {
            this.keys[i4] = -1;
        }
        Object[] objArr = this.values;
        if (objArr != null) {
            this.values = new Object[i];
        }
        int i5 = this.keyCount;
        this.occupiedCount = 0;
        if (i5 != 0) {
            this.keyCount = 0;
            while (i5 != 0) {
                int i6 = iArr[i3];
                i5 = i5;
                if (i6 != -1) {
                    i5 = i5;
                    if (i6 != -2) {
                        int insertNewKey = insertNewKey(i6);
                        if (objArr != null) {
                            this.values[insertNewKey] = objArr[i3];
                        }
                        if (i2 != 0) {
                            this.keys[this.ivaluesShift + insertNewKey] = iArr[i2 + i3];
                        }
                        i5--;
                    }
                }
                i3++;
            }
        }
    }

    private static int tableLookupStep(int i, int i2, int i3) {
        int i4 = 32 - (i3 * 2);
        return i4 >= 0 ? ((i >>> i4) & i2) | 1 : (i & (i2 >>> (-i4))) | 1;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int i = this.keyCount;
        if (i != 0) {
            int i2 = 0;
            boolean z = true;
            boolean z2 = this.ivaluesShift != 0;
            if (this.values == null) {
                z = false;
            }
            objectOutputStream.writeBoolean(z2);
            objectOutputStream.writeBoolean(z);
            while (i != 0) {
                int i3 = this.keys[i2];
                i = i;
                if (i3 != -1) {
                    i = i;
                    if (i3 != -2) {
                        int i4 = i - 1;
                        objectOutputStream.writeInt(i3);
                        if (z2) {
                            objectOutputStream.writeInt(this.keys[this.ivaluesShift + i2]);
                        }
                        i = i4;
                        if (z) {
                            objectOutputStream.writeObject(this.values[i2]);
                            i = i4;
                        }
                    }
                }
                i2++;
            }
        }
    }

    public void clear() {
        int i = 1 << this.power;
        if (this.keys != null) {
            for (int i2 = 0; i2 != i; i2++) {
                this.keys[i2] = -1;
            }
            if (this.values != null) {
                for (int i3 = 0; i3 != i; i3++) {
                    this.values[i3] = null;
                }
            }
        }
        this.ivaluesShift = 0;
        this.keyCount = 0;
        this.occupiedCount = 0;
    }

    public int getExistingInt(int i) {
        if (i < 0) {
            Kit.codeBug();
        }
        int findIndex = findIndex(i);
        if (findIndex < 0) {
            Kit.codeBug();
            return 0;
        } else if (this.ivaluesShift != 0) {
            return this.keys[this.ivaluesShift + findIndex];
        } else {
            return 0;
        }
    }

    public int getInt(int i, int i2) {
        if (i < 0) {
            Kit.codeBug();
        }
        int findIndex = findIndex(i);
        if (findIndex < 0) {
            return i2;
        }
        if (this.ivaluesShift != 0) {
            return this.keys[this.ivaluesShift + findIndex];
        }
        return 0;
    }

    public int[] getKeys() {
        int[] iArr = this.keys;
        int i = this.keyCount;
        int[] iArr2 = new int[i];
        int i2 = 0;
        while (i != 0) {
            int i3 = iArr[i2];
            i = i;
            if (i3 != -1) {
                i = i;
                if (i3 != -2) {
                    i--;
                    iArr2[i] = i3;
                }
            }
            i2++;
        }
        return iArr2;
    }

    public Object getObject(int i) {
        int findIndex;
        if (i < 0) {
            Kit.codeBug();
        }
        if (this.values == null || (findIndex = findIndex(i)) < 0) {
            return null;
        }
        return this.values[findIndex];
    }

    public boolean has(int i) {
        if (i < 0) {
            Kit.codeBug();
        }
        return findIndex(i) >= 0;
    }

    public boolean isEmpty() {
        return this.keyCount == 0;
    }

    public void put(int i, int i2) {
        if (i < 0) {
            Kit.codeBug();
        }
        int ensureIndex = ensureIndex(i, true);
        if (this.ivaluesShift == 0) {
            int i3 = 1 << this.power;
            int i4 = i3 * 2;
            if (this.keys.length != i4) {
                int[] iArr = new int[i4];
                System.arraycopy(this.keys, 0, iArr, 0, i3);
                this.keys = iArr;
            }
            this.ivaluesShift = i3;
        }
        this.keys[this.ivaluesShift + ensureIndex] = i2;
    }

    public void put(int i, Object obj) {
        if (i < 0) {
            Kit.codeBug();
        }
        int ensureIndex = ensureIndex(i, false);
        if (this.values == null) {
            this.values = new Object[1 << this.power];
        }
        this.values[ensureIndex] = obj;
    }

    public void remove(int i) {
        if (i < 0) {
            Kit.codeBug();
        }
        int findIndex = findIndex(i);
        if (findIndex >= 0) {
            this.keys[findIndex] = -2;
            this.keyCount--;
            if (this.values != null) {
                this.values[findIndex] = null;
            }
            if (this.ivaluesShift != 0) {
                this.keys[this.ivaluesShift + findIndex] = 0;
            }
        }
    }

    public int size() {
        return this.keyCount;
    }
}
