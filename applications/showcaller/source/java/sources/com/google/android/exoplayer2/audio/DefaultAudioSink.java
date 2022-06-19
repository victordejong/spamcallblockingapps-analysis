package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import com.google.android.exoplayer2.C5102l0;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.C4834n;
import com.google.android.exoplayer2.p243c1.C4990r;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink.class */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: a */
    public static boolean f14514a = false;

    /* renamed from: b */
    public static boolean f14515b = false;

    /* renamed from: A */
    private long f14516A;

    /* renamed from: B */
    private long f14517B;

    /* renamed from: C */
    private int f14518C;

    /* renamed from: D */
    private int f14519D;

    /* renamed from: E */
    private long f14520E;

    /* renamed from: F */
    private float f14521F;

    /* renamed from: G */
    private AudioProcessor[] f14522G;

    /* renamed from: H */
    private ByteBuffer[] f14523H;

    /* renamed from: I */
    private ByteBuffer f14524I;

    /* renamed from: J */
    private ByteBuffer f14525J;

    /* renamed from: K */
    private byte[] f14526K;

    /* renamed from: L */
    private int f14527L;

    /* renamed from: M */
    private int f14528M;

    /* renamed from: N */
    private boolean f14529N;

    /* renamed from: O */
    private boolean f14530O;

    /* renamed from: P */
    private boolean f14531P;

    /* renamed from: Q */
    private int f14532Q;

    /* renamed from: R */
    private C4836o f14533R;

    /* renamed from: S */
    private boolean f14534S;

    /* renamed from: T */
    private long f14535T;

    /* renamed from: c */
    private final C4828j f14536c;

    /* renamed from: d */
    private final AbstractC4808c f14537d;

    /* renamed from: e */
    private final boolean f14538e;

    /* renamed from: f */
    private final C4838q f14539f;

    /* renamed from: g */
    private final C4848y f14540g;

    /* renamed from: h */
    private final AudioProcessor[] f14541h;

    /* renamed from: i */
    private final AudioProcessor[] f14542i;

    /* renamed from: j */
    private final ConditionVariable f14543j;

    /* renamed from: k */
    private final C4834n f14544k;

    /* renamed from: l */
    private final ArrayDeque<C4811f> f14545l;

    /* renamed from: m */
    private AudioSink.AbstractC4805a f14546m;

    /* renamed from: n */
    private AudioTrack f14547n;

    /* renamed from: o */
    private C4809d f14548o;

    /* renamed from: p */
    private C4809d f14549p;

    /* renamed from: q */
    private AudioTrack f14550q;

    /* renamed from: r */
    private C4825i f14551r;

    /* renamed from: s */
    private C5102l0 f14552s;

    /* renamed from: t */
    private C5102l0 f14553t;

    /* renamed from: u */
    private long f14554u;

    /* renamed from: v */
    private long f14555v;

    /* renamed from: w */
    private ByteBuffer f14556w;

    /* renamed from: x */
    private int f14557x;

    /* renamed from: y */
    private long f14558y;

    /* renamed from: z */
    private long f14559z;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException.class */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }

        /* synthetic */ InvalidAudioTrackTimestampException(String str, C4806a c4806a) {
            this(str);
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$a.class */
    public class C4806a extends Thread {

        /* renamed from: d */
        final /* synthetic */ AudioTrack f14560d;

        C4806a(AudioTrack audioTrack) {
            DefaultAudioSink.this = r4;
            this.f14560d = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.f14560d.flush();
                this.f14560d.release();
            } finally {
                DefaultAudioSink.this.f14543j.open();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$b.class */
    public class C4807b extends Thread {

        /* renamed from: d */
        final /* synthetic */ AudioTrack f14562d;

        C4807b(AudioTrack audioTrack) {
            DefaultAudioSink.this = r4;
            this.f14562d = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f14562d.release();
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$c.class */
    public interface AbstractC4808c {
        /* renamed from: a */
        C5102l0 mo21603a(C5102l0 c5102l0);

        /* renamed from: b */
        long mo21602b(long j);

        /* renamed from: c */
        long mo21601c();

        /* renamed from: d */
        AudioProcessor[] mo21600d();
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$d.class */
    public static final class C4809d {

        /* renamed from: a */
        public final boolean f14564a;

        /* renamed from: b */
        public final int f14565b;

        /* renamed from: c */
        public final int f14566c;

        /* renamed from: d */
        public final int f14567d;

        /* renamed from: e */
        public final int f14568e;

        /* renamed from: f */
        public final int f14569f;

        /* renamed from: g */
        public final int f14570g;

        /* renamed from: h */
        public final int f14571h;

        /* renamed from: i */
        public final boolean f14572i;

        /* renamed from: j */
        public final boolean f14573j;

        /* renamed from: k */
        public final AudioProcessor[] f14574k;

        public C4809d(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, boolean z3, AudioProcessor[] audioProcessorArr) {
            this.f14564a = z;
            this.f14565b = i;
            this.f14566c = i2;
            this.f14567d = i3;
            this.f14568e = i4;
            this.f14569f = i5;
            this.f14570g = i6;
            this.f14571h = i7 == 0 ? m21605f() : i7;
            this.f14572i = z2;
            this.f14573j = z3;
            this.f14574k = audioProcessorArr;
        }

        @TargetApi(21)
        /* renamed from: c */
        private AudioTrack m21608c(boolean z, C4825i c4825i, int i) {
            AudioAttributes build = z ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : c4825i.m21581a();
            AudioFormat build2 = new AudioFormat.Builder().setChannelMask(this.f14569f).setEncoding(this.f14570g).setSampleRate(this.f14568e).build();
            int i2 = this.f14571h;
            if (i == 0) {
                i = 0;
            }
            return new AudioTrack(build, build2, i2, 1, i);
        }

        /* renamed from: f */
        private int m21605f() {
            if (this.f14564a) {
                int minBufferSize = AudioTrack.getMinBufferSize(this.f14568e, this.f14569f, this.f14570g);
                C5508e.m18910f(minBufferSize != -2);
                return C5515h0.m18819n(minBufferSize * 4, ((int) m21607d(250000L)) * this.f14567d, (int) Math.max(minBufferSize, m21607d(750000L) * this.f14567d));
            }
            int m21652F = DefaultAudioSink.m21652F(this.f14570g);
            int i = m21652F;
            if (this.f14570g == 5) {
                i = m21652F * 2;
            }
            return (int) ((i * 250000) / 1000000);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007f -> B:14:0x006a). Please submit an issue!!! */
        /* renamed from: a */
        public AudioTrack m21610a(boolean z, C4825i c4825i, int i) {
            AudioTrack audioTrack;
            if (C5515h0.f17876a >= 21) {
                audioTrack = m21608c(z, c4825i, i);
            } else {
                int m18861K = C5515h0.m18861K(c4825i.f14619d);
                audioTrack = i == 0 ? new AudioTrack(m18861K, this.f14568e, this.f14569f, this.f14570g, this.f14571h, 1) : new AudioTrack(m18861K, this.f14568e, this.f14569f, this.f14570g, this.f14571h, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception e) {
            }
            throw new AudioSink.InitializationException(state, this.f14568e, this.f14569f, this.f14571h);
        }

        /* renamed from: b */
        public boolean m21609b(C4809d c4809d) {
            return c4809d.f14570g == this.f14570g && c4809d.f14568e == this.f14568e && c4809d.f14569f == this.f14569f;
        }

        /* renamed from: d */
        public long m21607d(long j) {
            return (j * this.f14568e) / 1000000;
        }

        /* renamed from: e */
        public long m21606e(long j) {
            return (j * 1000000) / this.f14568e;
        }

        /* renamed from: g */
        public long m21604g(long j) {
            return (j * 1000000) / this.f14566c;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$e.class */
    public static class C4810e implements AbstractC4808c {

        /* renamed from: a */
        private final AudioProcessor[] f14575a;

        /* renamed from: b */
        private final C4845v f14576b;

        /* renamed from: c */
        private final C4847x f14577c;

        public C4810e(AudioProcessor... audioProcessorArr) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f14575a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            C4845v c4845v = new C4845v();
            this.f14576b = c4845v;
            C4847x c4847x = new C4847x();
            this.f14577c = c4847x;
            audioProcessorArr2[audioProcessorArr.length] = c4845v;
            audioProcessorArr2[audioProcessorArr.length + 1] = c4847x;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC4808c
        /* renamed from: a */
        public C5102l0 mo21603a(C5102l0 c5102l0) {
            this.f14576b.m21480w(c5102l0.f15987d);
            return new C5102l0(this.f14577c.m21450j(c5102l0.f15985b), this.f14577c.m21451i(c5102l0.f15986c), c5102l0.f15987d);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC4808c
        /* renamed from: b */
        public long mo21602b(long j) {
            return this.f14577c.m21452h(j);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC4808c
        /* renamed from: c */
        public long mo21601c() {
            return this.f14576b.m21486q();
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC4808c
        /* renamed from: d */
        public AudioProcessor[] mo21600d() {
            return this.f14575a;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$f.class */
    public static final class C4811f {

        /* renamed from: a */
        private final C5102l0 f14578a;

        /* renamed from: b */
        private final long f14579b;

        /* renamed from: c */
        private final long f14580c;

        private C4811f(C5102l0 c5102l0, long j, long j2) {
            this.f14578a = c5102l0;
            this.f14579b = j;
            this.f14580c = j2;
        }

        /* synthetic */ C4811f(C5102l0 c5102l0, long j, long j2, C4806a c4806a) {
            this(c5102l0, j, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$g.class */
    public final class C4812g implements C4834n.AbstractC4835a {
        private C4812g() {
            DefaultAudioSink.this = r4;
        }

        /* synthetic */ C4812g(DefaultAudioSink defaultAudioSink, C4806a c4806a) {
            this();
        }

        @Override // com.google.android.exoplayer2.audio.C4834n.AbstractC4835a
        /* renamed from: a */
        public void mo21523a(int i, long j) {
            if (DefaultAudioSink.this.f14546m != null) {
                DefaultAudioSink.this.f14546m.mo21491b(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f14535T);
            }
        }

        @Override // com.google.android.exoplayer2.audio.C4834n.AbstractC4835a
        /* renamed from: b */
        public void mo21522b(long j) {
            C5526o.m18742f("AudioTrack", "Ignoring impossibly large audio latency: " + j);
        }

        @Override // com.google.android.exoplayer2.audio.C4834n.AbstractC4835a
        /* renamed from: c */
        public void mo21521c(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.m21651G() + ", " + DefaultAudioSink.this.m21650H();
            if (!DefaultAudioSink.f14515b) {
                C5526o.m18742f("AudioTrack", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str, null);
        }

        @Override // com.google.android.exoplayer2.audio.C4834n.AbstractC4835a
        /* renamed from: d */
        public void mo21520d(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.m21651G() + ", " + DefaultAudioSink.this.m21650H();
            if (!DefaultAudioSink.f14515b) {
                C5526o.m18742f("AudioTrack", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str, null);
        }
    }

    public DefaultAudioSink(C4828j c4828j, AbstractC4808c abstractC4808c, boolean z) {
        this.f14536c = c4828j;
        this.f14537d = (AbstractC4808c) C5508e.m18911e(abstractC4808c);
        this.f14538e = z;
        this.f14543j = new ConditionVariable(true);
        this.f14544k = new C4834n(new C4812g(this, null));
        C4838q c4838q = new C4838q();
        this.f14539f = c4838q;
        C4848y c4848y = new C4848y();
        this.f14540g = c4848y;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new C4844u(), c4838q, c4848y);
        Collections.addAll(arrayList, abstractC4808c.mo21600d());
        this.f14541h = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f14542i = new AudioProcessor[]{new C4840s()};
        this.f14521F = 1.0f;
        this.f14519D = 0;
        this.f14551r = C4825i.f14616a;
        this.f14532Q = 0;
        this.f14533R = new C4836o(0, 0.0f);
        this.f14553t = C5102l0.f15984a;
        this.f14528M = -1;
        this.f14522G = new AudioProcessor[0];
        this.f14523H = new ByteBuffer[0];
        this.f14545l = new ArrayDeque<>();
    }

    public DefaultAudioSink(C4828j c4828j, AudioProcessor[] audioProcessorArr) {
        this(c4828j, audioProcessorArr, false);
    }

    public DefaultAudioSink(C4828j c4828j, AudioProcessor[] audioProcessorArr, boolean z) {
        this(c4828j, new C4810e(audioProcessorArr), z);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: A */
    private long m21657A(long j) {
        C4811f c4811f;
        char m18867E;
        char c;
        C4811f c4811f2 = null;
        while (true) {
            c4811f = c4811f2;
            if (this.f14545l.isEmpty() || j < this.f14545l.getFirst().f14580c) {
                break;
            }
            c4811f2 = this.f14545l.remove();
        }
        if (c4811f != null) {
            this.f14553t = c4811f.f14578a;
            this.f14555v = c4811f.f14580c;
            this.f14554u = c4811f.f14579b - this.f14520E;
        }
        if (this.f14553t.f15985b == 1.0f) {
            return (j + this.f14554u) - this.f14555v;
        }
        if (this.f14545l.isEmpty()) {
            ?? r0 = this.f14554u;
            m18867E = this.f14537d.mo21602b(j - this.f14555v);
            c = r0;
        } else {
            ?? r02 = this.f14554u;
            m18867E = C5515h0.m18867E(j - this.f14555v, this.f14553t.f15985b);
            c = r02;
        }
        return c + m18867E;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0059 -> B:9:0x0022). Please submit an issue!!! */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m21656B() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f14528M
            r1 = -1
            if (r0 != r1) goto L27
            r0 = r5
            com.google.android.exoplayer2.audio.DefaultAudioSink$d r0 = r0.f14549p
            boolean r0 = r0.f14572i
            if (r0 == 0) goto L17
            r0 = 0
            r6 = r0
            goto L1d
        L17:
            r0 = r5
            com.google.android.exoplayer2.audio.AudioProcessor[] r0 = r0.f14522G
            int r0 = r0.length
            r6 = r0
        L1d:
            r0 = r5
            r1 = r6
            r0.f14528M = r1
        L22:
            r0 = 1
            r6 = r0
            goto L29
        L27:
            r0 = 0
            r6 = r0
        L29:
            r0 = r5
            int r0 = r0.f14528M
            r7 = r0
            r0 = r5
            com.google.android.exoplayer2.audio.AudioProcessor[] r0 = r0.f14522G
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L66
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L47
            r0 = r8
            r0.mo21454f()
        L47:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m21645M(r1)
            r0 = r8
            boolean r0 = r0.mo21448c()
            if (r0 != 0) goto L59
            r0 = 0
            return r0
        L59:
            r0 = r5
            r1 = r5
            int r1 = r1.f14528M
            r2 = 1
            int r1 = r1 + r2
            r0.f14528M = r1
            goto L22
        L66:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f14525J
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L80
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m21639S(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f14525J
            if (r0 == 0) goto L80
            r0 = 0
            return r0
        L80:
            r0 = r5
            r1 = -1
            r0.f14528M = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.m21656B():boolean");
    }

    /* renamed from: C */
    private void m21655C() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.f14522G;
            if (i < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i];
                audioProcessor.flush();
                this.f14523H[i] = audioProcessor.mo21449b();
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
        if (r3 == 5) goto L15;
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m21654D(int r3, boolean r4) {
        /*
            int r0 = com.google.android.exoplayer2.util.C5515h0.f17876a
            r5 = r0
            r0 = r3
            r6 = r0
            r0 = r5
            r1 = 28
            if (r0 > r1) goto L32
            r0 = r3
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L32
            r0 = r3
            r1 = 7
            if (r0 != r1) goto L1e
            r0 = 8
            r6 = r0
            goto L32
        L1e:
            r0 = r3
            r1 = 3
            if (r0 == r1) goto L2f
            r0 = r3
            r1 = 4
            if (r0 == r1) goto L2f
            r0 = r3
            r6 = r0
            r0 = r3
            r1 = 5
            if (r0 != r1) goto L32
        L2f:
            r0 = 6
            r6 = r0
        L32:
            r0 = r6
            r3 = r0
            r0 = r5
            r1 = 26
            if (r0 > r1) goto L57
            r0 = r6
            r3 = r0
            java.lang.String r0 = "fugu"
            java.lang.String r1 = com.google.android.exoplayer2.util.C5515h0.f17877b
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L57
            r0 = r6
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L57
            r0 = r6
            r3 = r0
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L57
            r0 = 2
            r3 = r0
        L57:
            r0 = r3
            int r0 = com.google.android.exoplayer2.util.C5515h0.m18799x(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.m21654D(int, boolean):int");
    }

    /* renamed from: E */
    private static int m21653E(int i, ByteBuffer byteBuffer) {
        if (i == 14) {
            int m21596a = C4819g.m21596a(byteBuffer);
            return m21596a == -1 ? 0 : C4819g.m21589h(byteBuffer, m21596a) * 16;
        } else if (i == 17) {
            return C4822h.m21585c(byteBuffer);
        } else {
            if (i != 18) {
                switch (i) {
                    case 5:
                    case 6:
                        break;
                    case 7:
                    case 8:
                        return C4839r.m21512e(byteBuffer);
                    case 9:
                        return C4990r.m20970a(byteBuffer.get(byteBuffer.position()));
                    default:
                        throw new IllegalStateException("Unexpected audio encoding: " + i);
                }
            }
            return C4819g.m21593d(byteBuffer);
        }
    }

    /* renamed from: F */
    public static int m21652F(int i) {
        if (i != 5) {
            if (i == 6) {
                return 768000;
            }
            if (i == 7) {
                return 192000;
            }
            if (i == 8) {
                return 2250000;
            }
            if (i == 14) {
                return 3062500;
            }
            if (i == 17) {
                return 336000;
            }
            if (i != 18) {
                throw new IllegalArgumentException();
            }
            return 768000;
        }
        return 80000;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: G */
    public long m21651G() {
        C4809d c4809d = this.f14549p;
        return c4809d.f14564a ? this.f14558y / c4809d.f14565b : this.f14559z;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: H */
    public long m21650H() {
        C4809d c4809d = this.f14549p;
        return c4809d.f14564a ? this.f14516A / c4809d.f14567d : this.f14517B;
    }

    /* renamed from: I */
    private void m21649I(long j) {
        this.f14543j.block();
        AudioTrack m21610a = ((C4809d) C5508e.m18911e(this.f14549p)).m21610a(this.f14534S, this.f14551r, this.f14532Q);
        this.f14550q = m21610a;
        int audioSessionId = m21610a.getAudioSessionId();
        if (f14514a && C5515h0.f17876a < 21) {
            AudioTrack audioTrack = this.f14547n;
            if (audioTrack != null && audioSessionId != audioTrack.getAudioSessionId()) {
                m21644N();
            }
            if (this.f14547n == null) {
                this.f14547n = m21648J(audioSessionId);
            }
        }
        if (this.f14532Q != audioSessionId) {
            this.f14532Q = audioSessionId;
            AudioSink.AbstractC4805a abstractC4805a = this.f14546m;
            if (abstractC4805a != null) {
                abstractC4805a.mo21492a(audioSessionId);
            }
        }
        m21612y(this.f14553t, j);
        C4834n c4834n = this.f14544k;
        AudioTrack audioTrack2 = this.f14550q;
        C4809d c4809d = this.f14549p;
        c4834n.m21525s(audioTrack2, c4809d.f14570g, c4809d.f14567d, c4809d.f14571h);
        m21643O();
        int i = this.f14533R.f14668a;
        if (i != 0) {
            this.f14550q.attachAuxEffect(i);
            this.f14550q.setAuxEffectSendLevel(this.f14533R.f14669b);
        }
    }

    /* renamed from: J */
    private static AudioTrack m21648J(int i) {
        return new AudioTrack(3, 4000, 4, 2, 2, 0, i);
    }

    /* renamed from: K */
    private boolean m21647K() {
        return this.f14550q != null;
    }

    /* renamed from: L */
    private void m21646L() {
        if (!this.f14530O) {
            this.f14530O = true;
            this.f14544k.m21537g(m21650H());
            this.f14550q.stop();
            this.f14557x = 0;
        }
    }

    /* renamed from: M */
    private void m21645M(long j) {
        ByteBuffer byteBuffer;
        int length = this.f14522G.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f14523H[i - 1];
            } else {
                byteBuffer = this.f14524I;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f14508a;
                }
            }
            if (i == length) {
                m21639S(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.f14522G[i];
                audioProcessor.mo21447d(byteBuffer);
                ByteBuffer mo21449b = audioProcessor.mo21449b();
                this.f14523H[i] = mo21449b;
                if (mo21449b.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* renamed from: N */
    private void m21644N() {
        AudioTrack audioTrack = this.f14547n;
        if (audioTrack == null) {
            return;
        }
        this.f14547n = null;
        new C4807b(audioTrack).start();
    }

    /* renamed from: O */
    private void m21643O() {
        if (!m21647K()) {
            return;
        }
        if (C5515h0.f17876a >= 21) {
            m21642P(this.f14550q, this.f14521F);
        } else {
            m21641Q(this.f14550q, this.f14521F);
        }
    }

    @TargetApi(21)
    /* renamed from: P */
    private static void m21642P(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    /* renamed from: Q */
    private static void m21641Q(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: R */
    private void m21640R() {
        AudioProcessor[] audioProcessorArr = this.f14549p.f14574k;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.mo21453g()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.f14522G = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.f14523H = new ByteBuffer[size];
        m21655C();
    }

    /* renamed from: S */
    private void m21639S(ByteBuffer byteBuffer, long j) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ByteBuffer byteBuffer2 = this.f14525J;
        int i = 0;
        if (byteBuffer2 != null) {
            C5508e.m18915a(byteBuffer2 == byteBuffer);
        } else {
            this.f14525J = byteBuffer;
            if (C5515h0.f17876a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.f14526K;
                if (bArr == null || bArr.length < remaining) {
                    this.f14526K = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.f14526K, 0, remaining);
                byteBuffer.position(position);
                this.f14527L = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (C5515h0.f17876a < 21) {
            int m21541c = this.f14544k.m21541c(this.f14516A);
            if (m21541c > 0) {
                int write = this.f14550q.write(this.f14526K, this.f14527L, Math.min(remaining2, m21541c));
                i = write;
                if (write > 0) {
                    this.f14527L += write;
                    byteBuffer.position(byteBuffer.position() + write);
                    i = write;
                }
            }
        } else if (this.f14534S) {
            C5508e.m18910f(j != -9223372036854775807L);
            i = m21637U(this.f14550q, byteBuffer, remaining2, j);
        } else {
            i = m21638T(this.f14550q, byteBuffer, remaining2);
        }
        this.f14535T = SystemClock.elapsedRealtime();
        if (i < 0) {
            throw new AudioSink.WriteException(i);
        }
        boolean z = this.f14549p.f14564a;
        if (z) {
            this.f14516A += i;
        }
        if (i != remaining2) {
            return;
        }
        if (!z) {
            this.f14517B += this.f14518C;
        }
        this.f14525J = null;
    }

    @TargetApi(21)
    /* renamed from: T */
    private static int m21638T(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    @TargetApi(21)
    /* renamed from: U */
    private int m21637U(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (C5515h0.f17876a >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.f14556w == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.f14556w = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.f14556w.putInt(1431633921);
        }
        if (this.f14557x == 0) {
            this.f14556w.putInt(4, i);
            this.f14556w.putLong(8, j * 1000);
            this.f14556w.position(0);
            this.f14557x = i;
        }
        int remaining = this.f14556w.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.f14556w, remaining, 1);
            if (write < 0) {
                this.f14557x = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int m21638T = m21638T(audioTrack, byteBuffer, i);
        if (m21638T < 0) {
            this.f14557x = 0;
            return m21638T;
        }
        this.f14557x -= m21638T;
        return m21638T;
    }

    /* renamed from: y */
    private void m21612y(C5102l0 c5102l0, long j) {
        this.f14545l.add(new C4811f(this.f14549p.f14573j ? this.f14537d.mo21603a(c5102l0) : C5102l0.f15984a, Math.max(0L, j), this.f14549p.m21606e(m21650H()), null));
        m21640R();
    }

    /* renamed from: z */
    private long m21611z(long j) {
        return j + this.f14549p.m21606e(this.f14537d.mo21601c());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public void mo21636a() {
        flush();
        m21644N();
        for (AudioProcessor audioProcessor : this.f14541h) {
            audioProcessor.mo21456a();
        }
        for (AudioProcessor audioProcessor2 : this.f14542i) {
            audioProcessor2.mo21456a();
        }
        this.f14532Q = 0;
        this.f14531P = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: c */
    public boolean mo21634c() {
        return !m21647K() || (this.f14529N && !mo21625l());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: d */
    public C5102l0 mo21633d() {
        C5102l0 c5102l0 = this.f14552s;
        if (c5102l0 == null) {
            c5102l0 = !this.f14545l.isEmpty() ? this.f14545l.getLast().f14578a : this.f14553t;
        }
        return c5102l0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (m21647K()) {
            this.f14558y = 0L;
            this.f14559z = 0L;
            this.f14516A = 0L;
            this.f14517B = 0L;
            this.f14518C = 0;
            C5102l0 c5102l0 = this.f14552s;
            if (c5102l0 != null) {
                this.f14553t = c5102l0;
                this.f14552s = null;
            } else if (!this.f14545l.isEmpty()) {
                this.f14553t = this.f14545l.getLast().f14578a;
            }
            this.f14545l.clear();
            this.f14554u = 0L;
            this.f14555v = 0L;
            this.f14540g.m21441o();
            m21655C();
            this.f14524I = null;
            this.f14525J = null;
            this.f14530O = false;
            this.f14529N = false;
            this.f14528M = -1;
            this.f14556w = null;
            this.f14557x = 0;
            this.f14519D = 0;
            if (this.f14544k.m21535i()) {
                this.f14550q.pause();
            }
            AudioTrack audioTrack = this.f14550q;
            this.f14550q = null;
            C4809d c4809d = this.f14548o;
            if (c4809d != null) {
                this.f14549p = c4809d;
                this.f14548o = null;
            }
            this.f14544k.m21527q();
            this.f14543j.close();
            new C4806a(audioTrack).start();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: h */
    public void mo21629h(C5102l0 c5102l0) {
        C4809d c4809d = this.f14549p;
        if (c4809d != null && !c4809d.f14573j) {
            this.f14553t = C5102l0.f15984a;
        } else if (c5102l0.equals(mo21633d())) {
        } else {
            if (m21647K()) {
                this.f14552s = c5102l0;
            } else {
                this.f14553t = c5102l0;
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: i */
    public boolean mo21628i(int i, int i2) {
        boolean z;
        if (C5515h0.m18851U(i2)) {
            boolean z2 = true;
            if (i2 == 4) {
                z2 = C5515h0.f17876a >= 21;
            }
            return z2;
        }
        C4828j c4828j = this.f14536c;
        if (c4828j != null && c4828j.m21575e(i2)) {
            z = true;
            if (i != -1) {
                if (i <= this.f14536c.m21576d()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: j */
    public void mo21627j(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) {
        int[] iArr2;
        int i7;
        int i8;
        int i9;
        if (C5515h0.f17876a < 21 && i2 == 8 && iArr == null) {
            int[] iArr3 = new int[6];
            int i10 = 0;
            while (true) {
                iArr2 = iArr3;
                if (i10 >= 6) {
                    break;
                }
                iArr3[i10] = i10;
                i10++;
            }
        } else {
            iArr2 = iArr;
        }
        boolean m18851U = C5515h0.m18851U(i);
        boolean z = m18851U && i != 4;
        boolean z2 = this.f14538e && mo21628i(i2, 4) && C5515h0.m18852T(i);
        AudioProcessor[] audioProcessorArr = z2 ? this.f14542i : this.f14541h;
        if (z) {
            this.f14540g.m21440p(i5, i6);
            this.f14539f.m21517n(iArr2);
            AudioProcessor.C4804a c4804a = new AudioProcessor.C4804a(i3, i2, i);
            AudioProcessor.C4804a c4804a2 = c4804a;
            for (AudioProcessor audioProcessor : audioProcessorArr) {
                try {
                    c4804a = audioProcessor.mo21455e(c4804a2);
                    if (audioProcessor.mo21453g()) {
                        c4804a2 = c4804a;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e) {
                    throw new AudioSink.ConfigurationException(e);
                }
            }
            i9 = c4804a.f14510b;
            i7 = c4804a.f14511c;
            i8 = c4804a.f14512d;
        } else {
            i8 = i;
            i7 = i2;
            i9 = i3;
        }
        int m21654D = m21654D(i7, m18851U);
        if (m21654D == 0) {
            throw new AudioSink.ConfigurationException("Unsupported channel count: " + i7);
        }
        C4809d c4809d = new C4809d(m18851U, m18851U ? C5515h0.m18863I(i, i2) : -1, i3, m18851U ? C5515h0.m18863I(i8, i7) : -1, i9, m21654D, i8, i4, z, z && !z2, audioProcessorArr);
        if (m21647K()) {
            this.f14548o = c4809d;
        } else {
            this.f14549p = c4809d;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: k */
    public void mo21626k() {
        if (this.f14529N || !m21647K() || !m21656B()) {
            return;
        }
        m21646L();
        this.f14529N = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: l */
    public boolean mo21625l() {
        return m21647K() && this.f14544k.m21536h(m21650H());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: m */
    public long mo21624m(boolean z) {
        if (!m21647K() || this.f14519D == 0) {
            return Long.MIN_VALUE;
        }
        return this.f14520E + m21611z(m21657A(Math.min(this.f14544k.m21540d(z), this.f14549p.m21606e(m21650H()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: n */
    public void mo21623n() {
        if (this.f14534S) {
            this.f14534S = false;
            this.f14532Q = 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: o */
    public void mo21622o(C4825i c4825i) {
        if (this.f14551r.equals(c4825i)) {
            return;
        }
        this.f14551r = c4825i;
        if (this.f14534S) {
            return;
        }
        flush();
        this.f14532Q = 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: p */
    public void mo21621p() {
        if (this.f14519D == 1) {
            this.f14519D = 2;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.f14531P = false;
        if (!m21647K() || !this.f14544k.m21528p()) {
            return;
        }
        this.f14550q.pause();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: q */
    public void mo21620q(float f) {
        if (this.f14521F != f) {
            this.f14521F = f;
            m21643O();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: r */
    public boolean mo21619r(ByteBuffer byteBuffer, long j) {
        ByteBuffer byteBuffer2 = this.f14524I;
        C5508e.m18915a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f14548o != null) {
            if (!m21656B()) {
                return false;
            }
            if (!this.f14548o.m21609b(this.f14549p)) {
                m21646L();
                if (mo21625l()) {
                    return false;
                }
                flush();
            } else {
                this.f14549p = this.f14548o;
                this.f14548o = null;
            }
            m21612y(this.f14553t, j);
        }
        if (!m21647K()) {
            m21649I(j);
            if (this.f14531P) {
                mo21617t();
            }
        }
        if (!this.f14544k.m21533k(m21650H())) {
            return false;
        }
        if (this.f14524I == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            C4809d c4809d = this.f14549p;
            if (!c4809d.f14564a && this.f14518C == 0) {
                int m21653E = m21653E(c4809d.f14570g, byteBuffer);
                this.f14518C = m21653E;
                if (m21653E == 0) {
                    return true;
                }
            }
            if (this.f14552s != null) {
                if (!m21656B()) {
                    return false;
                }
                C5102l0 c5102l0 = this.f14552s;
                this.f14552s = null;
                m21612y(c5102l0, j);
            }
            if (this.f14519D == 0) {
                this.f14520E = Math.max(0L, j);
                this.f14519D = 1;
            } else {
                long m21604g = this.f14520E + this.f14549p.m21604g(m21651G() - this.f14540g.m21442n());
                if (this.f14519D == 1 && Math.abs(m21604g - j) > 200000) {
                    C5526o.m18745c("AudioTrack", "Discontinuity detected [expected " + m21604g + ", got " + j + "]");
                    this.f14519D = 2;
                }
                if (this.f14519D == 2) {
                    long j2 = j - m21604g;
                    this.f14520E += j2;
                    this.f14519D = 1;
                    AudioSink.AbstractC4805a abstractC4805a = this.f14546m;
                    if (abstractC4805a != null && j2 != 0) {
                        abstractC4805a.mo21490c();
                    }
                }
            }
            if (this.f14549p.f14564a) {
                this.f14558y += byteBuffer.remaining();
            } else {
                this.f14559z += this.f14518C;
            }
            this.f14524I = byteBuffer;
        }
        if (this.f14549p.f14572i) {
            m21645M(j);
        } else {
            m21639S(this.f14524I, j);
        }
        if (!this.f14524I.hasRemaining()) {
            this.f14524I = null;
            return true;
        } else if (!this.f14544k.m21534j(m21650H())) {
            return false;
        } else {
            C5526o.m18742f("AudioTrack", "Resetting stalled audio track");
            flush();
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: s */
    public void mo21618s(int i) {
        C5508e.m18910f(C5515h0.f17876a >= 21);
        if (!this.f14534S || this.f14532Q != i) {
            this.f14534S = true;
            this.f14532Q = i;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: t */
    public void mo21617t() {
        this.f14531P = true;
        if (m21647K()) {
            this.f14544k.m21524t();
            this.f14550q.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: u */
    public void mo21616u(AudioSink.AbstractC4805a abstractC4805a) {
        this.f14546m = abstractC4805a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: v */
    public void mo21615v(C4836o c4836o) {
        if (this.f14533R.equals(c4836o)) {
            return;
        }
        int i = c4836o.f14668a;
        float f = c4836o.f14669b;
        AudioTrack audioTrack = this.f14550q;
        if (audioTrack != null) {
            if (this.f14533R.f14668a != i) {
                audioTrack.attachAuxEffect(i);
            }
            if (i != 0) {
                this.f14550q.setAuxEffectSendLevel(f);
            }
        }
        this.f14533R = c4836o;
    }
}
