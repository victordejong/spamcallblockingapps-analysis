package com.google.android.exoplayer2.metadata.emsg;

import com.google.android.exoplayer2.metadata.AbstractC5121b;
import com.google.android.exoplayer2.metadata.C5124d;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.metadata.emsg.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/a.class */
public final class C5127a implements AbstractC5121b {
    @Override // com.google.android.exoplayer2.metadata.AbstractC5121b
    /* renamed from: a */
    public Metadata mo20287a(C5124d c5124d) {
        ByteBuffer byteBuffer = (ByteBuffer) C5508e.m18911e(c5124d.f14775e);
        return new Metadata(m20383b(new C5536v(byteBuffer.array(), byteBuffer.limit())));
    }

    /* renamed from: b */
    public EventMessage m20383b(C5536v c5536v) {
        return new EventMessage((String) C5508e.m18911e(c5536v.m18659t()), (String) C5508e.m18911e(c5536v.m18659t()), c5536v.m18691B(), c5536v.m18691B(), Arrays.copyOfRange(c5536v.f17941a, c5536v.m18676c(), c5536v.m18675d()));
    }
}
