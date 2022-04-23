package com.google.android.exoplayer2.video.a;

import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/b.class */
public final class b extends e {

    /* renamed from: a  reason: collision with root package name */
    private final DecoderInputBuffer f22369a = new DecoderInputBuffer(1);

    /* renamed from: b  reason: collision with root package name */
    private final u f22370b = new u();

    /* renamed from: c  reason: collision with root package name */
    private long f22371c;

    /* renamed from: d  reason: collision with root package name */
    private a f22372d;
    private long e;

    public b() {
        super(6);
    }

    private void A() {
        a aVar = this.f22372d;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.google.android.exoplayer2.ag
    public final int a(Format format) {
        return "application/x-camera-motion".equals(format.sampleMimeType) ? 4 : 0;
    }

    @Override // com.google.android.exoplayer2.e, com.google.android.exoplayer2.ad.b
    public final void a(int i, Object obj) throws ExoPlaybackException {
        if (i == 7) {
            this.f22372d = (a) obj;
        } else {
            super.a(i, obj);
        }
    }

    @Override // com.google.android.exoplayer2.af
    public final void a(long j, long j2) {
        float[] fArr;
        while (!g() && this.e < 100000 + j) {
            this.f22369a.a();
            if (a(t(), this.f22369a, false) == -4 && !this.f22369a.c()) {
                this.e = this.f22369a.e;
                if (this.f22372d != null && !this.f22369a.E_()) {
                    this.f22369a.h();
                    ByteBuffer byteBuffer = (ByteBuffer) af.a(this.f22369a.f20822c);
                    if (byteBuffer.remaining() != 16) {
                        fArr = null;
                    } else {
                        this.f22370b.a(byteBuffer.array(), byteBuffer.limit());
                        this.f22370b.d(byteBuffer.arrayOffset() + 4);
                        fArr = new float[3];
                        for (int i = 0; i < 3; i++) {
                            fArr[i] = Float.intBitsToFloat(this.f22370b.k());
                        }
                    }
                    if (fArr != null) {
                        ((a) af.a(this.f22372d)).a(this.e - this.f22371c, fArr);
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.e
    public final void a(long j, boolean z) {
        this.e = Long.MIN_VALUE;
        A();
    }

    @Override // com.google.android.exoplayer2.e
    public final void a(Format[] formatArr, long j, long j2) {
        this.f22371c = j2;
    }

    @Override // com.google.android.exoplayer2.e
    public final void r() {
        A();
    }

    @Override // com.google.android.exoplayer2.af, com.google.android.exoplayer2.ag
    public final String x() {
        return "CameraMotionRenderer";
    }

    @Override // com.google.android.exoplayer2.af
    public final boolean y() {
        return true;
    }

    @Override // com.google.android.exoplayer2.af
    public final boolean z() {
        return g();
    }
}
