package com.linkedin.android.litr.f;

import android.media.MediaFormat;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/f/c.class */
public final class c implements a {
    @Override // com.linkedin.android.litr.f.a
    public /* synthetic */ int a(MediaFormat mediaFormat) {
        int integer;
        integer = mediaFormat.getInteger("sample-rate");
        return integer;
    }

    @Override // com.linkedin.android.litr.f.a
    public final void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        byteBuffer2.put(byteBuffer);
    }

    @Override // com.linkedin.android.litr.f.a
    public /* synthetic */ int b(MediaFormat mediaFormat) {
        int integer;
        integer = mediaFormat.getInteger("channel-count");
        return integer;
    }
}
