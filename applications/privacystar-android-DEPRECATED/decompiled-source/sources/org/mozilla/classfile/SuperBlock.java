package org.mozilla.classfile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/classfile/SuperBlock.class */
public final class SuperBlock {
    private int end;
    private int index;
    private int[] locals;
    private int start;
    private int[] stack = new int[0];
    private boolean isInitialized = false;
    private boolean isInQueue = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SuperBlock(int i, int i2, int i3, int[] iArr) {
        this.index = i;
        this.start = i2;
        this.end = i3;
        this.locals = new int[iArr.length];
        System.arraycopy(iArr, 0, this.locals, 0, iArr.length);
    }

    private boolean mergeState(int[] iArr, int[] iArr2, int i, ConstantPool constantPool) {
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            iArr[i2] = TypeInfo.merge(iArr[i2], iArr2[i2], constantPool);
            if (i3 != iArr[i2]) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEnd() {
        return this.end;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getIndex() {
        return this.index;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getLocals() {
        int[] iArr = new int[this.locals.length];
        System.arraycopy(this.locals, 0, iArr, 0, this.locals.length);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getStack() {
        int[] iArr = new int[this.stack.length];
        System.arraycopy(this.stack, 0, iArr, 0, this.stack.length);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStart() {
        return this.start;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getTrimmedLocals() {
        int length = this.locals.length - 1;
        while (length >= 0 && this.locals[length] == 0 && !TypeInfo.isTwoWords(this.locals[length - 1])) {
            length--;
        }
        int i = length + 1;
        int i2 = 0;
        int i3 = i;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = i3;
            if (TypeInfo.isTwoWords(this.locals[i4])) {
                i3--;
            }
        }
        int[] iArr = new int[i3];
        int i5 = 0;
        while (i2 < i3) {
            iArr[i2] = this.locals[i5];
            int i6 = i5;
            if (TypeInfo.isTwoWords(this.locals[i5])) {
                i6 = i5 + 1;
            }
            i2++;
            i5 = i6 + 1;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInQueue() {
        return this.isInQueue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInitialized() {
        return this.isInitialized;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean merge(int[] iArr, int i, int[] iArr2, int i2, ConstantPool constantPool) {
        if (!this.isInitialized) {
            System.arraycopy(iArr, 0, this.locals, 0, i);
            this.stack = new int[i2];
            System.arraycopy(iArr2, 0, this.stack, 0, i2);
            this.isInitialized = true;
            return true;
        } else if (this.locals.length == i && this.stack.length == i2) {
            boolean mergeState = mergeState(this.locals, iArr, i, constantPool);
            boolean mergeState2 = mergeState(this.stack, iArr2, i2, constantPool);
            boolean z = true;
            if (!mergeState) {
                z = mergeState2;
            }
            return z;
        } else {
            throw new IllegalArgumentException("bad merge attempt");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInQueue(boolean z) {
        this.isInQueue = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInitialized(boolean z) {
        this.isInitialized = z;
    }

    public String toString() {
        return "sb " + this.index;
    }
}
