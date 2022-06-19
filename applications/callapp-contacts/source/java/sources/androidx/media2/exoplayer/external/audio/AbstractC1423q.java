package androidx.media2.exoplayer.external.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: androidx.media2.exoplayer.external.audio.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/q.class */
public abstract class AbstractC1423q implements AudioProcessor {

    /* renamed from: g */
    private boolean f5381g;

    /* renamed from: e */
    private ByteBuffer f5379e = f5221a;

    /* renamed from: f */
    private ByteBuffer f5380f = f5221a;

    /* renamed from: c */
    protected int f5377c = -1;

    /* renamed from: b */
    protected int f5376b = -1;

    /* renamed from: d */
    protected int f5378d = -1;

    /* renamed from: a */
    public final ByteBuffer m42981a(int i) {
        if (this.f5379e.capacity() < i) {
            this.f5379e = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f5379e.clear();
        }
        ByteBuffer byteBuffer = this.f5379e;
        this.f5380f = byteBuffer;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: a */
    public boolean mo42945a() {
        return this.f5376b != -1;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: b */
    public int mo42951b() {
        return this.f5377c;
    }

    /* renamed from: b */
    public final boolean m42980b(int i, int i2, int i3) {
        if (i == this.f5376b && i2 == this.f5377c && i3 == this.f5378d) {
            return false;
        }
        this.f5376b = i;
        this.f5377c = i2;
        this.f5378d = i3;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: c */
    public int mo42950c() {
        return this.f5378d;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: d */
    public final int mo42949d() {
        return this.f5376b;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: e */
    public final void mo42948e() {
        this.f5381g = true;
        mo42959k();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: f */
    public ByteBuffer mo42942f() {
        ByteBuffer byteBuffer = this.f5380f;
        this.f5380f = f5221a;
        return byteBuffer;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: g */
    public boolean mo42941g() {
        return this.f5381g && this.f5380f == f5221a;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: h */
    public final void mo42947h() {
        this.f5380f = f5221a;
        this.f5381g = false;
        mo42940l();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioProcessor
    /* renamed from: i */
    public final void mo42946i() {
        mo42947h();
        this.f5379e = f5221a;
        this.f5376b = -1;
        this.f5377c = -1;
        this.f5378d = -1;
        mo42939m();
    }

    /* renamed from: j */
    public final boolean m42979j() {
        return this.f5380f.hasRemaining();
    }

    /* renamed from: k */
    protected void mo42959k() {
    }

    /* renamed from: l */
    protected void mo42940l() {
    }

    /* renamed from: m */
    protected void mo42939m() {
    }
}
