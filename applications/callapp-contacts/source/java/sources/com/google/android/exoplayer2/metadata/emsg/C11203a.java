package com.google.android.exoplayer2.metadata.emsg;

import com.google.android.exoplayer2.metadata.AbstractC11205f;
import com.google.android.exoplayer2.metadata.C11197c;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11628u;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.metadata.emsg.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/a.class */
public final class C11203a extends AbstractC11205f {
    @Override // com.google.android.exoplayer2.metadata.AbstractC11205f
    /* renamed from: a */
    public final Metadata mo21187a(C11197c c11197c, ByteBuffer byteBuffer) {
        C11628u c11628u = new C11628u(byteBuffer.array(), byteBuffer.limit());
        return new Metadata(new EventMessage((String) C11593a.m20020b(c11628u.m19784r()), (String) C11593a.m20020b(c11628u.m19784r()), c11628u.m19794h(), c11628u.m19794h(), Arrays.copyOfRange(c11628u.f38733a, c11628u.f38734b, c11628u.f38735c)));
    }
}
