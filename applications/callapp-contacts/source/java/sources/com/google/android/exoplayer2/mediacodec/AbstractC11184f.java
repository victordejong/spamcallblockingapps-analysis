package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.decoder.C10930b;
import com.google.android.exoplayer2.mediacodec.C11190j;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.mediacodec.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/f.class */
public interface AbstractC11184f {

    /* renamed from: com.google.android.exoplayer2.mediacodec.f$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/f$a.class */
    public interface AbstractC11185a {

        /* renamed from: a */
        public static final AbstractC11185a f36735a = new C11190j.C11192a();

        /* renamed from: b */
        AbstractC11184f mo21216b(MediaCodec mediaCodec);
    }

    /* renamed from: com.google.android.exoplayer2.mediacodec.f$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/f$b.class */
    public interface AbstractC11186b {
        /* renamed from: a */
        void mo19680a(long j);
    }

    /* renamed from: a */
    int mo21228a(MediaCodec.BufferInfo bufferInfo);

    /* renamed from: a */
    ByteBuffer mo21233a(int i);

    /* renamed from: a */
    void mo21234a();

    /* renamed from: a */
    void mo21232a(int i, int i2, long j, int i3);

    /* renamed from: a */
    void mo21231a(int i, long j);

    /* renamed from: a */
    void mo21230a(int i, C10930b c10930b, long j);

    /* renamed from: a */
    void mo21229a(int i, boolean z);

    /* renamed from: a */
    void mo21227a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto);

    /* renamed from: a */
    void mo21226a(Bundle bundle);

    /* renamed from: a */
    void mo21225a(Surface surface);

    /* renamed from: a */
    void mo21223a(AbstractC11186b abstractC11186b, Handler handler);

    /* renamed from: b */
    int mo21222b();

    /* renamed from: b */
    ByteBuffer mo21221b(int i);

    /* renamed from: c */
    MediaFormat mo21220c();

    /* renamed from: c */
    void mo21219c(int i);

    /* renamed from: d */
    void mo21218d();

    /* renamed from: e */
    void mo21217e();
}
