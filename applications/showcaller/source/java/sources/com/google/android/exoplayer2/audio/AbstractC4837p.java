package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.google.android.exoplayer2.audio.p */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/p.class */
public abstract class AbstractC4837p implements AudioProcessor {

    /* renamed from: b */
    protected AudioProcessor.C4804a f14670b;

    /* renamed from: c */
    protected AudioProcessor.C4804a f14671c;

    /* renamed from: d */
    private AudioProcessor.C4804a f14672d;

    /* renamed from: e */
    private AudioProcessor.C4804a f14673e;

    /* renamed from: f */
    private ByteBuffer f14674f;

    /* renamed from: g */
    private ByteBuffer f14675g;

    /* renamed from: h */
    private boolean f14676h;

    public AbstractC4837p() {
        ByteBuffer byteBuffer = AudioProcessor.f14508a;
        this.f14674f = byteBuffer;
        this.f14675g = byteBuffer;
        AudioProcessor.C4804a c4804a = AudioProcessor.C4804a.f14509a;
        this.f14672d = c4804a;
        this.f14673e = c4804a;
        this.f14670b = c4804a;
        this.f14671c = c4804a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final void mo21456a() {
        flush();
        this.f14674f = AudioProcessor.f14508a;
        AudioProcessor.C4804a c4804a = AudioProcessor.C4804a.f14509a;
        this.f14672d = c4804a;
        this.f14673e = c4804a;
        this.f14670b = c4804a;
        this.f14671c = c4804a;
        mo21443l();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: b */
    public ByteBuffer mo21449b() {
        ByteBuffer byteBuffer = this.f14675g;
        this.f14675g = AudioProcessor.f14508a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo21448c() {
        return this.f14676h && this.f14675g == AudioProcessor.f14508a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: e */
    public final AudioProcessor.C4804a mo21455e(AudioProcessor.C4804a c4804a) {
        this.f14672d = c4804a;
        this.f14673e = mo21446i(c4804a);
        return mo21453g() ? this.f14673e : AudioProcessor.C4804a.f14509a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: f */
    public final void mo21454f() {
        this.f14676h = true;
        mo21444k();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void flush() {
        this.f14675g = AudioProcessor.f14508a;
        this.f14676h = false;
        this.f14670b = this.f14672d;
        this.f14671c = this.f14673e;
        mo21445j();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: g */
    public boolean mo21453g() {
        return this.f14673e != AudioProcessor.C4804a.f14509a;
    }

    /* renamed from: h */
    public final boolean m21519h() {
        return this.f14675g.hasRemaining();
    }

    /* renamed from: i */
    protected abstract AudioProcessor.C4804a mo21446i(AudioProcessor.C4804a c4804a);

    /* renamed from: j */
    protected void mo21445j() {
    }

    /* renamed from: k */
    protected void mo21444k() {
    }

    /* renamed from: l */
    protected void mo21443l() {
    }

    /* renamed from: m */
    public final ByteBuffer m21518m(int i) {
        if (this.f14674f.capacity() < i) {
            this.f14674f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f14674f.clear();
        }
        ByteBuffer byteBuffer = this.f14674f;
        this.f14675g = byteBuffer;
        return byteBuffer;
    }
}
