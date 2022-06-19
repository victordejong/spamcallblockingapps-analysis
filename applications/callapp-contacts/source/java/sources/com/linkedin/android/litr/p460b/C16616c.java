package com.linkedin.android.litr.p460b;

import android.media.MediaCodec;
import java.nio.ByteBuffer;
/* renamed from: com.linkedin.android.litr.b.c */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/c.class */
public final class C16616c {

    /* renamed from: a */
    public final int f58465a;

    /* renamed from: b */
    public final ByteBuffer f58466b;

    /* renamed from: c */
    public final MediaCodec.BufferInfo f58467c;

    public C16616c(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        this.f58465a = i;
        this.f58466b = byteBuffer;
        if (bufferInfo == null) {
            this.f58467c = new MediaCodec.BufferInfo();
        } else {
            this.f58467c = bufferInfo;
        }
    }
}
