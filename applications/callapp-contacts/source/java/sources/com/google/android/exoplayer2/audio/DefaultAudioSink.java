package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.C10897h;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11620q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.mobileads.VastVideoViewController;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink.class */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: a */
    public static boolean f35043a = false;

    /* renamed from: A */
    private long f35044A;

    /* renamed from: B */
    private long f35045B;

    /* renamed from: C */
    private long f35046C;

    /* renamed from: D */
    private long f35047D;

    /* renamed from: E */
    private int f35048E;

    /* renamed from: F */
    private boolean f35049F;

    /* renamed from: G */
    private boolean f35050G;

    /* renamed from: H */
    private long f35051H;

    /* renamed from: I */
    private float f35052I;

    /* renamed from: J */
    private AudioProcessor[] f35053J;

    /* renamed from: K */
    private ByteBuffer[] f35054K;

    /* renamed from: L */
    private ByteBuffer f35055L;

    /* renamed from: M */
    private int f35056M;

    /* renamed from: N */
    private ByteBuffer f35057N;

    /* renamed from: O */
    private byte[] f35058O;

    /* renamed from: P */
    private int f35059P;

    /* renamed from: Q */
    private int f35060Q;

    /* renamed from: R */
    private boolean f35061R;

    /* renamed from: S */
    private boolean f35062S;

    /* renamed from: T */
    private boolean f35063T;

    /* renamed from: U */
    private boolean f35064U;

    /* renamed from: V */
    private int f35065V;

    /* renamed from: W */
    private C10899i f35066W;

    /* renamed from: X */
    private boolean f35067X;

    /* renamed from: Y */
    private long f35068Y;

    /* renamed from: Z */
    private boolean f35069Z;

    /* renamed from: aa */
    private boolean f35070aa;

    /* renamed from: b */
    private final C10892e f35071b;

    /* renamed from: c */
    private final AbstractC10873a f35072c;

    /* renamed from: d */
    private final boolean f35073d;

    /* renamed from: e */
    private final C10901k f35074e;

    /* renamed from: f */
    private final C10914u f35075f;

    /* renamed from: g */
    private final AudioProcessor[] f35076g;

    /* renamed from: h */
    private final AudioProcessor[] f35077h;

    /* renamed from: i */
    private final ConditionVariable f35078i;

    /* renamed from: j */
    private final C10897h f35079j;

    /* renamed from: k */
    private final ArrayDeque<C10875c> f35080k;

    /* renamed from: l */
    private final boolean f35081l;

    /* renamed from: m */
    private final boolean f35082m;

    /* renamed from: n */
    private C10878f f35083n;

    /* renamed from: o */
    private final C10876d<AudioSink.InitializationException> f35084o;

    /* renamed from: p */
    private final C10876d<AudioSink.WriteException> f35085p;

    /* renamed from: q */
    private AudioSink.AbstractC10871a f35086q;

    /* renamed from: r */
    private Configuration f35087r;

    /* renamed from: s */
    private Configuration f35088s;

    /* renamed from: t */
    private AudioTrack f35089t;

    /* renamed from: u */
    private C10889d f35090u;

    /* renamed from: v */
    private C10875c f35091v;

    /* renamed from: w */
    private C10875c f35092w;

    /* renamed from: x */
    private C10840aa f35093x;

    /* renamed from: y */
    private ByteBuffer f35094y;

    /* renamed from: z */
    private int f35095z;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$Configuration.class */
    public static final class Configuration {
        public final AudioProcessor[] availableAudioProcessors;
        public final int bufferSize;
        public final Format inputFormat;
        public final int inputPcmFrameSize;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputMode;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;

        public Configuration(Format format, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, AudioProcessor[] audioProcessorArr) {
            this.inputFormat = format;
            this.inputPcmFrameSize = i;
            this.outputMode = i2;
            this.outputPcmFrameSize = i3;
            this.outputSampleRate = i4;
            this.outputChannelConfig = i5;
            this.outputEncoding = i6;
            this.availableAudioProcessors = audioProcessorArr;
            this.bufferSize = computeBufferSize(i7, z);
        }

        private int computeBufferSize(int i, boolean z) {
            if (i != 0) {
                return i;
            }
            int i2 = this.outputMode;
            if (i2 == 0) {
                return getPcmDefaultBufferSize(z ? 8.0f : 1.0f);
            } else if (i2 == 1) {
                return getEncodedDefaultBufferSize(50000000L);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException();
                }
                return getEncodedDefaultBufferSize(250000L);
            }
        }

        private AudioTrack createAudioTrack(boolean z, C10889d c10889d, int i) {
            return C11599af.f38648a >= 29 ? createAudioTrackV29(z, c10889d, i) : C11599af.f38648a >= 21 ? createAudioTrackV21(z, c10889d, i) : createAudioTrackV9(c10889d, i);
        }

        private AudioTrack createAudioTrackV21(boolean z, C10889d c10889d, int i) {
            return new AudioTrack(getAudioTrackAttributesV21(c10889d, z), DefaultAudioSink.m22139b(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding), this.bufferSize, 1, i);
        }

        private AudioTrack createAudioTrackV29(boolean z, C10889d c10889d, int i) {
            AudioFormat m22139b = DefaultAudioSink.m22139b(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
            AudioAttributes audioTrackAttributesV21 = getAudioTrackAttributesV21(c10889d, z);
            boolean z2 = true;
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(audioTrackAttributesV21).setAudioFormat(m22139b).setTransferMode(1).setBufferSizeInBytes(this.bufferSize).setSessionId(i);
            if (this.outputMode != 1) {
                z2 = false;
            }
            return sessionId.setOffloadedPlayback(z2).build();
        }

        private AudioTrack createAudioTrackV9(C10889d c10889d, int i) {
            int m19923f = C11599af.m19923f(c10889d.f35140d);
            return i == 0 ? new AudioTrack(m19923f, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1) : new AudioTrack(m19923f, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, i);
        }

        private static AudioAttributes getAudioTrackAttributesV21(C10889d c10889d, boolean z) {
            return z ? getAudioTrackTunnelingAttributesV21() : c10889d.m22070a();
        }

        private static AudioAttributes getAudioTrackTunnelingAttributesV21() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        private int getEncodedDefaultBufferSize(long j) {
            int m22140b = DefaultAudioSink.m22140b(this.outputEncoding);
            int i = m22140b;
            if (this.outputEncoding == 5) {
                i = m22140b * 2;
            }
            return (int) ((j * i) / 1000000);
        }

        private int getPcmDefaultBufferSize(float f) {
            int minBufferSize = AudioTrack.getMinBufferSize(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding);
            C11593a.m20019b(minBufferSize != -2);
            int m19997a = C11599af.m19997a(minBufferSize * 4, ((int) durationUsToFrames(250000L)) * this.outputPcmFrameSize, Math.max(minBufferSize, ((int) durationUsToFrames(750000L)) * this.outputPcmFrameSize));
            int i = m19997a;
            if (f != 1.0f) {
                i = Math.round(m19997a * f);
            }
            return i;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0059 -> B:8:0x0018). Please submit an issue!!! */
        public final AudioTrack buildAudioTrack(boolean z, C10889d c10889d, int i) throws AudioSink.InitializationException {
            try {
                AudioTrack createAudioTrack = createAudioTrack(z, c10889d, i);
                int state = createAudioTrack.getState();
                if (state == 1) {
                    return createAudioTrack;
                }
                try {
                    createAudioTrack.release();
                } catch (Exception e) {
                }
                throw new AudioSink.InitializationException(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e2) {
                throw new AudioSink.InitializationException(0, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, outputModeIsOffload(), e2);
            }
        }

        public final boolean canReuseAudioTrack(Configuration configuration) {
            return configuration.outputMode == this.outputMode && configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig && configuration.outputPcmFrameSize == this.outputPcmFrameSize;
        }

        public final long durationUsToFrames(long j) {
            return (j * this.outputSampleRate) / 1000000;
        }

        public final long framesToDurationUs(long j) {
            return (j * 1000000) / this.outputSampleRate;
        }

        public final long inputFramesToDurationUs(long j) {
            return (j * 1000000) / this.inputFormat.sampleRate;
        }

        public final boolean outputModeIsOffload() {
            return this.outputMode == 1;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException.class */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$a.class */
    public interface AbstractC10873a {
        /* renamed from: a */
        long mo22098a(long j);

        /* renamed from: a */
        C10840aa mo22097a(C10840aa c10840aa);

        /* renamed from: a */
        boolean mo22096a(boolean z);

        /* renamed from: a */
        AudioProcessor[] mo22099a();

        /* renamed from: b */
        long mo22095b();
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$b.class */
    public static final class C10874b implements AbstractC10873a {

        /* renamed from: a */
        private final AudioProcessor[] f35098a;

        /* renamed from: b */
        private final C10911r f35099b;

        /* renamed from: c */
        private final C10913t f35100c;

        public C10874b(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new C10911r(), new C10913t());
        }

        public C10874b(AudioProcessor[] audioProcessorArr, C10911r c10911r, C10913t c10913t) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f35098a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f35099b = c10911r;
            this.f35100c = c10913t;
            audioProcessorArr2[audioProcessorArr.length] = c10911r;
            audioProcessorArr2[audioProcessorArr.length + 1] = c10913t;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC10873a
        /* renamed from: a */
        public final long mo22098a(long j) {
            C10913t c10913t = this.f35100c;
            if (c10913t.f35279i >= 1024) {
                long j2 = c10913t.f35278h;
                C10912s c10912s = (C10912s) C11593a.m20020b(c10913t.f35277g);
                long j3 = j2 - ((c10912s.f35256g * c10912s.f35250a) * 2);
                return c10913t.f35275e.f35033b == c10913t.f35274d.f35033b ? C11599af.m19946b(j, j3, c10913t.f35279i) : C11599af.m19946b(j, j3 * c10913t.f35275e.f35033b, c10913t.f35279i * c10913t.f35274d.f35033b);
            }
            return (long) (c10913t.f35272b * j);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC10873a
        /* renamed from: a */
        public final C10840aa mo22097a(C10840aa c10840aa) {
            C10913t c10913t = this.f35100c;
            float f = c10840aa.f34892b;
            if (c10913t.f35272b != f) {
                c10913t.f35272b = f;
                c10913t.f35276f = true;
            }
            C10913t c10913t2 = this.f35100c;
            float f2 = c10840aa.f34893c;
            if (c10913t2.f35273c != f2) {
                c10913t2.f35273c = f2;
                c10913t2.f35276f = true;
            }
            return c10840aa;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC10873a
        /* renamed from: a */
        public final boolean mo22096a(boolean z) {
            this.f35099b.f35238d = z;
            return z;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC10873a
        /* renamed from: a */
        public final AudioProcessor[] mo22099a() {
            return this.f35098a;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC10873a
        /* renamed from: b */
        public final long mo22095b() {
            return this.f35099b.f35239e;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$c.class */
    public static final class C10875c {

        /* renamed from: a */
        public final C10840aa f35101a;

        /* renamed from: b */
        public final boolean f35102b;

        /* renamed from: c */
        public final long f35103c;

        /* renamed from: d */
        public final long f35104d;

        private C10875c(C10840aa c10840aa, boolean z, long j, long j2) {
            this.f35101a = c10840aa;
            this.f35102b = z;
            this.f35103c = j;
            this.f35104d = j2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$d.class */
    public static final class C10876d<T extends Exception> {

        /* renamed from: a */
        T f35105a;

        /* renamed from: b */
        private final long f35106b;

        /* renamed from: c */
        private long f35107c;

        public C10876d(long j) {
            this.f35106b = j;
        }

        /* renamed from: a */
        public final void m22094a(T t) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f35105a == null) {
                this.f35105a = t;
                this.f35107c = this.f35106b + elapsedRealtime;
            }
            if (elapsedRealtime >= this.f35107c) {
                T t2 = this.f35105a;
                if (t2 != t) {
                    t2.addSuppressed(t);
                }
                T t3 = this.f35105a;
                this.f35105a = null;
                throw t3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$e.class */
    public final class C10877e implements C10897h.AbstractC10898a {
        private C10877e() {
            DefaultAudioSink.this = r4;
        }

        @Override // com.google.android.exoplayer2.audio.C10897h.AbstractC10898a
        /* renamed from: a */
        public final void mo22021a(int i, long j) {
            if (DefaultAudioSink.this.f35086q != null) {
                DefaultAudioSink.this.f35086q.mo22003a(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f35068Y);
            }
        }

        @Override // com.google.android.exoplayer2.audio.C10897h.AbstractC10898a
        /* renamed from: a */
        public final void mo22020a(long j) {
            if (DefaultAudioSink.this.f35086q != null) {
                DefaultAudioSink.this.f35086q.mo22002a(j);
            }
        }

        @Override // com.google.android.exoplayer2.audio.C10897h.AbstractC10898a
        /* renamed from: a */
        public final void mo22019a(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.m22103w() + ", " + DefaultAudioSink.this.m22102x();
            if (!DefaultAudioSink.f35043a) {
                C11617n.m19863a("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str);
        }

        @Override // com.google.android.exoplayer2.audio.C10897h.AbstractC10898a
        /* renamed from: b */
        public final void mo22018b(long j) {
            C11617n.m19863a("DefaultAudioSink", "Ignoring impossibly large audio latency: ".concat(String.valueOf(j)));
        }

        @Override // com.google.android.exoplayer2.audio.C10897h.AbstractC10898a
        /* renamed from: b */
        public final void mo22017b(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.m22103w() + ", " + DefaultAudioSink.this.m22102x();
            if (!DefaultAudioSink.f35043a) {
                C11617n.m19863a("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str);
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$f.class */
    public final class C10878f {

        /* renamed from: b */
        private final Handler f35110b = new Handler();

        /* renamed from: c */
        private final AudioTrack.StreamEventCallback f35111c;

        public C10878f() {
            DefaultAudioSink.this = r7;
            this.f35111c = new AudioTrack.StreamEventCallback() { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink.f.1
                @Override // android.media.AudioTrack.StreamEventCallback
                public final void onDataRequest(AudioTrack audioTrack, int i) {
                    C11593a.m20019b(audioTrack == DefaultAudioSink.this.f35089t);
                    if (DefaultAudioSink.this.f35086q == null || !DefaultAudioSink.this.f35063T) {
                        return;
                    }
                    DefaultAudioSink.this.f35086q.mo21999b();
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public final void onTearDown(AudioTrack audioTrack) {
                    C11593a.m20019b(audioTrack == DefaultAudioSink.this.f35089t);
                    if (DefaultAudioSink.this.f35086q == null || !DefaultAudioSink.this.f35063T) {
                        return;
                    }
                    DefaultAudioSink.this.f35086q.mo21999b();
                }
            };
        }

        /* renamed from: a */
        public final void m22093a(AudioTrack audioTrack) {
            final Handler handler = this.f35110b;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new Executor() { // from class: com.google.android.exoplayer2.audio._$$Lambda$xMC8M6LLEeW997bBmO6BCC6GGAM
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.f35111c);
        }

        /* renamed from: b */
        public final void m22092b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f35111c);
            this.f35110b.removeCallbacksAndMessages(null);
        }
    }

    public DefaultAudioSink(C10892e c10892e, AbstractC10873a abstractC10873a, boolean z, boolean z2, boolean z3) {
        this.f35071b = c10892e;
        this.f35072c = (AbstractC10873a) C11593a.m20020b(abstractC10873a);
        this.f35073d = C11599af.f38648a >= 21 && z;
        this.f35081l = C11599af.f38648a >= 23 && z2;
        this.f35082m = C11599af.f38648a >= 29 && z3;
        this.f35078i = new ConditionVariable(true);
        this.f35079j = new C10897h(new C10877e());
        C10901k c10901k = new C10901k();
        this.f35074e = c10901k;
        C10914u c10914u = new C10914u();
        this.f35075f = c10914u;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new C10910q(), c10901k, c10914u);
        Collections.addAll(arrayList, abstractC10873a.mo22099a());
        this.f35076g = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f35077h = new AudioProcessor[]{new C10903m()};
        this.f35052I = 1.0f;
        this.f35090u = C10889d.f35137a;
        this.f35065V = 0;
        this.f35066W = new C10899i(0, BitmapDescriptorFactory.HUE_RED);
        this.f35092w = new C10875c(C10840aa.f34891a, false, 0L, 0L);
        this.f35093x = C10840aa.f34891a;
        this.f35060Q = -1;
        this.f35053J = new AudioProcessor[0];
        this.f35054K = new ByteBuffer[0];
        this.f35080k = new ArrayDeque<>();
        this.f35084o = new C10876d<>(100L);
        this.f35085p = new C10876d<>(100L);
    }

    public DefaultAudioSink(C10892e c10892e, AudioProcessor[] audioProcessorArr) {
        this(c10892e, audioProcessorArr, false);
    }

    public DefaultAudioSink(C10892e c10892e, AudioProcessor[] audioProcessorArr, boolean z) {
        this(c10892e, new C10874b(audioProcessorArr), z, false, false);
    }

    /* renamed from: a */
    private int m22155a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (C11599af.f38648a >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.f35094y == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.f35094y = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.f35094y.putInt(1431633921);
        }
        if (this.f35095z == 0) {
            this.f35094y.putInt(4, i);
            this.f35094y.putLong(8, j * 1000);
            this.f35094y.position(0);
            this.f35095z = i;
        }
        int remaining = this.f35094y.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.f35094y, remaining, 1);
            if (write < 0) {
                this.f35095z = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int write2 = audioTrack.write(byteBuffer, i, 1);
        if (write2 < 0) {
            this.f35095z = 0;
            return write2;
        }
        this.f35095z -= write2;
        return write2;
    }

    /* renamed from: a */
    private void m22157a(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.f35053J.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f35054K[i - 1];
            } else {
                byteBuffer = this.f35055L;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f35031a;
                }
            }
            if (i == length) {
                m22144a(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.f35053J[i];
                if (i > this.f35060Q) {
                    audioProcessor.mo21964a(byteBuffer);
                }
                ByteBuffer mo21962c = audioProcessor.mo21962c();
                this.f35054K[i] = mo21962c;
                if (mo21962c.hasRemaining()) {
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
    private void m22149a(C10840aa c10840aa, boolean z) {
        C10875c m22106t = m22106t();
        if (!c10840aa.equals(m22106t.f35101a) || z != m22106t.f35102b) {
            C10875c c10875c = new C10875c(c10840aa, z, -9223372036854775807L, -9223372036854775807L);
            if (m22104v()) {
                this.f35091v = c10875c;
            } else {
                this.f35092w = c10875c;
            }
        }
    }

    /* renamed from: a */
    private void m22144a(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        int i;
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ByteBuffer byteBuffer2 = this.f35057N;
        if (byteBuffer2 != null) {
            C11593a.m20022a(byteBuffer2 == byteBuffer);
        } else {
            this.f35057N = byteBuffer;
            if (C11599af.f38648a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.f35058O;
                if (bArr == null || bArr.length < remaining) {
                    this.f35058O = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.f35058O, 0, remaining);
                byteBuffer.position(position);
                this.f35059P = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (C11599af.f38648a < 21) {
            int m22032a = this.f35079j.m22032a(this.f35046C);
            if (m22032a > 0) {
                int write = this.f35089t.write(this.f35058O, this.f35059P, Math.min(remaining2, m22032a));
                i = write;
                if (write > 0) {
                    this.f35059P += write;
                    byteBuffer.position(byteBuffer.position() + write);
                    i = write;
                }
            } else {
                i = 0;
            }
        } else if (this.f35067X) {
            C11593a.m20019b(j != -9223372036854775807L);
            i = m22155a(this.f35089t, byteBuffer, remaining2, j);
        } else {
            i = this.f35089t.write(byteBuffer, remaining2, 1);
        }
        this.f35068Y = SystemClock.elapsedRealtime();
        if (i < 0) {
            boolean m22131c = m22131c(i);
            if (m22131c) {
                m22110p();
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(i, this.f35088s.inputFormat, m22131c);
            AudioSink.AbstractC10871a abstractC10871a = this.f35086q;
            if (abstractC10871a != null) {
                abstractC10871a.mo22001a(writeException);
            }
            if (writeException.f35041b) {
                throw writeException;
            }
            this.f35085p.m22094a(writeException);
            return;
        }
        this.f35085p.f35105a = null;
        if (m22156a(this.f35089t)) {
            long j2 = this.f35047D;
            if (j2 > 0) {
                this.f35070aa = false;
            }
            if (this.f35063T && this.f35086q != null && i < remaining2 && !this.f35070aa) {
                this.f35086q.mo21998b(this.f35079j.m22028b(j2));
            }
        }
        if (this.f35088s.outputMode == 0) {
            this.f35046C += i;
        }
        if (i != remaining2) {
            return;
        }
        if (this.f35088s.outputMode != 0) {
            C11593a.m20019b(byteBuffer == this.f35055L);
            this.f35047D += this.f35048E * this.f35056M;
        }
        this.f35057N = null;
    }

    /* renamed from: a */
    private static boolean m22156a(AudioTrack audioTrack) {
        return C11599af.f38648a >= 29 && audioTrack.isOffloadedPlayback();
    }

    /* renamed from: a */
    private static boolean m22153a(Format format, C10889d c10889d) {
        int m19850b;
        int m19925e;
        if (C11599af.f38648a >= 29 && (m19850b = C11620q.m19850b((String) C11593a.m20020b(format.sampleMimeType), format.codecs)) != 0 && (m19925e = C11599af.m19925e(format.channelCount)) != 0 && AudioManager.isOffloadedPlaybackSupported(m22139b(format.sampleRate, m19925e, m19850b), c10889d.m22070a())) {
            return (format.encoderDelay == 0 && format.encoderPadding == 0) || m22101y();
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m22152a(Format format, C10892e c10892e) {
        return m22136b(format, c10892e) != null;
    }

    /* renamed from: b */
    static /* synthetic */ int m22140b(int i) {
        switch (i) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return PangleAdapterConfiguration.CONTENT_TYPE_ERROR;
            case 10:
                return 100000;
            case 11:
                return VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON;
            case 12:
                return 7000;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
        }
    }

    /* renamed from: b */
    public static AudioFormat m22139b(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    /* renamed from: b */
    private static Pair<Integer, Integer> m22136b(Format format, C10892e c10892e) {
        int i;
        if (c10892e == null) {
            return null;
        }
        int m19850b = C11620q.m19850b((String) C11593a.m20020b(format.sampleMimeType), format.codecs);
        int i2 = 6;
        if (!(m19850b == 5 || m19850b == 6 || m19850b == 18 || m19850b == 17 || m19850b == 7 || m19850b == 8 || m19850b == 14)) {
            return null;
        }
        if (m19850b != 18 || c10892e.m22068a(18)) {
            i = m19850b;
            if (m19850b == 8) {
                i = m19850b;
                if (!c10892e.m22068a(8)) {
                    i = 7;
                }
            }
        } else {
            i = 6;
        }
        if (!c10892e.m22068a(i)) {
            return null;
        }
        if (i != 18) {
            int i3 = format.channelCount;
            i2 = i3;
            if (i3 > c10892e.f35149b) {
                return null;
            }
        } else if (C11599af.f38648a >= 29) {
            int m22125e = m22125e(format.sampleRate);
            i2 = m22125e;
            if (m22125e == 0) {
                C11617n.m19863a("DefaultAudioSink", "E-AC3 JOC encoding supported but no channel count supported");
                return null;
            }
        }
        int m22122f = m22122f(i2);
        if (m22122f != 0) {
            return Pair.create(Integer.valueOf(i), Integer.valueOf(m22122f));
        }
        return null;
    }

    /* renamed from: b */
    private void m22138b(long j) {
        C10840aa mo22097a = m22105u() ? this.f35072c.mo22097a(m22106t().f35101a) : C10840aa.f34891a;
        boolean mo22096a = m22105u() ? this.f35072c.mo22096a(m22106t().f35102b) : false;
        this.f35080k.add(new C10875c(mo22097a, mo22096a, Math.max(0L, j), this.f35088s.framesToDurationUs(m22102x())));
        m22113m();
        AudioSink.AbstractC10871a abstractC10871a = this.f35086q;
        if (abstractC10871a != null) {
            abstractC10871a.mo22000a(mo22096a);
        }
    }

    /* renamed from: b */
    private void m22135b(C10840aa c10840aa) {
        C10840aa c10840aa2 = c10840aa;
        if (m22104v()) {
            try {
                this.f35089t.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(c10840aa.f34892b).setPitch(c10840aa.f34893c).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                C11617n.m19862a("DefaultAudioSink", "Failed to set playback params", e);
            }
            c10840aa2 = new C10840aa(this.f35089t.getPlaybackParams().getSpeed(), this.f35089t.getPlaybackParams().getPitch());
            this.f35079j.m22033a(c10840aa2.f34892b);
        }
        this.f35093x = c10840aa2;
    }

    /* renamed from: c */
    private static boolean m22131c(int i) {
        return (C11599af.f38648a >= 24 && i == -6) || i == -32;
    }

    /* renamed from: d */
    private boolean m22128d(int i) {
        return this.f35073d && C11599af.m19929d(i);
    }

    /* renamed from: e */
    private static int m22125e(int i) {
        AudioAttributes build = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        for (int i2 = 8; i2 > 0; i2--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(18).setSampleRate(i).setChannelMask(C11599af.m19925e(i2)).build(), build)) {
                return i2;
            }
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
        if (r3 == 5) goto L13;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m22122f(int r3) {
        /*
            r0 = r3
            r4 = r0
            int r0 = com.google.android.exoplayer2.util.C11599af.f38648a
            r1 = 28
            if (r0 > r1) goto L2a
            r0 = r3
            r1 = 7
            if (r0 != r1) goto L16
            r0 = 8
            r4 = r0
            goto L2a
        L16:
            r0 = r3
            r1 = 3
            if (r0 == r1) goto L27
            r0 = r3
            r1 = 4
            if (r0 == r1) goto L27
            r0 = r3
            r4 = r0
            r0 = r3
            r1 = 5
            if (r0 != r1) goto L2a
        L27:
            r0 = 6
            r4 = r0
        L2a:
            r0 = r4
            r3 = r0
            int r0 = com.google.android.exoplayer2.util.C11599af.f38648a
            r1 = 26
            if (r0 > r1) goto L4b
            r0 = r4
            r3 = r0
            java.lang.String r0 = "fugu"
            java.lang.String r1 = com.google.android.exoplayer2.util.C11599af.f38649b
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4b
            r0 = r4
            r3 = r0
            r0 = r4
            r1 = 1
            if (r0 != r1) goto L4b
            r0 = 2
            r3 = r0
        L4b:
            r0 = r3
            int r0 = com.google.android.exoplayer2.util.C11599af.m19925e(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.m22122f(int):int");
    }

    /* renamed from: m */
    private void m22113m() {
        AudioProcessor[] audioProcessorArr = this.f35088s.availableAudioProcessors;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.mo21969a()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.mo21966e();
            }
        }
        int size = arrayList.size();
        this.f35053J = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.f35054K = new ByteBuffer[size];
        m22112n();
    }

    /* renamed from: n */
    private void m22112n() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.f35053J;
            if (i < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i];
                audioProcessor.mo21966e();
                this.f35054K[i] = audioProcessor.mo21962c();
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: o */
    private AudioTrack m22111o() throws AudioSink.InitializationException {
        try {
            return ((Configuration) C11593a.m20020b(this.f35088s)).buildAudioTrack(this.f35067X, this.f35090u, this.f35065V);
        } catch (AudioSink.InitializationException e) {
            m22110p();
            AudioSink.AbstractC10871a abstractC10871a = this.f35086q;
            if (abstractC10871a != null) {
                abstractC10871a.mo22001a(e);
            }
            throw e;
        }
    }

    /* renamed from: p */
    private void m22110p() {
        if (!this.f35088s.outputModeIsOffload()) {
            return;
        }
        this.f35069Z = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0044 -> B:5:0x000d). Please submit an issue!!! */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m22109q() throws com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f35060Q
            r1 = -1
            if (r0 != r1) goto L12
            r0 = r5
            r1 = 0
            r0.f35060Q = r1
        Ld:
            r0 = 1
            r6 = r0
            goto L14
        L12:
            r0 = 0
            r6 = r0
        L14:
            r0 = r5
            int r0 = r0.f35060Q
            r7 = r0
            r0 = r5
            com.google.android.exoplayer2.audio.AudioProcessor[] r0 = r0.f35053J
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L51
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L32
            r0 = r8
            r0.mo21967b()
        L32:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m22157a(r1)
            r0 = r8
            boolean r0 = r0.mo21961d()
            if (r0 != 0) goto L44
            r0 = 0
            return r0
        L44:
            r0 = r5
            r1 = r5
            int r1 = r1.f35060Q
            r2 = 1
            int r1 = r1 + r2
            r0.f35060Q = r1
            goto Ld
        L51:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f35057N
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6b
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m22144a(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f35057N
            if (r0 == 0) goto L6b
            r0 = 0
            return r0
        L6b:
            r0 = r5
            r1 = -1
            r0.f35060Q = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.m22109q():boolean");
    }

    /* renamed from: r */
    private void m22108r() {
        if (m22104v()) {
            if (C11599af.f38648a >= 21) {
                this.f35089t.setVolume(this.f35052I);
                return;
            }
            AudioTrack audioTrack = this.f35089t;
            float f = this.f35052I;
            audioTrack.setStereoVolume(f, f);
        }
    }

    /* renamed from: s */
    private void m22107s() {
        this.f35044A = 0L;
        this.f35045B = 0L;
        this.f35046C = 0L;
        this.f35047D = 0L;
        this.f35070aa = false;
        this.f35048E = 0;
        this.f35092w = new C10875c(m22106t().f35101a, m22106t().f35102b, 0L, 0L);
        this.f35051H = 0L;
        this.f35091v = null;
        this.f35080k.clear();
        this.f35055L = null;
        this.f35056M = 0;
        this.f35057N = null;
        this.f35062S = false;
        this.f35061R = false;
        this.f35060Q = -1;
        this.f35094y = null;
        this.f35095z = 0;
        this.f35075f.f35289f = 0L;
        m22112n();
    }

    /* renamed from: t */
    private C10875c m22106t() {
        C10875c c10875c = this.f35091v;
        return c10875c != null ? c10875c : !this.f35080k.isEmpty() ? this.f35080k.getLast() : this.f35092w;
    }

    /* renamed from: u */
    private boolean m22105u() {
        return !this.f35067X && "audio/raw".equals(this.f35088s.inputFormat.sampleMimeType) && !m22128d(this.f35088s.inputFormat.pcmEncoding);
    }

    /* renamed from: v */
    private boolean m22104v() {
        return this.f35089t != null;
    }

    /* renamed from: w */
    public long m22103w() {
        return this.f35088s.outputMode == 0 ? this.f35044A / this.f35088s.inputPcmFrameSize : this.f35045B;
    }

    /* renamed from: x */
    public long m22102x() {
        return this.f35088s.outputMode == 0 ? this.f35046C / this.f35088s.outputPcmFrameSize : this.f35047D;
    }

    /* renamed from: y */
    private static boolean m22101y() {
        return C11599af.f38648a >= 30 && C11599af.f38651d.startsWith("Pixel");
    }

    /* renamed from: z */
    private void m22100z() {
        if (!this.f35062S) {
            this.f35062S = true;
            this.f35079j.m22026c(m22102x());
            this.f35089t.stop();
            this.f35095z = 0;
        }
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final long mo22142a(boolean z) {
        char c;
        if (!m22104v() || this.f35050G) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.f35079j.m22030a(z), this.f35088s.framesToDurationUs(m22102x()));
        while (!this.f35080k.isEmpty() && min >= this.f35080k.getFirst().f35104d) {
            this.f35092w = this.f35080k.remove();
        }
        long j = min - this.f35092w.f35104d;
        if (this.f35092w.f35101a.equals(C10840aa.f34891a)) {
            c = this.f35092w.f35103c + j;
        } else if (this.f35080k.isEmpty()) {
            c = this.f35072c.mo22098a(j) + this.f35092w.f35103c;
        } else {
            C10875c first = this.f35080k.getFirst();
            c = first.f35103c - C11599af.m19995a(first.f35104d - min, this.f35092w.f35101a.f34892b);
        }
        return c + this.f35088s.framesToDurationUs(this.f35072c.mo22095b());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final void mo22161a() {
        this.f35063T = true;
        if (m22104v()) {
            ((C10895g) C11593a.m20020b(this.f35079j.f35173d)).m22039a();
            this.f35089t.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final void mo22160a(float f) {
        if (this.f35052I != f) {
            this.f35052I = f;
            m22108r();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final void mo22159a(int i) {
        if (this.f35065V != i) {
            this.f35065V = i;
            this.f35064U = i != 0;
            mo22116j();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final void mo22151a(Format format, int[] iArr) throws AudioSink.ConfigurationException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        AudioProcessor[] audioProcessorArr;
        if ("audio/raw".equals(format.sampleMimeType)) {
            C11593a.m20022a(C11599af.m19935c(format.pcmEncoding));
            int m19934c = C11599af.m19934c(format.pcmEncoding, format.channelCount);
            AudioProcessor[] audioProcessorArr2 = m22128d(format.pcmEncoding) ? this.f35077h : this.f35076g;
            C10914u c10914u = this.f35075f;
            int i7 = format.encoderDelay;
            int i8 = format.encoderPadding;
            c10914u.f35287d = i7;
            c10914u.f35288e = i8;
            if (C11599af.f38648a < 21 && format.channelCount == 8 && iArr == null) {
                int[] iArr2 = new int[6];
                int i9 = 0;
                while (true) {
                    iArr = iArr2;
                    if (i9 >= 6) {
                        break;
                    }
                    iArr2[i9] = i9;
                    i9++;
                }
            }
            this.f35074e.f35205d = iArr;
            AudioProcessor.C10870a c10870a = new AudioProcessor.C10870a(format.sampleRate, format.channelCount, format.pcmEncoding);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.C10870a mo21968a = audioProcessor.mo21968a(c10870a);
                    if (audioProcessor.mo21969a()) {
                        c10870a = mo21968a;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e) {
                    throw new AudioSink.ConfigurationException(e, format);
                }
            }
            i3 = c10870a.f35035d;
            i2 = c10870a.f35033b;
            i = C11599af.m19925e(c10870a.f35034c);
            i4 = C11599af.m19934c(i3, c10870a.f35034c);
            audioProcessorArr = audioProcessorArr2;
            i5 = m19934c;
            i6 = 0;
        } else {
            audioProcessorArr = new AudioProcessor[0];
            int i10 = format.sampleRate;
            if (!this.f35082m || !m22153a(format, this.f35090u)) {
                Pair<Integer, Integer> m22136b = m22136b(format, this.f35071b);
                if (m22136b == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: ".concat(String.valueOf(format)), format);
                }
                i3 = ((Integer) m22136b.first).intValue();
                i = ((Integer) m22136b.second).intValue();
                i4 = -1;
                i6 = 2;
                i2 = i10;
                i5 = -1;
            } else {
                i3 = C11620q.m19850b((String) C11593a.m20020b(format.sampleMimeType), format.codecs);
                i = C11599af.m19925e(format.channelCount);
                i4 = -1;
                i2 = i10;
                i5 = -1;
                i6 = 1;
            }
        }
        if (i3 == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i6 + ") for: " + format, format);
        } else if (i == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i6 + ") for: " + format, format);
        } else {
            this.f35069Z = false;
            Configuration configuration = new Configuration(format, i5, i6, i4, i2, i, i3, 0, this.f35081l, audioProcessorArr);
            if (m22104v()) {
                this.f35087r = configuration;
            } else {
                this.f35088s = configuration;
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final void mo22150a(C10840aa c10840aa) {
        C10840aa c10840aa2 = new C10840aa(C11599af.m20000a(c10840aa.f34892b, 0.1f, 8.0f), C11599af.m20000a(c10840aa.f34893c, 0.1f, 8.0f));
        if (!this.f35081l || C11599af.f38648a < 23) {
            m22149a(c10840aa2, m22106t().f35102b);
        } else {
            m22135b(c10840aa2);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final void mo22148a(AudioSink.AbstractC10871a abstractC10871a) {
        this.f35086q = abstractC10871a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final void mo22146a(C10889d c10889d) {
        if (this.f35090u.equals(c10889d)) {
            return;
        }
        this.f35090u = c10889d;
        if (this.f35067X) {
            return;
        }
        mo22116j();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final void mo22145a(C10899i c10899i) {
        if (this.f35066W.equals(c10899i)) {
            return;
        }
        int i = c10899i.f35196a;
        float f = c10899i.f35197b;
        if (this.f35089t != null) {
            if (this.f35066W.f35196a != i) {
                this.f35089t.attachAuxEffect(i);
            }
            if (i != 0) {
                this.f35089t.setAuxEffectSendLevel(f);
            }
        }
        this.f35066W = c10899i;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public final boolean mo22154a(Format format) {
        return mo22137b(format) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0218, code lost:
        if (r0.m22025d() == 0) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0263 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0265  */
    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo22143a(java.nio.ByteBuffer r9, long r10, int r12) throws com.google.android.exoplayer2.audio.AudioSink.InitializationException, com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            Method dump skipped, instructions count: 1247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.mo22143a(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: b */
    public final int mo22137b(Format format) {
        if (!"audio/raw".equals(format.sampleMimeType)) {
            return ((!this.f35082m || this.f35069Z || !m22153a(format, this.f35090u)) && !m22152a(format, this.f35071b)) ? 0 : 2;
        } else if (C11599af.m19935c(format.pcmEncoding)) {
            if (format.pcmEncoding == 2) {
                return 2;
            }
            return (!this.f35073d || format.pcmEncoding != 4) ? 1 : 2;
        } else {
            C11617n.m19863a("DefaultAudioSink", "Invalid PCM encoding: " + format.pcmEncoding);
            return 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: b */
    public final void mo22141b() {
        this.f35049F = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: b */
    public final void mo22133b(boolean z) {
        m22149a(m22106t().f35101a, z);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: c */
    public final void mo22132c() throws AudioSink.WriteException {
        if (this.f35061R || !m22104v() || !m22109q()) {
            return;
        }
        m22100z();
        this.f35061R = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: d */
    public final boolean mo22129d() {
        if (m22104v()) {
            return this.f35061R && !mo22126e();
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: e */
    public final boolean mo22126e() {
        return m22104v() && this.f35079j.m22024d(m22102x());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: f */
    public final C10840aa mo22123f() {
        return this.f35081l ? this.f35093x : m22106t().f35101a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: g */
    public final void mo22120g() {
        C11593a.m20019b(C11599af.f38648a >= 21);
        C11593a.m20019b(this.f35064U);
        if (!this.f35067X) {
            this.f35067X = true;
            mo22116j();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: h */
    public final void mo22118h() {
        if (this.f35067X) {
            this.f35067X = false;
            mo22116j();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: i */
    public final void mo22117i() {
        boolean z = false;
        this.f35063T = false;
        if (m22104v()) {
            C10897h c10897h = this.f35079j;
            c10897h.m22027c();
            if (c10897h.f35177h == -9223372036854775807L) {
                ((C10895g) C11593a.m20020b(c10897h.f35173d)).m22039a();
                z = true;
            }
            if (!z) {
                return;
            }
            this.f35089t.pause();
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [com.google.android.exoplayer2.audio.DefaultAudioSink$1] */
    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: j */
    public final void mo22116j() {
        if (m22104v()) {
            m22107s();
            if (this.f35079j.m22034a()) {
                this.f35089t.pause();
            }
            if (m22156a(this.f35089t)) {
                ((C10878f) C11593a.m20020b(this.f35083n)).m22092b(this.f35089t);
            }
            final AudioTrack audioTrack = this.f35089t;
            this.f35089t = null;
            if (C11599af.f38648a < 21 && !this.f35064U) {
                this.f35065V = 0;
            }
            Configuration configuration = this.f35087r;
            if (configuration != null) {
                this.f35088s = configuration;
                this.f35087r = null;
            }
            this.f35079j.m22029b();
            this.f35078i.close();
            new Thread("ExoPlayer:AudioTrackReleaseThread") { // from class: com.google.android.exoplayer2.audio.DefaultAudioSink.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        DefaultAudioSink.this.f35078i.open();
                    }
                }
            }.start();
        }
        this.f35085p.f35105a = null;
        this.f35084o.f35105a = null;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: k */
    public final void mo22115k() {
        if (C11599af.f38648a < 25) {
            mo22116j();
            return;
        }
        this.f35085p.f35105a = null;
        this.f35084o.f35105a = null;
        if (!m22104v()) {
            return;
        }
        m22107s();
        if (this.f35079j.m22034a()) {
            this.f35089t.pause();
        }
        this.f35089t.flush();
        this.f35079j.m22029b();
        this.f35079j.m22031a(this.f35089t, this.f35088s.outputMode == 2, this.f35088s.outputEncoding, this.f35088s.outputPcmFrameSize, this.f35088s.bufferSize);
        this.f35050G = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: l */
    public final void mo22114l() {
        mo22116j();
        for (AudioProcessor audioProcessor : this.f35076g) {
            audioProcessor.mo21965f();
        }
        for (AudioProcessor audioProcessor2 : this.f35077h) {
            audioProcessor2.mo21965f();
        }
        this.f35063T = false;
        this.f35069Z = false;
    }
}
