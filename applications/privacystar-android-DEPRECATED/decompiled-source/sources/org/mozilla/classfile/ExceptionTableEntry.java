package org.mozilla.classfile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/ExceptionTableEntry.class */
public final class ExceptionTableEntry {
    short itsCatchType;
    int itsEndLabel;
    int itsHandlerLabel;
    int itsStartLabel;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExceptionTableEntry(int i, int i2, int i3, short s) {
        this.itsStartLabel = i;
        this.itsEndLabel = i2;
        this.itsHandlerLabel = i3;
        this.itsCatchType = s;
    }
}
