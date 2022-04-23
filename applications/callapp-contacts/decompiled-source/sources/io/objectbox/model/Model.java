package io.objectbox.model;

import com.google.flatbuffers.b;
import com.google.flatbuffers.c;
import com.google.flatbuffers.d;
import com.google.flatbuffers.h;
import io.objectbox.model.ModelEntity;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/Model.class */
public final class Model extends h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/Model$Vector.class */
    public static final class Vector extends b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final Model get(int i) {
            return get(new Model(), i);
        }

        public final Model get(Model model, int i) {
            return model.__assign(Model.__indirect(__element(i), this.bb), this.bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addEntities(d dVar, int i) {
        dVar.c(3, i);
    }

    public static void addHash(d dVar, int i) {
        dVar.c(8, i);
    }

    public static void addLastEntityId(d dVar, int i) {
        dVar.d(4, i);
    }

    public static void addLastIndexId(d dVar, int i) {
        dVar.d(5, i);
    }

    public static void addLastRelationId(d dVar, int i) {
        dVar.d(7, i);
    }

    public static void addLastSequenceId(d dVar, int i) {
        dVar.d(6, i);
    }

    public static void addModelVersion(d dVar, long j) {
        dVar.b(0, (int) j);
    }

    public static void addName(d dVar, int i) {
        dVar.c(1, i);
    }

    public static void addVersion(d dVar, long j) {
        dVar.a(2, j);
    }

    public static int createEntitiesVector(d dVar, int[] iArr) {
        dVar.a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            dVar.c(iArr[length]);
        }
        return dVar.b();
    }

    public static int createHashVector(d dVar, ByteBuffer byteBuffer) {
        return dVar.a(byteBuffer);
    }

    public static int createHashVector(d dVar, byte[] bArr) {
        return dVar.a(bArr);
    }

    public static int endModel(d dVar) {
        return dVar.c();
    }

    public static void finishModelBuffer(d dVar, int i) {
        dVar.b(i, false);
    }

    public static void finishSizePrefixedModelBuffer(d dVar, int i) {
        dVar.b(i, true);
    }

    public static Model getRootAsModel(ByteBuffer byteBuffer) {
        return getRootAsModel(byteBuffer, new Model());
    }

    public static Model getRootAsModel(ByteBuffer byteBuffer, Model model) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return model.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startEntitiesVector(d dVar, int i) {
        dVar.a(4, i, 4);
    }

    public static void startHashVector(d dVar, int i) {
        dVar.a(1, i, 1);
    }

    public static void startModel(d dVar) {
        dVar.d(9);
    }

    public final Model __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public final void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public final ModelEntity entities(int i) {
        return entities(new ModelEntity(), i);
    }

    public final ModelEntity entities(ModelEntity modelEntity, int i) {
        int __offset = __offset(10);
        if (__offset != 0) {
            return modelEntity.__assign(__indirect(__vector(__offset) + (i * 4)), this.bb);
        }
        return null;
    }

    public final int entitiesLength() {
        int __offset = __offset(10);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public final ModelEntity.Vector entitiesVector() {
        return entitiesVector(new ModelEntity.Vector());
    }

    public final ModelEntity.Vector entitiesVector(ModelEntity.Vector vector) {
        int __offset = __offset(10);
        if (__offset != 0) {
            return vector.__assign(__vector(__offset), 4, this.bb);
        }
        return null;
    }

    public final int hash(int i) {
        int __offset = __offset(20);
        if (__offset != 0) {
            return this.bb.get(__vector(__offset) + (i * 1)) & 255;
        }
        return 0;
    }

    public final ByteBuffer hashAsByteBuffer() {
        return __vector_as_bytebuffer(20, 1);
    }

    public final ByteBuffer hashInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 20, 1);
    }

    public final int hashLength() {
        int __offset = __offset(20);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public final c hashVector() {
        return hashVector(new c());
    }

    public final c hashVector(c cVar) {
        int __offset = __offset(20);
        if (__offset != 0) {
            return cVar.a(__vector(__offset), this.bb);
        }
        return null;
    }

    public final IdUid lastEntityId() {
        return lastEntityId(new IdUid());
    }

    public final IdUid lastEntityId(IdUid idUid) {
        int __offset = __offset(12);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.bb);
        }
        return null;
    }

    public final IdUid lastIndexId() {
        return lastIndexId(new IdUid());
    }

    public final IdUid lastIndexId(IdUid idUid) {
        int __offset = __offset(14);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.bb);
        }
        return null;
    }

    public final IdUid lastRelationId() {
        return lastRelationId(new IdUid());
    }

    public final IdUid lastRelationId(IdUid idUid) {
        int __offset = __offset(18);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.bb);
        }
        return null;
    }

    public final IdUid lastSequenceId() {
        return lastSequenceId(new IdUid());
    }

    public final IdUid lastSequenceId(IdUid idUid) {
        int __offset = __offset(16);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.bb);
        }
        return null;
    }

    public final long modelVersion() {
        int __offset = __offset(4);
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

    public final long version() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return this.bb.getLong(__offset + this.bb_pos);
        }
        return 0L;
    }
}
