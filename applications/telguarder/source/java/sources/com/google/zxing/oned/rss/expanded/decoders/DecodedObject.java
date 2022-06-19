package com.google.zxing.oned.rss.expanded.decoders;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/rss/expanded/decoders/DecodedObject.class */
abstract class DecodedObject {
    private final int newPosition;

    public DecodedObject(int i) {
        this.newPosition = i;
    }

    public final int getNewPosition() {
        return this.newPosition;
    }
}
