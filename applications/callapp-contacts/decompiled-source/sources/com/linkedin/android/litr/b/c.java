package com.linkedin.android.litr.b;

import android.media.MediaCodec;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final int f33666a;

    /* renamed from: b  reason: collision with root package name */
    public final ByteBuffer f33667b;

    /* renamed from: c  reason: collision with root package name */
    public final MediaCodec.BufferInfo f33668c;

    public c(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        this.f33666a = i;
        this.f33667b = byteBuffer;
        if (bufferInfo == null) {
            this.f33668c = new MediaCodec.BufferInfo();
        } else {
            this.f33668c = bufferInfo;
        }
    }
}
