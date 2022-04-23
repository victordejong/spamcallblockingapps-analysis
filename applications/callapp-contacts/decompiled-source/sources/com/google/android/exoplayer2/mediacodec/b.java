package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.f;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/b.class */
final class b {

    /* renamed from: d  reason: collision with root package name */
    private static final ArrayDeque<a> f21411d = new ArrayDeque<>();
    private static final Object e = new Object();

    /* renamed from: a  reason: collision with root package name */
    final HandlerThread f21412a;

    /* renamed from: b  reason: collision with root package name */
    Handler f21413b;

    /* renamed from: c  reason: collision with root package name */
    boolean f21414c;
    private final MediaCodec f;
    private final AtomicReference<RuntimeException> g;
    private final f h;
    private final boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/mediacodec/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f21416a;

        /* renamed from: b  reason: collision with root package name */
        public int f21417b;

        /* renamed from: c  reason: collision with root package name */
        public int f21418c;

        /* renamed from: d  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f21419d = new MediaCodec.CryptoInfo();
        public long e;
        public int f;

        a() {
        }

        public final void a(int i, int i2, int i3, long j, int i4) {
            this.f21416a = i;
            this.f21417b = 0;
            this.f21418c = i3;
            this.e = j;
            this.f = i4;
        }
    }

    public b(MediaCodec mediaCodec, HandlerThread handlerThread, boolean z) {
        this(mediaCodec, handlerThread, z, new f());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0050, code lost:
        if ((r0.contains("samsung") || r0.contains("motorola")) != false) goto L_0x0053;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    b(android.media.MediaCodec r5, android.os.HandlerThread r6, boolean r7, com.google.android.exoplayer2.util.f r8) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f = r1
            r0 = r4
            r1 = r6
            r0.f21412a = r1
            r0 = r4
            r1 = r8
            r0.h = r1
            r0 = r4
            java.util.concurrent.atomic.AtomicReference r1 = new java.util.concurrent.atomic.AtomicReference
            r2 = r1
            r2.<init>()
            r0.g = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0053
            java.lang.String r0 = com.google.android.exoplayer2.util.af.f22277c
            java.lang.String r0 = com.google.android.exoplayer2.util.af.d(r0)
            r5 = r0
            r0 = r5
            java.lang.String r1 = "samsung"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x0048
            r0 = r5
            java.lang.String r1 = "motorola"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0042
            goto L_0x0048
        L_0x0042:
            r0 = 0
            r10 = r0
            goto L_0x004b
        L_0x0048:
            r0 = 1
            r10 = r0
        L_0x004b:
            r0 = r9
            r7 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0055
        L_0x0053:
            r0 = 1
            r7 = r0
        L_0x0055:
            r0 = r4
            r1 = r7
            r0.i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.b.<init>(android.media.MediaCodec, android.os.HandlerThread, boolean, com.google.android.exoplayer2.util.f):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(com.google.android.exoplayer2.decoder.b bVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = bVar.f;
        cryptoInfo.numBytesOfClearData = a(bVar.f20830d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = a(bVar.e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) com.google.android.exoplayer2.util.a.b(a(bVar.f20828b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) com.google.android.exoplayer2.util.a.b(a(bVar.f20827a, cryptoInfo.iv));
        cryptoInfo.mode = bVar.f20829c;
        if (af.f22275a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(bVar.g, bVar.h));
        }
    }

    static /* synthetic */ void a(b bVar, Message message) {
        int i = message.what;
        if (i == 0) {
            a aVar = (a) message.obj;
            try {
                bVar.f.queueInputBuffer(aVar.f21416a, aVar.f21417b, aVar.f21418c, aVar.e, aVar.f);
                bVar = aVar;
            } catch (RuntimeException e2) {
                bVar.a(e2);
                bVar = aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                bVar.a(new IllegalStateException(String.valueOf(message.what)));
            } else {
                bVar.h.a();
            }
            bVar = null;
        } else {
            a aVar2 = (a) message.obj;
            int i2 = aVar2.f21416a;
            int i3 = aVar2.f21417b;
            MediaCodec.CryptoInfo cryptoInfo = aVar2.f21419d;
            long j = aVar2.e;
            int i4 = aVar2.f;
            try {
                if (bVar.i) {
                    synchronized (e) {
                        bVar.f.queueSecureInputBuffer(i2, i3, cryptoInfo, j, i4);
                    }
                    bVar = aVar2;
                } else {
                    bVar.f.queueSecureInputBuffer(i2, i3, cryptoInfo, j, i4);
                    bVar = aVar2;
                }
            } catch (RuntimeException e3) {
                bVar.a(e3);
                bVar = aVar2;
            }
        }
        if (bVar != null) {
            ArrayDeque<a> arrayDeque = f21411d;
            synchronized (arrayDeque) {
                arrayDeque.add(bVar);
            }
        }
    }

    private void a(RuntimeException runtimeException) {
        this.g.set(runtimeException);
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static int[] a(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a d() {
        ArrayDeque<a> arrayDeque = f21411d;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new a();
            }
            return arrayDeque.removeFirst();
        }
    }

    private void e() throws InterruptedException {
        ((Handler) af.a(this.f21413b)).removeCallbacksAndMessages(null);
        c();
        b();
    }

    public final void a() {
        if (this.f21414c) {
            try {
                e();
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        RuntimeException andSet = this.g.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() throws InterruptedException {
        this.h.b();
        ((Handler) af.a(this.f21413b)).obtainMessage(2).sendToTarget();
        this.h.c();
    }
}
