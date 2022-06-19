package androidx.media2.exoplayer.external.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.C1368ad;
import androidx.media2.exoplayer.external.audio.AudioSink;
import androidx.media2.exoplayer.external.audio.C1420o;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink.class */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: a */
    public static boolean f5224a = false;

    /* renamed from: b */
    public static boolean f5225b = false;

    /* renamed from: A */
    private long f5226A;

    /* renamed from: B */
    private long f5227B;

    /* renamed from: C */
    private long f5228C;

    /* renamed from: D */
    private int f5229D;

    /* renamed from: E */
    private int f5230E;

    /* renamed from: F */
    private long f5231F;

    /* renamed from: G */
    private float f5232G;

    /* renamed from: H */
    private AudioProcessor[] f5233H;

    /* renamed from: I */
    private ByteBuffer[] f5234I;

    /* renamed from: J */
    private ByteBuffer f5235J;

    /* renamed from: K */
    private ByteBuffer f5236K;

    /* renamed from: L */
    private byte[] f5237L;

    /* renamed from: M */
    private int f5238M;

    /* renamed from: N */
    private int f5239N;

    /* renamed from: O */
    private boolean f5240O;

    /* renamed from: P */
    private boolean f5241P;

    /* renamed from: Q */
    private boolean f5242Q;

    /* renamed from: R */
    private C1422p f5243R;

    /* renamed from: S */
    private boolean f5244S;

    /* renamed from: T */
    private long f5245T;

    /* renamed from: c */
    public int f5246c;

    /* renamed from: d */
    private final C1404d f5247d;

    /* renamed from: e */
    private final AbstractC1390a f5248e;

    /* renamed from: f */
    private final boolean f5249f;

    /* renamed from: g */
    private final C1424r f5250g;

    /* renamed from: h */
    private final C1434z f5251h;

    /* renamed from: i */
    private final AudioProcessor[] f5252i;

    /* renamed from: j */
    private final AudioProcessor[] f5253j;

    /* renamed from: k */
    private final ConditionVariable f5254k;

    /* renamed from: l */
    private final C1420o f5255l;

    /* renamed from: m */
    private final ArrayDeque<C1392c> f5256m;

    /* renamed from: n */
    private AudioSink.AbstractC1387a f5257n;

    /* renamed from: o */
    private AudioTrack f5258o;

    /* renamed from: p */
    private Configuration f5259p;

    /* renamed from: q */
    private Configuration f5260q;

    /* renamed from: r */
    private AudioTrack f5261r;

    /* renamed from: s */
    private C1401c f5262s;

    /* renamed from: t */
    private C1368ad f5263t;

    /* renamed from: u */
    private C1368ad f5264u;

    /* renamed from: v */
    private long f5265v;

    /* renamed from: w */
    private long f5266w;

    /* renamed from: x */
    private ByteBuffer f5267x;

    /* renamed from: y */
    private int f5268y;

    /* renamed from: z */
    private long f5269z;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration.class */
    public static final class Configuration {
        public final AudioProcessor[] availableAudioProcessors;
        public final int bufferSize;
        public final boolean canApplyPlaybackParameters;
        public final int inputPcmFrameSize;
        public final int inputSampleRate;
        public final boolean isInputPcm;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;
        public final boolean processingEnabled;

        public Configuration(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, boolean z3, AudioProcessor[] audioProcessorArr) {
            this.isInputPcm = z;
            this.inputPcmFrameSize = i;
            this.inputSampleRate = i2;
            this.outputPcmFrameSize = i3;
            this.outputSampleRate = i4;
            this.outputChannelConfig = i5;
            this.outputEncoding = i6;
            this.bufferSize = i7 == 0 ? getDefaultBufferSize() : i7;
            this.processingEnabled = z2;
            this.canApplyPlaybackParameters = z3;
            this.availableAudioProcessors = audioProcessorArr;
        }

        private AudioTrack createAudioTrackV21(boolean z, C1401c c1401c, int i) {
            AudioAttributes build = z ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : c1401c.m43019a();
            AudioFormat build2 = new AudioFormat.Builder().setChannelMask(this.outputChannelConfig).setEncoding(this.outputEncoding).setSampleRate(this.outputSampleRate).build();
            int i2 = this.bufferSize;
            if (i == 0) {
                i = 0;
            }
            return new AudioTrack(build, build2, i2, 1, i);
        }

        private int getDefaultBufferSize() {
            if (this.isInputPcm) {
                int minBufferSize = AudioTrack.getMinBufferSize(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
                C1993a.m41686b(minBufferSize != -2);
                return C1996ac.m41674a(minBufferSize * 4, ((int) durationUsToFrames(250000L)) * this.outputPcmFrameSize, (int) Math.max(minBufferSize, durationUsToFrames(750000L) * this.outputPcmFrameSize));
            }
            int m43062b = DefaultAudioSink.m43062b(this.outputEncoding);
            int i = m43062b;
            if (this.outputEncoding == 5) {
                i = m43062b * 2;
            }
            return (int) ((i * 250000) / 1000000);
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007f -> B:14:0x006a). Please submit an issue!!! */
        public final AudioTrack buildAudioTrack(boolean z, C1401c c1401c, int i) throws AudioSink.InitializationException {
            AudioTrack audioTrack;
            if (C1996ac.f8062a >= 21) {
                audioTrack = createAudioTrackV21(z, c1401c, i);
            } else {
                int m41617f = C1996ac.m41617f(c1401c.f5301d);
                audioTrack = i == 0 ? new AudioTrack(m41617f, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1) : new AudioTrack(m41617f, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception e) {
            }
            throw new AudioSink.InitializationException(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize);
        }

        public final boolean canReuseAudioTrack(Configuration configuration) {
            return configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig;
        }

        public final long durationUsToFrames(long j) {
            return (j * this.outputSampleRate) / 1000000;
        }

        public final long framesToDurationUs(long j) {
            return (j * 1000000) / this.outputSampleRate;
        }

        public final long inputFramesToDurationUs(long j) {
            return (j * 1000000) / this.inputSampleRate;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException.class */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$a.class */
    public interface AbstractC1390a {
        /* renamed from: a */
        long mo43038a(long j);

        /* renamed from: a */
        C1368ad mo43037a(C1368ad c1368ad);

        /* renamed from: a */
        AudioProcessor[] mo43039a();

        /* renamed from: b */
        long mo43036b();
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$b.class */
    public static final class C1391b implements AbstractC1390a {

        /* renamed from: a */
        private final AudioProcessor[] f5273a;

        /* renamed from: b */
        private final C1431w f5274b;

        /* renamed from: c */
        private final C1433y f5275c;

        public C1391b(AudioProcessor... audioProcessorArr) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f5273a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            C1431w c1431w = new C1431w();
            this.f5274b = c1431w;
            C1433y c1433y = new C1433y();
            this.f5275c = c1433y;
            audioProcessorArr2[audioProcessorArr.length] = c1431w;
            audioProcessorArr2[audioProcessorArr.length + 1] = c1433y;
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AbstractC1390a
        /* renamed from: a */
        public final long mo43038a(long j) {
            C1433y c1433y = this.f5275c;
            return c1433y.f5445h >= 1024 ? c1433y.f5442e == c1433y.f5439b ? C1996ac.m41634b(j, c1433y.f5444g, c1433y.f5445h) : C1996ac.m41634b(j, c1433y.f5444g * c1433y.f5442e, c1433y.f5445h * c1433y.f5439b) : (long) (c1433y.f5440c * j);
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AbstractC1390a
        /* renamed from: a */
        public final C1368ad mo43037a(C1368ad c1368ad) {
            C1431w c1431w = this.f5274b;
            c1431w.f5408e = c1368ad.f5138d;
            c1431w.mo42947h();
            C1433y c1433y = this.f5275c;
            float m41677a = C1996ac.m41677a(c1368ad.f5136b, 0.1f, 8.0f);
            if (c1433y.f5440c != m41677a) {
                c1433y.f5440c = m41677a;
                c1433y.f5443f = true;
            }
            c1433y.mo42947h();
            C1433y c1433y2 = this.f5275c;
            float m41677a2 = C1996ac.m41677a(c1368ad.f5137c, 0.1f, 8.0f);
            if (c1433y2.f5441d != m41677a2) {
                c1433y2.f5441d = m41677a2;
                c1433y2.f5443f = true;
            }
            c1433y2.mo42947h();
            return new C1368ad(m41677a, m41677a2, c1368ad.f5138d);
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AbstractC1390a
        /* renamed from: a */
        public final AudioProcessor[] mo43039a() {
            return this.f5273a;
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AbstractC1390a
        /* renamed from: b */
        public final long mo43036b() {
            return this.f5274b.f5409f;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$c.class */
    public static final class C1392c {

        /* renamed from: a */
        final C1368ad f5276a;

        /* renamed from: b */
        final long f5277b;

        /* renamed from: c */
        final long f5278c;

        private C1392c(C1368ad c1368ad, long j, long j2) {
            this.f5276a = c1368ad;
            this.f5277b = j;
            this.f5278c = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$d.class */
    public final class C1393d implements C1420o.AbstractC1421a {
        private C1393d() {
            DefaultAudioSink.this = r4;
        }

        @Override // androidx.media2.exoplayer.external.audio.C1420o.AbstractC1421a
        /* renamed from: a */
        public final void mo42985a(int i, long j) {
            if (DefaultAudioSink.this.f5257n != null) {
                DefaultAudioSink.this.f5257n.mo42964a(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f5245T);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.C1420o.AbstractC1421a
        /* renamed from: a */
        public final void mo42984a(long j) {
            StringBuilder sb = new StringBuilder(61);
            sb.append("Ignoring impossibly large audio latency: ");
            sb.append(j);
            C2009j.m41584a("AudioTrack", sb.toString());
        }

        @Override // androidx.media2.exoplayer.external.audio.C1420o.AbstractC1421a
        /* renamed from: a */
        public final void mo42983a(long j, long j2, long j3, long j4) {
            long m43042q = DefaultAudioSink.this.m43042q();
            long m43041r = DefaultAudioSink.this.m43041r();
            StringBuilder sb = new StringBuilder(182);
            sb.append("Spurious audio timestamp (frame position mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(m43042q);
            sb.append(", ");
            sb.append(m43041r);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.f5225b) {
                C2009j.m41584a("AudioTrack", sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2);
        }

        @Override // androidx.media2.exoplayer.external.audio.C1420o.AbstractC1421a
        /* renamed from: b */
        public final void mo42982b(long j, long j2, long j3, long j4) {
            long m43042q = DefaultAudioSink.this.m43042q();
            long m43041r = DefaultAudioSink.this.m43041r();
            StringBuilder sb = new StringBuilder(180);
            sb.append("Spurious audio timestamp (system clock mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(m43042q);
            sb.append(", ");
            sb.append(m43041r);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.f5225b) {
                C2009j.m41584a("AudioTrack", sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2);
        }
    }

    public DefaultAudioSink(C1404d c1404d, AbstractC1390a abstractC1390a, boolean z) {
        this.f5247d = c1404d;
        this.f5248e = (AbstractC1390a) C1993a.m41690a(abstractC1390a);
        this.f5249f = z;
        this.f5254k = new ConditionVariable(true);
        this.f5255l = new C1420o(new C1393d());
        C1424r c1424r = new C1424r();
        this.f5250g = c1424r;
        C1434z c1434z = new C1434z();
        this.f5251h = c1434z;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new C1430v(), c1424r, c1434z);
        Collections.addAll(arrayList, abstractC1390a.mo43039a());
        this.f5252i = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f5253j = new AudioProcessor[]{new C1426t()};
        this.f5232G = 1.0f;
        this.f5230E = 0;
        this.f5262s = C1401c.f5298a;
        this.f5246c = 0;
        this.f5243R = new C1422p(0, BitmapDescriptorFactory.HUE_RED);
        this.f5264u = C1368ad.f5135a;
        this.f5239N = -1;
        this.f5233H = new AudioProcessor[0];
        this.f5234I = new ByteBuffer[0];
        this.f5256m = new ArrayDeque<>();
    }

    public DefaultAudioSink(C1404d c1404d, AudioProcessor[] audioProcessorArr) {
        this(c1404d, audioProcessorArr, false);
    }

    public DefaultAudioSink(C1404d c1404d, AudioProcessor[] audioProcessorArr, boolean z) {
        this(c1404d, new C1391b(audioProcessorArr), z);
    }

    /* renamed from: a */
    private int m43072a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (C1996ac.f8062a >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.f5267x == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.f5267x = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.f5267x.putInt(1431633921);
        }
        if (this.f5268y == 0) {
            this.f5267x.putInt(4, i);
            this.f5267x.putLong(8, j * 1000);
            this.f5267x.position(0);
            this.f5268y = i;
        }
        int remaining = this.f5267x.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.f5267x, remaining, 1);
            if (write < 0) {
                this.f5268y = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int write2 = audioTrack.write(byteBuffer, i, 1);
        if (write2 < 0) {
            this.f5268y = 0;
            return write2;
        }
        this.f5268y -= write2;
        return write2;
    }

    /* renamed from: a */
    private void m43073a(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.f5233H.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f5234I[i - 1];
            } else {
                byteBuffer = this.f5235J;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f5221a;
                }
            }
            if (i == length) {
                m43060b(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.f5233H[i];
                audioProcessor.mo42943a(byteBuffer);
                ByteBuffer mo42942f = audioProcessor.mo42942f();
                this.f5234I[i] = mo42942f;
                if (mo42942f.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* renamed from: a */
    private void m43070a(C1368ad c1368ad, long j) {
        this.f5256m.add(new C1392c(this.f5260q.canApplyPlaybackParameters ? this.f5248e.mo43037a(c1368ad) : C1368ad.f5135a, Math.max(0L, j), this.f5260q.framesToDurationUs(m43041r())));
        m43048k();
    }

    /* renamed from: b */
    static /* synthetic */ int m43062b(int i) {
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

    /* renamed from: b */
    private void m43060b(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ByteBuffer byteBuffer2 = this.f5236K;
        int i = 0;
        if (byteBuffer2 != null) {
            C1993a.m41688a(byteBuffer2 == byteBuffer);
        } else {
            this.f5236K = byteBuffer;
            if (C1996ac.f8062a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.f5237L;
                if (bArr == null || bArr.length < remaining) {
                    this.f5237L = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.f5237L, 0, remaining);
                byteBuffer.position(position);
                this.f5238M = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (C1996ac.f8062a < 21) {
            int m42994a = this.f5255l.m42994a(this.f5227B);
            if (m42994a > 0) {
                int write = this.f5261r.write(this.f5237L, this.f5238M, Math.min(remaining2, m42994a));
                i = write;
                if (write > 0) {
                    this.f5238M += write;
                    byteBuffer.position(byteBuffer.position() + write);
                    i = write;
                }
            }
        } else if (this.f5244S) {
            C1993a.m41686b(j != -9223372036854775807L);
            i = m43072a(this.f5261r, byteBuffer, remaining2, j);
        } else {
            i = this.f5261r.write(byteBuffer, remaining2, 1);
        }
        this.f5245T = SystemClock.elapsedRealtime();
        if (i < 0) {
            throw new AudioSink.WriteException(i);
        }
        if (this.f5260q.isInputPcm) {
            this.f5227B += i;
        }
        if (i != remaining2) {
            return;
        }
        if (!this.f5260q.isInputPcm) {
            this.f5228C += this.f5229D;
        }
        this.f5236K = null;
    }

    /* renamed from: k */
    private void m43048k() {
        AudioProcessor[] audioProcessorArr = this.f5260q.availableAudioProcessors;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.mo42945a()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.mo42947h();
            }
        }
        int size = arrayList.size();
        this.f5233H = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.f5234I = new ByteBuffer[size];
        m43047l();
    }

    /* renamed from: l */
    private void m43047l() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.f5233H;
            if (i < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i];
                audioProcessor.mo42947h();
                this.f5234I[i] = audioProcessor.mo42942f();
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0059 -> B:9:0x0022). Please submit an issue!!! */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m43046m() throws androidx.media2.exoplayer.external.audio.AudioSink.WriteException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f5239N
            r1 = -1
            if (r0 != r1) goto L27
            r0 = r5
            androidx.media2.exoplayer.external.audio.DefaultAudioSink$Configuration r0 = r0.f5260q
            boolean r0 = r0.processingEnabled
            if (r0 == 0) goto L17
            r0 = 0
            r6 = r0
            goto L1d
        L17:
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioProcessor[] r0 = r0.f5233H
            int r0 = r0.length
            r6 = r0
        L1d:
            r0 = r5
            r1 = r6
            r0.f5239N = r1
        L22:
            r0 = 1
            r6 = r0
            goto L29
        L27:
            r0 = 0
            r6 = r0
        L29:
            r0 = r5
            int r0 = r0.f5239N
            r7 = r0
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioProcessor[] r0 = r0.f5233H
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
            r0.mo42948e()
        L47:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m43073a(r1)
            r0 = r8
            boolean r0 = r0.mo42941g()
            if (r0 != 0) goto L59
            r0 = 0
            return r0
        L59:
            r0 = r5
            r1 = r5
            int r1 = r1.f5239N
            r2 = 1
            int r1 = r1 + r2
            r0.f5239N = r1
            goto L22
        L66:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f5236K
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L80
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m43060b(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f5236K
            if (r0 == 0) goto L80
            r0 = 0
            return r0
        L80:
            r0 = r5
            r1 = -1
            r0.f5239N = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.m43046m():boolean");
    }

    /* renamed from: n */
    private void m43045n() {
        if (m43043p()) {
            if (C1996ac.f8062a >= 21) {
                this.f5261r.setVolume(this.f5232G);
                return;
            }
            AudioTrack audioTrack = this.f5261r;
            float f = this.f5232G;
            audioTrack.setStereoVolume(f, f);
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.media2.exoplayer.external.audio.DefaultAudioSink$2] */
    /* renamed from: o */
    private void m43044o() {
        final AudioTrack audioTrack = this.f5258o;
        if (audioTrack == null) {
            return;
        }
        this.f5258o = null;
        new Thread(this) { // from class: androidx.media2.exoplayer.external.audio.DefaultAudioSink.2
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                audioTrack.release();
            }
        }.start();
    }

    /* renamed from: p */
    private boolean m43043p() {
        return this.f5261r != null;
    }

    /* renamed from: q */
    public long m43042q() {
        return this.f5260q.isInputPcm ? this.f5269z / this.f5260q.inputPcmFrameSize : this.f5226A;
    }

    /* renamed from: r */
    public long m43041r() {
        return this.f5260q.isInputPcm ? this.f5227B / this.f5260q.outputPcmFrameSize : this.f5228C;
    }

    /* renamed from: s */
    private void m43040s() {
        if (!this.f5241P) {
            this.f5241P = true;
            this.f5255l.m42991b(m43041r());
            this.f5261r.stop();
            this.f5268y = 0;
        }
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final long mo43064a(boolean z) {
        C1392c c1392c;
        char c;
        char c2;
        char c3;
        if (!m43043p() || this.f5230E == 0) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.f5255l.m42993a(z), this.f5260q.framesToDurationUs(m43041r()));
        long j = this.f5231F;
        C1392c c1392c2 = null;
        while (true) {
            c1392c = c1392c2;
            if (this.f5256m.isEmpty() || min < this.f5256m.getFirst().f5278c) {
                break;
            }
            c1392c2 = this.f5256m.remove();
        }
        if (c1392c != null) {
            this.f5264u = c1392c.f5276a;
            this.f5266w = c1392c.f5278c;
            this.f5265v = c1392c.f5277b - this.f5231F;
        }
        if (this.f5264u.f5136b == 1.0f) {
            c = (min + this.f5265v) - this.f5266w;
        } else {
            if (this.f5256m.isEmpty()) {
                c2 = this.f5265v;
                c3 = this.f5248e.mo43038a(min - this.f5266w);
            } else {
                c2 = this.f5265v;
                c3 = C1996ac.m41673a(min - this.f5266w, this.f5264u.f5136b);
            }
            c = c3 + c2;
        }
        return j + c + this.f5260q.framesToDurationUs(this.f5248e.mo43036b());
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final void mo43078a() {
        this.f5242Q = true;
        if (m43043p()) {
            ((C1418n) C1993a.m41690a(this.f5255l.f5353e)).m43000a();
            this.f5261r.play();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final void mo43077a(float f) {
        if (this.f5232G != f) {
            this.f5232G = f;
            m43045n();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final void mo43076a(int i) {
        C1993a.m41686b(C1996ac.f8062a >= 21);
        if (!this.f5244S || this.f5246c != i) {
            this.f5244S = true;
            this.f5246c = i;
            mo43050i();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0206, code lost:
        if (r14.f5259p != null) goto L90;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01aa  */
    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo43074a(int r15, int r16, int r17, int[] r18, int r19, int r20) throws androidx.media2.exoplayer.external.audio.AudioSink.ConfigurationException {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.mo43074a(int, int, int, int[], int, int):void");
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final void mo43071a(C1368ad c1368ad) {
        Configuration configuration = this.f5260q;
        if (configuration != null && !configuration.canApplyPlaybackParameters) {
            this.f5264u = C1368ad.f5135a;
        } else if (c1368ad.equals(mo43053f())) {
        } else {
            if (m43043p()) {
                this.f5263t = c1368ad;
            } else {
                this.f5264u = c1368ad;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final void mo43069a(AudioSink.AbstractC1387a abstractC1387a) {
        this.f5257n = abstractC1387a;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final void mo43067a(C1401c c1401c) {
        if (this.f5262s.equals(c1401c)) {
            return;
        }
        this.f5262s = c1401c;
        if (this.f5244S) {
            return;
        }
        mo43050i();
        this.f5246c = 0;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final void mo43066a(C1422p c1422p) {
        if (this.f5243R.equals(c1422p)) {
            return;
        }
        int i = c1422p.f5374a;
        float f = c1422p.f5375b;
        if (this.f5261r != null) {
            if (this.f5243R.f5374a != i) {
                this.f5261r.attachAuxEffect(i);
            }
            if (i != 0) {
                this.f5261r.setAuxEffectSendLevel(f);
            }
        }
        this.f5243R = c1422p;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public final boolean mo43075a(int i, int i2) {
        if (C1996ac.m41625c(i2)) {
            return i2 != 4 || C1996ac.f8062a >= 21;
        }
        C1404d c1404d = this.f5247d;
        if (c1404d == null) {
            return false;
        }
        if (!(Arrays.binarySearch(c1404d.f5308b, i2) >= 0)) {
            return false;
        }
        return i == -1 || i <= this.f5247d.f5309c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x025e, code lost:
        if (r0.m42988d() == 0) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b3  */
    /* JADX WARN: Type inference failed for: r0v225, types: [long] */
    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo43065a(java.nio.ByteBuffer r12, long r13) throws androidx.media2.exoplayer.external.audio.AudioSink.InitializationException, androidx.media2.exoplayer.external.audio.AudioSink.WriteException {
        /*
            Method dump skipped, instructions count: 1295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.mo43065a(java.nio.ByteBuffer, long):boolean");
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: b */
    public final void mo43063b() {
        if (this.f5230E == 1) {
            this.f5230E = 2;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: c */
    public final void mo43059c() throws AudioSink.WriteException {
        if (this.f5240O || !m43043p() || !m43046m()) {
            return;
        }
        m43040s();
        this.f5240O = true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: d */
    public final boolean mo43057d() {
        if (m43043p()) {
            return this.f5240O && !mo43055e();
        }
        return true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: e */
    public final boolean mo43055e() {
        return m43043p() && this.f5255l.m42989c(m43041r());
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: f */
    public final C1368ad mo43053f() {
        C1368ad c1368ad = this.f5263t;
        return c1368ad != null ? c1368ad : !this.f5256m.isEmpty() ? this.f5256m.getLast().f5276a : this.f5264u;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: g */
    public final void mo43052g() {
        if (this.f5244S) {
            this.f5244S = false;
            this.f5246c = 0;
            mo43050i();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: h */
    public final void mo43051h() {
        boolean z = false;
        this.f5242Q = false;
        if (m43043p()) {
            C1420o c1420o = this.f5255l;
            c1420o.m42990c();
            if (c1420o.f5363o == -9223372036854775807L) {
                ((C1418n) C1993a.m41690a(c1420o.f5353e)).m43000a();
                z = true;
            }
            if (!z) {
                return;
            }
            this.f5261r.pause();
        }
    }

    /* JADX WARN: Type inference failed for: r0v38, types: [androidx.media2.exoplayer.external.audio.DefaultAudioSink$1] */
    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: i */
    public final void mo43050i() {
        if (m43043p()) {
            this.f5269z = 0L;
            this.f5226A = 0L;
            this.f5227B = 0L;
            this.f5228C = 0L;
            this.f5229D = 0;
            C1368ad c1368ad = this.f5263t;
            if (c1368ad != null) {
                this.f5264u = c1368ad;
                this.f5263t = null;
            } else if (!this.f5256m.isEmpty()) {
                this.f5264u = this.f5256m.getLast().f5276a;
            }
            this.f5256m.clear();
            this.f5265v = 0L;
            this.f5266w = 0L;
            this.f5251h.f5455g = 0L;
            m43047l();
            this.f5235J = null;
            this.f5236K = null;
            this.f5241P = false;
            this.f5240O = false;
            this.f5239N = -1;
            this.f5267x = null;
            this.f5268y = 0;
            this.f5230E = 0;
            if (this.f5255l.m42995a()) {
                this.f5261r.pause();
            }
            final AudioTrack audioTrack = this.f5261r;
            this.f5261r = null;
            Configuration configuration = this.f5259p;
            if (configuration != null) {
                this.f5260q = configuration;
                this.f5259p = null;
            }
            this.f5255l.m42992b();
            this.f5254k.close();
            new Thread() { // from class: androidx.media2.exoplayer.external.audio.DefaultAudioSink.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        DefaultAudioSink.this.f5254k.open();
                    }
                }
            }.start();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: j */
    public final void mo43049j() {
        mo43050i();
        m43044o();
        for (AudioProcessor audioProcessor : this.f5252i) {
            audioProcessor.mo42946i();
        }
        for (AudioProcessor audioProcessor2 : this.f5253j) {
            audioProcessor2.mo42946i();
        }
        this.f5246c = 0;
        this.f5242Q = false;
    }
}
