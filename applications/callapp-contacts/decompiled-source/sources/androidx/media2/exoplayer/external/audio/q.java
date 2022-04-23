package androidx.media2.exoplayer.external.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/q.class */
public abstract class q implements AudioProcessor {
    private boolean g;
    private ByteBuffer e = f2838a;
    private ByteBuffer f = f2838a;

    /* renamed from: c  reason: collision with root package name */
    protected int f2917c = -1;

    /* renamed from: b  reason: collision with root package name */
    protected int f2916b = -1;

    /* renamed from: d  reason: collision with root package name */
    protected int f2918d = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer a(int i) {
        if (this.e.capacity() < i) {
            this.e = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.e.clear();
        }
        ByteBuffer byteBuffer = this.e;
        this.f = byteBuffer;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean a() {
        return this.f2916b != -1;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public int b() {
        return this.f2917c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b(int i, int i2, int i3) {
        if (i == this.f2916b && i2 == this.f2917c && i3 == this.f2918d) {
            return false;
        }
        this.f2916b = i;
        this.f2917c = i2;
        this.f2918d = i3;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public int c() {
        return this.f2918d;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final int d() {
        return this.f2916b;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void e() {
        this.g = true;
        k();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public ByteBuffer f() {
        ByteBuffer byteBuffer = this.f;
        this.f = f2838a;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public boolean g() {
        return this.g && this.f == f2838a;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void h() {
        this.f = f2838a;
        this.g = false;
        l();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    public final void i() {
        h();
        this.e = f2838a;
        this.f2916b = -1;
        this.f2917c = -1;
        this.f2918d = -1;
        m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean j() {
        return this.f.hasRemaining();
    }

    protected void k() {
    }

    protected void l() {
    }

    protected void m() {
    }
}
