package io.objectbox.model;

import com.google.flatbuffers.C15935b;
import com.google.flatbuffers.C15937d;
import com.google.flatbuffers.C15943h;
import io.objectbox.model.ModelProperty;
import io.objectbox.model.ModelRelation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelEntity.class */
public final class ModelEntity extends C15943h {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/ModelEntity$Vector.class */
    public static final class Vector extends C15935b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final ModelEntity get(int i) {
            return get(new ModelEntity(), i);
        }

        public final ModelEntity get(ModelEntity modelEntity, int i) {
            return modelEntity.__assign(ModelEntity.__indirect(__element(i), this.f56570bb), this.f56570bb);
        }
    }

    public static void ValidateVersion() {
    }

    public static void addFlags(C15937d c15937d, long j) {
        c15937d.m8019b(5, (int) j);
    }

    public static void addId(C15937d c15937d, int i) {
        c15937d.m8012d(0, i);
    }

    public static void addLastPropertyId(C15937d c15937d, int i) {
        c15937d.m8012d(3, i);
    }

    public static void addName(C15937d c15937d, int i) {
        c15937d.m8015c(1, i);
    }

    public static void addNameSecondary(C15937d c15937d, int i) {
        c15937d.m8015c(6, i);
    }

    public static void addProperties(C15937d c15937d, int i) {
        c15937d.m8015c(2, i);
    }

    public static void addRelations(C15937d c15937d, int i) {
        c15937d.m8015c(4, i);
    }

    public static int createPropertiesVector(C15937d c15937d, int[] iArr) {
        c15937d.m8031a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            c15937d.m8016c(iArr[length]);
        }
        return c15937d.m8021b();
    }

    public static int createRelationsVector(C15937d c15937d, int[] iArr) {
        c15937d.m8031a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            c15937d.m8016c(iArr[length]);
        }
        return c15937d.m8021b();
    }

    public static int endModelEntity(C15937d c15937d) {
        return c15937d.m8017c();
    }

    public static ModelEntity getRootAsModelEntity(ByteBuffer byteBuffer) {
        return getRootAsModelEntity(byteBuffer, new ModelEntity());
    }

    public static ModelEntity getRootAsModelEntity(ByteBuffer byteBuffer, ModelEntity modelEntity) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return modelEntity.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public static void startModelEntity(C15937d c15937d) {
        c15937d.m8013d(7);
    }

    public static void startPropertiesVector(C15937d c15937d, int i) {
        c15937d.m8031a(4, i, 4);
    }

    public static void startRelationsVector(C15937d c15937d, int i) {
        c15937d.m8031a(4, i, 4);
    }

    public final ModelEntity __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public final void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public final long flags() {
        int __offset = __offset(14);
        if (__offset != 0) {
            return this.f56588bb.getInt(__offset + this.bb_pos) & 4294967295L;
        }
        return 0L;
    }

    /* renamed from: id */
    public final IdUid m4649id() {
        return m4648id(new IdUid());
    }

    /* renamed from: id */
    public final IdUid m4648id(IdUid idUid) {
        int __offset = __offset(4);
        if (__offset != 0) {
            return idUid.__assign(__offset + this.bb_pos, this.f56588bb);
        }
        return null;
    }

    public final IdUid lastPropertyId() {
        return lastPropertyId(new IdUid());
    }

    public final IdUid lastPropertyId(IdUid idUid) {
        int __offset = __offset(10);
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

    public final String nameSecondary() {
        int __offset = __offset(16);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public final ByteBuffer nameSecondaryAsByteBuffer() {
        return __vector_as_bytebuffer(16, 1);
    }

    public final ByteBuffer nameSecondaryInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 16, 1);
    }

    public final ModelProperty properties(int i) {
        return properties(new ModelProperty(), i);
    }

    public final ModelProperty properties(ModelProperty modelProperty, int i) {
        int __offset = __offset(8);
        if (__offset != 0) {
            return modelProperty.__assign(__indirect(__vector(__offset) + (i * 4)), this.f56588bb);
        }
        return null;
    }

    public final int propertiesLength() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public final ModelProperty.Vector propertiesVector() {
        return propertiesVector(new ModelProperty.Vector());
    }

    public final ModelProperty.Vector propertiesVector(ModelProperty.Vector vector) {
        int __offset = __offset(8);
        if (__offset != 0) {
            return vector.__assign(__vector(__offset), 4, this.f56588bb);
        }
        return null;
    }

    public final ModelRelation relations(int i) {
        return relations(new ModelRelation(), i);
    }

    public final ModelRelation relations(ModelRelation modelRelation, int i) {
        int __offset = __offset(12);
        if (__offset != 0) {
            return modelRelation.__assign(__indirect(__vector(__offset) + (i * 4)), this.f56588bb);
        }
        return null;
    }

    public final int relationsLength() {
        int __offset = __offset(12);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public final ModelRelation.Vector relationsVector() {
        return relationsVector(new ModelRelation.Vector());
    }

    public final ModelRelation.Vector relationsVector(ModelRelation.Vector vector) {
        int __offset = __offset(12);
        if (__offset != 0) {
            return vector.__assign(__vector(__offset), 4, this.f56588bb);
        }
        return null;
    }
}
