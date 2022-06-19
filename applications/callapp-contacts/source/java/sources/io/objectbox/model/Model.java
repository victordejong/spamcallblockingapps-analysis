package io.objectbox.model;

import com.google.flatbuffers.C15935b;
import com.google.flatbuffers.C15936c;
import com.google.flatbuffers.C15937d;
import com.google.flatbuffers.C15943h;
import io.objectbox.model.ModelEntity;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/Model.class */
public final class Model extends C15943h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/Model$Vector.class */
    public static final class Vector extends C15935b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final Model get(int i) {
            return get(new Model(), i);
        }

        public final Model get(Model model, int i) {
            return model.__assign(Model.__indirect(__element(i), this.f56570bb), this.f56570bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addEntities(C15937d c15937d, int i) {
        c15937d.m8015c(3, i);
    }

    public static void addHash(C15937d c15937d, int i) {
        c15937d.m8015c(8, i);
    }

    public static void addLastEntityId(C15937d c15937d, int i) {
        c15937d.m8012d(4, i);
    }

    public static void addLastIndexId(C15937d c15937d, int i) {
        c15937d.m8012d(5, i);
    }

    public static void addLastRelationId(C15937d c15937d, int i) {
        c15937d.m8012d(7, i);
    }

    public static void addLastSequenceId(C15937d c15937d, int i) {
        c15937d.m8012d(6, i);
    }

    public static void addModelVersion(C15937d c15937d, long j) {
        c15937d.m8019b(0, (int) j);
    }

    public static void addName(C15937d c15937d, int i) {
        c15937d.m8015c(1, i);
    }

    public static void addVersion(C15937d c15937d, long j) {
        c15937d.m8030a(2, j);
    }

    public static int createEntitiesVector(C15937d c15937d, int[] iArr) {
        c15937d.m8031a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            c15937d.m8016c(iArr[length]);
        }
        return c15937d.m8021b();
    }

    public static int createHashVector(C15937d c15937d, ByteBuffer byteBuffer) {
        return c15937d.m8025a(byteBuffer);
    }

    public static int createHashVector(C15937d c15937d, byte[] bArr) {
        return c15937d.m8023a(bArr);
    }

    public static int endModel(C15937d c15937d) {
        return c15937d.m8017c();
    }

    public static void finishModelBuffer(C15937d c15937d, int i) {
        c15937d.m8018b(i, false);
    }

    public static void finishSizePrefixedModelBuffer(C15937d c15937d, int i) {
        c15937d.m8018b(i, true);
    }

    public static Model getRootAsModel(ByteBuffer byteBuffer) {
        return getRootAsModel(byteBuffer, new Model());
    }

    public static Model getRootAsModel(ByteBuffer byteBuffer, Model model) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return model.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startEntitiesVector(C15937d c15937d, int i) {
        c15937d.m8031a(4, i, 4);
    }

    public static void startHashVector(C15937d c15937d, int i) {
        c15937d.m8031a(1, i, 1);
    }

    public static void startModel(C15937d c15937d) {
        c15937d.m8013d(9);
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
            return modelEntity.__assign(__indirect(__vector(__offset) + (i * 4)), this.f56588bb);
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
            return vector.__assign(__vector(__offset), 4, this.f56588bb);
        }
        return null;
    }

    public final int hash(int i) {
        int __offset = __offset(20);
        if (__offset != 0) {
            return this.f56588bb.get(__vector(__offset) + (i * 1)) & 255;
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

    public final C15936c hashVector() {
        return hashVector(new C15936c());
    }

    public final C15936c hashVector(C15936c c15936c) {
        int __offset = __offset(20);
        if (__offset != 0) {
            return c15936c.m8035a(__vector(__offset), this.f56588bb);
        }
        return null;
    }

    public final IdUid lastEntityId() {
        return lastEntityId(new IdUid());
    }

    public final IdUid lastEntityId(IdUid idUid) {
        int __offset = __offset(12);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
    }

    public final IdUid lastIndexId() {
        return lastIndexId(new IdUid());
    }

    public final IdUid lastIndexId(IdUid idUid) {
        int __offset = __offset(14);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
    }

    public final IdUid lastRelationId() {
        return lastRelationId(new IdUid());
    }

    public final IdUid lastRelationId(IdUid idUid) {
        int __offset = __offset(18);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
    }

    public final IdUid lastSequenceId() {
        return lastSequenceId(new IdUid());
    }

    public final IdUid lastSequenceId(IdUid idUid) {
        int __offset = __offset(16);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
    }

    public final long modelVersion() {
        int __offset = __offset(4);
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

    public final long version() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return this.f56588bb.getLong(__offset + this.bb_pos);
        }
        return 0L;
    }
}
