package io.objectbox.model;

import com.google.flatbuffers.b;
import com.google.flatbuffers.d;
import com.google.flatbuffers.h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelProperty.class */
public final class ModelProperty extends h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelProperty$Vector.class */
    public static final class Vector extends b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final ModelProperty get(int i) {
            return get(new ModelProperty(), i);
        }

        public final ModelProperty get(ModelProperty modelProperty, int i) {
            return modelProperty.__assign(ModelProperty.__indirect(__element(i), this.bb), this.bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addFlags(d dVar, long j) {
        dVar.b(3, (int) j);
    }

    public static void addId(d dVar, int i) {
        dVar.d(0, i);
    }

    public static void addIndexId(d dVar, int i) {
        dVar.d(4, i);
    }

    public static void addMaxIndexValueLength(d dVar, long j) {
        dVar.b(8, (int) j);
    }

    public static void addName(d dVar, int i) {
        dVar.c(1, i);
    }

    public static void addNameSecondary(d dVar, int i) {
        dVar.c(7, i);
    }

    public static void addTargetEntity(d dVar, int i) {
        dVar.c(5, i);
    }

    public static void addType(d dVar, int i) {
        dVar.a(2, (short) i);
    }

    public static void addVirtualTarget(d dVar, int i) {
        dVar.c(6, i);
    }

    public static int endModelProperty(d dVar) {
        return dVar.c();
    }

    public static ModelProperty getRootAsModelProperty(ByteBuffer byteBuffer) {
        return getRootAsModelProperty(byteBuffer, new ModelProperty());
    }

    public static ModelProperty getRootAsModelProperty(ByteBuffer byteBuffer, ModelProperty modelProperty) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return modelProperty.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startModelProperty(d dVar) {
        dVar.d(9);
    }

    public final ModelProperty __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public final void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public final long flags() {
        int __offset = __offset(10);
        if (__offset != 0) {
            return this.bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public final IdUid id() {
        return id(new IdUid());
    }

    public final IdUid id(IdUid idUid) {
        int __offset = __offset(4);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.bb);
        }
        return null;
    }

    public final IdUid indexId() {
        return indexId(new IdUid());
    }

    public final IdUid indexId(IdUid idUid) {
        int __offset = __offset(12);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.bb);
        }
        return null;
    }

    public final long maxIndexValueLength() {
        int __offset = __offset(20);
        if (__offset != 0) {
            return this.bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    public final String name() {
        int __offset = __offset(6);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public final ByteBuffer nameAsByteBuffer() {
        return __vector_as_bytebuffer(6, 1);
    }

    public final ByteBuffer nameInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 6, 1);
    }

    public final String nameSecondary() {
        int __offset = __offset(18);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public final ByteBuffer nameSecondaryAsByteBuffer() {
        return __vector_as_bytebuffer(18, 1);
    }

    public final ByteBuffer nameSecondaryInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 18, 1);
    }

    public final String targetEntity() {
        int __offset = __offset(14);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public final ByteBuffer targetEntityAsByteBuffer() {
        return __vector_as_bytebuffer(14, 1);
    }

    public final ByteBuffer targetEntityInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 14, 1);
    }

    public final int type() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return this.bb.getShort(__offset + this.bb_pos) & 65535;
        }
        return 0;
    }

    public final String virtualTarget() {
        int __offset = __offset(16);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public final ByteBuffer virtualTargetAsByteBuffer() {
        return __vector_as_bytebuffer(16, 1);
    }

    public final ByteBuffer virtualTargetInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 16, 1);
    }
}
