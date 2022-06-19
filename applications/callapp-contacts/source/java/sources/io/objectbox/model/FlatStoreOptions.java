package io.objectbox.model;

import com.google.flatbuffers.C15935b;
import com.google.flatbuffers.C15936c;
import com.google.flatbuffers.C15937d;
import com.google.flatbuffers.C15943h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/FlatStoreOptions.class */
public final class FlatStoreOptions extends C15943h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/FlatStoreOptions$Vector.class */
    public static final class Vector extends C15935b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final FlatStoreOptions get(int i) {
            return get(new FlatStoreOptions(), i);
        }

        public final FlatStoreOptions get(FlatStoreOptions flatStoreOptions, int i) {
            return flatStoreOptions.__assign(FlatStoreOptions.__indirect(__element(i), this.f56570bb), this.f56570bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addDebugFlags(C15937d c15937d, long j) {
        c15937d.m8019b(12, (int) j);
    }

    public static void addDirectoryPath(C15937d c15937d, int i) {
        c15937d.m8015c(0, i);
    }

    public static void addFileMode(C15937d c15937d, long j) {
        c15937d.m8019b(3, (int) j);
    }

    public static void addMaxDbSizeInKByte(C15937d c15937d, long j) {
        c15937d.m8030a(2, j);
    }

    public static void addMaxReaders(C15937d c15937d, long j) {
        c15937d.m8019b(4, (int) j);
    }

    public static void addModelBytes(C15937d c15937d, int i) {
        c15937d.m8015c(1, i);
    }

    public static void addPutPaddingMode(C15937d c15937d, int i) {
        c15937d.m8029a(7, (short) i);
    }

    public static void addReadOnly(C15937d c15937d, boolean z) {
        c15937d.m8028a(11, z);
    }

    public static void addSkipReadSchema(C15937d c15937d, boolean z) {
        c15937d.m8028a(8, z);
    }

    public static void addUsePreviousCommit(C15937d c15937d, boolean z) {
        c15937d.m8028a(9, z);
    }

    public static void addUsePreviousCommitOnValidationFailure(C15937d c15937d, boolean z) {
        c15937d.m8028a(10, z);
    }

    public static void addValidateOnOpen(C15937d c15937d, int i) {
        c15937d.m8029a(5, (short) i);
    }

    public static void addValidateOnOpenPageLimit(C15937d c15937d, long j) {
        c15937d.m8030a(6, j);
    }

    public static int createFlatStoreOptions(C15937d c15937d, int i, int i2, long j, long j2, long j3, int i3, long j4, int i4, boolean z, boolean z2, boolean z3, boolean z4, long j5) {
        c15937d.m8013d(13);
        addValidateOnOpenPageLimit(c15937d, j4);
        addMaxDbSizeInKByte(c15937d, j);
        addDebugFlags(c15937d, j5);
        addMaxReaders(c15937d, j3);
        addFileMode(c15937d, j2);
        addModelBytes(c15937d, i2);
        addDirectoryPath(c15937d, i);
        addPutPaddingMode(c15937d, i4);
        addValidateOnOpen(c15937d, i3);
        addReadOnly(c15937d, z4);
        addUsePreviousCommitOnValidationFailure(c15937d, z3);
        addUsePreviousCommit(c15937d, z2);
        addSkipReadSchema(c15937d, z);
        return endFlatStoreOptions(c15937d);
    }

    public static int createModelBytesVector(C15937d c15937d, ByteBuffer byteBuffer) {
        return c15937d.m8025a(byteBuffer);
    }

    public static int createModelBytesVector(C15937d c15937d, byte[] bArr) {
        return c15937d.m8023a(bArr);
    }

    public static int endFlatStoreOptions(C15937d c15937d) {
        return c15937d.m8017c();
    }

    public static void finishFlatStoreOptionsBuffer(C15937d c15937d, int i) {
        c15937d.m8018b(i, false);
    }

    public static void finishSizePrefixedFlatStoreOptionsBuffer(C15937d c15937d, int i) {
        c15937d.m8018b(i, true);
    }

    public static FlatStoreOptions getRootAsFlatStoreOptions(ByteBuffer byteBuffer) {
        return getRootAsFlatStoreOptions(byteBuffer, new FlatStoreOptions());
    }

    public static FlatStoreOptions getRootAsFlatStoreOptions(ByteBuffer byteBuffer, FlatStoreOptions flatStoreOptions) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return flatStoreOptions.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startFlatStoreOptions(C15937d c15937d) {
        c15937d.m8013d(13);
    }

    public static void startModelBytesVector(C15937d c15937d, int i) {
        c15937d.m8031a(1, i, 1);
    }

    public final FlatStoreOptions __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public final void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public final long debugFlags() {
        int __offset = __offset(28);
        if (__offset != 0) {
            return this.f56588bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public final String directoryPath() {
        int __offset = __offset(4);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public final ByteBuffer directoryPathAsByteBuffer() {
        return __vector_as_bytebuffer(4, 1);
    }

    public final ByteBuffer directoryPathInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 4, 1);
    }

    public final long fileMode() {
        int __offset = __offset(10);
        if (__offset != 0) {
            return this.f56588bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public final long maxDbSizeInKByte() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return this.f56588bb.getLong(__offset + this.bb_pos);
        }
        return 0L;
    }

    public final long maxReaders() {
        int __offset = __offset(12);
        if (__offset != 0) {
            return this.f56588bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public final int modelBytes(int i) {
        int __offset = __offset(6);
        if (__offset != 0) {
            return this.f56588bb.get(__vector(__offset) + (i * 1)) & 255;
        }
        return 0;
    }

    public final ByteBuffer modelBytesAsByteBuffer() {
        return __vector_as_bytebuffer(6, 1);
    }

    public final ByteBuffer modelBytesInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 6, 1);
    }

    public final int modelBytesLength() {
        int __offset = __offset(6);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public final C15936c modelBytesVector() {
        return modelBytesVector(new C15936c());
    }

    public final C15936c modelBytesVector(C15936c c15936c) {
        int __offset = __offset(6);
        if (__offset != 0) {
            return c15936c.m8035a(__vector(__offset), this.f56588bb);
        }
        return null;
    }

    public final int putPaddingMode() {
        int __offset = __offset(18);
        if (__offset != 0) {
            return this.f56588bb.getShort(__offset + this.bb_pos) & 65535;
        }
        return 0;
    }

    public final boolean readOnly() {
        int __offset = __offset(26);
        return (__offset == 0 || this.f56588bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public final boolean skipReadSchema() {
        int __offset = __offset(20);
        return (__offset == 0 || this.f56588bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public final boolean usePreviousCommit() {
        int __offset = __offset(22);
        return (__offset == 0 || this.f56588bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public final boolean usePreviousCommitOnValidationFailure() {
        int __offset = __offset(24);
        return (__offset == 0 || this.f56588bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public final int validateOnOpen() {
        int __offset = __offset(14);
        if (__offset != 0) {
            return this.f56588bb.getShort(__offset + this.bb_pos) & 65535;
        }
        return 0;
    }

    public final long validateOnOpenPageLimit() {
        int __offset = __offset(16);
        if (__offset != 0) {
            return this.f56588bb.getLong(__offset + this.bb_pos);
        }
        return 0L;
    }
}
