package com.google.android.exoplayer2.metadata.emsg;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.c;
import com.google.android.exoplayer2.metadata.f;
import com.google.android.exoplayer2.util.u;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/a.class */
public final class a extends f {
    @Override // com.google.android.exoplayer2.metadata.f
    public final Metadata a(c cVar, ByteBuffer byteBuffer) {
        u uVar = new u(byteBuffer.array(), byteBuffer.limit());
        return new Metadata(new EventMessage((String) com.google.android.exoplayer2.util.a.b(uVar.r()), (String) com.google.android.exoplayer2.util.a.b(uVar.r()), uVar.h(), uVar.h(), Arrays.copyOfRange(uVar.f22335a, uVar.f22336b, uVar.f22337c)));
    }
}
