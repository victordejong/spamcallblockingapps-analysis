package io.objectbox.model;

import com.google.flatbuffers.b;
import com.google.flatbuffers.d;
import com.google.flatbuffers.h;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelRelation.class */
public final class ModelRelation extends h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelRelation$Vector.class */
    public static final class Vector extends b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final ModelRelation get(int i) {
            return get(new ModelRelation(), i);
        }

        public final ModelRelation get(ModelRelation modelRelation, int i) {
            return modelRelation.__assign(ModelRelation.__indirect(__element(i), this.bb), this.bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addId(d dVar, int i) {
        dVar.d(0, i);
    }

    public static void addName(d dVar, int i) {
        dVar.c(1, i);
    }

    public static void addTargetEntityId(d dVar, int i) {
        dVar.d(2, i);
    }

    public static int endModelRelation(d dVar) {
        return dVar.c();
    }

    public static ModelRelation getRootAsModelRelation(ByteBuffer byteBuffer) {
        return getRootAsModelRelation(byteBuffer, new ModelRelation());
    }

    public static ModelRelation getRootAsModelRelation(ByteBuffer byteBuffer, ModelRelation modelRelation) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return modelRelation.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startModelRelation(d dVar) {
        dVar.d(3);
    }

    public final ModelRelation __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public final void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
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
            return idUid.__assign(__offset + this.bb_pos, this.bb);
        }
        return null;
    }
}
