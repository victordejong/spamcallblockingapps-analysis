package io.objectbox.model;

import com.google.flatbuffers.b;
import com.google.flatbuffers.d;
import com.google.flatbuffers.g;
import java.nio.ByteBuffer;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/IdUid.class */
public final class IdUid extends g {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/IdUid$Vector.class */
    public static final class Vector extends b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final IdUid get(int i) {
            return get(new IdUid(), i);
        }

        public final IdUid get(IdUid idUid, int i) {
            return idUid.__assign(__element(i), this.bb);
        }
    }

    public static int createIdUid(d dVar, long j, long j2) {
        dVar.a(8, 16);
        dVar.a(j2);
        dVar.a(4);
        dVar.b((int) j);
        return dVar.a();
    }

    public final IdUid __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public final void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public final long id() {
        return this.bb.getInt(this.bb_pos + 0) & 4294967295L;
    }

    public final long uid() {
        return this.bb.getLong(this.bb_pos + 8);
    }
}
