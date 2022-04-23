package com.google.flatbuffers;

import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/b.class */
public class b {
    protected ByteBuffer bb;
    private int element_size;
    private int length;
    private int vector;

    /* JADX INFO: Access modifiers changed from: protected */
    public int __element(int i) {
        return this.vector + (i * this.element_size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void __reset(int i, int i2, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer != null) {
            this.vector = i;
            this.length = byteBuffer.getInt(i - 4);
            this.element_size = i2;
            return;
        }
        this.vector = 0;
        this.length = 0;
        this.element_size = 0;
    }

    protected int __vector() {
        return this.vector;
    }

    public int length() {
        return this.length;
    }

    public void reset() {
        __reset(0, 0, null);
    }
}
