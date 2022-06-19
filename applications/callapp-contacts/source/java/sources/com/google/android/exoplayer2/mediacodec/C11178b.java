package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.google.android.exoplayer2.decoder.C10930b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11606f;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.mediacodec.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/b.class */
public final class C11178b {

    /* renamed from: d */
    private static final ArrayDeque<C11180a> f36700d = new ArrayDeque<>();

    /* renamed from: e */
    private static final Object f36701e = new Object();

    /* renamed from: a */
    final HandlerThread f36702a;

    /* renamed from: b */
    Handler f36703b;

    /* renamed from: c */
    boolean f36704c;

    /* renamed from: f */
    private final MediaCodec f36705f;

    /* renamed from: g */
    private final AtomicReference<RuntimeException> f36706g;

    /* renamed from: h */
    private final C11606f f36707h;

    /* renamed from: i */
    private final boolean f36708i;

    /* renamed from: com.google.android.exoplayer2.mediacodec.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/b$a.class */
    public static final class C11180a {

        /* renamed from: a */
        public int f36710a;

        /* renamed from: b */
        public int f36711b;

        /* renamed from: c */
        public int f36712c;

        /* renamed from: d */
        public final MediaCodec.CryptoInfo f36713d = new MediaCodec.CryptoInfo();

        /* renamed from: e */
        public long f36714e;

        /* renamed from: f */
        public int f36715f;

        C11180a() {
        }

        /* renamed from: a */
        public final void m21269a(int i, int i2, int i3, long j, int i4) {
            this.f36710a = i;
            this.f36711b = 0;
            this.f36712c = i3;
            this.f36714e = j;
            this.f36715f = i4;
        }
    }

    public C11178b(MediaCodec mediaCodec, HandlerThread handlerThread, boolean z) {
        this(mediaCodec, handlerThread, z, new C11606f());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0050, code lost:
        if ((r0.contains("samsung") || r0.contains("motorola")) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    C11178b(android.media.MediaCodec r5, android.os.HandlerThread r6, boolean r7, com.google.android.exoplayer2.util.C11606f r8) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f36705f = r1
            r0 = r4
            r1 = r6
            r0.f36702a = r1
            r0 = r4
            r1 = r8
            r0.f36707h = r1
            r0 = r4
            java.util.concurrent.atomic.AtomicReference r1 = new java.util.concurrent.atomic.AtomicReference
            r2 = r1
            r2.<init>()
            r0.f36706g = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L53
            java.lang.String r0 = com.google.android.exoplayer2.util.C11599af.f38650c
            java.lang.String r0 = com.google.android.exoplayer2.util.C11599af.m19927d(r0)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "samsung"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L48
            r0 = r5
            java.lang.String r1 = "motorola"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L42
            goto L48
        L42:
            r0 = 0
            r10 = r0
            goto L4b
        L48:
            r0 = 1
            r10 = r0
        L4b:
            r0 = r9
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L55
        L53:
            r0 = 1
            r7 = r0
        L55:
            r0 = r4
            r1 = r7
            r0.f36708i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.C11178b.<init>(android.media.MediaCodec, android.os.HandlerThread, boolean, com.google.android.exoplayer2.util.f):void");
    }

    /* renamed from: a */
    public static void m21278a(C10930b c10930b, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = c10930b.f35350f;
        cryptoInfo.numBytesOfClearData = m21274a(c10930b.f35348d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = m21274a(c10930b.f35349e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) C11593a.m20020b(m21275a(c10930b.f35346b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) C11593a.m20020b(m21275a(c10930b.f35345a, cryptoInfo.iv));
        cryptoInfo.mode = c10930b.f35347c;
        if (C11599af.f38648a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(c10930b.f35351g, c10930b.f35352h));
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m21277a(C11178b c11178b, Message message) {
        int i = message.what;
        if (i == 0) {
            C11180a c11180a = (C11180a) message.obj;
            try {
                c11178b.f36705f.queueInputBuffer(c11180a.f36710a, c11180a.f36711b, c11180a.f36712c, c11180a.f36714e, c11180a.f36715f);
                c11178b = c11180a;
            } catch (RuntimeException e) {
                c11178b.m21276a(e);
                c11178b = c11180a;
            }
        } else if (i != 1) {
            if (i != 2) {
                c11178b.m21276a(new IllegalStateException(String.valueOf(message.what)));
            } else {
                c11178b.f36707h.m19898a();
            }
            c11178b = null;
        } else {
            C11180a c11180a2 = (C11180a) message.obj;
            int i2 = c11180a2.f36710a;
            int i3 = c11180a2.f36711b;
            MediaCodec.CryptoInfo cryptoInfo = c11180a2.f36713d;
            long j = c11180a2.f36714e;
            int i4 = c11180a2.f36715f;
            try {
                if (c11178b.f36708i) {
                    synchronized (f36701e) {
                        c11178b.f36705f.queueSecureInputBuffer(i2, i3, cryptoInfo, j, i4);
                    }
                    c11178b = c11180a2;
                } else {
                    c11178b.f36705f.queueSecureInputBuffer(i2, i3, cryptoInfo, j, i4);
                    c11178b = c11180a2;
                }
            } catch (RuntimeException e2) {
                c11178b.m21276a(e2);
                c11178b = c11180a2;
            }
        }
        if (c11178b != null) {
            ArrayDeque<C11180a> arrayDeque = f36700d;
            synchronized (arrayDeque) {
                arrayDeque.add(c11178b);
            }
        }
    }

    /* renamed from: a */
    private void m21276a(RuntimeException runtimeException) {
        this.f36706g.set(runtimeException);
    }

    /* renamed from: a */
    private static byte[] m21275a(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: a */
    private static int[] m21274a(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* renamed from: d */
    public static C11180a m21271d() {
        ArrayDeque<C11180a> arrayDeque = f36700d;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new C11180a();
            }
            return arrayDeque.removeFirst();
        }
    }

    /* renamed from: e */
    private void m21270e() throws InterruptedException {
        ((Handler) C11599af.m19974a(this.f36703b)).removeCallbacksAndMessages(null);
        m21272c();
        m21273b();
    }

    /* renamed from: a */
    public final void m21279a() {
        if (this.f36704c) {
            try {
                m21270e();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    /* renamed from: b */
    public final void m21273b() {
        RuntimeException andSet = this.f36706g.getAndSet(null);
        if (andSet == null) {
            return;
        }
        throw andSet;
    }

    /* renamed from: c */
    public final void m21272c() throws InterruptedException {
        this.f36707h.m19897b();
        ((Handler) C11599af.m19974a(this.f36703b)).obtainMessage(2).sendToTarget();
        this.f36707h.m19896c();
    }
}
