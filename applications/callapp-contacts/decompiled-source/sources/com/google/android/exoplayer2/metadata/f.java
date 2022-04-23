package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.util.a;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/f.class */
public abstract class f implements a {
    @Override // com.google.android.exoplayer2.metadata.a
    public final Metadata a(c cVar) {
        ByteBuffer byteBuffer = (ByteBuffer) a.b(cVar.f20822c);
        a.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (cVar.E_()) {
            return null;
        }
        return a(cVar, byteBuffer);
    }

    protected abstract Metadata a(c cVar, ByteBuffer byteBuffer);
}
