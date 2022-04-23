package io.objectbox.model;

import com.google.flatbuffers.b;
import com.google.flatbuffers.c;
import com.google.flatbuffers.d;
import com.google.flatbuffers.h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/FlatStoreOptions.class */
public final class FlatStoreOptions extends h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/FlatStoreOptions$Vector.class */
    public static final class Vector extends b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final FlatStoreOptions get(int i) {
            return get(new FlatStoreOptions(), i);
        }

        public final FlatStoreOptions get(FlatStoreOptions flatStoreOptions, int i) {
            return flatStoreOptions.__assign(FlatStoreOptions.__indirect(__element(i), this.bb), this.bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addDebugFlags(d dVar, long j) {
        dVar.b(12, (int) j);
    }

    public static void addDirectoryPath(d dVar, int i) {
        dVar.c(0, i);
    }

    public static void addFileMode(d dVar, long j) {
        dVar.b(3, (int) j);
    }

    public static void addMaxDbSizeInKByte(d dVar, long j) {
        dVar.a(2, j);
    }

    public static void addMaxReaders(d dVar, long j) {
        dVar.b(4, (int) j);
    }

    public static void addModelBytes(d dVar, int i) {
        dVar.c(1, i);
    }

    public static void addPutPaddingMode(d dVar, int i) {
        dVar.a(7, (short) i);
    }

    public static void addReadOnly(d dVar, boolean z) {
        dVar.a(11, z);
    }

    public static void addSkipReadSchema(d dVar, boolean z) {
        dVar.a(8, z);
    }

    public static void addUsePreviousCommit(d dVar, boolean z) {
        dVar.a(9, z);
    }

    public static void addUsePreviousCommitOnValidationFailure(d dVar, boolean z) {
        dVar.a(10, z);
    }

    public static void addValidateOnOpen(d dVar, int i) {
        dVar.a(5, (short) i);
    }

    public static void addValidateOnOpenPageLimit(d dVar, long j) {
        dVar.a(6, j);
    }

    public static int createFlatStoreOptions(d dVar, int i, int i2, long j, long j2, long j3, int i3, long j4, int i4, boolean z, boolean z2, boolean z3, boolean z4, long j5) {
        dVar.d(13);
        addValidateOnOpenPageLimit(dVar, j4);
        addMaxDbSizeInKByte(dVar, j);
        addDebugFlags(dVar, j5);
        addMaxReaders(dVar, j3);
        addFileMode(dVar, j2);
        addModelBytes(dVar, i2);
        addDirectoryPath(dVar, i);
        addPutPaddingMode(dVar, i4);
        addValidateOnOpen(dVar, i3);
        addReadOnly(dVar, z4);
        addUsePreviousCommitOnValidationFailure(dVar, z3);
        addUsePreviousCommit(dVar, z2);
        addSkipReadSchema(dVar, z);
        return endFlatStoreOptions(dVar);
    }

    public static int createModelBytesVector(d dVar, ByteBuffer byteBuffer) {
        return dVar.a(byteBuffer);
    }

    public static int createModelBytesVector(d dVar, byte[] bArr) {
        return dVar.a(bArr);
    }

    public static int endFlatStoreOptions(d dVar) {
        return dVar.c();
    }

    public static void finishFlatStoreOptionsBuffer(d dVar, int i) {
        dVar.b(i, false);
    }

    public static void finishSizePrefixedFlatStoreOptionsBuffer(d dVar, int i) {
        dVar.b(i, true);
    }

    public static FlatStoreOptions getRootAsFlatStoreOptions(ByteBuffer byteBuffer) {
        return getRootAsFlatStoreOptions(byteBuffer, new FlatStoreOptions());
    }

    public static FlatStoreOptions getRootAsFlatStoreOptions(ByteBuffer byteBuffer, FlatStoreOptions flatStoreOptions) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return flatStoreOptions.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startFlatStoreOptions(d dVar) {
        dVar.d(13);
    }

    public static void startModelBytesVector(d dVar, int i) {
        dVar.a(1, i, 1);
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
            return this.bb.getInt(__offset + this.bb_pos) & 4294967295L;
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
            return this.bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public final long maxDbSizeInKByte() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return this.bb.getLong(__offset + this.bb_pos);
        }
        return 0L;
    }

    public final long maxReaders() {
        int __offset = __offset(12);
        if (__offset != 0) {
            return this.bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public final int modelBytes(int i) {
        int __offset = __offset(6);
        if (__offset != 0) {
            return this.bb.get(__vector(__offset) + (i * 1)) & 255;
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

    public final c modelBytesVector() {
        return modelBytesVector(new c());
    }

    public final c modelBytesVector(c cVar) {
        int __offset = __offset(6);
        if (__offset != 0) {
            return cVar.a(__vector(__offset), this.bb);
        }
        return null;
    }

    public final int putPaddingMode() {
        int __offset = __offset(18);
        if (__offset != 0) {
            return this.bb.getShort(__offset + this.bb_pos) & 65535;
        }
        return 0;
    }

    public final boolean readOnly() {
        int __offset = __offset(26);
        return (__offset == 0 || this.bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public final boolean skipReadSchema() {
        int __offset = __offset(20);
        return (__offset == 0 || this.bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public final boolean usePreviousCommit() {
        int __offset = __offset(22);
        return (__offset == 0 || this.bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public final boolean usePreviousCommitOnValidationFailure() {
        int __offset = __offset(24);
        return (__offset == 0 || this.bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public final int validateOnOpen() {
        int __offset = __offset(14);
        if (__offset != 0) {
            return this.bb.getShort(__offset + this.bb_pos) & 65535;
        }
        return 0;
    }

    public final long validateOnOpenPageLimit() {
        int __offset = __offset(16);
        if (__offset != 0) {
            return this.bb.getLong(__offset + this.bb_pos);
        }
        return 0L;
    }
}
