package com.linkedin.android.litr.d;

import android.media.MediaCodec;
import android.media.MediaFormat;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d/e.class */
public interface e {
    int a(MediaFormat mediaFormat, int i);

    void a();

    void a(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo);

    String b();
}
