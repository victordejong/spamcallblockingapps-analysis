package io.objectbox.model;

import com.google.flatbuffers.C15935b;
import com.google.flatbuffers.C15937d;
import com.google.flatbuffers.C15943h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelRelation.class */
public final class ModelRelation extends C15943h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelRelation$Vector.class */
    public static final class Vector extends C15935b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final ModelRelation get(int i) {
            return get(new ModelRelation(), i);
        }

        public final ModelRelation get(ModelRelation modelRelation, int i) {
            return modelRelation.__assign(ModelRelation.__indirect(__element(i), this.f56570bb), this.f56570bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addId(C15937d c15937d, int i) {
        c15937d.m8012d(0, i);
    }

    public static void addName(C15937d c15937d, int i) {
        c15937d.m8015c(1, i);
    }

    public static void addTargetEntityId(C15937d c15937d, int i) {
        c15937d.m8012d(2, i);
    }

    public static int endModelRelation(C15937d c15937d) {
        return c15937d.m8017c();
    }

    public static ModelRelation getRootAsModelRelation(ByteBuffer byteBuffer) {
        return getRootAsModelRelation(byteBuffer, new ModelRelation());
    }

    public static ModelRelation getRootAsModelRelation(ByteBuffer byteBuffer, ModelRelation modelRelation) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return modelRelation.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startModelRelation(C15937d c15937d) {
        c15937d.m8013d(3);
    }

    public final ModelRelation __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public final void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    /* renamed from: id */
    public final IdUid m4645id() {
        return m4644id(new IdUid());
    }

    /* renamed from: id */
    public final IdUid m4644id(IdUid idUid) {
        int __offset = __offset(4);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
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

    public final IdUid targetEntityId() {
        return targetEntityId(new IdUid());
    }

    public final IdUid targetEntityId(IdUid idUid) {
        int __offset = __offset(8);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
    }
}
