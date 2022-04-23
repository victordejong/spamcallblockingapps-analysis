package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.mediacodec.a;
import com.google.android.exoplayer2.mediacodec.b;
import com.google.android.exoplayer2.mediacodec.f;
import com.google.android.exoplayer2.util.af;
import com.google.common.base.q;
import java.nio.ByteBuffer;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/a.class */
public final class a implements f {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f21404a;

    /* renamed from: b  reason: collision with root package name */
    private final c f21405b;

    /* renamed from: c  reason: collision with root package name */
    private final b f21406c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f21407d;
    private boolean e;
    private int f;

    /* renamed from: com.google.android.exoplayer2.mediacodec.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/a$a.class */
    public static final class C0432a implements f.a {

        /* renamed from: b  reason: collision with root package name */
        private final q<HandlerThread> f21408b;

        /* renamed from: c  reason: collision with root package name */
        private final q<HandlerThread> f21409c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f21410d;
        private final boolean e;

        public C0432a(int i) {
            this(i, false, false);
        }

        public C0432a(final int i, boolean z, boolean z2) {
            this(new q() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$a$a$CK5jCqFAIPbSoHemu_8OUH7SRj0
                @Override // com.google.common.base.q
                public final Object get() {
                    HandlerThread b2;
                    b2 = a.C0432a.b(i);
                    return b2;
                }
            }, new q() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$a$a$Zj8MWOsHAx8lVZiCf9diQ3NwE_g
                @Override // com.google.common.base.q
                public final Object get() {
                    HandlerThread a2;
                    a2 = a.C0432a.a(i);
                    return a2;
                }
            }, z, z2);
        }

        C0432a(q<HandlerThread> qVar, q<HandlerThread> qVar2, boolean z, boolean z2) {
            this.f21408b = qVar;
            this.f21409c = qVar2;
            this.f21410d = z;
            this.e = z2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread a(int i) {
            return new HandlerThread(a.a(i, "ExoPlayer:MediaCodecQueueingThread:"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread b(int i) {
            return new HandlerThread(a.a(i, "ExoPlayer:MediaCodecAsyncAdapter:"));
        }

        /* renamed from: a */
        public final a b(MediaCodec mediaCodec) {
            return new a(mediaCodec, this.f21408b.get(), this.f21409c.get(), this.f21410d, this.e);
        }
    }

    private a(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z, boolean z2) {
        this.f21404a = mediaCodec;
        this.f21405b = new c(handlerThread);
        this.f21406c = new b(mediaCodec, handlerThread2, z);
        this.f21407d = z2;
        this.f = 0;
    }

    static String a(int i, String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(f.b bVar, MediaCodec mediaCodec, long j, long j2) {
        bVar.a(j);
    }

    private void f() {
        if (this.f21407d) {
            try {
                this.f21406c.c();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final int a(MediaCodec.BufferInfo bufferInfo) {
        return this.f21405b.a(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final ByteBuffer a(int i) {
        return this.f21404a.getInputBuffer(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a() {
        final b bVar = this.f21406c;
        if (!bVar.f21414c) {
            bVar.f21412a.start();
            bVar.f21413b = new Handler(bVar.f21412a.getLooper()) { // from class: com.google.android.exoplayer2.mediacodec.b.1
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    b.a(bVar, message);
                }
            };
            bVar.f21414c = true;
        }
        this.f21404a.start();
        this.f = 2;
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(int i, int i2, long j, int i3) {
        b bVar = this.f21406c;
        bVar.b();
        b.a d2 = b.d();
        d2.a(i, 0, i2, j, i3);
        ((Handler) af.a(bVar.f21413b)).obtainMessage(0, d2).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(int i, long j) {
        this.f21404a.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(int i, com.google.android.exoplayer2.decoder.b bVar, long j) {
        b bVar2 = this.f21406c;
        bVar2.b();
        b.a d2 = b.d();
        d2.a(i, 0, 0, j, 0);
        b.a(bVar, d2.f21419d);
        ((Handler) af.a(bVar2.f21413b)).obtainMessage(1, d2).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(int i, boolean z) {
        this.f21404a.releaseOutputBuffer(i, z);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto) {
        c cVar = this.f21405b;
        MediaCodec mediaCodec = this.f21404a;
        com.google.android.exoplayer2.util.a.b(cVar.f21422c == null);
        cVar.f21421b.start();
        Handler handler = new Handler(cVar.f21421b.getLooper());
        mediaCodec.setCallback(cVar, handler);
        cVar.f21422c = handler;
        this.f21404a.configure(mediaFormat, surface, mediaCrypto, 0);
        this.f = 1;
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(Bundle bundle) {
        f();
        this.f21404a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(Surface surface) {
        f();
        this.f21404a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void a(final f.b bVar, Handler handler) {
        f();
        this.f21404a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                a.this.a(bVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final int b() {
        return this.f21405b.a();
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final ByteBuffer b(int i) {
        return this.f21404a.getOutputBuffer(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final MediaFormat c() {
        return this.f21405b.b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void c(int i) {
        f();
        this.f21404a.setVideoScalingMode(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void d() {
        this.f21406c.a();
        this.f21404a.flush();
        c cVar = this.f21405b;
        final MediaCodec mediaCodec = this.f21404a;
        Objects.requireNonNull(mediaCodec);
        cVar.a(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$eDpY_fTfY9aVkUSlR57RZPPXgr0
            @Override // java.lang.Runnable
            public final void run() {
                mediaCodec.start();
            }
        });
    }

    @Override // com.google.android.exoplayer2.mediacodec.f
    public final void e() {
        try {
            if (this.f == 2) {
                b bVar = this.f21406c;
                if (bVar.f21414c) {
                    bVar.a();
                    bVar.f21412a.quit();
                }
                bVar.f21414c = false;
            }
            int i = this.f;
            if (i == 1 || i == 2) {
                c cVar = this.f21405b;
                synchronized (cVar.f21420a) {
                    cVar.f21423d = true;
                    cVar.f21421b.quit();
                    cVar.c();
                }
            }
            this.f = 3;
            if (!this.e) {
                this.f21404a.release();
                this.e = true;
            }
        } catch (Throwable th) {
            if (!this.e) {
                this.f21404a.release();
                this.e = true;
            }
            throw th;
        }
    }
}
