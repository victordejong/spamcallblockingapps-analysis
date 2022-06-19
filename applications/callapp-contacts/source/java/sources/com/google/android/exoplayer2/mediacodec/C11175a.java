package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.decoder.C10930b;
import com.google.android.exoplayer2.mediacodec.AbstractC11184f;
import com.google.android.exoplayer2.mediacodec.C11175a;
import com.google.android.exoplayer2.mediacodec.C11178b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.base.AbstractC15399q;
import java.nio.ByteBuffer;
import java.util.Objects;
/* renamed from: com.google.android.exoplayer2.mediacodec.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/a.class */
public final class C11175a implements AbstractC11184f {

    /* renamed from: a */
    private final MediaCodec f36690a;

    /* renamed from: b */
    private final C11181c f36691b;

    /* renamed from: c */
    private final C11178b f36692c;

    /* renamed from: d */
    private final boolean f36693d;

    /* renamed from: e */
    private boolean f36694e;

    /* renamed from: f */
    private int f36695f;

    /* renamed from: com.google.android.exoplayer2.mediacodec.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/a$a.class */
    public static final class C11177a implements AbstractC11184f.AbstractC11185a {

        /* renamed from: b */
        private final AbstractC15399q<HandlerThread> f36696b;

        /* renamed from: c */
        private final AbstractC15399q<HandlerThread> f36697c;

        /* renamed from: d */
        private final boolean f36698d;

        /* renamed from: e */
        private final boolean f36699e;

        public C11177a(int i) {
            this(i, false, false);
        }

        public C11177a(final int i, boolean z, boolean z2) {
            this(new AbstractC15399q() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$a$a$CK5jCqFAIPbSoHemu_8OUH7SRj0
                @Override // com.google.common.base.AbstractC15399q
                public final Object get() {
                    HandlerThread m21280b;
                    m21280b = C11175a.C11177a.m21280b(i);
                    return m21280b;
                }
            }, new AbstractC15399q() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$a$a$Zj8MWOsHAx8lVZiCf9diQ3NwE_g
                @Override // com.google.common.base.AbstractC15399q
                public final Object get() {
                    HandlerThread m21282a;
                    m21282a = C11175a.C11177a.m21282a(i);
                    return m21282a;
                }
            }, z, z2);
        }

        C11177a(AbstractC15399q<HandlerThread> abstractC15399q, AbstractC15399q<HandlerThread> abstractC15399q2, boolean z, boolean z2) {
            this.f36696b = abstractC15399q;
            this.f36697c = abstractC15399q2;
            this.f36698d = z;
            this.f36699e = z2;
        }

        /* renamed from: a */
        public static /* synthetic */ HandlerThread m21282a(int i) {
            return new HandlerThread(C11175a.m21285a(i, "ExoPlayer:MediaCodecQueueingThread:"));
        }

        /* renamed from: b */
        public static /* synthetic */ HandlerThread m21280b(int i) {
            return new HandlerThread(C11175a.m21285a(i, "ExoPlayer:MediaCodecAsyncAdapter:"));
        }

        /* renamed from: a */
        public final C11175a mo21216b(MediaCodec mediaCodec) {
            return new C11175a(mediaCodec, this.f36696b.get(), this.f36697c.get(), this.f36698d, this.f36699e);
        }
    }

    private C11175a(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z, boolean z2) {
        this.f36690a = mediaCodec;
        this.f36691b = new C11181c(handlerThread);
        this.f36692c = new C11178b(mediaCodec, handlerThread2, z);
        this.f36693d = z2;
        this.f36695f = 0;
    }

    /* renamed from: a */
    static String m21285a(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    /* renamed from: a */
    public /* synthetic */ void m21284a(AbstractC11184f.AbstractC11186b abstractC11186b, MediaCodec mediaCodec, long j, long j2) {
        abstractC11186b.mo19680a(j);
    }

    /* renamed from: f */
    private void m21283f() {
        if (this.f36693d) {
            try {
                this.f36692c.m21272c();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final int mo21228a(MediaCodec.BufferInfo bufferInfo) {
        return this.f36691b.m21267a(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final ByteBuffer mo21233a(int i) {
        return this.f36690a.getInputBuffer(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21234a() {
        final C11178b c11178b = this.f36692c;
        if (!c11178b.f36704c) {
            c11178b.f36702a.start();
            c11178b.f36703b = new Handler(c11178b.f36702a.getLooper()) { // from class: com.google.android.exoplayer2.mediacodec.b.1
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    C11178b.m21277a(c11178b, message);
                }
            };
            c11178b.f36704c = true;
        }
        this.f36690a.start();
        this.f36695f = 2;
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21232a(int i, int i2, long j, int i3) {
        C11178b c11178b = this.f36692c;
        c11178b.m21273b();
        C11178b.C11180a m21271d = C11178b.m21271d();
        m21271d.m21269a(i, 0, i2, j, i3);
        ((Handler) C11599af.m19974a(c11178b.f36703b)).obtainMessage(0, m21271d).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21231a(int i, long j) {
        this.f36690a.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21230a(int i, C10930b c10930b, long j) {
        C11178b c11178b = this.f36692c;
        c11178b.m21273b();
        C11178b.C11180a m21271d = C11178b.m21271d();
        m21271d.m21269a(i, 0, 0, j, 0);
        C11178b.m21278a(c10930b, m21271d.f36713d);
        ((Handler) C11599af.m19974a(c11178b.f36703b)).obtainMessage(1, m21271d).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21229a(int i, boolean z) {
        this.f36690a.releaseOutputBuffer(i, z);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21227a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto) {
        C11181c c11181c = this.f36691b;
        MediaCodec mediaCodec = this.f36690a;
        C11593a.m20019b(c11181c.f36718c == null);
        c11181c.f36717b.start();
        Handler handler = new Handler(c11181c.f36717b.getLooper());
        mediaCodec.setCallback(c11181c, handler);
        c11181c.f36718c = handler;
        this.f36690a.configure(mediaFormat, surface, mediaCrypto, 0);
        this.f36695f = 1;
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21226a(Bundle bundle) {
        m21283f();
        this.f36690a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21225a(Surface surface) {
        m21283f();
        this.f36690a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: a */
    public final void mo21223a(final AbstractC11184f.AbstractC11186b abstractC11186b, Handler handler) {
        m21283f();
        this.f36690a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                C11175a.this.m21284a(abstractC11186b, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: b */
    public final int mo21222b() {
        return this.f36691b.m21268a();
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: b */
    public final ByteBuffer mo21221b(int i) {
        return this.f36690a.getOutputBuffer(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: c */
    public final MediaFormat mo21220c() {
        return this.f36691b.m21263b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: c */
    public final void mo21219c(int i) {
        m21283f();
        this.f36690a.setVideoScalingMode(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: d */
    public final void mo21218d() {
        this.f36692c.m21279a();
        this.f36690a.flush();
        C11181c c11181c = this.f36691b;
        final MediaCodec mediaCodec = this.f36690a;
        Objects.requireNonNull(mediaCodec);
        c11181c.m21264a(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$eDpY_fTfY9aVkUSlR57RZPPXgr0
            @Override // java.lang.Runnable
            public final void run() {
                mediaCodec.start();
            }
        });
    }

    @Override // com.google.android.exoplayer2.mediacodec.AbstractC11184f
    /* renamed from: e */
    public final void mo21217e() {
        try {
            if (this.f36695f == 2) {
                C11178b c11178b = this.f36692c;
                if (c11178b.f36704c) {
                    c11178b.m21279a();
                    c11178b.f36702a.quit();
                }
                c11178b.f36704c = false;
            }
            int i = this.f36695f;
            if (i == 1 || i == 2) {
                C11181c c11181c = this.f36691b;
                synchronized (c11181c.f36716a) {
                    c11181c.f36719d = true;
                    c11181c.f36717b.quit();
                    c11181c.m21261c();
                }
            }
            this.f36695f = 3;
            if (this.f36694e) {
                return;
            }
            this.f36690a.release();
            this.f36694e = true;
        } catch (Throwable th) {
            if (!this.f36694e) {
                this.f36690a.release();
                this.f36694e = true;
            }
            throw th;
        }
    }
}
