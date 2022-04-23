package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwt.class */
public final class dwt {
    private static boolean v = false;
    private static boolean w = false;
    private final long[] B;
    private final LinkedList<dww> C;
    private AudioTrack D;
    private dvz E;
    private long F;
    private long G;
    private ByteBuffer H;
    private int I;
    private int J;
    private long K;
    private long L;
    private boolean M;
    private long N;
    private Method O;
    private long P;
    private long Q;
    private long R;
    private long S;
    private int T;
    private long U;
    private long V;
    private long W;
    private dwj[] X;
    private ByteBuffer[] Y;
    private ByteBuffer Z;

    /* renamed from: a  reason: collision with root package name */
    final dwz f27329a;
    private ByteBuffer aa;
    private byte[] ab;
    private int ac;
    private int ad;
    private boolean ae;
    private long af;

    /* renamed from: b  reason: collision with root package name */
    final dwj[] f27330b;

    /* renamed from: c  reason: collision with root package name */
    final dwv f27331c;

    /* renamed from: d  reason: collision with root package name */
    int f27332d;
    int e;
    int f;
    int g;
    int h;
    boolean i;
    int j;
    long k;
    dvz l;
    int m;
    int n;
    int o;
    int p;
    float q;
    boolean r;
    boolean s;
    int t;
    boolean u;
    private final dxh y;
    private final dwx z;
    private final dwh x = null;
    private final ConditionVariable A = new ConditionVariable(true);

    public dwt(dwh dwhVar, dwj[] dwjVarArr, dwx dwxVar) {
        this.z = dwxVar;
        if (ede.f27664a >= 18) {
            try {
                this.O = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (ede.f27664a >= 19) {
            this.f27331c = new dwu();
        } else {
            this.f27331c = new dwv(null);
        }
        dwz dwzVar = new dwz();
        this.f27329a = dwzVar;
        dxh dxhVar = new dxh();
        this.y = dxhVar;
        dwj[] dwjVarArr2 = new dwj[dwjVarArr.length + 3];
        this.f27330b = dwjVarArr2;
        dwjVarArr2[0] = new dxf();
        dwjVarArr2[1] = dwzVar;
        System.arraycopy(dwjVarArr, 0, dwjVarArr2, 2, dwjVarArr.length);
        dwjVarArr2[dwjVarArr.length + 2] = dxhVar;
        this.B = new long[10];
        this.q = 1.0f;
        this.p = 0;
        this.h = 3;
        this.t = 0;
        this.l = dvz.f27282a;
        this.ad = -1;
        this.X = new dwj[0];
        this.Y = new ByteBuffer[0];
        this.C = new LinkedList<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0198, code lost:
        if (r13 < r0) goto L_0x00eb;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0217  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean b(java.nio.ByteBuffer r8, long r9) throws com.google.android.gms.internal.ads.zzjb {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dwt.b(java.nio.ByteBuffer, long):boolean");
    }

    private final void c(long j) throws zzjb {
        ByteBuffer byteBuffer;
        int length = this.X.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.Y[i - 1];
            } else {
                byteBuffer = this.Z;
                if (byteBuffer == null) {
                    byteBuffer = dwj.f27308a;
                }
            }
            if (i == length) {
                b(byteBuffer, j);
            } else {
                dwj dwjVar = this.X[i];
                dwjVar.a(byteBuffer);
                ByteBuffer d2 = dwjVar.d();
                this.Y[i] = d2;
                if (d2.hasRemaining()) {
                    i++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i--;
            } else {
                return;
            }
        }
    }

    private final boolean j() {
        if (ede.f27664a >= 23) {
            return false;
        }
        int i = this.g;
        return i == 5 || i == 6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a(long j) {
        return (j * 1000000) / this.f27332d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r18v3, types: [long] */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(boolean r9) {
        /*
            Method dump skipped, instructions count: 927
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dwt.a(boolean):long");
    }

    public final dvz a(dvz dvzVar) {
        if (this.i) {
            dvz dvzVar2 = dvz.f27282a;
            this.l = dvzVar2;
            return dvzVar2;
        }
        dxh dxhVar = this.y;
        dxhVar.f27362b = ede.a(dvzVar.f27283b);
        float f = dxhVar.f27362b;
        dxh dxhVar2 = this.y;
        float f2 = dvzVar.f27284c;
        dxhVar2.f27363c = ede.a(f2);
        dvz dvzVar3 = new dvz(f, f2);
        dvz dvzVar4 = this.E;
        if (dvzVar4 == null) {
            dvzVar4 = !this.C.isEmpty() ? this.C.getLast().f27340a : this.l;
        }
        if (!dvzVar3.equals(dvzVar4)) {
            if (g()) {
                this.E = dvzVar3;
            } else {
                this.l = dvzVar3;
            }
        }
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        dwj[] dwjVarArr;
        ArrayList arrayList = new ArrayList();
        for (dwj dwjVar : this.f27330b) {
            if (dwjVar.a()) {
                arrayList.add(dwjVar);
            } else {
                dwjVar.f();
            }
        }
        int size = arrayList.size();
        this.X = (dwj[]) arrayList.toArray(new dwj[size]);
        this.Y = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            dwj dwjVar2 = this.X[i];
            dwjVar2.f();
            this.Y[i] = dwjVar2.d();
        }
    }

    public final boolean a(ByteBuffer byteBuffer, long j) throws zziw, zzjb {
        int i;
        ByteBuffer byteBuffer2 = this.Z;
        ecr.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!g()) {
            this.A.block();
            if (this.u) {
                this.D = new AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(this.e).setEncoding(this.g).setSampleRate(this.f27332d).build(), this.j, 1, this.t);
            } else if (this.t == 0) {
                this.D = new AudioTrack(this.h, this.f27332d, this.e, this.g, this.j, 1);
            } else {
                this.D = new AudioTrack(this.h, this.f27332d, this.e, this.g, this.j, 1, this.t);
            }
            int state = this.D.getState();
            if (state == 1) {
                int audioSessionId = this.D.getAudioSessionId();
                if (this.t != audioSessionId) {
                    this.t = audioSessionId;
                    this.z.a(audioSessionId);
                }
                this.f27331c.a(this.D, j());
                e();
                this.ae = false;
                if (this.s) {
                    b();
                }
            } else {
                try {
                    this.D.release();
                } catch (Exception e) {
                } finally {
                    this.D = null;
                }
                throw new zziw(state, this.f27332d, this.e, this.j);
            }
        }
        if (j()) {
            if (this.D.getPlayState() == 2) {
                this.ae = false;
                return false;
            } else if (this.D.getPlayState() == 1 && this.f27331c.e() != 0) {
                return false;
            }
        }
        boolean z = this.ae;
        boolean d2 = d();
        this.ae = d2;
        if (z && !d2 && this.D.getPlayState() != 1) {
            this.z.a(this.j, dvj.a(this.k), SystemClock.elapsedRealtime() - this.af);
        }
        if (this.Z == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.i && this.T == 0) {
                int i2 = this.g;
                if (i2 == 7 || i2 == 8) {
                    i = dxb.a(byteBuffer);
                } else if (i2 == 5) {
                    i = dwi.a();
                } else if (i2 == 6) {
                    i = dwi.a(byteBuffer);
                } else {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unexpected audio encoding: ");
                    sb.append(i2);
                    throw new IllegalStateException(sb.toString());
                }
                this.T = i;
            }
            if (this.E != null) {
                if (!c()) {
                    return false;
                }
                this.C.add(new dww(this.E, Math.max(0L, j), a(h()), null));
                this.E = null;
                a();
            }
            if (this.p == 0) {
                this.U = Math.max(0L, j);
                this.p = 1;
            } else {
                long a2 = this.U + a(this.i ? this.Q : this.P / this.n);
                if (this.p == 1 && Math.abs(a2 - j) > 200000) {
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(a2);
                    sb2.append(", got ");
                    sb2.append(j);
                    sb2.append("]");
                    Log.e("AudioTrack", sb2.toString());
                    this.p = 2;
                }
                if (this.p == 2) {
                    this.U += j - a2;
                    this.p = 1;
                    this.z.a();
                }
            }
            if (this.i) {
                this.Q += this.T;
            } else {
                this.P += byteBuffer.remaining();
            }
            this.Z = byteBuffer;
        }
        if (this.i) {
            b(this.Z, j);
        } else {
            c(j);
        }
        if (this.Z.hasRemaining()) {
            return false;
        }
        this.Z = null;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long b(long j) {
        return (j * this.f27332d) / 1000000;
    }

    public final void b() {
        this.s = true;
        if (g()) {
            this.V = System.nanoTime() / 1000;
            this.D.play();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:9:0x001f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c() throws com.google.android.gms.internal.ads.zzjb {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.ad
            r1 = -1
            if (r0 != r1) goto L_0x0024
            r0 = r5
            boolean r0 = r0.i
            if (r0 == 0) goto L_0x0018
            r0 = r5
            com.google.android.gms.internal.ads.dwj[] r0 = r0.X
            int r0 = r0.length
            r6 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r6 = r0
        L_0x001a:
            r0 = r5
            r1 = r6
            r0.ad = r1
        L_0x001f:
            r0 = 1
            r6 = r0
            goto L_0x0026
        L_0x0024:
            r0 = 0
            r6 = r0
        L_0x0026:
            r0 = r5
            int r0 = r0.ad
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.dwj[] r0 = r0.X
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0063
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0044
            r0 = r8
            r0.c()
        L_0x0044:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.c(r1)
            r0 = r8
            boolean r0 = r0.e()
            if (r0 != 0) goto L_0x0056
            r0 = 0
            return r0
        L_0x0056:
            r0 = r5
            r1 = r5
            int r1 = r1.ad
            r2 = 1
            int r1 = r1 + r2
            r0.ad = r1
            goto L_0x001f
        L_0x0063:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.aa
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007e
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.b(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.aa
            if (r0 == 0) goto L_0x007e
            r0 = 0
            return r0
        L_0x007e:
            r0 = r5
            r1 = -1
            r0.ad = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dwt.c():boolean");
    }

    public final boolean d() {
        if (!g()) {
            return false;
        }
        if (h() > this.f27331c.e()) {
            return true;
        }
        return j() && this.D.getPlayState() == 2 && this.D.getPlaybackHeadPosition() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        if (!g()) {
            return;
        }
        if (ede.f27664a >= 21) {
            this.D.setVolume(this.q);
            return;
        }
        AudioTrack audioTrack = this.D;
        float f = this.q;
        audioTrack.setStereoVolume(f, f);
    }

    public final void f() {
        if (g()) {
            this.P = 0L;
            this.Q = 0L;
            this.R = 0L;
            this.S = 0L;
            this.T = 0;
            dvz dvzVar = this.E;
            if (dvzVar != null) {
                this.l = dvzVar;
                this.E = null;
            } else if (!this.C.isEmpty()) {
                this.l = this.C.getLast().f27340a;
            }
            this.C.clear();
            this.F = 0L;
            this.G = 0L;
            this.Z = null;
            this.aa = null;
            int i = 0;
            while (true) {
                dwj[] dwjVarArr = this.X;
                if (i >= dwjVarArr.length) {
                    break;
                }
                dwj dwjVar = dwjVarArr[i];
                dwjVar.f();
                this.Y[i] = dwjVar.d();
                i++;
            }
            this.r = false;
            this.ad = -1;
            this.H = null;
            this.m = 0;
            this.p = 0;
            this.W = 0L;
            i();
            if (this.D.getPlayState() == 3) {
                this.D.pause();
            }
            AudioTrack audioTrack = this.D;
            this.D = null;
            this.f27331c.a(null, false);
            this.A.close();
            new dws(this, audioTrack).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        return this.D != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long h() {
        return this.i ? this.S : this.R / this.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        this.K = 0L;
        this.J = 0;
        this.I = 0;
        this.L = 0L;
        this.M = false;
        this.N = 0L;
    }
}
