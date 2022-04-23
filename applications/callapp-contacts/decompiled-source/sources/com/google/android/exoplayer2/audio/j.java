package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/j.class */
public abstract class j implements AudioProcessor {
    private boolean h;
    private ByteBuffer f = f20691a;
    private ByteBuffer g = f20691a;

    /* renamed from: d  reason: collision with root package name */
    private AudioProcessor.a f20772d = AudioProcessor.a.f20692a;
    private AudioProcessor.a e = AudioProcessor.a.f20692a;

    /* renamed from: b  reason: collision with root package name */
    protected AudioProcessor.a f20770b = AudioProcessor.a.f20692a;

    /* renamed from: c  reason: collision with root package name */
    protected AudioProcessor.a f20771c = AudioProcessor.a.f20692a;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        this.f20772d = aVar;
        this.e = b(aVar);
        return a() ? this.e : AudioProcessor.a.f20692a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer a(int i) {
        if (this.f.capacity() < i) {
            this.f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f.clear();
        }
        ByteBuffer byteBuffer = this.f;
        this.g = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean a() {
        return this.e != AudioProcessor.a.f20692a;
    }

    protected AudioProcessor.a b(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        return AudioProcessor.a.f20692a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void b() {
        this.h = true;
        h();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer c() {
        ByteBuffer byteBuffer = this.g;
        this.g = f20691a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean d() {
        return this.h && this.g == f20691a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void e() {
        this.g = f20691a;
        this.h = false;
        this.f20770b = this.f20772d;
        this.f20771c = this.e;
        i();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void f() {
        e();
        this.f = f20691a;
        this.f20772d = AudioProcessor.a.f20692a;
        this.e = AudioProcessor.a.f20692a;
        this.f20770b = AudioProcessor.a.f20692a;
        this.f20771c = AudioProcessor.a.f20692a;
        j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean g() {
        return this.g.hasRemaining();
    }

    protected void h() {
    }

    protected void i() {
    }

    protected void j() {
    }
}
