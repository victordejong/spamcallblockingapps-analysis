package io.objectbox.model;

import com.google.flatbuffers.C15935b;
import com.google.flatbuffers.C15937d;
import com.google.flatbuffers.C15943h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelProperty.class */
public final class ModelProperty extends C15943h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelProperty$Vector.class */
    public static final class Vector extends C15935b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final ModelProperty get(int i) {
            return get(new ModelProperty(), i);
        }

        public final ModelProperty get(ModelProperty modelProperty, int i) {
            return modelProperty.__assign(ModelProperty.__indirect(__element(i), this.f56570bb), this.f56570bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addFlags(C15937d c15937d, long j) {
        c15937d.m8019b(3, (int) j);
    }

    public static void addId(C15937d c15937d, int i) {
        c15937d.m8012d(0, i);
    }

    public static void addIndexId(C15937d c15937d, int i) {
        c15937d.m8012d(4, i);
    }

    public static void addMaxIndexValueLength(C15937d c15937d, long j) {
        c15937d.m8019b(8, (int) j);
    }

    public static void addName(C15937d c15937d, int i) {
        c15937d.m8015c(1, i);
    }

    public static void addNameSecondary(C15937d c15937d, int i) {
        c15937d.m8015c(7, i);
    }

    public static void addTargetEntity(C15937d c15937d, int i) {
        c15937d.m8015c(5, i);
    }

    public static void addType(C15937d c15937d, int i) {
        c15937d.m8029a(2, (short) i);
    }

    public static void addVirtualTarget(C15937d c15937d, int i) {
        c15937d.m8015c(6, i);
    }

    public static int endModelProperty(C15937d c15937d) {
        return c15937d.m8017c();
    }

    public static ModelProperty getRootAsModelProperty(ByteBuffer byteBuffer) {
        return getRootAsModelProperty(byteBuffer, new ModelProperty());
    }

    public static ModelProperty getRootAsModelProperty(ByteBuffer byteBuffer, ModelProperty modelProperty) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return modelProperty.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startModelProperty(C15937d c15937d) {
        c15937d.m8013d(9);
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
            return this.f56588bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    /* renamed from: id */
    public final IdUid m4647id() {
        return m4646id(new IdUid());
    }

    /* renamed from: id */
    public final IdUid m4646id(IdUid idUid) {
        int __offset = __offset(4);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
    }

    public final IdUid indexId() {
        return indexId(new IdUid());
    }

    public final IdUid indexId(IdUid idUid) {
        int __offset = __offset(12);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
    }

    public final long maxIndexValueLength() {
        int __offset = __offset(20);
        if (__offset != 0) {
            return this.f56588bb.getInt(__offset + this.bb_pos) & 4294967295L;
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
            return this.f56588bb.getShort(__offset + this.bb_pos) & 65535;
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
