package com.google.protobuf;

import com.google.protobuf.ByteString;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString.class */
public final class RopeByteString extends ByteString {

    /* renamed from: e */
    static final int[] f10987e = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private static final long serialVersionUID = 1;
    private final ByteString left;
    private final int leftLength;
    private final ByteString right;
    private final int totalLength;
    private final int treeDepth;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.RopeByteString$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString$a.class */
    public class C2556a extends ByteString.AbstractC2540c {

        /* renamed from: b */
        final C2558c f10988b;

        /* renamed from: c */
        ByteString.AbstractC2543f f10989c = m2999c();

        C2556a() {
            this.f10988b = new C2558c(RopeByteString.this, null);
        }

        /* renamed from: c */
        private ByteString.AbstractC2543f m2999c() {
            return this.f10988b.hasNext() ? this.f10988b.next().iterator2() : null;
        }

        @Override // com.google.protobuf.ByteString.AbstractC2543f
        /* renamed from: a */
        public byte mo3000a() {
            ByteString.AbstractC2543f fVar = this.f10989c;
            if (fVar != null) {
                byte a = fVar.mo3000a();
                if (!this.f10989c.hasNext()) {
                    this.f10989c = m2999c();
                }
                return a;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f10989c != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.RopeByteString$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString$b.class */
    public static class C2557b {

        /* renamed from: a */
        private final ArrayDeque<ByteString> f10991a;

        private C2557b() {
            this.f10991a = new ArrayDeque<>();
        }

        /* synthetic */ C2557b(C2556a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public ByteString m2997b(ByteString byteString, ByteString byteString2) {
            m2996c(byteString);
            m2996c(byteString2);
            ByteString pop = this.f10991a.pop();
            while (!this.f10991a.isEmpty()) {
                pop = new RopeByteString(this.f10991a.pop(), pop, null);
            }
            return pop;
        }

        /* renamed from: c */
        private void m2996c(ByteString byteString) {
            if (byteString.isBalanced()) {
                m2994e(byteString);
            } else if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                m2996c(ropeByteString.left);
                m2996c(ropeByteString.right);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + byteString.getClass());
            }
        }

        /* renamed from: d */
        private int m2995d(int i) {
            int binarySearch = Arrays.binarySearch(RopeByteString.f10987e, i);
            int i2 = binarySearch;
            if (binarySearch < 0) {
                i2 = (-(binarySearch + 1)) - 1;
            }
            return i2;
        }

        /* renamed from: e */
        private void m2994e(ByteString byteString) {
            int d = m2995d(byteString.size());
            int minLength = RopeByteString.minLength(d + 1);
            if (this.f10991a.isEmpty() || this.f10991a.peek().size() >= minLength) {
                this.f10991a.push(byteString);
                return;
            }
            int minLength2 = RopeByteString.minLength(d);
            ByteString pop = this.f10991a.pop();
            while (!this.f10991a.isEmpty() && this.f10991a.peek().size() < minLength2) {
                pop = new RopeByteString(this.f10991a.pop(), pop, null);
            }
            RopeByteString ropeByteString = new RopeByteString(pop, byteString, null);
            while (!this.f10991a.isEmpty()) {
                if (this.f10991a.peek().size() >= RopeByteString.minLength(m2995d(ropeByteString.size()) + 1)) {
                    break;
                }
                ropeByteString = new RopeByteString(this.f10991a.pop(), ropeByteString, null);
            }
            this.f10991a.push(ropeByteString);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.protobuf.RopeByteString$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString$c.class */
    public static final class C2558c implements Iterator<ByteString.LeafByteString> {

        /* renamed from: b */
        private final ArrayDeque<RopeByteString> f10992b;

        /* renamed from: c */
        private ByteString.LeafByteString f10993c;

        private C2558c(ByteString byteString) {
            ByteString.LeafByteString leafByteString;
            if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                ArrayDeque<RopeByteString> arrayDeque = new ArrayDeque<>(ropeByteString.getTreeDepth());
                this.f10992b = arrayDeque;
                arrayDeque.push(ropeByteString);
                leafByteString = m2993b(ropeByteString.left);
            } else {
                this.f10992b = null;
                leafByteString = (ByteString.LeafByteString) byteString;
            }
            this.f10993c = leafByteString;
        }

        /* synthetic */ C2558c(ByteString byteString, C2556a aVar) {
            this(byteString);
        }

        /* renamed from: b */
        private ByteString.LeafByteString m2993b(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.f10992b.push(ropeByteString);
                byteString = ropeByteString.left;
            }
            return (ByteString.LeafByteString) byteString;
        }

        /* renamed from: c */
        private ByteString.LeafByteString m2992c() {
            ByteString.LeafByteString b;
            do {
                ArrayDeque<RopeByteString> arrayDeque = this.f10992b;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                b = m2993b(this.f10992b.pop().right);
            } while (b.isEmpty());
            return b;
        }

        /* renamed from: d */
        public ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.f10993c;
            if (leafByteString != null) {
                this.f10993c = m2992c();
                return leafByteString;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f10993c != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.protobuf.RopeByteString$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/RopeByteString$d.class */
    private class C2559d extends InputStream {

        /* renamed from: b */
        private C2558c f10994b;

        /* renamed from: c */
        private ByteString.LeafByteString f10995c;

        /* renamed from: d */
        private int f10996d;

        /* renamed from: e */
        private int f10997e;

        /* renamed from: f */
        private int f10998f;

        /* renamed from: g */
        private int f10999g;

        public C2559d() {
            m2987x();
        }

        /* renamed from: B */
        private int m2990B(byte[] bArr, int i, int i2) {
            int i3 = i2;
            while (i3 > 0) {
                m2989a();
                if (this.f10995c == null) {
                    break;
                }
                int min = Math.min(this.f10996d - this.f10997e, i3);
                i = i;
                if (bArr != null) {
                    this.f10995c.copyTo(bArr, this.f10997e, i, min);
                    i += min;
                }
                this.f10997e += min;
                i3 -= min;
            }
            return i2 - i3;
        }

        /* renamed from: a */
        private void m2989a() {
            if (this.f10995c != null) {
                int i = this.f10997e;
                int i2 = this.f10996d;
                if (i == i2) {
                    this.f10998f += i2;
                    int i3 = 0;
                    this.f10997e = 0;
                    if (this.f10994b.hasNext()) {
                        ByteString.LeafByteString d = this.f10994b.next();
                        this.f10995c = d;
                        i3 = d.size();
                    } else {
                        this.f10995c = null;
                    }
                    this.f10996d = i3;
                }
            }
        }

        /* renamed from: p */
        private int m2988p() {
            return RopeByteString.this.size() - (this.f10998f + this.f10997e);
        }

        /* renamed from: x */
        private void m2987x() {
            C2558c cVar = new C2558c(RopeByteString.this, null);
            this.f10994b = cVar;
            ByteString.LeafByteString d = cVar.next();
            this.f10995c = d;
            this.f10996d = d.size();
            this.f10997e = 0;
            this.f10998f = 0;
        }

        @Override // java.io.InputStream
        public int available() {
            return m2988p();
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.f10999g = this.f10998f + this.f10997e;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            m2989a();
            ByteString.LeafByteString leafByteString = this.f10995c;
            if (leafByteString == null) {
                return -1;
            }
            int i = this.f10997e;
            this.f10997e = i + 1;
            return leafByteString.byteAt(i) & 255;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
            if (m2988p() == 0) goto L_0x0034;
         */
        @Override // java.io.InputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int read(byte[] r6, int r7, int r8) {
            /*
                r5 = this;
                r0 = r6
                java.lang.Class r0 = r0.getClass()
                r0 = r7
                if (r0 < 0) goto L_0x0038
                r0 = r8
                if (r0 < 0) goto L_0x0038
                r0 = r8
                r1 = r6
                int r1 = r1.length
                r2 = r7
                int r1 = r1 - r2
                if (r0 > r1) goto L_0x0038
                r0 = r5
                r1 = r6
                r2 = r7
                r3 = r8
                int r0 = r0.m2990B(r1, r2, r3)
                r9 = r0
                r0 = r9
                r7 = r0
                r0 = r9
                if (r0 != 0) goto L_0x0036
                r0 = r8
                if (r0 > 0) goto L_0x0034
                r0 = r9
                r7 = r0
                r0 = r5
                int r0 = r0.m2988p()
                if (r0 != 0) goto L_0x0036
            L_0x0034:
                r0 = -1
                r7 = r0
            L_0x0036:
                r0 = r7
                return r0
            L_0x0038:
                java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
                r1 = r0
                r1.<init>()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.RopeByteString.C2559d.read(byte[], int, int):int");
        }

        @Override // java.io.InputStream
        public void reset() {
            synchronized (this) {
                m2987x();
                m2990B(null, 0, this.f10999g);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v2 */
        @Override // java.io.InputStream
        public long skip(long j) {
            if (j >= 0) {
                long j2 = j;
                if (j > 2147483647L) {
                    j2 = 2147483647;
                }
                return m2990B(null, 0, (int) j2);
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

    /* synthetic */ RopeByteString(ByteString byteString, ByteString byteString2, C2556a aVar) {
        this(byteString, byteString2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString concatenate(ByteString byteString, ByteString byteString2) {
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() == 0) {
            return byteString2;
        }
        int size = byteString.size() + byteString2.size();
        if (size < 128) {
            return m3002r(byteString, byteString2);
        }
        if (byteString instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            if (ropeByteString.right.size() + byteString2.size() < 128) {
                return new RopeByteString(ropeByteString.left, m3002r(ropeByteString.right, byteString2));
            } else if (ropeByteString.left.getTreeDepth() > ropeByteString.right.getTreeDepth() && ropeByteString.getTreeDepth() > byteString2.getTreeDepth()) {
                return new RopeByteString(ropeByteString.left, new RopeByteString(ropeByteString.right, byteString2));
            }
        }
        return size >= minLength(Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1) ? new RopeByteString(byteString, byteString2) : new C2557b(null).m2997b(byteString, byteString2);
    }

    static int minLength(int i) {
        int[] iArr = f10987e;
        if (i >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    static RopeByteString newInstanceForTest(ByteString byteString, ByteString byteString2) {
        return new RopeByteString(byteString, byteString2);
    }

    /* renamed from: r */
    private static ByteString m3002r(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    /* renamed from: u */
    private boolean m3001u(ByteString byteString) {
        C2558c cVar = new C2558c(this, null);
        ByteString.LeafByteString next = cVar.next();
        C2558c cVar2 = new C2558c(byteString, null);
        ByteString.LeafByteString next2 = cVar2.next();
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
            if (i3 < i4) {
                if (min == size) {
                    i = 0;
                    next = cVar.next();
                } else {
                    i += min;
                    next = next;
                }
                if (min == size2) {
                    next2 = cVar2.next();
                    i2 = 0;
                } else {
                    i2 += min;
                }
            } else if (i3 == i4) {
                return true;
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.google.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        C2558c cVar = new C2558c(this, null);
        while (cVar.hasNext()) {
            arrayList.add(cVar.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override // com.google.protobuf.ByteString
    public byte byteAt(int i) {
        ByteString.checkIndex(i, this.totalLength);
        return internalByteAt(i);
    }

    @Override // com.google.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        this.left.copyTo(byteBuffer);
        this.right.copyTo(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
        ByteString byteString;
        int i4 = this.leftLength;
        if (i + i3 <= i4) {
            byteString = this.left;
        } else if (i >= i4) {
            byteString = this.right;
            i -= i4;
        } else {
            int i5 = i4 - i;
            this.left.copyToInternal(bArr, i, i2, i5);
            this.right.copyToInternal(bArr, 0, i2 + i5, i3 - i5);
            return;
        }
        byteString.copyToInternal(bArr, i, i2, i3);
    }

    @Override // com.google.protobuf.ByteString
    public boolean equals(Object obj) {
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
        if (peekCachedHashCode == 0 || peekCachedHashCode2 == 0 || peekCachedHashCode == peekCachedHashCode2) {
            return m3001u(byteString);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int getTreeDepth() {
        return this.treeDepth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public byte internalByteAt(int i) {
        int i2 = this.leftLength;
        return i < i2 ? this.left.internalByteAt(i) : this.right.internalByteAt(i - i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public boolean isBalanced() {
        return this.totalLength >= minLength(this.treeDepth);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isValidUtf8() {
        boolean z = false;
        int partialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        if (byteString.partialIsValidUtf8(partialIsValidUtf8, 0, byteString.size()) == 0) {
            z = true;
        }
        return z;
    }

    @Override // com.google.protobuf.ByteString, java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new C2556a();
    }

    @Override // com.google.protobuf.ByteString
    public AbstractC2613i newCodedInput() {
        return AbstractC2613i.m2701f(new C2559d());
    }

    @Override // com.google.protobuf.ByteString
    public InputStream newInput() {
        return new C2559d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int partialHash(int i, int i2, int i3) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int partialIsValidUtf8(int i, int i2, int i3) {
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

    @Override // com.google.protobuf.ByteString
    public int size() {
        return this.totalLength;
    }

    @Override // com.google.protobuf.ByteString
    public ByteString substring(int i, int i2) {
        int checkRange = ByteString.checkRange(i, i2, this.totalLength);
        if (checkRange == 0) {
            return ByteString.f10869b;
        }
        if (checkRange == this.totalLength) {
            return this;
        }
        int i3 = this.leftLength;
        return i2 <= i3 ? this.left.substring(i, i2) : i >= i3 ? this.right.substring(i - i3, i2 - i3) : new RopeByteString(this.left.substring(i), this.right.substring(0, i2 - this.leftLength));
    }

    @Override // com.google.protobuf.ByteString
    protected String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public void writeTo(AbstractC2610h hVar) {
        this.left.writeTo(hVar);
        this.right.writeTo(hVar);
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(OutputStream outputStream) {
        this.left.writeTo(outputStream);
        this.right.writeTo(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public void writeToInternal(OutputStream outputStream, int i, int i2) {
        ByteString byteString;
        int i3 = this.leftLength;
        if (i + i2 <= i3) {
            byteString = this.left;
        } else if (i >= i3) {
            byteString = this.right;
            i -= i3;
        } else {
            int i4 = i3 - i;
            this.left.writeToInternal(outputStream, i, i4);
            this.right.writeToInternal(outputStream, 0, i2 - i4);
            return;
        }
        byteString.writeToInternal(outputStream, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public void writeToReverse(AbstractC2610h hVar) {
        this.right.writeToReverse(hVar);
        this.left.writeToReverse(hVar);
    }
}
