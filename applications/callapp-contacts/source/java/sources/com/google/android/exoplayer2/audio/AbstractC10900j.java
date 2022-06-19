package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.google.android.exoplayer2.audio.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/j.class */
public abstract class AbstractC10900j implements AudioProcessor {

    /* renamed from: h */
    private boolean f35204h;

    /* renamed from: f */
    private ByteBuffer f35202f = f35031a;

    /* renamed from: g */
    private ByteBuffer f35203g = f35031a;

    /* renamed from: d */
    private AudioProcessor.C10870a f35200d = AudioProcessor.C10870a.f35032a;

    /* renamed from: e */
    private AudioProcessor.C10870a f35201e = AudioProcessor.C10870a.f35032a;

    /* renamed from: b */
    protected AudioProcessor.C10870a f35198b = AudioProcessor.C10870a.f35032a;

    /* renamed from: c */
    protected AudioProcessor.C10870a f35199c = AudioProcessor.C10870a.f35032a;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final AudioProcessor.C10870a mo21968a(AudioProcessor.C10870a c10870a) throws AudioProcessor.UnhandledAudioFormatException {
        this.f35200d = c10870a;
        this.f35201e = mo21963b(c10870a);
        return mo21969a() ? this.f35201e : AudioProcessor.C10870a.f35032a;
    }

    /* renamed from: a */
    public final ByteBuffer m22016a(int i) {
        if (this.f35202f.capacity() < i) {
            this.f35202f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f35202f.clear();
        }
        ByteBuffer byteBuffer = this.f35202f;
        this.f35203g = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public boolean mo21969a() {
        return this.f35201e != AudioProcessor.C10870a.f35032a;
    }

    /* renamed from: b */
    protected AudioProcessor.C10870a mo21963b(AudioProcessor.C10870a c10870a) throws AudioProcessor.UnhandledAudioFormatException {
        return AudioProcessor.C10870a.f35032a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: b */
    public final void mo21967b() {
        this.f35204h = true;
        mo21960h();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public ByteBuffer mo21962c() {
        ByteBuffer byteBuffer = this.f35203g;
        this.f35203g = f35031a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public boolean mo21961d() {
        return this.f35204h && this.f35203g == f35031a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: e */
    public final void mo21966e() {
        this.f35203g = f35031a;
        this.f35204h = false;
        this.f35198b = this.f35200d;
        this.f35199c = this.f35201e;
        mo21959i();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: f */
    public final void mo21965f() {
        mo21966e();
        this.f35202f = f35031a;
        this.f35200d = AudioProcessor.C10870a.f35032a;
        this.f35201e = AudioProcessor.C10870a.f35032a;
        this.f35198b = AudioProcessor.C10870a.f35032a;
        this.f35199c = AudioProcessor.C10870a.f35032a;
        mo21958j();
    }

    /* renamed from: g */
    public final boolean m22015g() {
        return this.f35203g.hasRemaining();
    }

    /* renamed from: h */
    protected void mo21960h() {
    }

    /* renamed from: i */
    protected void mo21959i() {
    }

    /* renamed from: j */
    protected void mo21958j() {
    }
}
