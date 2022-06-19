package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
@TargetApi(19)
/* renamed from: com.google.android.gms.internal.ads.if */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/if.class */
public abstract class AbstractC6588if extends AbstractC6360cb {

    /* renamed from: i */
    private static final byte[] f24221i = C6961si.m11009m("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");

    /* renamed from: A */
    private boolean f24222A;

    /* renamed from: B */
    private ByteBuffer[] f24223B;

    /* renamed from: C */
    private ByteBuffer[] f24224C;

    /* renamed from: D */
    private long f24225D;

    /* renamed from: E */
    private int f24226E;

    /* renamed from: F */
    private int f24227F;

    /* renamed from: G */
    private boolean f24228G;

    /* renamed from: H */
    private boolean f24229H;

    /* renamed from: I */
    private int f24230I;

    /* renamed from: J */
    private int f24231J;

    /* renamed from: K */
    private boolean f24232K;

    /* renamed from: L */
    private boolean f24233L;

    /* renamed from: M */
    private boolean f24234M;

    /* renamed from: N */
    private boolean f24235N;

    /* renamed from: O */
    private boolean f24236O;

    /* renamed from: P */
    protected C6511gd f24237P;

    /* renamed from: j */
    private final AbstractC6662kf f24238j;

    /* renamed from: k */
    private final C6548hd f24239k;

    /* renamed from: l */
    private final C6548hd f24240l;

    /* renamed from: m */
    private final C6954sb f24241m;

    /* renamed from: n */
    private final List<Long> f24242n;

    /* renamed from: o */
    private final MediaCodec.BufferInfo f24243o;

    /* renamed from: p */
    private zzanm f24244p;

    /* renamed from: q */
    private MediaCodec f24245q;

    /* renamed from: r */
    private C6550hf f24246r;

    /* renamed from: s */
    private boolean f24247s;

    /* renamed from: t */
    private boolean f24248t;

    /* renamed from: u */
    private boolean f24249u;

    /* renamed from: v */
    private boolean f24250v;

    /* renamed from: w */
    private boolean f24251w;

    /* renamed from: x */
    private boolean f24252x;

    /* renamed from: y */
    private boolean f24253y;

    /* renamed from: z */
    private boolean f24254z;

    public AbstractC6588if(int i, AbstractC6662kf abstractC6662kf, AbstractC6660kd abstractC6660kd, boolean z) {
        super(i);
        C6367ci.m16039d(C6961si.f29514a >= 16);
        this.f24238j = abstractC6662kf;
        this.f24239k = new C6548hd(0);
        this.f24240l = new C6548hd(0);
        this.f24241m = new C6954sb();
        this.f24242n = new ArrayList();
        this.f24243o = new MediaCodec.BufferInfo();
        this.f24230I = 0;
        this.f24231J = 0;
    }

    /* renamed from: A */
    private final void m14413A() {
        if (this.f24231J == 2) {
            mo8375T();
            m14412P();
            return;
        }
        this.f24235N = true;
        mo9292O();
    }

    /* renamed from: y */
    private final boolean m14409y() {
        int i;
        int i2;
        MediaCodec mediaCodec = this.f24245q;
        if (mediaCodec == null || this.f24231J == 2 || this.f24234M) {
            return false;
        }
        if (this.f24226E < 0) {
            int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(0L);
            this.f24226E = dequeueInputBuffer;
            if (dequeueInputBuffer < 0) {
                return false;
            }
            C6548hd c6548hd = this.f24239k;
            c6548hd.f23853c = this.f24223B[dequeueInputBuffer];
            c6548hd.mo14715a();
        }
        if (this.f24231J == 1) {
            if (!this.f24250v) {
                this.f24233L = true;
                this.f24245q.queueInputBuffer(this.f24226E, 0, 0, 0L, 4);
                this.f24226E = -1;
            }
            this.f24231J = 2;
            return false;
        } else if (this.f24254z) {
            this.f24254z = false;
            ByteBuffer byteBuffer = this.f24239k.f23853c;
            byte[] bArr = f24221i;
            byteBuffer.put(bArr);
            MediaCodec mediaCodec2 = this.f24245q;
            int i3 = this.f24226E;
            int length = bArr.length;
            mediaCodec2.queueInputBuffer(i3, 0, 38, 0L, 0);
            this.f24226E = -1;
            this.f24232K = true;
            return true;
        } else {
            if (this.f24230I == 1) {
                for (int i4 = 0; i4 < this.f24244p.f33557k.size(); i4++) {
                    this.f24239k.f23853c.put(this.f24244p.f33557k.get(i4));
                }
                this.f24230I = 2;
            }
            int position = this.f24239k.f23853c.position();
            int m16093f = m16093f(this.f24241m, this.f24239k, false);
            if (m16093f == -3) {
                return false;
            }
            if (m16093f == -5) {
                if (this.f24230I == 2) {
                    this.f24239k.mo14715a();
                    this.f24230I = 1;
                }
                mo8379L(this.f24241m.f29434a);
                return true;
            } else if (this.f24239k.m16085c()) {
                if (this.f24230I == 2) {
                    this.f24239k.mo14715a();
                    this.f24230I = 1;
                }
                this.f24234M = true;
                if (!this.f24232K) {
                    m14413A();
                    return false;
                }
                try {
                    if (this.f24250v) {
                        return false;
                    }
                    this.f24233L = true;
                    this.f24245q.queueInputBuffer(this.f24226E, 0, 0, 0L, 4);
                    this.f24226E = -1;
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw zzamy.zza(e, m16089x());
                }
            } else if (this.f24236O && !this.f24239k.m16084d()) {
                this.f24239k.mo14715a();
                if (this.f24230I != 2) {
                    return true;
                }
                this.f24230I = 1;
                return true;
            } else {
                this.f24236O = false;
                boolean m14713i = this.f24239k.m14713i();
                if (this.f24247s && !m14713i) {
                    ByteBuffer byteBuffer2 = this.f24239k.f23853c;
                    byte[] bArr2 = C6591ii.f24281a;
                    int position2 = byteBuffer2.position();
                    int i5 = 0;
                    int i6 = 0;
                    while (true) {
                        int i7 = i5 + 1;
                        if (i7 >= position2) {
                            byteBuffer2.clear();
                            break;
                        }
                        int i8 = byteBuffer2.get(i5) & 255;
                        if (i6 == 3) {
                            i2 = i6;
                            i = i8;
                            if (i8 == 1) {
                                if ((byteBuffer2.get(i7) & 31) == 7) {
                                    ByteBuffer duplicate = byteBuffer2.duplicate();
                                    duplicate.position(i5 - 3);
                                    duplicate.limit(position2);
                                    byteBuffer2.position(0);
                                    byteBuffer2.put(duplicate);
                                    break;
                                }
                                i = 1;
                                i2 = i6;
                            }
                        } else {
                            i2 = i6;
                            i = i8;
                            if (i8 == 0) {
                                i2 = i6 + 1;
                                i = i8;
                            }
                        }
                        i6 = i2;
                        if (i != 0) {
                            i6 = 0;
                        }
                        i5 = i7;
                    }
                    if (this.f24239k.f23853c.position() == 0) {
                        return true;
                    }
                    this.f24247s = false;
                }
                try {
                    C6548hd c6548hd2 = this.f24239k;
                    long j = c6548hd2.f23854d;
                    if (c6548hd2.m16086b()) {
                        this.f24242n.add(Long.valueOf(j));
                    }
                    this.f24239k.f23853c.flip();
                    mo8374U(this.f24239k);
                    if (m14713i) {
                        MediaCodec.CryptoInfo m15279b = this.f24239k.f23852b.m15279b();
                        if (position != 0) {
                            if (m15279b.numBytesOfClearData == null) {
                                m15279b.numBytesOfClearData = new int[1];
                            }
                            int[] iArr = m15279b.numBytesOfClearData;
                            iArr[0] = iArr[0] + position;
                        }
                        this.f24245q.queueSecureInputBuffer(this.f24226E, 0, m15279b, j, 0);
                    } else {
                        this.f24245q.queueInputBuffer(this.f24226E, 0, this.f24239k.f23853c.limit(), j, 0);
                    }
                    this.f24226E = -1;
                    this.f24232K = true;
                    this.f24230I = 0;
                    this.f24237P.f23306c++;
                    return true;
                } catch (MediaCodec.CryptoException e2) {
                    throw zzamy.zza(e2, m16089x());
                }
            }
        }
    }

    /* renamed from: B */
    protected abstract int mo8383B(AbstractC6662kf abstractC6662kf, zzanm zzanmVar);

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: G */
    public final void mo10366G(long j, long j2) {
        boolean z;
        int i;
        boolean z2;
        if (this.f24235N) {
            mo9292O();
            return;
        }
        if (this.f24244p == null) {
            this.f24240l.mo14715a();
            int m16093f = m16093f(this.f24241m, this.f24240l, true);
            if (m16093f != -5) {
                if (m16093f != -4) {
                    return;
                }
                C6367ci.m16039d(this.f24240l.m16085c());
                this.f24234M = true;
                m14413A();
                return;
            }
            mo8379L(this.f24241m.f29434a);
        }
        m14412P();
        if (this.f24245q != null) {
            C6887qi.m11884a("drainAndFeed");
            while (true) {
                if (this.f24227F < 0) {
                    if (!this.f24252x || !this.f24233L) {
                        i = this.f24245q.dequeueOutputBuffer(this.f24243o, 0L);
                        this.f24227F = i;
                    } else {
                        try {
                            i = this.f24245q.dequeueOutputBuffer(this.f24243o, 0L);
                            this.f24227F = i;
                        } catch (IllegalStateException e) {
                            m14413A();
                            if (this.f24235N) {
                                mo8375T();
                            }
                        }
                    }
                    if (i >= 0) {
                        if (this.f24222A) {
                            this.f24222A = false;
                            this.f24245q.releaseOutputBuffer(i, false);
                            this.f24227F = -1;
                        } else {
                            MediaCodec.BufferInfo bufferInfo = this.f24243o;
                            if ((bufferInfo.flags & 4) != 0) {
                                m14413A();
                                this.f24227F = -1;
                                break;
                            }
                            ByteBuffer byteBuffer = this.f24224C[this.f24227F];
                            if (byteBuffer != null) {
                                byteBuffer.position(bufferInfo.offset);
                                MediaCodec.BufferInfo bufferInfo2 = this.f24243o;
                                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                            }
                            long j3 = this.f24243o.presentationTimeUs;
                            int size = this.f24242n.size();
                            int i2 = 0;
                            while (true) {
                                if (i2 >= size) {
                                    z2 = false;
                                    break;
                                } else if (this.f24242n.get(i2).longValue() == j3) {
                                    this.f24242n.remove(i2);
                                    z2 = true;
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                            this.f24228G = z2;
                        }
                    } else if (i == -2) {
                        MediaFormat outputFormat = this.f24245q.getOutputFormat();
                        if (this.f24249u && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
                            this.f24222A = true;
                        } else {
                            if (this.f24253y) {
                                outputFormat.setInteger("channel-count", 1);
                            }
                            mo8378M(this.f24245q, outputFormat);
                        }
                    } else if (i == -3) {
                        this.f24224C = this.f24245q.getOutputBuffers();
                    } else if (this.f24250v && (this.f24234M || this.f24231J == 2)) {
                        m14413A();
                    }
                }
                if (!this.f24252x || !this.f24233L) {
                    MediaCodec mediaCodec = this.f24245q;
                    ByteBuffer[] byteBufferArr = this.f24224C;
                    int i3 = this.f24227F;
                    ByteBuffer byteBuffer2 = byteBufferArr[i3];
                    MediaCodec.BufferInfo bufferInfo3 = this.f24243o;
                    z = mo8377N(j, j2, mediaCodec, byteBuffer2, i3, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.f24228G);
                } else {
                    try {
                        MediaCodec mediaCodec2 = this.f24245q;
                        ByteBuffer[] byteBufferArr2 = this.f24224C;
                        int i4 = this.f24227F;
                        ByteBuffer byteBuffer3 = byteBufferArr2[i4];
                        MediaCodec.BufferInfo bufferInfo4 = this.f24243o;
                        z = mo8377N(j, j2, mediaCodec2, byteBuffer3, i4, bufferInfo4.flags, bufferInfo4.presentationTimeUs, this.f24228G);
                    } catch (IllegalStateException e2) {
                        m14413A();
                        if (this.f24235N) {
                            mo8375T();
                        }
                    }
                }
                if (!z) {
                    break;
                }
                long j4 = this.f24243o.presentationTimeUs;
                this.f24227F = -1;
            }
            do {
            } while (m14409y());
            C6887qi.m11883b();
        } else {
            m16092m(j);
            this.f24240l.mo14715a();
            int m16093f2 = m16093f(this.f24241m, this.f24240l, false);
            if (m16093f2 == -5) {
                mo8379L(this.f24241m.f29434a);
            } else if (m16093f2 == -4) {
                C6367ci.m16039d(this.f24240l.m16085c());
                this.f24234M = true;
                m14413A();
            }
        }
        this.f24237P.m14962a();
    }

    /* renamed from: H */
    public C6550hf mo9293H(AbstractC6662kf abstractC6662kf, zzanm zzanmVar, boolean z) {
        return C6884qf.m11913a(zzanmVar.f33555i, false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: I */
    public boolean mo8382I() {
        boolean z;
        if (this.f24244p != null) {
            z = true;
            if (!m16091p()) {
                z = true;
                if (this.f24227F < 0) {
                    if (this.f24225D != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f24225D) {
                        return true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: J */
    protected abstract void mo8381J(C6550hf c6550hf, MediaCodec mediaCodec, zzanm zzanmVar, MediaCrypto mediaCrypto);

    /* renamed from: K */
    protected abstract void mo8380K(String str, long j, long j2);

    /* JADX WARN: Code restructure failed: missing block: B:21:0x008d, code lost:
        if (r0.f33560n == r0.f33560n) goto L23;
     */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo8379L(com.google.android.gms.internal.ads.zzanm r7) {
        /*
            r6 = this;
            r0 = r6
            com.google.android.gms.internal.ads.zzanm r0 = r0.f24244p
            r8 = r0
            r0 = r6
            r1 = r7
            r0.f24244p = r1
            r0 = r7
            com.google.android.gms.internal.ads.zzapk r0 = r0.f33558l
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L18
            r0 = 0
            r7 = r0
            goto L1d
        L18:
            r0 = r8
            com.google.android.gms.internal.ads.zzapk r0 = r0.f33558l
            r7 = r0
        L1d:
            r0 = r9
            r1 = r7
            boolean r0 = com.google.android.gms.internal.ads.C6961si.m11021a(r0, r1)
            if (r0 != 0) goto L44
            r0 = r6
            com.google.android.gms.internal.ads.zzanm r0 = r0.f24244p
            com.google.android.gms.internal.ads.zzapk r0 = r0.f33558l
            if (r0 != 0) goto L32
            goto L44
        L32:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Media requires a DrmSessionManager"
            r1.<init>(r2)
            r1 = r6
            int r1 = r1.m16089x()
            com.google.android.gms.internal.ads.zzamy r0 = com.google.android.gms.internal.ads.zzamy.zza(r0, r1)
            throw r0
        L44:
            r0 = r6
            android.media.MediaCodec r0 = r0.f24245q
            r7 = r0
            r0 = 1
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L9d
            r0 = r6
            r1 = r7
            r2 = r6
            com.google.android.gms.internal.ads.hf r2 = r2.f24246r
            boolean r2 = r2.f23882b
            r3 = r8
            r4 = r6
            com.google.android.gms.internal.ads.zzanm r4 = r4.f24244p
            boolean r0 = r0.mo8373V(r1, r2, r3, r4)
            if (r0 == 0) goto L9d
            r0 = r6
            r1 = 1
            r0.f24229H = r1
            r0 = r6
            r1 = 1
            r0.f24230I = r1
            r0 = r6
            boolean r0 = r0.f24249u
            if (r0 == 0) goto L93
            r0 = r6
            com.google.android.gms.internal.ads.zzanm r0 = r0.f24244p
            r7 = r0
            r0 = r7
            int r0 = r0.f33559m
            r1 = r8
            int r1 = r1.f33559m
            if (r0 != r1) goto L93
            r0 = r7
            int r0 = r0.f33560n
            r1 = r8
            int r1 = r1.f33560n
            if (r0 != r1) goto L93
            goto L96
        L93:
            r0 = 0
            r10 = r0
        L96:
            r0 = r6
            r1 = r10
            r0.f24254z = r1
            return
        L9d:
            r0 = r6
            boolean r0 = r0.f24232K
            if (r0 == 0) goto Laa
            r0 = r6
            r1 = 1
            r0.f24231J = r1
            return
        Laa:
            r0 = r6
            r0.mo8375T()
            r0 = r6
            r0.m14412P()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC6588if.mo8379L(com.google.android.gms.internal.ads.zzanm):void");
    }

    /* renamed from: M */
    protected abstract void mo8378M(MediaCodec mediaCodec, MediaFormat mediaFormat);

    /* renamed from: N */
    protected abstract boolean mo8377N(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z);

    /* renamed from: O */
    protected void mo9292O() {
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x023e A[Catch: Exception -> 0x02e7, TRY_ENTER, TryCatch #1 {Exception -> 0x02e7, blocks: (B:97:0x0222, B:99:0x0233, B:100:0x023e, B:102:0x024a), top: B:115:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0233 A[Catch: Exception -> 0x02e7, TRY_LEAVE, TryCatch #1 {Exception -> 0x02e7, blocks: (B:97:0x0222, B:99:0x0233, B:100:0x023e, B:102:0x024a), top: B:115:0x0222 }] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m14412P() {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC6588if.m14412P():void");
    }

    /* renamed from: Q */
    protected boolean mo8376Q(C6550hf c6550hf) {
        return true;
    }

    /* renamed from: R */
    public final MediaCodec m14411R() {
        return this.f24245q;
    }

    /* renamed from: S */
    public final C6550hf m14410S() {
        return this.f24246r;
    }

    /* renamed from: T */
    public void mo8375T() {
        this.f24225D = -9223372036854775807L;
        this.f24226E = -1;
        this.f24227F = -1;
        this.f24228G = false;
        this.f24242n.clear();
        this.f24223B = null;
        this.f24224C = null;
        this.f24246r = null;
        this.f24229H = false;
        this.f24232K = false;
        this.f24247s = false;
        this.f24248t = false;
        this.f24249u = false;
        this.f24250v = false;
        this.f24251w = false;
        this.f24253y = false;
        this.f24254z = false;
        this.f24222A = false;
        this.f24233L = false;
        this.f24230I = 0;
        this.f24231J = 0;
        this.f24239k.f23853c = null;
        MediaCodec mediaCodec = this.f24245q;
        if (mediaCodec != null) {
            this.f24237P.f23305b++;
            try {
                mediaCodec.stop();
                try {
                    this.f24245q.release();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.f24245q.release();
                    throw th;
                } finally {
                }
            }
        }
    }

    /* renamed from: U */
    protected void mo8374U(C6548hd c6548hd) {
    }

    /* renamed from: V */
    protected boolean mo8373V(MediaCodec mediaCodec, boolean z, zzanm zzanmVar, zzanm zzanmVar2) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7065vb
    /* renamed from: d */
    public final int mo10048d(zzanm zzanmVar) {
        try {
            return mo8383B(this.f24238j, zzanmVar);
        } catch (zzarm e) {
            throw zzamy.zza(e, m16089x());
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7065vb
    /* renamed from: k */
    public final int mo10047k() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: q */
    public void mo8360q(boolean z) {
        this.f24237P = new C6511gd();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: s */
    public void mo8358s(long j, boolean z) {
        this.f24234M = false;
        this.f24235N = false;
        if (this.f24245q != null) {
            this.f24225D = -9223372036854775807L;
            this.f24226E = -1;
            this.f24227F = -1;
            this.f24236O = true;
            this.f24228G = false;
            this.f24242n.clear();
            this.f24254z = false;
            this.f24222A = false;
            if (this.f24248t || (this.f24251w && this.f24233L)) {
                mo8375T();
                m14412P();
            } else if (this.f24231J != 0) {
                mo8375T();
                m14412P();
            } else {
                this.f24245q.flush();
                this.f24232K = false;
            }
            if (!this.f24229H || this.f24244p == null) {
                return;
            }
            this.f24230I = 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6360cb
    /* renamed from: v */
    public void mo8355v() {
        this.f24244p = null;
        mo8375T();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: z */
    public boolean mo9285z() {
        return this.f24235N;
    }
}
