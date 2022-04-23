package com.linkedin.android.litr.e;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import com.linkedin.android.litr.b.b;
import com.linkedin.android.litr.f.a;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/c.class */
public final class c implements d {

    /* renamed from: a  reason: collision with root package name */
    static final long f33717a = TimeUnit.SECONDS.toMicros(0);

    /* renamed from: b  reason: collision with root package name */
    public final b f33718b;

    /* renamed from: c  reason: collision with root package name */
    private final long f33719c;

    /* renamed from: d  reason: collision with root package name */
    private a f33720d;
    private MediaFormat e;
    private MediaFormat f;

    public c(b bVar) {
        this(bVar, f33717a);
    }

    public c(b bVar, long j) {
        this.f33720d = new com.linkedin.android.litr.f.c();
        this.f33718b = bVar;
        this.f33719c = j;
    }

    private void b() {
        MediaFormat mediaFormat = this.e;
        if (mediaFormat != null && this.f != null) {
            if (this.f33720d.a(mediaFormat) > this.f33720d.a(this.f)) {
                this.f33720d = new com.linkedin.android.litr.f.b();
            } else {
                this.f33720d = new com.linkedin.android.litr.f.c();
            }
        }
    }

    @Override // com.linkedin.android.litr.e.d
    public final void a(MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        this.e = mediaFormat;
        this.f = mediaFormat2;
        b();
    }

    @Override // com.linkedin.android.litr.e.d
    public final void a(Surface surface, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        a(mediaFormat, mediaFormat2);
    }

    @Override // com.linkedin.android.litr.e.d
    public final void a(com.linkedin.android.litr.b.c cVar, long j) {
        boolean z;
        if (cVar == null || cVar.f33667b == null) {
            Log.e("PassthroughSwRenderer", "Null or empty input frame provided");
            return;
        }
        ByteBuffer byteBuffer = null;
        boolean z2 = true;
        do {
            int a2 = this.f33718b.a(this.f33719c);
            z = false;
            if (a2 >= 0) {
                com.linkedin.android.litr.b.c a3 = this.f33718b.a(a2);
                if (a3 == null) {
                    Log.e("PassthroughSwRenderer", "No input frame returned by an encoder, dropping a frame");
                    return;
                }
                ByteBuffer byteBuffer2 = a3.f33667b;
                z2 = z2;
                if (z2) {
                    byteBuffer = cVar.f33667b.asReadOnlyBuffer();
                    byteBuffer.rewind();
                    z2 = false;
                }
                int remaining = byteBuffer2.remaining();
                int remaining2 = byteBuffer.remaining();
                int limit = byteBuffer.limit();
                if (remaining < remaining2) {
                    byteBuffer.limit(byteBuffer.position() + remaining);
                }
                this.f33720d.a(byteBuffer, byteBuffer2, this.e, this.f);
                byteBuffer.limit(limit);
                z = byteBuffer.hasRemaining();
                MediaCodec.BufferInfo bufferInfo = a3.f33668c;
                bufferInfo.offset = 0;
                bufferInfo.size = byteBuffer2.position();
                bufferInfo.presentationTimeUs = TimeUnit.NANOSECONDS.toMicros(j);
                bufferInfo.flags = cVar.f33668c.flags;
                this.f33718b.a(a3);
            } else if (a2 != -1) {
                Log.e("PassthroughSwRenderer", "Unhandled value " + a2 + " when receiving decoded input frame");
                z2 = z2;
            } else {
                Log.e("PassthroughSwRenderer", "Encoder input frame timeout, dropping a frame");
                z2 = z2;
            }
        } while (z);
    }

    @Override // com.linkedin.android.litr.e.d
    public final boolean a() {
        return false;
    }
}
