package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.util.C11593a;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.metadata.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/f.class */
public abstract class AbstractC11205f implements AbstractC11194a {
    @Override // com.google.android.exoplayer2.metadata.AbstractC11194a
    /* renamed from: a */
    public final Metadata mo21206a(C11197c c11197c) {
        ByteBuffer byteBuffer = (ByteBuffer) C11593a.m20020b(c11197c.f35336c);
        C11593a.m20022a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (c11197c.m21920E_()) {
            return null;
        }
        return mo21187a(c11197c, byteBuffer);
    }

    /* renamed from: a */
    protected abstract Metadata mo21187a(C11197c c11197c, ByteBuffer byteBuffer);
}
