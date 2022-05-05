package org.mozilla.classfile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/ClassFileMethod.class */
public final class ClassFileMethod {
    private byte[] itsCodeAttribute;
    private short itsFlags;
    private String itsName;
    private short itsNameIndex;
    private String itsType;
    private short itsTypeIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClassFileMethod(String str, short s, String str2, short s2, short s3) {
        this.itsName = str;
        this.itsNameIndex = s;
        this.itsType = str2;
        this.itsTypeIndex = s2;
        this.itsFlags = s3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short getFlags() {
        return this.itsFlags;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getName() {
        return this.itsName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getType() {
        return this.itsType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWriteSize() {
        return this.itsCodeAttribute.length + 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCodeAttribute(byte[] bArr) {
        this.itsCodeAttribute = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int write(byte[] bArr, int i) {
        int putInt16 = ClassFileWriter.putInt16(1, bArr, ClassFileWriter.putInt16(this.itsTypeIndex, bArr, ClassFileWriter.putInt16(this.itsNameIndex, bArr, ClassFileWriter.putInt16(this.itsFlags, bArr, i))));
        System.arraycopy(this.itsCodeAttribute, 0, bArr, putInt16, this.itsCodeAttribute.length);
        return putInt16 + this.itsCodeAttribute.length;
    }
}
