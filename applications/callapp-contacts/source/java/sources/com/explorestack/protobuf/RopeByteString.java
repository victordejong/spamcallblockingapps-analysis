package com.explorestack.protobuf;

import com.explorestack.protobuf.ByteString;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RopeByteString.class */
public final class RopeByteString extends ByteString {
    static final int[] minLengthByDepth = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private static final long serialVersionUID = 1;
    private final ByteString left;
    private final int leftLength;
    private final ByteString right;
    private final int totalLength;
    private final int treeDepth;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RopeByteString$Balancer.class */
    public static class Balancer {
        private final ArrayDeque<ByteString> prefixesStack;

        private Balancer() {
            this.prefixesStack = new ArrayDeque<>();
        }

        public ByteString balance(ByteString byteString, ByteString byteString2) {
            doBalance(byteString);
            doBalance(byteString2);
            ByteString pop = this.prefixesStack.pop();
            while (true) {
                ByteString byteString3 = pop;
                if (!this.prefixesStack.isEmpty()) {
                    pop = new RopeByteString(this.prefixesStack.pop(), byteString3);
                } else {
                    return byteString3;
                }
            }
        }

        private void doBalance(ByteString byteString) {
            while (!byteString.isBalanced()) {
                if (!(byteString instanceof RopeByteString)) {
                    throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + byteString.getClass());
                }
                RopeByteString ropeByteString = (RopeByteString) byteString;
                doBalance(ropeByteString.left);
                byteString = ropeByteString.right;
            }
            insert(byteString);
        }

        private int getDepthBinForLength(int i) {
            int binarySearch = Arrays.binarySearch(RopeByteString.minLengthByDepth, i);
            int i2 = binarySearch;
            if (binarySearch < 0) {
                i2 = (-(binarySearch + 1)) - 1;
            }
            return i2;
        }

        private void insert(ByteString byteString) {
            ByteString byteString2;
            RopeByteString ropeByteString;
            int depthBinForLength = getDepthBinForLength(byteString.size());
            int i = RopeByteString.minLengthByDepth[depthBinForLength + 1];
            if (this.prefixesStack.isEmpty() || this.prefixesStack.peek().size() >= i) {
                this.prefixesStack.push(byteString);
                return;
            }
            int i2 = RopeByteString.minLengthByDepth[depthBinForLength];
            ByteString pop = this.prefixesStack.pop();
            while (true) {
                byteString2 = pop;
                if (this.prefixesStack.isEmpty() || this.prefixesStack.peek().size() >= i2) {
                    break;
                }
                pop = new RopeByteString(this.prefixesStack.pop(), byteString2);
            }
            RopeByteString ropeByteString2 = new RopeByteString(byteString2, byteString);
            while (true) {
                ropeByteString = ropeByteString2;
                if (this.prefixesStack.isEmpty()) {
                    break;
                }
                if (this.prefixesStack.peek().size() >= RopeByteString.minLengthByDepth[getDepthBinForLength(ropeByteString.size()) + 1]) {
                    break;
                }
                ropeByteString2 = new RopeByteString(this.prefixesStack.pop(), ropeByteString);
            }
            this.prefixesStack.push(ropeByteString);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RopeByteString$PieceIterator.class */
    public static final class PieceIterator implements Iterator<ByteString.LeafByteString> {
        private final ArrayDeque<RopeByteString> breadCrumbs;
        private ByteString.LeafByteString next;

        private PieceIterator(ByteString byteString) {
            if (!(byteString instanceof RopeByteString)) {
                this.breadCrumbs = null;
                this.next = (ByteString.LeafByteString) byteString;
                return;
            }
            RopeByteString ropeByteString = (RopeByteString) byteString;
            ArrayDeque<RopeByteString> arrayDeque = new ArrayDeque<>(ropeByteString.getTreeDepth());
            this.breadCrumbs = arrayDeque;
            arrayDeque.push(ropeByteString);
            this.next = getLeafByLeft(ropeByteString.left);
        }

        private ByteString.LeafByteString getLeafByLeft(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.breadCrumbs.push(ropeByteString);
                byteString = ropeByteString.left;
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
                leafByLeft = getLeafByLeft(this.breadCrumbs.pop().right);
            } while (leafByLeft.isEmpty());
            return leafByLeft;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.Iterator
        public final ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.next;
            if (leafByteString != null) {
                this.next = getNextNonEmptyLeaf();
                return leafByteString;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RopeByteString$RopeInputStream.class */
    class RopeInputStream extends InputStream {
        private ByteString.LeafByteString currentPiece;
        private int currentPieceIndex;
        private int currentPieceOffsetInRope;
        private int currentPieceSize;
        private int mark;
        private PieceIterator pieceIterator;

        public RopeInputStream() {
            RopeByteString.this = r4;
            initialize();
        }

        private void advanceIfCurrentPieceFullyRead() {
            if (this.currentPiece != null) {
                int i = this.currentPieceIndex;
                int i2 = this.currentPieceSize;
                if (i != i2) {
                    return;
                }
                this.currentPieceOffsetInRope += i2;
                this.currentPieceIndex = 0;
                if (!this.pieceIterator.hasNext()) {
                    this.currentPiece = null;
                    this.currentPieceSize = 0;
                    return;
                }
                ByteString.LeafByteString next = this.pieceIterator.next();
                this.currentPiece = next;
                this.currentPieceSize = next.size();
            }
        }

        private void initialize() {
            PieceIterator pieceIterator = new PieceIterator(RopeByteString.this);
            this.pieceIterator = pieceIterator;
            ByteString.LeafByteString next = pieceIterator.next();
            this.currentPiece = next;
            this.currentPieceSize = next.size();
            this.currentPieceIndex = 0;
            this.currentPieceOffsetInRope = 0;
        }

        private int readSkipInternal(byte[] bArr, int i, int i2) {
            int i3 = i;
            int i4 = i2;
            while (true) {
                if (i4 <= 0) {
                    break;
                }
                advanceIfCurrentPieceFullyRead();
                if (this.currentPiece != null) {
                    int min = Math.min(this.currentPieceSize - this.currentPieceIndex, i4);
                    int i5 = i3;
                    if (bArr != null) {
                        this.currentPiece.copyTo(bArr, this.currentPieceIndex, i3, min);
                        i5 = i3 + min;
                    }
                    this.currentPieceIndex += min;
                    i4 -= min;
                    i3 = i5;
                } else if (i4 == i2) {
                    return -1;
                }
            }
            return i2 - i4;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return RopeByteString.this.size() - (this.currentPieceOffsetInRope + this.currentPieceIndex);
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.mark = this.currentPieceOffsetInRope + this.currentPieceIndex;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            advanceIfCurrentPieceFullyRead();
            ByteString.LeafByteString leafByteString = this.currentPiece;
            if (leafByteString == null) {
                return -1;
            }
            int i = this.currentPieceIndex;
            this.currentPieceIndex = i + 1;
            return leafByteString.byteAt(i) & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            return readSkipInternal(bArr, i, i2);
        }

        @Override // java.io.InputStream
        public void reset() {
            synchronized (this) {
                initialize();
                readSkipInternal(null, 0, this.mark);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.io.InputStream
        public long skip(long j) {
            if (j >= 0) {
                char c = j;
                if (j > 2147483647L) {
                    c = 65535;
                }
                return readSkipInternal(null, 0, c);
            }
            throw new IndexOutOfBoundsException();
        }
    }

    private RopeByteString(ByteString byteString, ByteString byteString2) {
        this.left = byteString;
        this.right = byteString2;
        int size = byteString.size();
        this.leftLength = size;
        this.totalLength = size + byteString2.size();
        this.treeDepth = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    public static ByteString concatenate(ByteString byteString, ByteString byteString2) {
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() == 0) {
            return byteString2;
        }
        int size = byteString.size() + byteString2.size();
        if (size < 128) {
            return concatenateBytes(byteString, byteString2);
        }
        if (byteString instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            if (ropeByteString.right.size() + byteString2.size() < 128) {
                return new RopeByteString(ropeByteString.left, concatenateBytes(ropeByteString.right, byteString2));
            } else if (ropeByteString.left.getTreeDepth() > ropeByteString.right.getTreeDepth() && ropeByteString.getTreeDepth() > byteString2.getTreeDepth()) {
                return new RopeByteString(ropeByteString.left, new RopeByteString(ropeByteString.right, byteString2));
            }
        }
        return size >= minLengthByDepth[Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1] ? new RopeByteString(byteString, byteString2) : new Balancer().balance(byteString, byteString2);
    }

    private static ByteString concatenateBytes(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private boolean equalsFragments(ByteString byteString) {
        PieceIterator pieceIterator = new PieceIterator(this);
        ByteString.LeafByteString next = pieceIterator.next();
        PieceIterator pieceIterator2 = new PieceIterator(byteString);
        ByteString.LeafByteString next2 = pieceIterator2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int min = Math.min(size, size2);
            if (!(i == 0 ? next.equalsRange(next2, i2, min) : next2.equalsRange(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.totalLength;
            if (i3 >= i4) {
                if (i3 != i4) {
                    throw new IllegalStateException();
                }
                return true;
            }
            if (min == size) {
                next = pieceIterator.next();
                i = 0;
            } else {
                i += min;
            }
            if (min == size2) {
                next2 = pieceIterator2.next();
                i2 = 0;
            } else {
                i2 += min;
            }
        }
    }

    static RopeByteString newInstanceForTest(ByteString byteString, ByteString byteString2) {
        return new RopeByteString(byteString, byteString2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override // com.explorestack.protobuf.ByteString
    public final ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.explorestack.protobuf.ByteString
    public final List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        PieceIterator pieceIterator = new PieceIterator(this);
        while (pieceIterator.hasNext()) {
            arrayList.add(pieceIterator.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override // com.explorestack.protobuf.ByteString
    public final byte byteAt(int i) {
        checkIndex(i, this.totalLength);
        return internalByteAt(i);
    }

    @Override // com.explorestack.protobuf.ByteString
    public final void copyTo(ByteBuffer byteBuffer) {
        this.left.copyTo(byteBuffer);
        this.right.copyTo(byteBuffer);
    }

    @Override // com.explorestack.protobuf.ByteString
    public final void copyToInternal(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.leftLength;
        if (i + i3 <= i4) {
            this.left.copyToInternal(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.right.copyToInternal(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.left.copyToInternal(bArr, i, i2, i5);
            this.right.copyToInternal(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    @Override // com.explorestack.protobuf.ByteString
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (this.totalLength != byteString.size()) {
            return false;
        }
        if (this.totalLength == 0) {
            return true;
        }
        int peekCachedHashCode = peekCachedHashCode();
        int peekCachedHashCode2 = byteString.peekCachedHashCode();
        if (peekCachedHashCode != 0 && peekCachedHashCode2 != 0 && peekCachedHashCode != peekCachedHashCode2) {
            return false;
        }
        return equalsFragments(byteString);
    }

    @Override // com.explorestack.protobuf.ByteString
    public final int getTreeDepth() {
        return this.treeDepth;
    }

    @Override // com.explorestack.protobuf.ByteString
    public final byte internalByteAt(int i) {
        int i2 = this.leftLength;
        return i < i2 ? this.left.internalByteAt(i) : this.right.internalByteAt(i - i2);
    }

    @Override // com.explorestack.protobuf.ByteString
    public final boolean isBalanced() {
        return this.totalLength >= minLengthByDepth[this.treeDepth];
    }

    @Override // com.explorestack.protobuf.ByteString
    public final boolean isValidUtf8() {
        int partialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        return byteString.partialIsValidUtf8(partialIsValidUtf8, 0, byteString.size()) == 0;
    }

    @Override // com.explorestack.protobuf.ByteString, java.lang.Iterable
    /* renamed from: iterator */
    public final Iterator<Byte> iterator2() {
        return new ByteString.AbstractByteIterator() { // from class: com.explorestack.protobuf.RopeByteString.1
            ByteString.ByteIterator current = nextPiece();
            final PieceIterator pieces;

            {
                RopeByteString.this = this;
                this.pieces = new PieceIterator(this);
            }

            /* JADX WARN: Type inference failed for: r0v7, types: [com.explorestack.protobuf.ByteString$ByteIterator] */
            private ByteString.ByteIterator nextPiece() {
                if (this.pieces.hasNext()) {
                    return this.pieces.next().iterator();
                }
                return null;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.current != null;
            }

            @Override // com.explorestack.protobuf.ByteString.ByteIterator
            public byte nextByte() {
                ByteString.ByteIterator byteIterator = this.current;
                if (byteIterator != null) {
                    byte nextByte = byteIterator.nextByte();
                    if (!this.current.hasNext()) {
                        this.current = nextPiece();
                    }
                    return nextByte;
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // com.explorestack.protobuf.ByteString
    public final CodedInputStream newCodedInput() {
        return CodedInputStream.newInstance(new RopeInputStream());
    }

    @Override // com.explorestack.protobuf.ByteString
    public final InputStream newInput() {
        return new RopeInputStream();
    }

    @Override // com.explorestack.protobuf.ByteString
    public final int partialHash(int i, int i2, int i3) {
        int i4 = this.leftLength;
        if (i2 + i3 <= i4) {
            return this.left.partialHash(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.right.partialHash(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.right.partialHash(this.left.partialHash(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.explorestack.protobuf.ByteString
    public final int partialIsValidUtf8(int i, int i2, int i3) {
        int i4 = this.leftLength;
        if (i2 + i3 <= i4) {
            return this.left.partialIsValidUtf8(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.right.partialIsValidUtf8(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.right.partialIsValidUtf8(this.left.partialIsValidUtf8(i, i2, i5), 0, i3 - i5);
    }

    @Override // com.explorestack.protobuf.ByteString
    public final int size() {
        return this.totalLength;
    }

    @Override // com.explorestack.protobuf.ByteString
    public final ByteString substring(int i, int i2) {
        int checkRange = checkRange(i, i2, this.totalLength);
        if (checkRange == 0) {
            return ByteString.EMPTY;
        }
        if (checkRange == this.totalLength) {
            return this;
        }
        int i3 = this.leftLength;
        return i2 <= i3 ? this.left.substring(i, i2) : i >= i3 ? this.right.substring(i - i3, i2 - i3) : new RopeByteString(this.left.substring(i), this.right.substring(0, i2 - this.leftLength));
    }

    @Override // com.explorestack.protobuf.ByteString
    protected final String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    final Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    @Override // com.explorestack.protobuf.ByteString
    public final void writeTo(ByteOutput byteOutput) throws IOException {
        this.left.writeTo(byteOutput);
        this.right.writeTo(byteOutput);
    }

    @Override // com.explorestack.protobuf.ByteString
    public final void writeTo(OutputStream outputStream) throws IOException {
        this.left.writeTo(outputStream);
        this.right.writeTo(outputStream);
    }

    @Override // com.explorestack.protobuf.ByteString
    public final void writeToInternal(OutputStream outputStream, int i, int i2) throws IOException {
        int i3 = this.leftLength;
        if (i + i2 <= i3) {
            this.left.writeToInternal(outputStream, i, i2);
        } else if (i >= i3) {
            this.right.writeToInternal(outputStream, i - i3, i2);
        } else {
            int i4 = i3 - i;
            this.left.writeToInternal(outputStream, i, i4);
            this.right.writeToInternal(outputStream, 0, i2 - i4);
        }
    }

    @Override // com.explorestack.protobuf.ByteString
    public final void writeToReverse(ByteOutput byteOutput) throws IOException {
        this.right.writeToReverse(byteOutput);
        this.left.writeToReverse(byteOutput);
    }
}
