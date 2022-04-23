package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.l;
import java.util.ArrayDeque;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/c.class */
final class c extends MediaCodec.Callback {

    /* renamed from: b  reason: collision with root package name */
    final HandlerThread f21421b;

    /* renamed from: c  reason: collision with root package name */
    Handler f21422c;

    /* renamed from: d  reason: collision with root package name */
    boolean f21423d;
    private MediaFormat i;
    private MediaFormat j;
    private MediaCodec.CodecException k;
    private long l;
    private IllegalStateException m;

    /* renamed from: a  reason: collision with root package name */
    final Object f21420a = new Object();
    private final l e = new l();
    private final l f = new l();
    private final ArrayDeque<MediaCodec.BufferInfo> g = new ArrayDeque<>();
    private final ArrayDeque<MediaFormat> h = new ArrayDeque<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(HandlerThread handlerThread) {
        this.f21421b = handlerThread;
    }

    private void a(MediaFormat mediaFormat) {
        this.f.a(-2);
        this.h.add(mediaFormat);
    }

    private void a(IllegalStateException illegalStateException) {
        synchronized (this.f21420a) {
            this.m = illegalStateException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Runnable runnable) {
        synchronized (this.f21420a) {
            if (!this.f21423d) {
                long j = this.l - 1;
                this.l = j;
                if (j <= 0) {
                    if (j < 0) {
                        a(new IllegalStateException());
                    } else {
                        c();
                        try {
                            try {
                                runnable.run();
                            } catch (IllegalStateException e) {
                                a(e);
                            }
                        } catch (Exception e2) {
                            a(new IllegalStateException(e2));
                        }
                    }
                }
            }
        }
    }

    private boolean d() {
        return this.l > 0 || this.f21423d;
    }

    private void e() {
        f();
        g();
    }

    private void f() {
        IllegalStateException illegalStateException = this.m;
        if (illegalStateException != null) {
            this.m = null;
            throw illegalStateException;
        }
    }

    private void g() {
        MediaCodec.CodecException codecException = this.k;
        if (codecException != null) {
            this.k = null;
            throw codecException;
        }
    }

    public final int a() {
        synchronized (this.f21420a) {
            int i = -1;
            if (d()) {
                return -1;
            }
            e();
            if (!this.e.b()) {
                i = this.e.a();
            }
            return i;
        }
    }

    public final int a(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f21420a) {
            if (d()) {
                return -1;
            }
            e();
            if (this.f.b()) {
                return -1;
            }
            int a2 = this.f.a();
            if (a2 >= 0) {
                a.a(this.i);
                MediaCodec.BufferInfo remove = this.g.remove();
                bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
            } else if (a2 == -2) {
                this.i = this.h.remove();
            }
            return a2;
        }
    }

    public final void a(final Runnable runnable) {
        synchronized (this.f21420a) {
            this.l++;
            ((Handler) af.a(this.f21422c)).post(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.b(runnable);
                }
            });
        }
    }

    public final MediaFormat b() {
        MediaFormat mediaFormat;
        synchronized (this.f21420a) {
            mediaFormat = this.i;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (!this.h.isEmpty()) {
            this.j = this.h.getLast();
        }
        this.e.c();
        this.f.c();
        this.g.clear();
        this.h.clear();
        this.k = null;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f21420a) {
            this.k = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.f21420a) {
            this.e.a(i);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f21420a) {
            MediaFormat mediaFormat = this.j;
            if (mediaFormat != null) {
                a(mediaFormat);
                this.j = null;
            }
            this.f.a(i);
            this.g.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f21420a) {
            a(mediaFormat);
            this.j = null;
        }
    }
}
