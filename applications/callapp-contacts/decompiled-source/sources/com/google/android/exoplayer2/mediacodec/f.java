package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.mediacodec.j;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/f.class */
public interface f {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/f$a.class */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f21427a = new j.a();

        f b(MediaCodec mediaCodec);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/f$b.class */
    public interface b {
        void a(long j);
    }

    int a(MediaCodec.BufferInfo bufferInfo);

    ByteBuffer a(int i);

    void a();

    void a(int i, int i2, long j, int i3);

    void a(int i, long j);

    void a(int i, com.google.android.exoplayer2.decoder.b bVar, long j);

    void a(int i, boolean z);

    void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto);

    void a(Bundle bundle);

    void a(Surface surface);

    void a(b bVar, Handler handler);

    int b();

    ByteBuffer b(int i);

    MediaFormat c();

    void c(int i);

    void d();

    void e();
}
