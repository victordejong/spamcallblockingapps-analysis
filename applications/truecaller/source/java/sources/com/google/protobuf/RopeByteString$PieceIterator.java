package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/RopeByteString$PieceIterator.class */
public final class RopeByteString$PieceIterator implements Iterator<ByteString.LeafByteString> {
    private final ArrayDeque<RopeByteString> breadCrumbs;
    private ByteString.LeafByteString next;

    /* JADX INFO: Access modifiers changed from: private */
    public RopeByteString$PieceIterator(ByteString byteString) {
        if (!(byteString instanceof RopeByteString)) {
            this.breadCrumbs = null;
            this.next = (ByteString.LeafByteString) byteString;
            return;
        }
        RopeByteString ropeByteString = (RopeByteString) byteString;
        ArrayDeque<RopeByteString> arrayDeque = new ArrayDeque<>(ropeByteString.getTreeDepth());
        this.breadCrumbs = arrayDeque;
        arrayDeque.push(ropeByteString);
        this.next = getLeafByLeft(RopeByteString.access$400(ropeByteString));
    }

    private ByteString.LeafByteString getLeafByLeft(ByteString byteString) {
        while (byteString instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            this.breadCrumbs.push(ropeByteString);
            byteString = RopeByteString.access$400(ropeByteString);
        }
        return (ByteString.LeafByteString) byteString;
    }

    private ByteString.LeafByteString getNextNonEmptyLeaf() {
        ByteString.LeafByteString leafByLeft;
        do {
            ArrayDeque<RopeByteString> arrayDeque = this.breadCrumbs;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                return null;
            }
            leafByLeft = getLeafByLeft(RopeByteString.access$500(this.breadCrumbs.pop()));
        } while (leafByLeft.isEmpty());
        return leafByLeft;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.next != null;
    }

    @Override // java.util.Iterator
    public ByteString.LeafByteString next() {
        ByteString.LeafByteString leafByteString = this.next;
        if (leafByteString != null) {
            this.next = getNextNonEmptyLeaf();
            return leafByteString;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
