package com.google.flatbuffers;

import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/g.class */
public class g {
    protected ByteBuffer bb;
    protected int bb_pos;

    public void __reset() {
        __reset(0, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void __reset(int i, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer != null) {
            this.bb_pos = i;
        } else {
            this.bb_pos = 0;
        }
    }
}
