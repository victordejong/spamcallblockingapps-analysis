package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11612l;
import java.util.ArrayDeque;
/* renamed from: com.google.android.exoplayer2.mediacodec.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/c.class */
public final class C11181c extends MediaCodec.Callback {

    /* renamed from: b */
    final HandlerThread f36717b;

    /* renamed from: c */
    Handler f36718c;

    /* renamed from: d */
    boolean f36719d;

    /* renamed from: i */
    private MediaFormat f36724i;

    /* renamed from: j */
    private MediaFormat f36725j;

    /* renamed from: k */
    private MediaCodec.CodecException f36726k;

    /* renamed from: l */
    private long f36727l;

    /* renamed from: m */
    private IllegalStateException f36728m;

    /* renamed from: a */
    final Object f36716a = new Object();

    /* renamed from: e */
    private final C11612l f36720e = new C11612l();

    /* renamed from: f */
    private final C11612l f36721f = new C11612l();

    /* renamed from: g */
    private final ArrayDeque<MediaCodec.BufferInfo> f36722g = new ArrayDeque<>();

    /* renamed from: h */
    private final ArrayDeque<MediaFormat> f36723h = new ArrayDeque<>();

    public C11181c(HandlerThread handlerThread) {
        this.f36717b = handlerThread;
    }

    /* renamed from: a */
    private void m21266a(MediaFormat mediaFormat) {
        this.f36721f.m19876a(-2);
        this.f36723h.add(mediaFormat);
    }

    /* renamed from: a */
    private void m21265a(IllegalStateException illegalStateException) {
        synchronized (this.f36716a) {
            this.f36728m = illegalStateException;
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m21262b(Runnable runnable) {
        synchronized (this.f36716a) {
            if (!this.f36719d) {
                long j = this.f36727l - 1;
                this.f36727l = j;
                if (j <= 0) {
                    if (j < 0) {
                        m21265a(new IllegalStateException());
                    } else {
                        m21261c();
                        try {
                            try {
                                runnable.run();
                            } catch (IllegalStateException e) {
                                m21265a(e);
                            }
                        } catch (Exception e2) {
                            m21265a(new IllegalStateException(e2));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: d */
    private boolean m21260d() {
        return this.f36727l > 0 || this.f36719d;
    }

    /* renamed from: e */
    private void m21259e() {
        m21258f();
        m21257g();
    }

    /* renamed from: f */
    private void m21258f() {
        IllegalStateException illegalStateException = this.f36728m;
        if (illegalStateException == null) {
            return;
        }
        this.f36728m = null;
        throw illegalStateException;
    }

    /* renamed from: g */
    private void m21257g() {
        MediaCodec.CodecException codecException = this.f36726k;
        if (codecException == null) {
            return;
        }
        this.f36726k = null;
        throw codecException;
    }

    /* renamed from: a */
    public final int m21268a() {
        synchronized (this.f36716a) {
            int i = -1;
            if (m21260d()) {
                return -1;
            }
            m21259e();
            if (!this.f36720e.m19875b()) {
                i = this.f36720e.m19877a();
            }
            return i;
        }
    }

    /* renamed from: a */
    public final int m21267a(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f36716a) {
            if (m21260d()) {
                return -1;
            }
            m21259e();
            if (this.f36721f.m19875b()) {
                return -1;
            }
            int m19877a = this.f36721f.m19877a();
            if (m19877a >= 0) {
                C11593a.m20024a(this.f36724i);
                MediaCodec.BufferInfo remove = this.f36722g.remove();
                bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
            } else if (m19877a == -2) {
                this.f36724i = this.f36723h.remove();
            }
            return m19877a;
        }
    }

    /* renamed from: a */
    public final void m21264a(final Runnable runnable) {
        synchronized (this.f36716a) {
            this.f36727l++;
            ((Handler) C11599af.m19974a(this.f36718c)).post(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec._$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw
                @Override // java.lang.Runnable
                public final void run() {
                    C11181c.this.m21262b(runnable);
                }
            });
        }
    }

    /* renamed from: b */
    public final MediaFormat m21263b() {
        MediaFormat mediaFormat;
        synchronized (this.f36716a) {
            mediaFormat = this.f36724i;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    /* renamed from: c */
    public final void m21261c() {
        if (!this.f36723h.isEmpty()) {
            this.f36725j = this.f36723h.getLast();
        }
        this.f36720e.m19874c();
        this.f36721f.m19874c();
        this.f36722g.clear();
        this.f36723h.clear();
        this.f36726k = null;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f36716a) {
            this.f36726k = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.f36716a) {
            this.f36720e.m19876a(i);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f36716a) {
            MediaFormat mediaFormat = this.f36725j;
            if (mediaFormat != null) {
                m21266a(mediaFormat);
                this.f36725j = null;
            }
            this.f36721f.m19876a(i);
            this.f36722g.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f36716a) {
            m21266a(mediaFormat);
            this.f36725j = null;
        }
    }
}
