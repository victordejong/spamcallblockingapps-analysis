package com.explorestack.protobuf;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.MapEntryLite;
import com.explorestack.protobuf.Utf8;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.Writer;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryWriter.class */
public abstract class BinaryWriter extends ByteOutput implements Writer {
    public static final int DEFAULT_CHUNK_SIZE = 4096;
    private static final int MAP_KEY_NUMBER = 1;
    private static final int MAP_VALUE_NUMBER = 2;
    private final BufferAllocator alloc;
    final ArrayDeque<AllocatedBuffer> buffers;
    private final int chunkSize;
    int totalDoneBytes;

    /* renamed from: com.explorestack.protobuf.BinaryWriter$1 */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryWriter$1.class */
    public static /* synthetic */ class C96891 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryWriter$SafeDirectWriter.class */
    public static final class SafeDirectWriter extends BinaryWriter {
        private ByteBuffer buffer;
        private int limitMinusOne;
        private int pos;

        SafeDirectWriter(BufferAllocator bufferAllocator, int i) {
            super(bufferAllocator, i, null);
            nextBuffer();
        }

        private int bytesWrittenToCurrentBuffer() {
            return this.limitMinusOne - this.pos;
        }

        private void nextBuffer() {
            nextBuffer(newDirectBuffer());
        }

        private void nextBuffer(int i) {
            nextBuffer(newDirectBuffer(i));
        }

        private void nextBuffer(AllocatedBuffer allocatedBuffer) {
            if (allocatedBuffer.hasNioBuffer()) {
                ByteBuffer nioBuffer = allocatedBuffer.nioBuffer();
                if (!nioBuffer.isDirect()) {
                    throw new RuntimeException("Allocator returned non-direct buffer");
                }
                finishCurrentBuffer();
                this.buffers.addFirst(allocatedBuffer);
                this.buffer = nioBuffer;
                nioBuffer.limit(nioBuffer.capacity());
                this.buffer.position(0);
                this.buffer.order(ByteOrder.LITTLE_ENDIAN);
                int limit = this.buffer.limit() - 1;
                this.limitMinusOne = limit;
                this.pos = limit;
                return;
            }
            throw new RuntimeException("Allocated buffer does not have NIO buffer");
        }

        private int spaceLeft() {
            return this.pos + 1;
        }

        private void writeVarint32FiveBytes(int i) {
            ByteBuffer byteBuffer = this.buffer;
            int i2 = this.pos;
            this.pos = i2 - 1;
            byteBuffer.put(i2, (byte) (i >>> 28));
            int i3 = this.pos - 4;
            this.pos = i3;
            this.buffer.putInt(i3 + 1, (i & 127) | 128 | ((((i >>> 21) & 127) | 128) << 24) | ((((i >>> 14) & 127) | 128) << 16) | ((((i >>> 7) & 127) | 128) << 8));
        }

        private void writeVarint32FourBytes(int i) {
            int i2 = this.pos - 4;
            this.pos = i2;
            this.buffer.putInt(i2 + 1, (i & 127) | 128 | ((266338304 & i) << 3) | (((2080768 & i) | 2097152) << 2) | (((i & 16256) | 16384) << 1));
        }

        private void writeVarint32OneByte(int i) {
            ByteBuffer byteBuffer = this.buffer;
            int i2 = this.pos;
            this.pos = i2 - 1;
            byteBuffer.put(i2, (byte) i);
        }

        private void writeVarint32ThreeBytes(int i) {
            int i2 = this.pos - 3;
            this.pos = i2;
            this.buffer.putInt(i2, (((i & 127) | 128) << 8) | ((2080768 & i) << 10) | (((i & 16256) | 16384) << 9));
        }

        private void writeVarint32TwoBytes(int i) {
            int i2 = this.pos - 2;
            this.pos = i2;
            this.buffer.putShort(i2 + 1, (short) ((i & 127) | 128 | ((i & 16256) << 1)));
        }

        private void writeVarint64EightBytes(long j) {
            int i = this.pos - 8;
            this.pos = i;
            this.buffer.putLong(i + 1, (j & 127) | 128 | ((71494644084506624L & j) << 7) | (((558551906910208L & j) | 562949953421312L) << 6) | (((4363686772736L & j) | 4398046511104L) << 5) | (((34091302912L & j) | 34359738368L) << 4) | (((266338304 & j) | 268435456) << 3) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 2) | (((16256 & j) | 16384) << 1));
        }

        private void writeVarint64EightBytesWithSign(long j) {
            int i = this.pos - 8;
            this.pos = i;
            this.buffer.putLong(i + 1, (j & 127) | 128 | (((71494644084506624L & j) | 72057594037927936L) << 7) | (((558551906910208L & j) | 562949953421312L) << 6) | (((4363686772736L & j) | 4398046511104L) << 5) | (((34091302912L & j) | 34359738368L) << 4) | (((266338304 & j) | 268435456) << 3) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 2) | (((16256 & j) | 16384) << 1));
        }

        private void writeVarint64FiveBytes(long j) {
            int i = this.pos - 5;
            this.pos = i;
            this.buffer.putLong(i - 2, (((j & 127) | 128) << 24) | ((34091302912L & j) << 28) | (((266338304 & j) | 268435456) << 27) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 26) | (((16256 & j) | 16384) << 25));
        }

        private void writeVarint64FourBytes(long j) {
            writeVarint32FourBytes((int) j);
        }

        private void writeVarint64NineBytes(long j) {
            ByteBuffer byteBuffer = this.buffer;
            int i = this.pos;
            this.pos = i - 1;
            byteBuffer.put(i, (byte) (j >>> 56));
            writeVarint64EightBytesWithSign(j & 72057594037927935L);
        }

        private void writeVarint64OneByte(long j) {
            writeVarint32OneByte((int) j);
        }

        private void writeVarint64SevenBytes(long j) {
            int i = this.pos - 7;
            this.pos = i;
            this.buffer.putLong(i, (((j & 127) | 128) << 8) | ((558551906910208L & j) << 14) | (((4363686772736L & j) | 4398046511104L) << 13) | (((34091302912L & j) | 34359738368L) << 12) | (((266338304 & j) | 268435456) << 11) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 10) | (((16256 & j) | 16384) << 9));
        }

        private void writeVarint64SixBytes(long j) {
            int i = this.pos - 6;
            this.pos = i;
            this.buffer.putLong(i - 1, (((j & 127) | 128) << 16) | ((4363686772736L & j) << 21) | (((34091302912L & j) | 34359738368L) << 20) | (((266338304 & j) | 268435456) << 19) | (((2080768 & j) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 18) | (((16256 & j) | 16384) << 17));
        }

        private void writeVarint64TenBytes(long j) {
            ByteBuffer byteBuffer = this.buffer;
            int i = this.pos;
            this.pos = i - 1;
            byteBuffer.put(i, (byte) (j >>> 63));
            ByteBuffer byteBuffer2 = this.buffer;
            int i2 = this.pos;
            this.pos = i2 - 1;
            byteBuffer2.put(i2, (byte) (((j >>> 56) & 127) | 128));
            writeVarint64EightBytesWithSign(j & 72057594037927935L);
        }

        private void writeVarint64ThreeBytes(long j) {
            writeVarint32ThreeBytes((int) j);
        }

        private void writeVarint64TwoBytes(long j) {
            writeVarint32TwoBytes((int) j);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void finishCurrentBuffer() {
            if (this.buffer != null) {
                this.totalDoneBytes += bytesWrittenToCurrentBuffer();
                this.buffer.position(this.pos + 1);
                this.buffer = null;
                this.pos = 0;
                this.limitMinusOne = 0;
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        public final int getTotalBytesWritten() {
            return this.totalDoneBytes + bytesWrittenToCurrentBuffer();
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void requireSpace(int i) {
            if (spaceLeft() < i) {
                nextBuffer(i);
            }
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(byte b) {
            ByteBuffer byteBuffer = this.buffer;
            int i = this.pos;
            this.pos = i - 1;
            byteBuffer.put(i, b);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            if (spaceLeft() < remaining) {
                nextBuffer(remaining);
            }
            int i = this.pos - remaining;
            this.pos = i;
            this.buffer.position(i + 1);
            this.buffer.put(byteBuffer);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(byte[] bArr, int i, int i2) {
            if (spaceLeft() < i2) {
                nextBuffer(i2);
            }
            int i3 = this.pos - i2;
            this.pos = i3;
            this.buffer.position(i3 + 1);
            this.buffer.put(bArr, i, i2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeBool(int i, boolean z) {
            requireSpace(6);
            write(z ? (byte) 1 : (byte) 0);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeBool(boolean z) {
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeBytes(int i, ByteString byteString) {
            try {
                byteString.writeToReverse(this);
                requireSpace(10);
                writeVarint32(byteString.size());
                writeTag(i, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeEndGroup(int i) {
            writeTag(i, 4);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeFixed32(int i) {
            int i2 = this.pos - 4;
            this.pos = i2;
            this.buffer.putInt(i2 + 1, i);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeFixed32(int i, int i2) {
            requireSpace(9);
            writeFixed32(i2);
            writeTag(i, 5);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeFixed64(int i, long j) {
            requireSpace(13);
            writeFixed64(j);
            writeTag(i, 1);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeFixed64(long j) {
            int i = this.pos - 8;
            this.pos = i;
            this.buffer.putLong(i + 1, j);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeGroup(int i, Object obj) throws IOException {
            writeTag(i, 4);
            Protobuf.getInstance().writeTo(obj, this);
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeGroup(int i, Object obj, Schema schema) throws IOException {
            writeTag(i, 4);
            schema.writeTo(obj, this);
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeInt32(int i) {
            if (i >= 0) {
                writeVarint32(i);
            } else {
                writeVarint64(i);
            }
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeInt32(int i, int i2) {
            requireSpace(15);
            writeInt32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void writeLazy(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            if (spaceLeft() < remaining) {
                this.totalDoneBytes += remaining;
                this.buffers.addFirst(AllocatedBuffer.wrap(byteBuffer));
                nextBuffer();
                return;
            }
            int i = this.pos - remaining;
            this.pos = i;
            this.buffer.position(i + 1);
            this.buffer.put(byteBuffer);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void writeLazy(byte[] bArr, int i, int i2) {
            if (spaceLeft() < i2) {
                this.totalDoneBytes += i2;
                this.buffers.addFirst(AllocatedBuffer.wrap(bArr, i, i2));
                nextBuffer();
                return;
            }
            int i3 = this.pos - i2;
            this.pos = i3;
            this.buffer.position(i3 + 1);
            this.buffer.put(bArr, i, i2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeMessage(int i, Object obj) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            Protobuf.getInstance().writeTo(obj, this);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeMessage(int i, Object obj, Schema schema) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            schema.writeTo(obj, this);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeSInt32(int i) {
            writeVarint32(CodedOutputStream.encodeZigZag32(i));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeSInt32(int i, int i2) {
            requireSpace(10);
            writeSInt32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeSInt64(int i, long j) {
            requireSpace(15);
            writeSInt64(j);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeSInt64(long j) {
            writeVarint64(CodedOutputStream.encodeZigZag64(j));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeStartGroup(int i) {
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeString(int i, String str) {
            int totalBytesWritten = getTotalBytesWritten();
            writeString(str);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeString(String str) {
            int i;
            int i2;
            int i3;
            char charAt;
            requireSpace(str.length());
            int length = str.length() - 1;
            this.pos -= length;
            while (length >= 0 && (charAt = str.charAt(length)) < 128) {
                this.buffer.put(this.pos + length, (byte) charAt);
                length--;
            }
            if (length == -1) {
                this.pos--;
                return;
            }
            this.pos += length;
            while (length >= 0) {
                char charAt2 = str.charAt(length);
                if (charAt2 < 128 && (i3 = this.pos) >= 0) {
                    ByteBuffer byteBuffer = this.buffer;
                    this.pos = i3 - 1;
                    byteBuffer.put(i3, (byte) charAt2);
                } else if (charAt2 < 2048 && (i2 = this.pos) > 0) {
                    ByteBuffer byteBuffer2 = this.buffer;
                    this.pos = i2 - 1;
                    byteBuffer2.put(i2, (byte) ((charAt2 & '?') | 128));
                    ByteBuffer byteBuffer3 = this.buffer;
                    int i4 = this.pos;
                    this.pos = i4 - 1;
                    byteBuffer3.put(i4, (byte) ((charAt2 >>> 6) | 960));
                } else if ((charAt2 < 55296 || 57343 < charAt2) && (i = this.pos) > 1) {
                    ByteBuffer byteBuffer4 = this.buffer;
                    this.pos = i - 1;
                    byteBuffer4.put(i, (byte) ((charAt2 & '?') | 128));
                    ByteBuffer byteBuffer5 = this.buffer;
                    int i5 = this.pos;
                    this.pos = i5 - 1;
                    byteBuffer5.put(i5, (byte) (((charAt2 >>> 6) & 63) | 128));
                    ByteBuffer byteBuffer6 = this.buffer;
                    int i6 = this.pos;
                    this.pos = i6 - 1;
                    byteBuffer6.put(i6, (byte) ((charAt2 >>> '\f') | 480));
                } else if (this.pos > 2) {
                    if (length != 0) {
                        char charAt3 = str.charAt(length - 1);
                        if (Character.isSurrogatePair(charAt3, charAt2)) {
                            length--;
                            int codePoint = Character.toCodePoint(charAt3, charAt2);
                            ByteBuffer byteBuffer7 = this.buffer;
                            int i7 = this.pos;
                            this.pos = i7 - 1;
                            byteBuffer7.put(i7, (byte) ((codePoint & 63) | 128));
                            ByteBuffer byteBuffer8 = this.buffer;
                            int i8 = this.pos;
                            this.pos = i8 - 1;
                            byteBuffer8.put(i8, (byte) (((codePoint >>> 6) & 63) | 128));
                            ByteBuffer byteBuffer9 = this.buffer;
                            int i9 = this.pos;
                            this.pos = i9 - 1;
                            byteBuffer9.put(i9, (byte) (((codePoint >>> 12) & 63) | 128));
                            ByteBuffer byteBuffer10 = this.buffer;
                            int i10 = this.pos;
                            this.pos = i10 - 1;
                            byteBuffer10.put(i10, (byte) ((codePoint >>> 18) | 240));
                        }
                    }
                    throw new Utf8.UnpairedSurrogateException(length - 1, length);
                } else {
                    requireSpace(length);
                    length++;
                }
                length--;
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeTag(int i, int i2) {
            writeVarint32(WireFormat.makeTag(i, i2));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeUInt32(int i, int i2) {
            requireSpace(10);
            writeVarint32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeUInt64(int i, long j) {
            requireSpace(15);
            writeVarint64(j);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeVarint32(int i) {
            if ((i & (-128)) == 0) {
                writeVarint32OneByte(i);
            } else if ((i & (-16384)) == 0) {
                writeVarint32TwoBytes(i);
            } else if (((-2097152) & i) == 0) {
                writeVarint32ThreeBytes(i);
            } else if (((-268435456) & i) == 0) {
                writeVarint32FourBytes(i);
            } else {
                writeVarint32FiveBytes(i);
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeVarint64(long j) {
            switch (BinaryWriter.computeUInt64SizeNoTag(j)) {
                case 1:
                    writeVarint64OneByte(j);
                    return;
                case 2:
                    writeVarint64TwoBytes(j);
                    return;
                case 3:
                    writeVarint64ThreeBytes(j);
                    return;
                case 4:
                    writeVarint64FourBytes(j);
                    return;
                case 5:
                    writeVarint64FiveBytes(j);
                    return;
                case 6:
                    writeVarint64SixBytes(j);
                    return;
                case 7:
                    writeVarint64SevenBytes(j);
                    return;
                case 8:
                    writeVarint64EightBytes(j);
                    return;
                case 9:
                    writeVarint64NineBytes(j);
                    return;
                case 10:
                    writeVarint64TenBytes(j);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryWriter$SafeHeapWriter.class */
    public static final class SafeHeapWriter extends BinaryWriter {
        private AllocatedBuffer allocatedBuffer;
        private byte[] buffer;
        private int limit;
        private int limitMinusOne;
        private int offset;
        private int offsetMinusOne;
        private int pos;

        SafeHeapWriter(BufferAllocator bufferAllocator, int i) {
            super(bufferAllocator, i, null);
            nextBuffer();
        }

        private void nextBuffer() {
            nextBuffer(newHeapBuffer());
        }

        private void nextBuffer(int i) {
            nextBuffer(newHeapBuffer(i));
        }

        private void nextBuffer(AllocatedBuffer allocatedBuffer) {
            if (allocatedBuffer.hasArray()) {
                finishCurrentBuffer();
                this.buffers.addFirst(allocatedBuffer);
                this.allocatedBuffer = allocatedBuffer;
                this.buffer = allocatedBuffer.array();
                int arrayOffset = allocatedBuffer.arrayOffset();
                this.limit = allocatedBuffer.limit() + arrayOffset;
                int position = arrayOffset + allocatedBuffer.position();
                this.offset = position;
                this.offsetMinusOne = position - 1;
                int i = this.limit - 1;
                this.limitMinusOne = i;
                this.pos = i;
                return;
            }
            throw new RuntimeException("Allocator returned non-heap buffer");
        }

        private void writeVarint32FiveBytes(int i) {
            byte[] bArr = this.buffer;
            int i2 = this.pos;
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (i >>> 28);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((i >>> 21) & 127) | 128);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((i >>> 14) & 127) | 128);
            int i6 = i5 - 1;
            this.pos = i6;
            bArr[i5] = (byte) (((i >>> 7) & 127) | 128);
            this.pos = i6 - 1;
            bArr[i6] = (byte) ((i & 127) | 128);
        }

        private void writeVarint32FourBytes(int i) {
            byte[] bArr = this.buffer;
            int i2 = this.pos;
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (i >>> 21);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((i >>> 14) & 127) | 128);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((i >>> 7) & 127) | 128);
            this.pos = i5 - 1;
            bArr[i5] = (byte) ((i & 127) | 128);
        }

        private void writeVarint32OneByte(int i) {
            byte[] bArr = this.buffer;
            int i2 = this.pos;
            this.pos = i2 - 1;
            bArr[i2] = (byte) i;
        }

        private void writeVarint32ThreeBytes(int i) {
            byte[] bArr = this.buffer;
            int i2 = this.pos;
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (i >>> 14);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((i >>> 7) & 127) | 128);
            this.pos = i4 - 1;
            bArr[i4] = (byte) ((i & 127) | 128);
        }

        private void writeVarint32TwoBytes(int i) {
            byte[] bArr = this.buffer;
            int i2 = this.pos;
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (i >>> 7);
            this.pos = i3 - 1;
            bArr[i3] = (byte) ((i & 127) | 128);
        }

        private void writeVarint64EightBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (j >>> 49);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((j >>> 42) & 127) | 128);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((j >>> 35) & 127) | 128);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((j >>> 28) & 127) | 128);
            int i6 = i5 - 1;
            this.pos = i6;
            bArr[i5] = (byte) (((j >>> 21) & 127) | 128);
            int i7 = i6 - 1;
            this.pos = i7;
            bArr[i6] = (byte) (((j >>> 14) & 127) | 128);
            int i8 = i7 - 1;
            this.pos = i8;
            bArr[i7] = (byte) (((j >>> 7) & 127) | 128);
            this.pos = i8 - 1;
            bArr[i8] = (byte) ((j & 127) | 128);
        }

        private void writeVarint64FiveBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (j >>> 28);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((j >>> 21) & 127) | 128);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((j >>> 14) & 127) | 128);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((j >>> 7) & 127) | 128);
            this.pos = i5 - 1;
            bArr[i5] = (byte) ((j & 127) | 128);
        }

        private void writeVarint64FourBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (j >>> 21);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((j >>> 14) & 127) | 128);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((j >>> 7) & 127) | 128);
            this.pos = i4 - 1;
            bArr[i4] = (byte) ((j & 127) | 128);
        }

        private void writeVarint64NineBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (j >>> 56);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((j >>> 49) & 127) | 128);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((j >>> 42) & 127) | 128);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((j >>> 35) & 127) | 128);
            int i6 = i5 - 1;
            this.pos = i6;
            bArr[i5] = (byte) (((j >>> 28) & 127) | 128);
            int i7 = i6 - 1;
            this.pos = i7;
            bArr[i6] = (byte) (((j >>> 21) & 127) | 128);
            int i8 = i7 - 1;
            this.pos = i8;
            bArr[i7] = (byte) (((j >>> 14) & 127) | 128);
            int i9 = i8 - 1;
            this.pos = i9;
            bArr[i8] = (byte) (((j >>> 7) & 127) | 128);
            this.pos = i9 - 1;
            bArr[i9] = (byte) ((j & 127) | 128);
        }

        private void writeVarint64OneByte(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            this.pos = i - 1;
            bArr[i] = (byte) j;
        }

        private void writeVarint64SevenBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (j >>> 42);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((j >>> 35) & 127) | 128);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((j >>> 28) & 127) | 128);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((j >>> 21) & 127) | 128);
            int i6 = i5 - 1;
            this.pos = i6;
            bArr[i5] = (byte) (((j >>> 14) & 127) | 128);
            int i7 = i6 - 1;
            this.pos = i7;
            bArr[i6] = (byte) (((j >>> 7) & 127) | 128);
            this.pos = i7 - 1;
            bArr[i7] = (byte) ((j & 127) | 128);
        }

        private void writeVarint64SixBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (j >>> 35);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((j >>> 28) & 127) | 128);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((j >>> 21) & 127) | 128);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((j >>> 14) & 127) | 128);
            int i6 = i5 - 1;
            this.pos = i6;
            bArr[i5] = (byte) (((j >>> 7) & 127) | 128);
            this.pos = i6 - 1;
            bArr[i6] = (byte) ((j & 127) | 128);
        }

        private void writeVarint64TenBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (j >>> 63);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((j >>> 56) & 127) | 128);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((j >>> 49) & 127) | 128);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((j >>> 42) & 127) | 128);
            int i6 = i5 - 1;
            this.pos = i6;
            bArr[i5] = (byte) (((j >>> 35) & 127) | 128);
            int i7 = i6 - 1;
            this.pos = i7;
            bArr[i6] = (byte) (((j >>> 28) & 127) | 128);
            int i8 = i7 - 1;
            this.pos = i8;
            bArr[i7] = (byte) (((j >>> 21) & 127) | 128);
            int i9 = i8 - 1;
            this.pos = i9;
            bArr[i8] = (byte) (((j >>> 14) & 127) | 128);
            int i10 = i9 - 1;
            this.pos = i10;
            bArr[i9] = (byte) (((j >>> 7) & 127) | 128);
            this.pos = i10 - 1;
            bArr[i10] = (byte) ((j & 127) | 128);
        }

        private void writeVarint64ThreeBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (((int) j) >>> 14);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((j >>> 7) & 127) | 128);
            this.pos = i3 - 1;
            bArr[i3] = (byte) ((j & 127) | 128);
        }

        private void writeVarint64TwoBytes(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (j >>> 7);
            this.pos = i2 - 1;
            bArr[i2] = (byte) ((((int) j) & 127) | 128);
        }

        final int bytesWrittenToCurrentBuffer() {
            return this.limitMinusOne - this.pos;
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void finishCurrentBuffer() {
            if (this.allocatedBuffer != null) {
                this.totalDoneBytes += bytesWrittenToCurrentBuffer();
                AllocatedBuffer allocatedBuffer = this.allocatedBuffer;
                allocatedBuffer.position((this.pos - allocatedBuffer.arrayOffset()) + 1);
                this.allocatedBuffer = null;
                this.pos = 0;
                this.limitMinusOne = 0;
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        public final int getTotalBytesWritten() {
            return this.totalDoneBytes + bytesWrittenToCurrentBuffer();
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void requireSpace(int i) {
            if (spaceLeft() < i) {
                nextBuffer(i);
            }
        }

        final int spaceLeft() {
            return this.pos - this.offsetMinusOne;
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(byte b) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            this.pos = i - 1;
            bArr[i] = b;
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            if (spaceLeft() < remaining) {
                nextBuffer(remaining);
            }
            int i = this.pos - remaining;
            this.pos = i;
            byteBuffer.get(this.buffer, i + 1, remaining);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(byte[] bArr, int i, int i2) {
            if (spaceLeft() < i2) {
                nextBuffer(i2);
            }
            int i3 = this.pos - i2;
            this.pos = i3;
            System.arraycopy(bArr, i, this.buffer, i3 + 1, i2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeBool(int i, boolean z) throws IOException {
            requireSpace(6);
            write(z ? (byte) 1 : (byte) 0);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeBool(boolean z) {
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeBytes(int i, ByteString byteString) throws IOException {
            try {
                byteString.writeToReverse(this);
                requireSpace(10);
                writeVarint32(byteString.size());
                writeTag(i, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeEndGroup(int i) {
            writeTag(i, 4);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeFixed32(int i) {
            byte[] bArr = this.buffer;
            int i2 = this.pos;
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) ((i >> 24) & 255);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) ((i >> 16) & 255);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) ((i >> 8) & 255);
            this.pos = i5 - 1;
            bArr[i5] = (byte) (i & 255);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeFixed32(int i, int i2) throws IOException {
            requireSpace(9);
            writeFixed32(i2);
            writeTag(i, 5);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeFixed64(int i, long j) throws IOException {
            requireSpace(13);
            writeFixed64(j);
            writeTag(i, 1);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeFixed64(long j) {
            byte[] bArr = this.buffer;
            int i = this.pos;
            int i2 = i - 1;
            this.pos = i2;
            bArr[i] = (byte) (((int) (j >> 56)) & 255);
            int i3 = i2 - 1;
            this.pos = i3;
            bArr[i2] = (byte) (((int) (j >> 48)) & 255);
            int i4 = i3 - 1;
            this.pos = i4;
            bArr[i3] = (byte) (((int) (j >> 40)) & 255);
            int i5 = i4 - 1;
            this.pos = i5;
            bArr[i4] = (byte) (((int) (j >> 32)) & 255);
            int i6 = i5 - 1;
            this.pos = i6;
            bArr[i5] = (byte) (((int) (j >> 24)) & 255);
            int i7 = i6 - 1;
            this.pos = i7;
            bArr[i6] = (byte) (((int) (j >> 16)) & 255);
            int i8 = i7 - 1;
            this.pos = i8;
            bArr[i7] = (byte) (((int) (j >> 8)) & 255);
            this.pos = i8 - 1;
            bArr[i8] = (byte) (((int) j) & 255);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeGroup(int i, Object obj) throws IOException {
            writeTag(i, 4);
            Protobuf.getInstance().writeTo(obj, this);
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeGroup(int i, Object obj, Schema schema) throws IOException {
            writeTag(i, 4);
            schema.writeTo(obj, this);
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeInt32(int i) {
            if (i >= 0) {
                writeVarint32(i);
            } else {
                writeVarint64(i);
            }
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeInt32(int i, int i2) throws IOException {
            requireSpace(15);
            writeInt32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void writeLazy(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            if (spaceLeft() < remaining) {
                this.totalDoneBytes += remaining;
                this.buffers.addFirst(AllocatedBuffer.wrap(byteBuffer));
                nextBuffer();
            }
            int i = this.pos - remaining;
            this.pos = i;
            byteBuffer.get(this.buffer, i + 1, remaining);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void writeLazy(byte[] bArr, int i, int i2) {
            if (spaceLeft() < i2) {
                this.totalDoneBytes += i2;
                this.buffers.addFirst(AllocatedBuffer.wrap(bArr, i, i2));
                nextBuffer();
                return;
            }
            int i3 = this.pos - i2;
            this.pos = i3;
            System.arraycopy(bArr, i, this.buffer, i3 + 1, i2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeMessage(int i, Object obj) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            Protobuf.getInstance().writeTo(obj, this);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeMessage(int i, Object obj, Schema schema) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            schema.writeTo(obj, this);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeSInt32(int i) {
            writeVarint32(CodedOutputStream.encodeZigZag32(i));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeSInt32(int i, int i2) throws IOException {
            requireSpace(10);
            writeSInt32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeSInt64(int i, long j) throws IOException {
            requireSpace(15);
            writeSInt64(j);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeSInt64(long j) {
            writeVarint64(CodedOutputStream.encodeZigZag64(j));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeStartGroup(int i) {
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeString(int i, String str) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            writeString(str);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeString(String str) {
            int i;
            int i2;
            int i3;
            char charAt;
            requireSpace(str.length());
            int length = str.length() - 1;
            this.pos -= length;
            while (length >= 0 && (charAt = str.charAt(length)) < 128) {
                this.buffer[this.pos + length] = (byte) charAt;
                length--;
            }
            if (length == -1) {
                this.pos--;
                return;
            }
            this.pos += length;
            while (length >= 0) {
                char charAt2 = str.charAt(length);
                if (charAt2 < 128 && (i3 = this.pos) > this.offsetMinusOne) {
                    byte[] bArr = this.buffer;
                    this.pos = i3 - 1;
                    bArr[i3] = (byte) charAt2;
                } else if (charAt2 < 2048 && (i2 = this.pos) > this.offset) {
                    byte[] bArr2 = this.buffer;
                    int i4 = i2 - 1;
                    this.pos = i4;
                    bArr2[i2] = (byte) ((charAt2 & '?') | 128);
                    this.pos = i4 - 1;
                    bArr2[i4] = (byte) ((charAt2 >>> 6) | 960);
                } else if ((charAt2 < 55296 || 57343 < charAt2) && (i = this.pos) > this.offset + 1) {
                    byte[] bArr3 = this.buffer;
                    int i5 = i - 1;
                    this.pos = i5;
                    bArr3[i] = (byte) ((charAt2 & '?') | 128);
                    int i6 = i5 - 1;
                    this.pos = i6;
                    bArr3[i5] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    this.pos = i6 - 1;
                    bArr3[i6] = (byte) ((charAt2 >>> '\f') | 480);
                } else if (this.pos > this.offset + 2) {
                    if (length != 0) {
                        char charAt3 = str.charAt(length - 1);
                        if (Character.isSurrogatePair(charAt3, charAt2)) {
                            length--;
                            int codePoint = Character.toCodePoint(charAt3, charAt2);
                            byte[] bArr4 = this.buffer;
                            int i7 = this.pos;
                            int i8 = i7 - 1;
                            this.pos = i8;
                            bArr4[i7] = (byte) ((codePoint & 63) | 128);
                            int i9 = i8 - 1;
                            this.pos = i9;
                            bArr4[i8] = (byte) (((codePoint >>> 6) & 63) | 128);
                            int i10 = i9 - 1;
                            this.pos = i10;
                            bArr4[i9] = (byte) (((codePoint >>> 12) & 63) | 128);
                            this.pos = i10 - 1;
                            bArr4[i10] = (byte) ((codePoint >>> 18) | 240);
                        }
                    }
                    throw new Utf8.UnpairedSurrogateException(length - 1, length);
                } else {
                    requireSpace(length);
                    length++;
                }
                length--;
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeTag(int i, int i2) {
            writeVarint32(WireFormat.makeTag(i, i2));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeUInt32(int i, int i2) throws IOException {
            requireSpace(10);
            writeVarint32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeUInt64(int i, long j) throws IOException {
            requireSpace(15);
            writeVarint64(j);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeVarint32(int i) {
            if ((i & (-128)) == 0) {
                writeVarint32OneByte(i);
            } else if ((i & (-16384)) == 0) {
                writeVarint32TwoBytes(i);
            } else if (((-2097152) & i) == 0) {
                writeVarint32ThreeBytes(i);
            } else if (((-268435456) & i) == 0) {
                writeVarint32FourBytes(i);
            } else {
                writeVarint32FiveBytes(i);
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeVarint64(long j) {
            switch (BinaryWriter.computeUInt64SizeNoTag(j)) {
                case 1:
                    writeVarint64OneByte(j);
                    return;
                case 2:
                    writeVarint64TwoBytes(j);
                    return;
                case 3:
                    writeVarint64ThreeBytes(j);
                    return;
                case 4:
                    writeVarint64FourBytes(j);
                    return;
                case 5:
                    writeVarint64FiveBytes(j);
                    return;
                case 6:
                    writeVarint64SixBytes(j);
                    return;
                case 7:
                    writeVarint64SevenBytes(j);
                    return;
                case 8:
                    writeVarint64EightBytes(j);
                    return;
                case 9:
                    writeVarint64NineBytes(j);
                    return;
                case 10:
                    writeVarint64TenBytes(j);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryWriter$UnsafeDirectWriter.class */
    public static final class UnsafeDirectWriter extends BinaryWriter {
        private ByteBuffer buffer;
        private long bufferOffset;
        private long limitMinusOne;
        private long pos;

        UnsafeDirectWriter(BufferAllocator bufferAllocator, int i) {
            super(bufferAllocator, i, null);
            nextBuffer();
        }

        private int bufferPos() {
            return (int) (this.pos - this.bufferOffset);
        }

        private int bytesWrittenToCurrentBuffer() {
            return (int) (this.limitMinusOne - this.pos);
        }

        public static boolean isSupported() {
            return UnsafeUtil.hasUnsafeByteBufferOperations();
        }

        private void nextBuffer() {
            nextBuffer(newDirectBuffer());
        }

        private void nextBuffer(int i) {
            nextBuffer(newDirectBuffer(i));
        }

        private void nextBuffer(AllocatedBuffer allocatedBuffer) {
            if (allocatedBuffer.hasNioBuffer()) {
                ByteBuffer nioBuffer = allocatedBuffer.nioBuffer();
                if (!nioBuffer.isDirect()) {
                    throw new RuntimeException("Allocator returned non-direct buffer");
                }
                finishCurrentBuffer();
                this.buffers.addFirst(allocatedBuffer);
                this.buffer = nioBuffer;
                nioBuffer.limit(nioBuffer.capacity());
                this.buffer.position(0);
                long addressOffset = UnsafeUtil.addressOffset(this.buffer);
                this.bufferOffset = addressOffset;
                long limit = addressOffset + (this.buffer.limit() - 1);
                this.limitMinusOne = limit;
                this.pos = limit;
                return;
            }
            throw new RuntimeException("Allocated buffer does not have NIO buffer");
        }

        private int spaceLeft() {
            return bufferPos() + 1;
        }

        private void writeVarint32FiveBytes(int i) {
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(j, (byte) (i >>> 28));
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (((i >>> 21) & 127) | 128));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((i >>> 14) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((i >>> 7) & 127) | 128));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) ((i & 127) | 128));
        }

        private void writeVarint32FourBytes(int i) {
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(j, (byte) (i >>> 21));
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (((i >>> 14) & 127) | 128));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((i >>> 7) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) ((i & 127) | 128));
        }

        private void writeVarint32OneByte(int i) {
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(j, (byte) i);
        }

        private void writeVarint32ThreeBytes(int i) {
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(j, (byte) (i >>> 14));
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (((i >>> 7) & 127) | 128));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) ((i & 127) | 128));
        }

        private void writeVarint32TwoBytes(int i) {
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(j, (byte) (i >>> 7));
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) ((i & 127) | 128));
        }

        private void writeVarint64EightBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (j >>> 49));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((j >>> 42) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((j >>> 35) & 127) | 128));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) (((j >>> 28) & 127) | 128));
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(j6, (byte) (((j >>> 21) & 127) | 128));
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(j7, (byte) (((j >>> 14) & 127) | 128));
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(j8, (byte) (((j >>> 7) & 127) | 128));
            long j9 = this.pos;
            this.pos = j9 - 1;
            UnsafeUtil.putByte(j9, (byte) ((j & 127) | 128));
        }

        private void writeVarint64FiveBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (j >>> 28));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((j >>> 21) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((j >>> 14) & 127) | 128));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) (((j >>> 7) & 127) | 128));
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(j6, (byte) ((j & 127) | 128));
        }

        private void writeVarint64FourBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (j >>> 21));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((j >>> 14) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((j >>> 7) & 127) | 128));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) ((j & 127) | 128));
        }

        private void writeVarint64NineBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (j >>> 56));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((j >>> 49) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((j >>> 42) & 127) | 128));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) (((j >>> 35) & 127) | 128));
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(j6, (byte) (((j >>> 28) & 127) | 128));
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(j7, (byte) (((j >>> 21) & 127) | 128));
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(j8, (byte) (((j >>> 14) & 127) | 128));
            long j9 = this.pos;
            this.pos = j9 - 1;
            UnsafeUtil.putByte(j9, (byte) (((j >>> 7) & 127) | 128));
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.putByte(j10, (byte) ((j & 127) | 128));
        }

        private void writeVarint64OneByte(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) j);
        }

        private void writeVarint64SevenBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (j >>> 42));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((j >>> 35) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((j >>> 28) & 127) | 128));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) (((j >>> 21) & 127) | 128));
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(j6, (byte) (((j >>> 14) & 127) | 128));
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(j7, (byte) (((j >>> 7) & 127) | 128));
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(j8, (byte) ((j & 127) | 128));
        }

        private void writeVarint64SixBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (j >>> 35));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((j >>> 28) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((j >>> 21) & 127) | 128));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) (((j >>> 14) & 127) | 128));
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(j6, (byte) (((j >>> 7) & 127) | 128));
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(j7, (byte) ((j & 127) | 128));
        }

        private void writeVarint64TenBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (j >>> 63));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((j >>> 56) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((j >>> 49) & 127) | 128));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) (((j >>> 42) & 127) | 128));
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(j6, (byte) (((j >>> 35) & 127) | 128));
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(j7, (byte) (((j >>> 28) & 127) | 128));
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(j8, (byte) (((j >>> 21) & 127) | 128));
            long j9 = this.pos;
            this.pos = j9 - 1;
            UnsafeUtil.putByte(j9, (byte) (((j >>> 14) & 127) | 128));
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.putByte(j10, (byte) (((j >>> 7) & 127) | 128));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.putByte(j11, (byte) ((j & 127) | 128));
        }

        private void writeVarint64ThreeBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (((int) j) >>> 14));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((j >>> 7) & 127) | 128));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) ((j & 127) | 128));
        }

        private void writeVarint64TwoBytes(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (j >>> 7));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) ((((int) j) & 127) | 128));
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void finishCurrentBuffer() {
            if (this.buffer != null) {
                this.totalDoneBytes += bytesWrittenToCurrentBuffer();
                this.buffer.position(bufferPos() + 1);
                this.buffer = null;
                this.pos = 0L;
                this.limitMinusOne = 0L;
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        public final int getTotalBytesWritten() {
            return this.totalDoneBytes + bytesWrittenToCurrentBuffer();
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void requireSpace(int i) {
            if (spaceLeft() < i) {
                nextBuffer(i);
            }
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(byte b) {
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(j, b);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            if (spaceLeft() < remaining) {
                nextBuffer(remaining);
            }
            this.pos -= remaining;
            this.buffer.position(bufferPos() + 1);
            this.buffer.put(byteBuffer);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(byte[] bArr, int i, int i2) {
            if (spaceLeft() < i2) {
                nextBuffer(i2);
            }
            this.pos -= i2;
            this.buffer.position(bufferPos() + 1);
            this.buffer.put(bArr, i, i2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeBool(int i, boolean z) {
            requireSpace(6);
            write(z ? (byte) 1 : (byte) 0);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeBool(boolean z) {
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeBytes(int i, ByteString byteString) {
            try {
                byteString.writeToReverse(this);
                requireSpace(10);
                writeVarint32(byteString.size());
                writeTag(i, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeEndGroup(int i) {
            writeTag(i, 4);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeFixed32(int i) {
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(j, (byte) ((i >> 24) & 255));
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) ((i >> 16) & 255));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) ((i >> 8) & 255));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (i & 255));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeFixed32(int i, int i2) {
            requireSpace(9);
            writeFixed32(i2);
            writeTag(i, 5);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeFixed64(int i, long j) {
            requireSpace(13);
            writeFixed64(j);
            writeTag(i, 1);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeFixed64(long j) {
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(j2, (byte) (((int) (j >> 56)) & 255));
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(j3, (byte) (((int) (j >> 48)) & 255));
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(j4, (byte) (((int) (j >> 40)) & 255));
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(j5, (byte) (((int) (j >> 32)) & 255));
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(j6, (byte) (((int) (j >> 24)) & 255));
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(j7, (byte) (((int) (j >> 16)) & 255));
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(j8, (byte) (((int) (j >> 8)) & 255));
            long j9 = this.pos;
            this.pos = j9 - 1;
            UnsafeUtil.putByte(j9, (byte) (((int) j) & 255));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeGroup(int i, Object obj) throws IOException {
            writeTag(i, 4);
            Protobuf.getInstance().writeTo(obj, this);
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeGroup(int i, Object obj, Schema schema) throws IOException {
            writeTag(i, 4);
            schema.writeTo(obj, this);
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeInt32(int i) {
            if (i >= 0) {
                writeVarint32(i);
            } else {
                writeVarint64(i);
            }
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeInt32(int i, int i2) {
            requireSpace(15);
            writeInt32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void writeLazy(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            if (spaceLeft() < remaining) {
                this.totalDoneBytes += remaining;
                this.buffers.addFirst(AllocatedBuffer.wrap(byteBuffer));
                nextBuffer();
                return;
            }
            this.pos -= remaining;
            this.buffer.position(bufferPos() + 1);
            this.buffer.put(byteBuffer);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void writeLazy(byte[] bArr, int i, int i2) {
            if (spaceLeft() < i2) {
                this.totalDoneBytes += i2;
                this.buffers.addFirst(AllocatedBuffer.wrap(bArr, i, i2));
                nextBuffer();
                return;
            }
            this.pos -= i2;
            this.buffer.position(bufferPos() + 1);
            this.buffer.put(bArr, i, i2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeMessage(int i, Object obj) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            Protobuf.getInstance().writeTo(obj, this);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeMessage(int i, Object obj, Schema schema) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            schema.writeTo(obj, this);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeSInt32(int i) {
            writeVarint32(CodedOutputStream.encodeZigZag32(i));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeSInt32(int i, int i2) {
            requireSpace(10);
            writeSInt32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeSInt64(int i, long j) {
            requireSpace(15);
            writeSInt64(j);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeSInt64(long j) {
            writeVarint64(CodedOutputStream.encodeZigZag64(j));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeStartGroup(int i) {
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeString(int i, String str) {
            int totalBytesWritten = getTotalBytesWritten();
            writeString(str);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeString(String str) {
            char charAt;
            requireSpace(str.length());
            int length = str.length() - 1;
            while (length >= 0 && (charAt = str.charAt(length)) < 128) {
                long j = this.pos;
                this.pos = j - 1;
                UnsafeUtil.putByte(j, (byte) charAt);
                length--;
            }
            int i = length;
            if (length == -1) {
                return;
            }
            while (i >= 0) {
                char charAt2 = str.charAt(i);
                if (charAt2 < 128) {
                    long j2 = this.pos;
                    if (j2 >= this.bufferOffset) {
                        this.pos = j2 - 1;
                        UnsafeUtil.putByte(j2, (byte) charAt2);
                        i--;
                    }
                }
                if (charAt2 < 2048) {
                    long j3 = this.pos;
                    if (j3 > this.bufferOffset) {
                        this.pos = j3 - 1;
                        UnsafeUtil.putByte(j3, (byte) ((charAt2 & '?') | 128));
                        long j4 = this.pos;
                        this.pos = j4 - 1;
                        UnsafeUtil.putByte(j4, (byte) ((charAt2 >>> 6) | 960));
                        i--;
                    }
                }
                if (charAt2 < 55296 || 57343 < charAt2) {
                    long j5 = this.pos;
                    if (j5 > this.bufferOffset + 1) {
                        this.pos = j5 - 1;
                        UnsafeUtil.putByte(j5, (byte) ((charAt2 & '?') | 128));
                        long j6 = this.pos;
                        this.pos = j6 - 1;
                        UnsafeUtil.putByte(j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                        long j7 = this.pos;
                        this.pos = j7 - 1;
                        UnsafeUtil.putByte(j7, (byte) ((charAt2 >>> '\f') | 480));
                        i--;
                    }
                }
                if (this.pos > this.bufferOffset + 2) {
                    if (i != 0) {
                        char charAt3 = str.charAt(i - 1);
                        if (Character.isSurrogatePair(charAt3, charAt2)) {
                            i--;
                            int codePoint = Character.toCodePoint(charAt3, charAt2);
                            long j8 = this.pos;
                            this.pos = j8 - 1;
                            UnsafeUtil.putByte(j8, (byte) ((codePoint & 63) | 128));
                            long j9 = this.pos;
                            this.pos = j9 - 1;
                            UnsafeUtil.putByte(j9, (byte) (((codePoint >>> 6) & 63) | 128));
                            long j10 = this.pos;
                            this.pos = j10 - 1;
                            UnsafeUtil.putByte(j10, (byte) (((codePoint >>> 12) & 63) | 128));
                            long j11 = this.pos;
                            this.pos = j11 - 1;
                            UnsafeUtil.putByte(j11, (byte) ((codePoint >>> 18) | 240));
                        }
                    }
                    throw new Utf8.UnpairedSurrogateException(i - 1, i);
                }
                requireSpace(i);
                i++;
                i--;
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeTag(int i, int i2) {
            writeVarint32(WireFormat.makeTag(i, i2));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeUInt32(int i, int i2) {
            requireSpace(10);
            writeVarint32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeUInt64(int i, long j) {
            requireSpace(15);
            writeVarint64(j);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeVarint32(int i) {
            if ((i & (-128)) == 0) {
                writeVarint32OneByte(i);
            } else if ((i & (-16384)) == 0) {
                writeVarint32TwoBytes(i);
            } else if (((-2097152) & i) == 0) {
                writeVarint32ThreeBytes(i);
            } else if (((-268435456) & i) == 0) {
                writeVarint32FourBytes(i);
            } else {
                writeVarint32FiveBytes(i);
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeVarint64(long j) {
            switch (BinaryWriter.computeUInt64SizeNoTag(j)) {
                case 1:
                    writeVarint64OneByte(j);
                    return;
                case 2:
                    writeVarint64TwoBytes(j);
                    return;
                case 3:
                    writeVarint64ThreeBytes(j);
                    return;
                case 4:
                    writeVarint64FourBytes(j);
                    return;
                case 5:
                    writeVarint64FiveBytes(j);
                    return;
                case 6:
                    writeVarint64SixBytes(j);
                    return;
                case 7:
                    writeVarint64SevenBytes(j);
                    return;
                case 8:
                    writeVarint64EightBytes(j);
                    return;
                case 9:
                    writeVarint64NineBytes(j);
                    return;
                case 10:
                    writeVarint64TenBytes(j);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/BinaryWriter$UnsafeHeapWriter.class */
    public static final class UnsafeHeapWriter extends BinaryWriter {
        private AllocatedBuffer allocatedBuffer;
        private byte[] buffer;
        private long limit;
        private long limitMinusOne;
        private long offset;
        private long offsetMinusOne;
        private long pos;

        UnsafeHeapWriter(BufferAllocator bufferAllocator, int i) {
            super(bufferAllocator, i, null);
            nextBuffer();
        }

        private int arrayPos() {
            return (int) this.pos;
        }

        static boolean isSupported() {
            return UnsafeUtil.hasUnsafeArrayOperations();
        }

        private void nextBuffer() {
            nextBuffer(newHeapBuffer());
        }

        private void nextBuffer(int i) {
            nextBuffer(newHeapBuffer(i));
        }

        private void nextBuffer(AllocatedBuffer allocatedBuffer) {
            if (allocatedBuffer.hasArray()) {
                finishCurrentBuffer();
                this.buffers.addFirst(allocatedBuffer);
                this.allocatedBuffer = allocatedBuffer;
                this.buffer = allocatedBuffer.array();
                int arrayOffset = allocatedBuffer.arrayOffset();
                this.limit = allocatedBuffer.limit() + arrayOffset;
                long position = arrayOffset + allocatedBuffer.position();
                this.offset = position;
                this.offsetMinusOne = position - 1;
                long j = this.limit - 1;
                this.limitMinusOne = j;
                this.pos = j;
                return;
            }
            throw new RuntimeException("Allocator returned non-heap buffer");
        }

        private void writeVarint32FiveBytes(int i) {
            byte[] bArr = this.buffer;
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(bArr, j, (byte) (i >>> 28));
            byte[] bArr2 = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr2, j2, (byte) (((i >>> 21) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr3, j3, (byte) (((i >>> 14) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr4, j4, (byte) (((i >>> 7) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr5, j5, (byte) ((i & 127) | 128));
        }

        private void writeVarint32FourBytes(int i) {
            byte[] bArr = this.buffer;
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(bArr, j, (byte) (i >>> 21));
            byte[] bArr2 = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr2, j2, (byte) (((i >>> 14) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr3, j3, (byte) (((i >>> 7) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr4, j4, (byte) ((i & 127) | 128));
        }

        private void writeVarint32OneByte(int i) {
            byte[] bArr = this.buffer;
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(bArr, j, (byte) i);
        }

        private void writeVarint32ThreeBytes(int i) {
            byte[] bArr = this.buffer;
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(bArr, j, (byte) (i >>> 14));
            byte[] bArr2 = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr2, j2, (byte) (((i >>> 7) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr3, j3, (byte) ((i & 127) | 128));
        }

        private void writeVarint32TwoBytes(int i) {
            byte[] bArr = this.buffer;
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(bArr, j, (byte) (i >>> 7));
            byte[] bArr2 = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr2, j2, (byte) ((i & 127) | 128));
        }

        private void writeVarint64EightBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (j >>> 49));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((j >>> 42) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) (((j >>> 35) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr4, j5, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(bArr5, j6, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(bArr6, j7, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr7 = this.buffer;
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(bArr7, j8, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr8 = this.buffer;
            long j9 = this.pos;
            this.pos = j9 - 1;
            UnsafeUtil.putByte(bArr8, j9, (byte) ((j & 127) | 128));
        }

        private void writeVarint64FiveBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (j >>> 28));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr4, j5, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(bArr5, j6, (byte) ((j & 127) | 128));
        }

        private void writeVarint64FourBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (j >>> 21));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr4, j5, (byte) ((j & 127) | 128));
        }

        private void writeVarint64NineBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (j >>> 56));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((j >>> 49) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) (((j >>> 42) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr4, j5, (byte) (((j >>> 35) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(bArr5, j6, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(bArr6, j7, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr7 = this.buffer;
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(bArr7, j8, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr8 = this.buffer;
            long j9 = this.pos;
            this.pos = j9 - 1;
            UnsafeUtil.putByte(bArr8, j9, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr9 = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.putByte(bArr9, j10, (byte) ((j & 127) | 128));
        }

        private void writeVarint64OneByte(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) j);
        }

        private void writeVarint64SevenBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (j >>> 42));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((j >>> 35) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr4, j5, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(bArr5, j6, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(bArr6, j7, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr7 = this.buffer;
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(bArr7, j8, (byte) ((j & 127) | 128));
        }

        private void writeVarint64SixBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (j >>> 35));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr4, j5, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(bArr5, j6, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(bArr6, j7, (byte) ((j & 127) | 128));
        }

        private void writeVarint64TenBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (j >>> 63));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((j >>> 56) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) (((j >>> 49) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr4, j5, (byte) (((j >>> 42) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(bArr5, j6, (byte) (((j >>> 35) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(bArr6, j7, (byte) (((j >>> 28) & 127) | 128));
            byte[] bArr7 = this.buffer;
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(bArr7, j8, (byte) (((j >>> 21) & 127) | 128));
            byte[] bArr8 = this.buffer;
            long j9 = this.pos;
            this.pos = j9 - 1;
            UnsafeUtil.putByte(bArr8, j9, (byte) (((j >>> 14) & 127) | 128));
            byte[] bArr9 = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.putByte(bArr9, j10, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr10 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.putByte(bArr10, j11, (byte) ((j & 127) | 128));
        }

        private void writeVarint64ThreeBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (((int) j) >>> 14));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((j >>> 7) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) ((j & 127) | 128));
        }

        private void writeVarint64TwoBytes(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (j >>> 7));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) ((((int) j) & 127) | 128));
        }

        final int bytesWrittenToCurrentBuffer() {
            return (int) (this.limitMinusOne - this.pos);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void finishCurrentBuffer() {
            if (this.allocatedBuffer != null) {
                this.totalDoneBytes += bytesWrittenToCurrentBuffer();
                this.allocatedBuffer.position((arrayPos() - this.allocatedBuffer.arrayOffset()) + 1);
                this.allocatedBuffer = null;
                this.pos = 0L;
                this.limitMinusOne = 0L;
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        public final int getTotalBytesWritten() {
            return this.totalDoneBytes + bytesWrittenToCurrentBuffer();
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void requireSpace(int i) {
            if (spaceLeft() < i) {
                nextBuffer(i);
            }
        }

        final int spaceLeft() {
            return (int) (this.pos - this.offsetMinusOne);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(byte b) {
            byte[] bArr = this.buffer;
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(bArr, j, b);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            requireSpace(remaining);
            this.pos -= remaining;
            byteBuffer.get(this.buffer, arrayPos() + 1, remaining);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void write(byte[] bArr, int i, int i2) {
            if (i < 0 || i + i2 > bArr.length) {
                throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            requireSpace(i2);
            this.pos -= i2;
            System.arraycopy(bArr, i, this.buffer, arrayPos() + 1, i2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeBool(int i, boolean z) {
            requireSpace(6);
            write(z ? (byte) 1 : (byte) 0);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeBool(boolean z) {
            write(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeBytes(int i, ByteString byteString) {
            try {
                byteString.writeToReverse(this);
                requireSpace(10);
                writeVarint32(byteString.size());
                writeTag(i, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeEndGroup(int i) {
            writeTag(i, 4);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeFixed32(int i) {
            byte[] bArr = this.buffer;
            long j = this.pos;
            this.pos = j - 1;
            UnsafeUtil.putByte(bArr, j, (byte) ((i >> 24) & 255));
            byte[] bArr2 = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr2, j2, (byte) ((i >> 16) & 255));
            byte[] bArr3 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr3, j3, (byte) ((i >> 8) & 255));
            byte[] bArr4 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr4, j4, (byte) (i & 255));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeFixed32(int i, int i2) {
            requireSpace(9);
            writeFixed32(i2);
            writeTag(i, 5);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeFixed64(int i, long j) {
            requireSpace(13);
            writeFixed64(j);
            writeTag(i, 1);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeFixed64(long j) {
            byte[] bArr = this.buffer;
            long j2 = this.pos;
            this.pos = j2 - 1;
            UnsafeUtil.putByte(bArr, j2, (byte) (((int) (j >> 56)) & 255));
            byte[] bArr2 = this.buffer;
            long j3 = this.pos;
            this.pos = j3 - 1;
            UnsafeUtil.putByte(bArr2, j3, (byte) (((int) (j >> 48)) & 255));
            byte[] bArr3 = this.buffer;
            long j4 = this.pos;
            this.pos = j4 - 1;
            UnsafeUtil.putByte(bArr3, j4, (byte) (((int) (j >> 40)) & 255));
            byte[] bArr4 = this.buffer;
            long j5 = this.pos;
            this.pos = j5 - 1;
            UnsafeUtil.putByte(bArr4, j5, (byte) (((int) (j >> 32)) & 255));
            byte[] bArr5 = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.putByte(bArr5, j6, (byte) (((int) (j >> 24)) & 255));
            byte[] bArr6 = this.buffer;
            long j7 = this.pos;
            this.pos = j7 - 1;
            UnsafeUtil.putByte(bArr6, j7, (byte) (((int) (j >> 16)) & 255));
            byte[] bArr7 = this.buffer;
            long j8 = this.pos;
            this.pos = j8 - 1;
            UnsafeUtil.putByte(bArr7, j8, (byte) (((int) (j >> 8)) & 255));
            byte[] bArr8 = this.buffer;
            long j9 = this.pos;
            this.pos = j9 - 1;
            UnsafeUtil.putByte(bArr8, j9, (byte) (((int) j) & 255));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeGroup(int i, Object obj) throws IOException {
            writeTag(i, 4);
            Protobuf.getInstance().writeTo(obj, this);
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeGroup(int i, Object obj, Schema schema) throws IOException {
            writeTag(i, 4);
            schema.writeTo(obj, this);
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeInt32(int i) {
            if (i >= 0) {
                writeVarint32(i);
            } else {
                writeVarint64(i);
            }
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeInt32(int i, int i2) {
            requireSpace(15);
            writeInt32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void writeLazy(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            if (spaceLeft() < remaining) {
                this.totalDoneBytes += remaining;
                this.buffers.addFirst(AllocatedBuffer.wrap(byteBuffer));
                nextBuffer();
            }
            this.pos -= remaining;
            byteBuffer.get(this.buffer, arrayPos() + 1, remaining);
        }

        @Override // com.explorestack.protobuf.ByteOutput
        public final void writeLazy(byte[] bArr, int i, int i2) {
            if (i < 0 || i + i2 > bArr.length) {
                throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            if (spaceLeft() >= i2) {
                this.pos -= i2;
                System.arraycopy(bArr, i, this.buffer, arrayPos() + 1, i2);
                return;
            }
            this.totalDoneBytes += i2;
            this.buffers.addFirst(AllocatedBuffer.wrap(bArr, i, i2));
            nextBuffer();
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeMessage(int i, Object obj) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            Protobuf.getInstance().writeTo(obj, this);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeMessage(int i, Object obj, Schema schema) throws IOException {
            int totalBytesWritten = getTotalBytesWritten();
            schema.writeTo(obj, this);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeSInt32(int i) {
            writeVarint32(CodedOutputStream.encodeZigZag32(i));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeSInt32(int i, int i2) {
            requireSpace(10);
            writeSInt32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeSInt64(int i, long j) {
            requireSpace(15);
            writeSInt64(j);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeSInt64(long j) {
            writeVarint64(CodedOutputStream.encodeZigZag64(j));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeStartGroup(int i) {
            writeTag(i, 3);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeString(int i, String str) {
            int totalBytesWritten = getTotalBytesWritten();
            writeString(str);
            int totalBytesWritten2 = getTotalBytesWritten();
            requireSpace(10);
            writeVarint32(totalBytesWritten2 - totalBytesWritten);
            writeTag(i, 2);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeString(String str) {
            char charAt;
            requireSpace(str.length());
            int length = str.length() - 1;
            while (length >= 0 && (charAt = str.charAt(length)) < 128) {
                byte[] bArr = this.buffer;
                long j = this.pos;
                this.pos = j - 1;
                UnsafeUtil.putByte(bArr, j, (byte) charAt);
                length--;
            }
            int i = length;
            if (length == -1) {
                return;
            }
            while (i >= 0) {
                char charAt2 = str.charAt(i);
                if (charAt2 < 128) {
                    long j2 = this.pos;
                    if (j2 > this.offsetMinusOne) {
                        byte[] bArr2 = this.buffer;
                        this.pos = j2 - 1;
                        UnsafeUtil.putByte(bArr2, j2, (byte) charAt2);
                        i--;
                    }
                }
                if (charAt2 < 2048) {
                    long j3 = this.pos;
                    if (j3 > this.offset) {
                        byte[] bArr3 = this.buffer;
                        this.pos = j3 - 1;
                        UnsafeUtil.putByte(bArr3, j3, (byte) ((charAt2 & '?') | 128));
                        byte[] bArr4 = this.buffer;
                        long j4 = this.pos;
                        this.pos = j4 - 1;
                        UnsafeUtil.putByte(bArr4, j4, (byte) ((charAt2 >>> 6) | 960));
                        i--;
                    }
                }
                if (charAt2 < 55296 || 57343 < charAt2) {
                    long j5 = this.pos;
                    if (j5 > this.offset + 1) {
                        byte[] bArr5 = this.buffer;
                        this.pos = j5 - 1;
                        UnsafeUtil.putByte(bArr5, j5, (byte) ((charAt2 & '?') | 128));
                        byte[] bArr6 = this.buffer;
                        long j6 = this.pos;
                        this.pos = j6 - 1;
                        UnsafeUtil.putByte(bArr6, j6, (byte) (((charAt2 >>> 6) & 63) | 128));
                        byte[] bArr7 = this.buffer;
                        long j7 = this.pos;
                        this.pos = j7 - 1;
                        UnsafeUtil.putByte(bArr7, j7, (byte) ((charAt2 >>> '\f') | 480));
                        i--;
                    }
                }
                if (this.pos > this.offset + 2) {
                    if (i != 0) {
                        char charAt3 = str.charAt(i - 1);
                        if (Character.isSurrogatePair(charAt3, charAt2)) {
                            i--;
                            int codePoint = Character.toCodePoint(charAt3, charAt2);
                            byte[] bArr8 = this.buffer;
                            long j8 = this.pos;
                            this.pos = j8 - 1;
                            UnsafeUtil.putByte(bArr8, j8, (byte) ((codePoint & 63) | 128));
                            byte[] bArr9 = this.buffer;
                            long j9 = this.pos;
                            this.pos = j9 - 1;
                            UnsafeUtil.putByte(bArr9, j9, (byte) (((codePoint >>> 6) & 63) | 128));
                            byte[] bArr10 = this.buffer;
                            long j10 = this.pos;
                            this.pos = j10 - 1;
                            UnsafeUtil.putByte(bArr10, j10, (byte) (((codePoint >>> 12) & 63) | 128));
                            byte[] bArr11 = this.buffer;
                            long j11 = this.pos;
                            this.pos = j11 - 1;
                            UnsafeUtil.putByte(bArr11, j11, (byte) ((codePoint >>> 18) | 240));
                        }
                    }
                    throw new Utf8.UnpairedSurrogateException(i - 1, i);
                }
                requireSpace(i);
                i++;
                i--;
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeTag(int i, int i2) {
            writeVarint32(WireFormat.makeTag(i, i2));
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeUInt32(int i, int i2) {
            requireSpace(10);
            writeVarint32(i2);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.Writer
        public final void writeUInt64(int i, long j) {
            requireSpace(15);
            writeVarint64(j);
            writeTag(i, 0);
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeVarint32(int i) {
            if ((i & (-128)) == 0) {
                writeVarint32OneByte(i);
            } else if ((i & (-16384)) == 0) {
                writeVarint32TwoBytes(i);
            } else if (((-2097152) & i) == 0) {
                writeVarint32ThreeBytes(i);
            } else if (((-268435456) & i) == 0) {
                writeVarint32FourBytes(i);
            } else {
                writeVarint32FiveBytes(i);
            }
        }

        @Override // com.explorestack.protobuf.BinaryWriter
        final void writeVarint64(long j) {
            switch (BinaryWriter.computeUInt64SizeNoTag(j)) {
                case 1:
                    writeVarint64OneByte(j);
                    return;
                case 2:
                    writeVarint64TwoBytes(j);
                    return;
                case 3:
                    writeVarint64ThreeBytes(j);
                    return;
                case 4:
                    writeVarint64FourBytes(j);
                    return;
                case 5:
                    writeVarint64FiveBytes(j);
                    return;
                case 6:
                    writeVarint64SixBytes(j);
                    return;
                case 7:
                    writeVarint64SevenBytes(j);
                    return;
                case 8:
                    writeVarint64EightBytes(j);
                    return;
                case 9:
                    writeVarint64NineBytes(j);
                    return;
                case 10:
                    writeVarint64TenBytes(j);
                    return;
                default:
                    return;
            }
        }
    }

    private BinaryWriter(BufferAllocator bufferAllocator, int i) {
        this.buffers = new ArrayDeque<>(4);
        if (i > 0) {
            this.alloc = (BufferAllocator) Internal.checkNotNull(bufferAllocator, "alloc");
            this.chunkSize = i;
            return;
        }
        throw new IllegalArgumentException("chunkSize must be > 0");
    }

    /* synthetic */ BinaryWriter(BufferAllocator bufferAllocator, int i, C96891 c96891) {
        this(bufferAllocator, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    public static byte computeUInt64SizeNoTag(long j) {
        byte b;
        ?? r5;
        if (((-128) & j) == 0) {
            return (byte) 1;
        }
        if (j < 0) {
            return (byte) 10;
        }
        if (((-34359738368L) & j) != 0) {
            b = 6;
            r5 = j >>> 28;
        } else {
            b = 2;
            r5 = j;
        }
        byte b2 = b;
        byte b3 = r5;
        if ((0 & r5) != 0) {
            b2 = (byte) (b + 2);
            b3 = r5 >>> 14;
        }
        byte b4 = b2;
        if ((b3 & (-16384)) != 0) {
            b4 = (byte) (b2 + 1);
        }
        return b4;
    }

    static boolean isUnsafeDirectSupported() {
        return UnsafeDirectWriter.isSupported();
    }

    static boolean isUnsafeHeapSupported() {
        return UnsafeHeapWriter.isSupported();
    }

    public static BinaryWriter newDirectInstance(BufferAllocator bufferAllocator) {
        return newDirectInstance(bufferAllocator, 4096);
    }

    public static BinaryWriter newDirectInstance(BufferAllocator bufferAllocator, int i) {
        return isUnsafeDirectSupported() ? newUnsafeDirectInstance(bufferAllocator, i) : newSafeDirectInstance(bufferAllocator, i);
    }

    public static BinaryWriter newHeapInstance(BufferAllocator bufferAllocator) {
        return newHeapInstance(bufferAllocator, 4096);
    }

    public static BinaryWriter newHeapInstance(BufferAllocator bufferAllocator, int i) {
        return isUnsafeHeapSupported() ? newUnsafeHeapInstance(bufferAllocator, i) : newSafeHeapInstance(bufferAllocator, i);
    }

    static BinaryWriter newSafeDirectInstance(BufferAllocator bufferAllocator, int i) {
        return new SafeDirectWriter(bufferAllocator, i);
    }

    static BinaryWriter newSafeHeapInstance(BufferAllocator bufferAllocator, int i) {
        return new SafeHeapWriter(bufferAllocator, i);
    }

    static BinaryWriter newUnsafeDirectInstance(BufferAllocator bufferAllocator, int i) {
        if (isUnsafeDirectSupported()) {
            return new UnsafeDirectWriter(bufferAllocator, i);
        }
        throw new UnsupportedOperationException("Unsafe operations not supported");
    }

    static BinaryWriter newUnsafeHeapInstance(BufferAllocator bufferAllocator, int i) {
        if (isUnsafeHeapSupported()) {
            return new UnsafeHeapWriter(bufferAllocator, i);
        }
        throw new UnsupportedOperationException("Unsafe operations not supported");
    }

    private final void writeBoolList_Internal(int i, BooleanArrayList booleanArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = booleanArrayList.size() - 1; size >= 0; size--) {
                writeBool(i, booleanArrayList.getBoolean(size));
            }
            return;
        }
        requireSpace(booleanArrayList.size() + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = booleanArrayList.size() - 1; size2 >= 0; size2--) {
            writeBool(booleanArrayList.getBoolean(size2));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeBoolList_Internal(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeBool(i, list.get(size).booleanValue());
            }
            return;
        }
        requireSpace(list.size() + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeBool(list.get(size2).booleanValue());
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeDoubleList_Internal(int i, DoubleArrayList doubleArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = doubleArrayList.size() - 1; size >= 0; size--) {
                writeDouble(i, doubleArrayList.getDouble(size));
            }
            return;
        }
        requireSpace((doubleArrayList.size() * 8) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = doubleArrayList.size() - 1; size2 >= 0; size2--) {
            writeFixed64(Double.doubleToRawLongBits(doubleArrayList.getDouble(size2)));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeDoubleList_Internal(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeDouble(i, list.get(size).doubleValue());
            }
            return;
        }
        requireSpace((list.size() * 8) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeFixed64(Double.doubleToRawLongBits(list.get(size2).doubleValue()));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeFixed32List_Internal(int i, IntArrayList intArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = intArrayList.size() - 1; size >= 0; size--) {
                writeFixed32(i, intArrayList.getInt(size));
            }
            return;
        }
        requireSpace((intArrayList.size() * 4) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = intArrayList.size() - 1; size2 >= 0; size2--) {
            writeFixed32(intArrayList.getInt(size2));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeFixed32List_Internal(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed32(i, list.get(size).intValue());
            }
            return;
        }
        requireSpace((list.size() * 4) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeFixed32(list.get(size2).intValue());
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeFixed64List_Internal(int i, LongArrayList longArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = longArrayList.size() - 1; size >= 0; size--) {
                writeFixed64(i, longArrayList.getLong(size));
            }
            return;
        }
        requireSpace((longArrayList.size() * 8) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = longArrayList.size() - 1; size2 >= 0; size2--) {
            writeFixed64(longArrayList.getLong(size2));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeFixed64List_Internal(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed64(i, list.get(size).longValue());
            }
            return;
        }
        requireSpace((list.size() * 8) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeFixed64(list.get(size2).longValue());
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeFloatList_Internal(int i, FloatArrayList floatArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = floatArrayList.size() - 1; size >= 0; size--) {
                writeFloat(i, floatArrayList.getFloat(size));
            }
            return;
        }
        requireSpace((floatArrayList.size() * 4) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = floatArrayList.size() - 1; size2 >= 0; size2--) {
            writeFixed32(Float.floatToRawIntBits(floatArrayList.getFloat(size2)));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeFloatList_Internal(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFloat(i, list.get(size).floatValue());
            }
            return;
        }
        requireSpace((list.size() * 4) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeFixed32(Float.floatToRawIntBits(list.get(size2).floatValue()));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeInt32List_Internal(int i, IntArrayList intArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = intArrayList.size() - 1; size >= 0; size--) {
                writeInt32(i, intArrayList.getInt(size));
            }
            return;
        }
        requireSpace((intArrayList.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = intArrayList.size() - 1; size2 >= 0; size2--) {
            writeInt32(intArrayList.getInt(size2));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeInt32List_Internal(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeInt32(i, list.get(size).intValue());
            }
            return;
        }
        requireSpace((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeInt32(list.get(size2).intValue());
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private void writeLazyString(int i, Object obj) throws IOException {
        if (obj instanceof String) {
            writeString(i, (String) obj);
        } else {
            writeBytes(i, (ByteString) obj);
        }
    }

    static final void writeMapEntryField(Writer writer, int i, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (C96891.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                writer.writeBool(i, ((Boolean) obj).booleanValue());
                return;
            case 2:
                writer.writeFixed32(i, ((Integer) obj).intValue());
                return;
            case 3:
                writer.writeFixed64(i, ((Long) obj).longValue());
                return;
            case 4:
                writer.writeInt32(i, ((Integer) obj).intValue());
                return;
            case 5:
                writer.writeInt64(i, ((Long) obj).longValue());
                return;
            case 6:
                writer.writeSFixed32(i, ((Integer) obj).intValue());
                return;
            case 7:
                writer.writeSFixed64(i, ((Long) obj).longValue());
                return;
            case 8:
                writer.writeSInt32(i, ((Integer) obj).intValue());
                return;
            case 9:
                writer.writeSInt64(i, ((Long) obj).longValue());
                return;
            case 10:
                writer.writeString(i, (String) obj);
                return;
            case 11:
                writer.writeUInt32(i, ((Integer) obj).intValue());
                return;
            case 12:
                writer.writeUInt64(i, ((Long) obj).longValue());
                return;
            case 13:
                writer.writeFloat(i, ((Float) obj).floatValue());
                return;
            case 14:
                writer.writeDouble(i, ((Double) obj).doubleValue());
                return;
            case 15:
                writer.writeMessage(i, obj);
                return;
            case 16:
                writer.writeBytes(i, (ByteString) obj);
                return;
            case 17:
                if (obj instanceof Internal.EnumLite) {
                    writer.writeEnum(i, ((Internal.EnumLite) obj).getNumber());
                    return;
                } else if (!(obj instanceof Integer)) {
                    throw new IllegalArgumentException("Unexpected type for enum in map.");
                } else {
                    writer.writeEnum(i, ((Integer) obj).intValue());
                    return;
                }
            default:
                throw new IllegalArgumentException("Unsupported map value type for: ".concat(String.valueOf(fieldType)));
        }
    }

    private final void writeSInt32List_Internal(int i, IntArrayList intArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = intArrayList.size() - 1; size >= 0; size--) {
                writeSInt32(i, intArrayList.getInt(size));
            }
            return;
        }
        requireSpace((intArrayList.size() * 5) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = intArrayList.size() - 1; size2 >= 0; size2--) {
            writeSInt32(intArrayList.getInt(size2));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeSInt32List_Internal(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt32(i, list.get(size).intValue());
            }
            return;
        }
        requireSpace((list.size() * 5) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeSInt32(list.get(size2).intValue());
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeSInt64List_Internal(int i, LongArrayList longArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = longArrayList.size() - 1; size >= 0; size--) {
                writeSInt64(i, longArrayList.getLong(size));
            }
            return;
        }
        requireSpace((longArrayList.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = longArrayList.size() - 1; size2 >= 0; size2--) {
            writeSInt64(longArrayList.getLong(size2));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeSInt64List_Internal(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt64(i, list.get(size).longValue());
            }
            return;
        }
        requireSpace((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeSInt64(list.get(size2).longValue());
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeUInt32List_Internal(int i, IntArrayList intArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = intArrayList.size() - 1; size >= 0; size--) {
                writeUInt32(i, intArrayList.getInt(size));
            }
            return;
        }
        requireSpace((intArrayList.size() * 5) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = intArrayList.size() - 1; size2 >= 0; size2--) {
            writeVarint32(intArrayList.getInt(size2));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeUInt32List_Internal(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt32(i, list.get(size).intValue());
            }
            return;
        }
        requireSpace((list.size() * 5) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeVarint32(list.get(size2).intValue());
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeUInt64List_Internal(int i, LongArrayList longArrayList, boolean z) throws IOException {
        if (!z) {
            for (int size = longArrayList.size() - 1; size >= 0; size--) {
                writeUInt64(i, longArrayList.getLong(size));
            }
            return;
        }
        requireSpace((longArrayList.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = longArrayList.size() - 1; size2 >= 0; size2--) {
            writeVarint64(longArrayList.getLong(size2));
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    private final void writeUInt64List_Internal(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt64(i, list.get(size).longValue());
            }
            return;
        }
        requireSpace((list.size() * 10) + 10);
        int totalBytesWritten = getTotalBytesWritten();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeVarint64(list.get(size2).longValue());
        }
        writeVarint32(getTotalBytesWritten() - totalBytesWritten);
        writeTag(i, 2);
    }

    public final Queue<AllocatedBuffer> complete() {
        finishCurrentBuffer();
        return this.buffers;
    }

    @Override // com.explorestack.protobuf.Writer
    public final Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.DESCENDING;
    }

    abstract void finishCurrentBuffer();

    public abstract int getTotalBytesWritten();

    final AllocatedBuffer newDirectBuffer() {
        return this.alloc.allocateDirectBuffer(this.chunkSize);
    }

    final AllocatedBuffer newDirectBuffer(int i) {
        return this.alloc.allocateDirectBuffer(Math.max(i, this.chunkSize));
    }

    final AllocatedBuffer newHeapBuffer() {
        return this.alloc.allocateHeapBuffer(this.chunkSize);
    }

    final AllocatedBuffer newHeapBuffer(int i) {
        return this.alloc.allocateHeapBuffer(Math.max(i, this.chunkSize));
    }

    abstract void requireSpace(int i);

    abstract void writeBool(boolean z);

    @Override // com.explorestack.protobuf.Writer
    public final void writeBoolList(int i, List<Boolean> list, boolean z) throws IOException {
        if (list instanceof BooleanArrayList) {
            writeBoolList_Internal(i, (BooleanArrayList) list, z);
        } else {
            writeBoolList_Internal(i, list, z);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeBytesList(int i, List<ByteString> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeBytes(i, list.get(size));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeDouble(int i, double d) throws IOException {
        writeFixed64(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeDoubleList(int i, List<Double> list, boolean z) throws IOException {
        if (list instanceof DoubleArrayList) {
            writeDoubleList_Internal(i, (DoubleArrayList) list, z);
        } else {
            writeDoubleList_Internal(i, list, z);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeEnum(int i, int i2) throws IOException {
        writeInt32(i, i2);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeEnumList(int i, List<Integer> list, boolean z) throws IOException {
        writeInt32List(i, list, z);
    }

    abstract void writeFixed32(int i);

    @Override // com.explorestack.protobuf.Writer
    public final void writeFixed32List(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof IntArrayList) {
            writeFixed32List_Internal(i, (IntArrayList) list, z);
        } else {
            writeFixed32List_Internal(i, list, z);
        }
    }

    abstract void writeFixed64(long j);

    @Override // com.explorestack.protobuf.Writer
    public final void writeFixed64List(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof LongArrayList) {
            writeFixed64List_Internal(i, (LongArrayList) list, z);
        } else {
            writeFixed64List_Internal(i, list, z);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeFloat(int i, float f) throws IOException {
        writeFixed32(i, Float.floatToRawIntBits(f));
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeFloatList(int i, List<Float> list, boolean z) throws IOException {
        if (list instanceof FloatArrayList) {
            writeFloatList_Internal(i, (FloatArrayList) list, z);
        } else {
            writeFloatList_Internal(i, list, z);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeGroupList(int i, List<?> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeGroup(i, list.get(size));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeGroupList(int i, List<?> list, Schema schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeGroup(i, list.get(size), schema);
        }
    }

    abstract void writeInt32(int i);

    @Override // com.explorestack.protobuf.Writer
    public final void writeInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof IntArrayList) {
            writeInt32List_Internal(i, (IntArrayList) list, z);
        } else {
            writeInt32List_Internal(i, list, z);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeInt64(int i, long j) throws IOException {
        writeUInt64(i, j);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeInt64List(int i, List<Long> list, boolean z) throws IOException {
        writeUInt64List(i, list, z);
    }

    @Override // com.explorestack.protobuf.Writer
    public <K, V> void writeMap(int i, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            int totalBytesWritten = getTotalBytesWritten();
            writeMapEntryField(this, 2, metadata.valueType, entry.getValue());
            writeMapEntryField(this, 1, metadata.keyType, entry.getKey());
            writeVarint32(getTotalBytesWritten() - totalBytesWritten);
            writeTag(i, 2);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessageList(int i, List<?> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeMessage(i, list.get(size));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessageList(int i, List<?> list, Schema schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            writeMessage(i, list.get(size), schema);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessageSetItem(int i, Object obj) throws IOException {
        writeTag(1, 4);
        if (obj instanceof ByteString) {
            writeBytes(3, (ByteString) obj);
        } else {
            writeMessage(3, obj);
        }
        writeUInt32(2, i);
        writeTag(1, 3);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSFixed32(int i, int i2) throws IOException {
        writeFixed32(i, i2);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSFixed32List(int i, List<Integer> list, boolean z) throws IOException {
        writeFixed32List(i, list, z);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSFixed64(int i, long j) throws IOException {
        writeFixed64(i, j);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSFixed64List(int i, List<Long> list, boolean z) throws IOException {
        writeFixed64List(i, list, z);
    }

    abstract void writeSInt32(int i);

    @Override // com.explorestack.protobuf.Writer
    public final void writeSInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof IntArrayList) {
            writeSInt32List_Internal(i, (IntArrayList) list, z);
        } else {
            writeSInt32List_Internal(i, list, z);
        }
    }

    abstract void writeSInt64(long j);

    @Override // com.explorestack.protobuf.Writer
    public final void writeSInt64List(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof LongArrayList) {
            writeSInt64List_Internal(i, (LongArrayList) list, z);
        } else {
            writeSInt64List_Internal(i, list, z);
        }
    }

    abstract void writeString(String str);

    @Override // com.explorestack.protobuf.Writer
    public final void writeStringList(int i, List<String> list) throws IOException {
        if (!(list instanceof LazyStringList)) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeString(i, list.get(size));
            }
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            writeLazyString(i, lazyStringList.getRaw(size2));
        }
    }

    abstract void writeTag(int i, int i2);

    @Override // com.explorestack.protobuf.Writer
    public final void writeUInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (list instanceof IntArrayList) {
            writeUInt32List_Internal(i, (IntArrayList) list, z);
        } else {
            writeUInt32List_Internal(i, list, z);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeUInt64List(int i, List<Long> list, boolean z) throws IOException {
        if (list instanceof LongArrayList) {
            writeUInt64List_Internal(i, (LongArrayList) list, z);
        } else {
            writeUInt64List_Internal(i, list, z);
        }
    }

    abstract void writeVarint32(int i);

    abstract void writeVarint64(long j);
}
