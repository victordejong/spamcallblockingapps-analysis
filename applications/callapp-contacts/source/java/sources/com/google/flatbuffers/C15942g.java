package com.google.flatbuffers;

import java.nio.ByteBuffer;
/* renamed from: com.google.flatbuffers.g */
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/g.class */
public class C15942g {

    /* renamed from: bb */
    protected ByteBuffer f56587bb;
    protected int bb_pos;

    public void __reset() {
        __reset(0, null);
    }

    public void __reset(int i, ByteBuffer byteBuffer) {
        this.f56587bb = byteBuffer;
        if (byteBuffer != null) {
            this.bb_pos = i;
        } else {
            this.bb_pos = 0;
        }
    }
}
