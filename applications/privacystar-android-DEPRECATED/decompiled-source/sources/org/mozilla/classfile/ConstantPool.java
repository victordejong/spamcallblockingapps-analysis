package org.mozilla.classfile;

import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.UintMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/ConstantPool.class */
public final class ConstantPool {
    static final byte CONSTANT_Class = 7;
    static final byte CONSTANT_Double = 6;
    static final byte CONSTANT_Fieldref = 9;
    static final byte CONSTANT_Float = 4;
    static final byte CONSTANT_Integer = 3;
    static final byte CONSTANT_InterfaceMethodref = 11;
    static final byte CONSTANT_Long = 5;
    static final byte CONSTANT_Methodref = 10;
    static final byte CONSTANT_NameAndType = 12;
    static final byte CONSTANT_String = 8;
    static final byte CONSTANT_Utf8 = 1;
    private static final int ConstantPoolSize = 256;
    private static final int MAX_UTF_ENCODING_SIZE = 65535;
    private ClassFileWriter cfw;
    private UintMap itsStringConstHash = new UintMap();
    private ObjToIntMap itsUtf8Hash = new ObjToIntMap();
    private ObjToIntMap itsFieldRefHash = new ObjToIntMap();
    private ObjToIntMap itsMethodRefHash = new ObjToIntMap();
    private ObjToIntMap itsClassHash = new ObjToIntMap();
    private UintMap itsConstantData = new UintMap();
    private UintMap itsPoolTypes = new UintMap();
    private int itsTopIndex = 1;
    private byte[] itsPool = new byte[256];
    private int itsTop = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConstantPool(ClassFileWriter classFileWriter) {
        this.cfw = classFileWriter;
    }

    private short addNameAndType(String str, String str2) {
        short addUtf8 = addUtf8(str);
        short addUtf82 = addUtf8(str2);
        ensure(5);
        byte[] bArr = this.itsPool;
        int i = this.itsTop;
        this.itsTop = i + 1;
        bArr[i] = (byte) 12;
        this.itsTop = ClassFileWriter.putInt16(addUtf8, this.itsPool, this.itsTop);
        this.itsTop = ClassFileWriter.putInt16(addUtf82, this.itsPool, this.itsTop);
        this.itsPoolTypes.put(this.itsTopIndex, 12);
        int i2 = this.itsTopIndex;
        this.itsTopIndex = i2 + 1;
        return (short) i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short addClass(String str) {
        String str2;
        int i = this.itsClassHash.get(str, -1);
        int i2 = i;
        if (i == -1) {
            if (str.indexOf(46) > 0) {
                str2 = ClassFileWriter.getSlashedForm(str);
                i = this.itsClassHash.get(str2, -1);
                if (i != -1) {
                    this.itsClassHash.put(str, i);
                }
            } else {
                str2 = str;
            }
            i2 = i;
            if (i == -1) {
                short addUtf8 = addUtf8(str2);
                ensure(3);
                byte[] bArr = this.itsPool;
                int i3 = this.itsTop;
                this.itsTop = i3 + 1;
                bArr[i3] = (byte) 7;
                this.itsTop = ClassFileWriter.putInt16(addUtf8, this.itsPool, this.itsTop);
                int i4 = this.itsTopIndex;
                this.itsTopIndex = i4 + 1;
                this.itsClassHash.put(str2, i4);
                i2 = i4;
                if (str != str2) {
                    this.itsClassHash.put(str, i4);
                    i2 = i4;
                }
            }
        }
        setConstantData(i2, str);
        this.itsPoolTypes.put(i2, 7);
        return (short) i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int addConstant(double d) {
        ensure(9);
        byte[] bArr = this.itsPool;
        int i = this.itsTop;
        this.itsTop = i + 1;
        bArr[i] = (byte) 6;
        this.itsTop = ClassFileWriter.putInt64(Double.doubleToLongBits(d), this.itsPool, this.itsTop);
        int i2 = this.itsTopIndex;
        this.itsTopIndex += 2;
        this.itsPoolTypes.put(i2, 6);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int addConstant(float f) {
        ensure(5);
        byte[] bArr = this.itsPool;
        int i = this.itsTop;
        this.itsTop = i + 1;
        bArr[i] = (byte) 4;
        this.itsTop = ClassFileWriter.putInt32(Float.floatToIntBits(f), this.itsPool, this.itsTop);
        this.itsPoolTypes.put(this.itsTopIndex, 4);
        int i2 = this.itsTopIndex;
        this.itsTopIndex = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int addConstant(int i) {
        ensure(5);
        byte[] bArr = this.itsPool;
        int i2 = this.itsTop;
        this.itsTop = i2 + 1;
        bArr[i2] = (byte) 3;
        this.itsTop = ClassFileWriter.putInt32(i, this.itsPool, this.itsTop);
        this.itsPoolTypes.put(this.itsTopIndex, 3);
        int i3 = this.itsTopIndex;
        this.itsTopIndex = i3 + 1;
        return (short) i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int addConstant(long j) {
        ensure(9);
        byte[] bArr = this.itsPool;
        int i = this.itsTop;
        this.itsTop = i + 1;
        bArr[i] = (byte) 5;
        this.itsTop = ClassFileWriter.putInt64(j, this.itsPool, this.itsTop);
        int i2 = this.itsTopIndex;
        this.itsTopIndex += 2;
        this.itsPoolTypes.put(i2, 5);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int addConstant(String str) {
        int addUtf8 = addUtf8(str) & 65535;
        int i = this.itsStringConstHash.getInt(addUtf8, -1);
        int i2 = i;
        if (i == -1) {
            i2 = this.itsTopIndex;
            this.itsTopIndex = i2 + 1;
            ensure(3);
            byte[] bArr = this.itsPool;
            int i3 = this.itsTop;
            this.itsTop = i3 + 1;
            bArr[i3] = (byte) 8;
            this.itsTop = ClassFileWriter.putInt16(addUtf8, this.itsPool, this.itsTop);
            this.itsStringConstHash.put(addUtf8, i2);
        }
        this.itsPoolTypes.put(i2, 8);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short addFieldRef(String str, String str2, String str3) {
        FieldOrMethodRef fieldOrMethodRef = new FieldOrMethodRef(str, str2, str3);
        int i = this.itsFieldRefHash.get(fieldOrMethodRef, -1);
        int i2 = i;
        if (i == -1) {
            short addNameAndType = addNameAndType(str2, str3);
            short addClass = addClass(str);
            ensure(5);
            byte[] bArr = this.itsPool;
            int i3 = this.itsTop;
            this.itsTop = i3 + 1;
            bArr[i3] = (byte) 9;
            this.itsTop = ClassFileWriter.putInt16(addClass, this.itsPool, this.itsTop);
            this.itsTop = ClassFileWriter.putInt16(addNameAndType, this.itsPool, this.itsTop);
            i2 = this.itsTopIndex;
            this.itsTopIndex = i2 + 1;
            this.itsFieldRefHash.put(fieldOrMethodRef, i2);
        }
        setConstantData(i2, fieldOrMethodRef);
        this.itsPoolTypes.put(i2, 9);
        return (short) i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short addInterfaceMethodRef(String str, String str2, String str3) {
        short addNameAndType = addNameAndType(str2, str3);
        short addClass = addClass(str);
        ensure(5);
        byte[] bArr = this.itsPool;
        int i = this.itsTop;
        this.itsTop = i + 1;
        bArr[i] = (byte) 11;
        this.itsTop = ClassFileWriter.putInt16(addClass, this.itsPool, this.itsTop);
        this.itsTop = ClassFileWriter.putInt16(addNameAndType, this.itsPool, this.itsTop);
        setConstantData(this.itsTopIndex, new FieldOrMethodRef(str, str2, str3));
        this.itsPoolTypes.put(this.itsTopIndex, 11);
        int i2 = this.itsTopIndex;
        this.itsTopIndex = i2 + 1;
        return (short) i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short addMethodRef(String str, String str2, String str3) {
        FieldOrMethodRef fieldOrMethodRef = new FieldOrMethodRef(str, str2, str3);
        int i = this.itsMethodRefHash.get(fieldOrMethodRef, -1);
        int i2 = i;
        if (i == -1) {
            short addNameAndType = addNameAndType(str2, str3);
            short addClass = addClass(str);
            ensure(5);
            byte[] bArr = this.itsPool;
            int i3 = this.itsTop;
            this.itsTop = i3 + 1;
            bArr[i3] = (byte) 10;
            this.itsTop = ClassFileWriter.putInt16(addClass, this.itsPool, this.itsTop);
            this.itsTop = ClassFileWriter.putInt16(addNameAndType, this.itsPool, this.itsTop);
            i2 = this.itsTopIndex;
            this.itsTopIndex = i2 + 1;
            this.itsMethodRefHash.put(fieldOrMethodRef, i2);
        }
        setConstantData(i2, fieldOrMethodRef);
        this.itsPoolTypes.put(i2, 10);
        return (short) i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public short addUtf8(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ConstantPool.addUtf8(java.lang.String):short");
    }

    void ensure(int i) {
        if (this.itsTop + i > this.itsPool.length) {
            int length = this.itsPool.length * 2;
            int i2 = length;
            if (this.itsTop + i > length) {
                i2 = this.itsTop + i;
            }
            byte[] bArr = new byte[i2];
            System.arraycopy(this.itsPool, 0, bArr, 0, this.itsTop);
            this.itsPool = bArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getConstantData(int i) {
        return this.itsConstantData.getObject(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte getConstantType(int i) {
        return (byte) this.itsPoolTypes.getInt(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUtfEncodingLimit(String str, int i, int i2) {
        int i3 = 65535;
        int i4 = i;
        if ((i2 - i) * 3 <= 65535) {
            return i2;
        }
        while (i4 != i2) {
            char charAt = str.charAt(i4);
            int i5 = (charAt == 0 || charAt > 127) ? charAt < 2047 ? i3 - 2 : i3 - 3 : i3 - 1;
            if (i5 < 0) {
                return i4;
            }
            i4++;
            i3 = i5;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWriteSize() {
        return this.itsTop + 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUnderUtfEncodingLimit(String str) {
        int length = str.length();
        if (length * 3 <= 65535) {
            return true;
        }
        boolean z = false;
        if (length > 65535) {
            return false;
        }
        if (length == getUtfEncodingLimit(str, 0, length)) {
            z = true;
        }
        return z;
    }

    void setConstantData(int i, Object obj) {
        this.itsConstantData.put(i, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int write(byte[] bArr, int i) {
        int putInt16 = ClassFileWriter.putInt16((short) this.itsTopIndex, bArr, i);
        System.arraycopy(this.itsPool, 0, bArr, putInt16, this.itsTop);
        return putInt16 + this.itsTop;
    }
}
