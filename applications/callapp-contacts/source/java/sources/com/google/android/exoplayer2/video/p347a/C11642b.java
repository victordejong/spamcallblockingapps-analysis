package com.google.android.exoplayer2.video.p347a;

import com.google.android.exoplayer2.AbstractC10976e;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.video.a.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/a/b.class */
public final class C11642b extends AbstractC10976e {

    /* renamed from: a */
    private final DecoderInputBuffer f38780a = new DecoderInputBuffer(1);

    /* renamed from: b */
    private final C11628u f38781b = new C11628u();

    /* renamed from: c */
    private long f38782c;

    /* renamed from: d */
    private AbstractC11641a f38783d;

    /* renamed from: e */
    private long f38784e;

    public C11642b() {
        super(6);
    }

    /* renamed from: A */
    private void m19750A() {
        AbstractC11641a abstractC11641a = this.f38783d;
        if (abstractC11641a != null) {
            abstractC11641a.mo19751b();
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: a */
    public final int mo19748a(Format format) {
        return "application/x-camera-motion".equals(format.sampleMimeType) ? 4 : 0;
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e, com.google.android.exoplayer2.C10847ad.AbstractC10849b
    /* renamed from: a */
    public final void mo19719a(int i, Object obj) throws ExoPlaybackException {
        if (i == 7) {
            this.f38783d = (AbstractC11641a) obj;
        } else {
            super.mo19719a(i, obj);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public final void mo19749a(long j, long j2) {
        float[] fArr;
        while (!mo21799g() && this.f38784e < 100000 + j) {
            this.f38780a.mo20663a();
            if (m21808a(m21791t(), this.f38780a, false) != -4 || this.f38780a.m21917c()) {
                return;
            }
            this.f38784e = this.f38780a.f35338e;
            if (this.f38783d != null && !this.f38780a.m21920E_()) {
                this.f38780a.m21921h();
                ByteBuffer byteBuffer = (ByteBuffer) C11599af.m19974a(this.f38780a.f35336c);
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    this.f38781b.m19808a(byteBuffer.array(), byteBuffer.limit());
                    this.f38781b.m19801d(byteBuffer.arrayOffset() + 4);
                    fArr = new float[3];
                    for (int i = 0; i < 3; i++) {
                        fArr[i] = Float.intBitsToFloat(this.f38781b.m19791k());
                    }
                }
                if (fArr != null) {
                    ((AbstractC11641a) C11599af.m19974a(this.f38783d)).mo19752a(this.f38784e - this.f38782c, fArr);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19716a(long j, boolean z) {
        this.f38784e = Long.MIN_VALUE;
        m19750A();
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19747a(Format[] formatArr, long j, long j2) {
        this.f38782c = j2;
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: r */
    public final void mo19684r() {
        m19750A();
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af, com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: x */
    public final String mo19682x() {
        return "CameraMotionRenderer";
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: y */
    public final boolean mo19681y() {
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: z */
    public final boolean mo19746z() {
        return mo21799g();
    }
}
