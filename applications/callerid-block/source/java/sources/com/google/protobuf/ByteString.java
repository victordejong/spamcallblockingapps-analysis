package com.google.protobuf;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString.class */
public abstract class ByteString implements Iterable<Byte>, Serializable {

    /* renamed from: b */
    public static final ByteString f10869b = new LiteralByteString(C2665x.f11226b);

    /* renamed from: c */
    private static final AbstractC2542e f10870c;

    /* renamed from: d */
    private static final Comparator<ByteString> f10871d;
    private int hash = 0;

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$BoundedByteString.class */
    public static final class BoundedByteString extends LiteralByteString {
        private static final long serialVersionUID = 1;
        private final int bytesLength;
        private final int bytesOffset;

        BoundedByteString(byte[] bArr, int i, int i2) {
            super(bArr);
            ByteString.checkRange(i, i + i2, bArr.length);
            this.bytesOffset = i;
            this.bytesLength = i2;
        }

        private void readObject(ObjectInputStream objectInputStream) {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public byte byteAt(int i) {
            ByteString.checkIndex(i, size());
            return this.bytes[this.bytesOffset + i];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        protected void copyToInternal(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.bytes, getOffsetIntoBytes() + i, bArr, i2, i3);
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString
        protected int getOffsetIntoBytes() {
            return this.bytesOffset;
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        byte internalByteAt(int i) {
            return this.bytes[this.bytesOffset + i];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public int size() {
            return this.bytesLength;
        }

        Object writeReplace() {
            return ByteString.wrap(toByteArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$LeafByteString.class */
    public static abstract class LeafByteString extends ByteString {
        public abstract boolean equalsRange(ByteString byteString, int i, int i2);

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.ByteString
        public final int getTreeDepth() {
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.ByteString
        public final boolean isBalanced() {
            return true;
        }

        @Override // com.google.protobuf.ByteString, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return ByteString.super.iterator2();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.ByteString
        public void writeToReverse(AbstractC2610h abstractC2610h) {
            writeTo(abstractC2610h);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$LiteralByteString.class */
    public static class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;
        protected final byte[] bytes;

        LiteralByteString(byte[] bArr) {
            bArr.getClass();
            this.bytes = bArr;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteBuffer asReadOnlyByteBuffer() {
            return ByteBuffer.wrap(this.bytes, getOffsetIntoBytes(), size()).asReadOnlyBuffer();
        }

        @Override // com.google.protobuf.ByteString
        public final List<ByteBuffer> asReadOnlyByteBufferList() {
            return Collections.singletonList(asReadOnlyByteBuffer());
        }

        @Override // com.google.protobuf.ByteString
        public byte byteAt(int i) {
            return this.bytes[i];
        }

        @Override // com.google.protobuf.ByteString
        public final void copyTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.bytes, getOffsetIntoBytes(), size());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.ByteString
        public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.bytes, i, bArr, i2, i3);
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof LiteralByteString)) {
                return obj.equals(this);
            }
            LiteralByteString literalByteString = (LiteralByteString) obj;
            int peekCachedHashCode = peekCachedHashCode();
            int peekCachedHashCode2 = literalByteString.peekCachedHashCode();
            if (peekCachedHashCode != 0 && peekCachedHashCode2 != 0 && peekCachedHashCode != peekCachedHashCode2) {
                return false;
            }
            return equalsRange(literalByteString, 0, size());
        }

        @Override // com.google.protobuf.ByteString.LeafByteString
        public final boolean equalsRange(ByteString byteString, int i, int i2) {
            if (i2 > byteString.size()) {
                throw new IllegalArgumentException("Length too large: " + i2 + size());
            }
            int i3 = i + i2;
            if (i3 > byteString.size()) {
                throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + byteString.size());
            } else if (!(byteString instanceof LiteralByteString)) {
                return byteString.substring(i, i3).equals(substring(0, i2));
            } else {
                LiteralByteString literalByteString = (LiteralByteString) byteString;
                byte[] bArr = this.bytes;
                byte[] bArr2 = literalByteString.bytes;
                int offsetIntoBytes = getOffsetIntoBytes();
                int offsetIntoBytes2 = getOffsetIntoBytes();
                int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes() + i;
                int i4 = offsetIntoBytes2;
                while (i4 < offsetIntoBytes + i2) {
                    if (bArr[i4] != bArr2[offsetIntoBytes3]) {
                        return false;
                    }
                    i4++;
                    offsetIntoBytes3++;
                }
                return true;
            }
        }

        protected int getOffsetIntoBytes() {
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.ByteString
        public byte internalByteAt(int i) {
            return this.bytes[i];
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isValidUtf8() {
            int offsetIntoBytes = getOffsetIntoBytes();
            return Utf8.m2966t(this.bytes, offsetIntoBytes, size() + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public final AbstractC2613i newCodedInput() {
            return AbstractC2613i.m2696k(this.bytes, getOffsetIntoBytes(), size(), true);
        }

        @Override // com.google.protobuf.ByteString
        public final InputStream newInput() {
            return new ByteArrayInputStream(this.bytes, getOffsetIntoBytes(), size());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.ByteString
        public final int partialHash(int i, int i2, int i3) {
            return C2665x.m2243i(i, this.bytes, getOffsetIntoBytes() + i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.ByteString
        public final int partialIsValidUtf8(int i, int i2, int i3) {
            int offsetIntoBytes = getOffsetIntoBytes() + i2;
            return Utf8.m2964v(i, this.bytes, offsetIntoBytes, i3 + offsetIntoBytes);
        }

        @Override // com.google.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteString substring(int i, int i2) {
            int checkRange = ByteString.checkRange(i, i2, size());
            return checkRange == 0 ? ByteString.f10869b : new BoundedByteString(this.bytes, getOffsetIntoBytes() + i, checkRange);
        }

        @Override // com.google.protobuf.ByteString
        protected final String toStringInternal(Charset charset) {
            return new String(this.bytes, getOffsetIntoBytes(), size(), charset);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.ByteString
        public final void writeTo(AbstractC2610h abstractC2610h) {
            abstractC2610h.mo2721b(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(OutputStream outputStream) {
            outputStream.write(toByteArray());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.ByteString
        public final void writeToInternal(OutputStream outputStream, int i, int i2) {
            outputStream.write(this.bytes, getOffsetIntoBytes() + i, i2);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$a.class */
    public class C2538a extends AbstractC2540c {

        /* renamed from: b */
        private int f10872b = 0;

        /* renamed from: c */
        private final int f10873c;

        C2538a() {
            ByteString.this = r4;
            this.f10873c = r4.size();
        }

        @Override // com.google.protobuf.ByteString.AbstractC2543f
        /* renamed from: a */
        public byte mo3000a() {
            int i = this.f10872b;
            if (i < this.f10873c) {
                this.f10872b = i + 1;
                return ByteString.this.internalByteAt(i);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f10872b < this.f10873c;
        }
    }

    /* renamed from: com.google.protobuf.ByteString$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$b.class */
    static final class C2539b implements Comparator<ByteString> {
        C2539b() {
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Iterator, com.google.protobuf.ByteString$f] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Iterator, com.google.protobuf.ByteString$f] */
        /* renamed from: a */
        public int compare(ByteString byteString, ByteString byteString2) {
            ?? iterator2 = byteString.iterator2();
            ?? iterator22 = byteString2.iterator2();
            while (iterator2.hasNext() && iterator22.hasNext()) {
                int m15247a = C0000a.m15247a(ByteString.m3161k(iterator2.mo3000a()), ByteString.m3161k(iterator22.mo3000a()));
                if (m15247a != 0) {
                    return m15247a;
                }
            }
            return C0000a.m15247a(byteString.size(), byteString2.size());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.ByteString$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$c.class */
    public static abstract class AbstractC2540c implements AbstractC2543f {
        /* renamed from: b */
        public final Byte next() {
            return Byte.valueOf(mo3000a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.protobuf.ByteString$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$d.class */
    private static final class C2541d implements AbstractC2542e {
        private C2541d() {
        }

        /* synthetic */ C2541d(C2538a c2538a) {
            this();
        }

        @Override // com.google.protobuf.ByteString.AbstractC2542e
        /* renamed from: a */
        public byte[] mo3153a(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    /* renamed from: com.google.protobuf.ByteString$e */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$e.class */
    public interface AbstractC2542e {
        /* renamed from: a */
        byte[] mo3153a(byte[] bArr, int i, int i2);
    }

    /* renamed from: com.google.protobuf.ByteString$f */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$f.class */
    public interface AbstractC2543f extends Iterator<Byte> {
        /* renamed from: a */
        byte mo3000a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.ByteString$g */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$g.class */
    public static final class C2544g {

        /* renamed from: a */
        private final CodedOutputStream f10875a;

        /* renamed from: b */
        private final byte[] f10876b;

        private C2544g(int i) {
            byte[] bArr = new byte[i];
            this.f10876b = bArr;
            this.f10875a = CodedOutputStream.m3107e0(bArr);
        }

        /* synthetic */ C2544g(int i, C2538a c2538a) {
            this(i);
        }

        /* renamed from: a */
        public ByteString m3157a() {
            this.f10875a.m3110d();
            return new LiteralByteString(this.f10876b);
        }

        /* renamed from: b */
        public CodedOutputStream m3156b() {
            return this.f10875a;
        }
    }

    /* renamed from: com.google.protobuf.ByteString$h */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$h.class */
    public static final class C2545h extends OutputStream {

        /* renamed from: b */
        private final int f10877b;

        /* renamed from: c */
        private final ArrayList<ByteString> f10878c;

        /* renamed from: d */
        private int f10879d;

        /* renamed from: e */
        private byte[] f10880e;

        /* renamed from: f */
        private int f10881f;

        C2545h(int i) {
            if (i >= 0) {
                this.f10877b = i;
                this.f10878c = new ArrayList<>();
                this.f10880e = new byte[i];
                return;
            }
            throw new IllegalArgumentException("Buffer size < 0");
        }

        /* renamed from: a */
        private void m3155a(int i) {
            this.f10878c.add(new LiteralByteString(this.f10880e));
            int length = this.f10879d + this.f10880e.length;
            this.f10879d = length;
            this.f10880e = new byte[Math.max(this.f10877b, Math.max(i, length >>> 1))];
            this.f10881f = 0;
        }

        /* renamed from: p */
        public int m3154p() {
            int i;
            int i2;
            synchronized (this) {
                i = this.f10879d;
                i2 = this.f10881f;
            }
            return i + i2;
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m3154p()));
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            synchronized (this) {
                if (this.f10881f == this.f10880e.length) {
                    m3155a(1);
                }
                byte[] bArr = this.f10880e;
                int i2 = this.f10881f;
                this.f10881f = i2 + 1;
                bArr[i2] = (byte) i;
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            synchronized (this) {
                byte[] bArr2 = this.f10880e;
                int length = bArr2.length;
                int i3 = this.f10881f;
                if (i2 <= length - i3) {
                    System.arraycopy(bArr, i, bArr2, i3, i2);
                    this.f10881f += i2;
                } else {
                    int length2 = bArr2.length - i3;
                    System.arraycopy(bArr, i, bArr2, i3, length2);
                    int i4 = i2 - length2;
                    m3155a(i4);
                    System.arraycopy(bArr, i + length2, this.f10880e, 0, i4);
                    this.f10881f = i4;
                }
            }
        }
    }

    /* renamed from: com.google.protobuf.ByteString$i */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/ByteString$i.class */
    private static final class C2546i implements AbstractC2542e {
        private C2546i() {
        }

        /* synthetic */ C2546i(C2538a c2538a) {
            this();
        }

        @Override // com.google.protobuf.ByteString.AbstractC2542e
        /* renamed from: a */
        public byte[] mo3153a(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    static {
        f10870c = C2579d.m2834c() ? new C2546i(null) : new C2541d(null);
        f10871d = new C2539b();
    }

    /* renamed from: a */
    private static ByteString m3163a(Iterator<ByteString> it, int i) {
        ByteString byteString;
        if (i >= 1) {
            if (i == 1) {
                byteString = it.next();
            } else {
                int i2 = i >>> 1;
                byteString = m3163a(it, i2).concat(m3163a(it, i - i2));
            }
            return byteString;
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    public static void checkIndex(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
        }
    }

    public static int checkRange(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
            } else if (i2 < i) {
                throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
            } else {
                throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
            }
        }
        return i4;
    }

    public static ByteString copyFrom(Iterable<ByteString> iterable) {
        int i;
        if (!(iterable instanceof Collection)) {
            int i2 = 0;
            Iterator<ByteString> it = iterable.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                it.next();
                i2++;
            }
        } else {
            i = ((Collection) iterable).size();
        }
        return i == 0 ? f10869b : m3163a(iterable.iterator(), i);
    }

    public static ByteString copyFrom(String str, String str2) {
        return new LiteralByteString(str.getBytes(str2));
    }

    public static ByteString copyFrom(String str, Charset charset) {
        return new LiteralByteString(str.getBytes(charset));
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer) {
        return copyFrom(byteBuffer, byteBuffer.remaining());
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer, int i) {
        checkRange(0, i, byteBuffer.remaining());
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return new LiteralByteString(bArr);
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static ByteString copyFrom(byte[] bArr, int i, int i2) {
        checkRange(i, i + i2, bArr.length);
        return new LiteralByteString(f10870c.mo3153a(bArr, i, i2));
    }

    public static ByteString copyFromUtf8(String str) {
        return new LiteralByteString(str.getBytes(C2665x.f11225a));
    }

    /* renamed from: j */
    private static ByteString m3162j(InputStream inputStream, int i) {
        int i2;
        int read;
        byte[] bArr = new byte[i];
        int i3 = 0;
        while (true) {
            i2 = i3;
            if (i2 >= i || (read = inputStream.read(bArr, i2, i - i2)) == -1) {
                break;
            }
            i3 = i2 + read;
        }
        if (i2 == 0) {
            return null;
        }
        return copyFrom(bArr, 0, i2);
    }

    /* renamed from: k */
    public static int m3161k(byte b) {
        return b & 255;
    }

    public static C2544g newCodedBuilder(int i) {
        return new C2544g(i, null);
    }

    public static C2545h newOutput() {
        return new C2545h(128);
    }

    public static C2545h newOutput(int i) {
        return new C2545h(i);
    }

    /* renamed from: p */
    private String m3160p() {
        String str;
        if (size() <= 50) {
            str = C2603f1.m2741a(this);
        } else {
            str = C2603f1.m2741a(substring(0, 47)) + "...";
        }
        return str;
    }

    public static ByteString readFrom(InputStream inputStream) {
        return readFrom(inputStream, 256, 8192);
    }

    public static ByteString readFrom(InputStream inputStream, int i) {
        return readFrom(inputStream, i, i);
    }

    public static ByteString readFrom(InputStream inputStream, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteString m3162j = m3162j(inputStream, i);
            if (m3162j == null) {
                return copyFrom(arrayList);
            }
            arrayList.add(m3162j);
            i = Math.min(i * 2, i2);
        }
    }

    public static Comparator<ByteString> unsignedLexicographicalComparator() {
        return f10871d;
    }

    public static ByteString wrap(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return wrap(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
        }
        return new NioByteString(byteBuffer);
    }

    public static ByteString wrap(byte[] bArr) {
        return new LiteralByteString(bArr);
    }

    public static ByteString wrap(byte[] bArr, int i, int i2) {
        return new BoundedByteString(bArr, i, i2);
    }

    public abstract ByteBuffer asReadOnlyByteBuffer();

    public abstract List<ByteBuffer> asReadOnlyByteBufferList();

    public abstract byte byteAt(int i);

    public final ByteString concat(ByteString byteString) {
        if (Integer.MAX_VALUE - size() >= byteString.size()) {
            return RopeByteString.concatenate(this, byteString);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + size() + "+" + byteString.size());
    }

    public abstract void copyTo(ByteBuffer byteBuffer);

    public void copyTo(byte[] bArr, int i) {
        copyTo(bArr, 0, i, size());
    }

    @Deprecated
    public final void copyTo(byte[] bArr, int i, int i2, int i3) {
        checkRange(i, i + i3, size());
        checkRange(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            copyToInternal(bArr, i, i2, i3);
        }
    }

    public abstract void copyToInternal(byte[] bArr, int i, int i2, int i3);

    public final boolean endsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(size() - byteString.size()).equals(byteString);
    }

    public abstract boolean equals(Object obj);

    public abstract int getTreeDepth();

    public final int hashCode() {
        int i = this.hash;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int partialHash = partialHash(size, 0, size);
            i2 = partialHash;
            if (partialHash == 0) {
                i2 = 1;
            }
            this.hash = i2;
        }
        return i2;
    }

    public abstract byte internalByteAt(int i);

    public abstract boolean isBalanced();

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract boolean isValidUtf8();

    @Override // java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new C2538a();
    }

    public abstract AbstractC2613i newCodedInput();

    public abstract InputStream newInput();

    public abstract int partialHash(int i, int i2, int i3);

    public abstract int partialIsValidUtf8(int i, int i2, int i3);

    public final int peekCachedHashCode() {
        return this.hash;
    }

    public abstract int size();

    public final boolean startsWith(ByteString byteString) {
        boolean z = false;
        if (size() >= byteString.size()) {
            z = false;
            if (substring(0, byteString.size()).equals(byteString)) {
                z = true;
            }
        }
        return z;
    }

    public final ByteString substring(int i) {
        return substring(i, size());
    }

    public abstract ByteString substring(int i, int i2);

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return C2665x.f11226b;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), m3160p());
    }

    public final String toString(String str) {
        try {
            return toString(Charset.forName(str));
        } catch (UnsupportedCharsetException e) {
            UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(str);
            unsupportedEncodingException.initCause(e);
            throw unsupportedEncodingException;
        }
    }

    public final String toString(Charset charset) {
        return size() == 0 ? "" : toStringInternal(charset);
    }

    protected abstract String toStringInternal(Charset charset);

    public final String toStringUtf8() {
        return toString(C2665x.f11225a);
    }

    public abstract void writeTo(AbstractC2610h abstractC2610h);

    public abstract void writeTo(OutputStream outputStream);

    final void writeTo(OutputStream outputStream, int i, int i2) {
        checkRange(i, i + i2, size());
        if (i2 > 0) {
            writeToInternal(outputStream, i, i2);
        }
    }

    public abstract void writeToInternal(OutputStream outputStream, int i, int i2);

    public abstract void writeToReverse(AbstractC2610h abstractC2610h);
}
