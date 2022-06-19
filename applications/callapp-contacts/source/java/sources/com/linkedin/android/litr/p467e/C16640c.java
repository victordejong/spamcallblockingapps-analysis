package com.linkedin.android.litr.p467e;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import com.linkedin.android.litr.p460b.AbstractC16615b;
import com.linkedin.android.litr.p460b.C16616c;
import com.linkedin.android.litr.p468f.AbstractC16647a;
import com.linkedin.android.litr.p468f.C16648b;
import com.linkedin.android.litr.p468f.C16649c;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;
/* renamed from: com.linkedin.android.litr.e.c */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/e/c.class */
public final class C16640c implements AbstractC16641d {

    /* renamed from: a */
    static final long f58554a = TimeUnit.SECONDS.toMicros(0);

    /* renamed from: b */
    public final AbstractC16615b f58555b;

    /* renamed from: c */
    private final long f58556c;

    /* renamed from: d */
    private AbstractC16647a f58557d;

    /* renamed from: e */
    private MediaFormat f58558e;

    /* renamed from: f */
    private MediaFormat f58559f;

    public C16640c(AbstractC16615b abstractC16615b) {
        this(abstractC16615b, f58554a);
    }

    public C16640c(AbstractC16615b abstractC16615b, long j) {
        this.f58557d = new C16649c();
        this.f58555b = abstractC16615b;
        this.f58556c = j;
    }

    /* renamed from: b */
    private void m6835b() {
        MediaFormat mediaFormat = this.f58558e;
        if (mediaFormat == null || this.f58559f == null) {
            return;
        }
        if (this.f58557d.mo6826a(mediaFormat) > this.f58557d.mo6826a(this.f58559f)) {
            this.f58557d = new C16648b();
        } else {
            this.f58557d = new C16649c();
        }
    }

    @Override // com.linkedin.android.litr.p467e.AbstractC16641d
    /* renamed from: a */
    public final void mo6833a(MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        this.f58558e = mediaFormat;
        this.f58559f = mediaFormat2;
        m6835b();
    }

    @Override // com.linkedin.android.litr.p467e.AbstractC16641d
    /* renamed from: a */
    public final void mo6832a(Surface surface, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        mo6833a(mediaFormat, mediaFormat2);
    }

    @Override // com.linkedin.android.litr.p467e.AbstractC16641d
    /* renamed from: a */
    public final void mo6831a(C16616c c16616c, long j) {
        boolean z;
        boolean z2;
        if (c16616c == null || c16616c.f58466b == null) {
            Log.e("PassthroughSwRenderer", "Null or empty input frame provided");
            return;
        }
        ByteBuffer byteBuffer = null;
        boolean z3 = true;
        do {
            int mo6889a = this.f58555b.mo6889a(this.f58556c);
            z = false;
            if (mo6889a >= 0) {
                C16616c mo6890a = this.f58555b.mo6890a(mo6889a);
                if (mo6890a == null) {
                    Log.e("PassthroughSwRenderer", "No input frame returned by an encoder, dropping a frame");
                    return;
                }
                ByteBuffer byteBuffer2 = mo6890a.f58466b;
                z2 = z3;
                if (z3) {
                    byteBuffer = c16616c.f58466b.asReadOnlyBuffer();
                    byteBuffer.rewind();
                    z2 = false;
                }
                int remaining = byteBuffer2.remaining();
                int remaining2 = byteBuffer.remaining();
                int limit = byteBuffer.limit();
                if (remaining < remaining2) {
                    byteBuffer.limit(byteBuffer.position() + remaining);
                }
                this.f58557d.mo6825a(byteBuffer, byteBuffer2, this.f58558e, this.f58559f);
                byteBuffer.limit(limit);
                z = byteBuffer.hasRemaining();
                MediaCodec.BufferInfo bufferInfo = mo6890a.f58467c;
                bufferInfo.offset = 0;
                bufferInfo.size = byteBuffer2.position();
                bufferInfo.presentationTimeUs = TimeUnit.NANOSECONDS.toMicros(j);
                bufferInfo.flags = c16616c.f58467c.flags;
                this.f58555b.mo6887a(mo6890a);
            } else if (mo6889a != -1) {
                Log.e("PassthroughSwRenderer", "Unhandled value " + mo6889a + " when receiving decoded input frame");
                z2 = z3;
            } else {
                Log.e("PassthroughSwRenderer", "Encoder input frame timeout, dropping a frame");
                z2 = z3;
            }
            z3 = z2;
        } while (z);
    }

    @Override // com.linkedin.android.litr.p467e.AbstractC16641d
    /* renamed from: a */
    public final boolean mo6834a() {
        return false;
    }
}
