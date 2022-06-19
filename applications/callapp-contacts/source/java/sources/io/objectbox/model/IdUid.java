package io.objectbox.model;

import com.google.flatbuffers.C15935b;
import com.google.flatbuffers.C15937d;
import com.google.flatbuffers.C15942g;
import java.nio.ByteBuffer;
/* loaded from: classes5-dex2jar.jar:io/objectbox/model/IdUid.class */
public final class IdUid extends C15942g {

    /* loaded from: classes5-dex2jar.jar:io/objectbox/model/IdUid$Vector.class */
    public static final class Vector extends C15935b {
        public final Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public final IdUid get(int i) {
            return get(new IdUid(), i);
        }

        public final IdUid get(IdUid idUid, int i) {
            return idUid.__assign(__element(i), this.f56570bb);
        }
    }

    public static int createIdUid(C15937d c15937d, long j, long j2) {
        c15937d.m8032a(8, 16);
        c15937d.m8027a(j2);
        c15937d.m8033a(4);
        c15937d.m8020b((int) j);
        return c15937d.m8034a();
    }

    public final IdUid __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public final void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    /* renamed from: id */
    public final long m4650id() {
        return this.f56587bb.getInt(this.bb_pos + 0) & 4294967295L;
    }

    public final long uid() {
        return this.f56587bb.getLong(this.bb_pos + 8);
    }
}
