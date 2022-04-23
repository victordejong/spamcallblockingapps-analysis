package p131c.p161d.p170b.p188c.p206s0;

import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: c.d.b.c.s0.o */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/o.class */
public abstract class AbstractC2993o implements AudioProcessor {

    /* renamed from: b */
    public AudioProcessor.C7122a f10779b;

    /* renamed from: c */
    public AudioProcessor.C7122a f10780c;

    /* renamed from: d */
    public AudioProcessor.C7122a f10781d;

    /* renamed from: e */
    public AudioProcessor.C7122a f10782e;

    /* renamed from: f */
    public ByteBuffer f10783f;

    /* renamed from: g */
    public ByteBuffer f10784g;

    /* renamed from: h */
    public boolean f10785h;

    public AbstractC2993o() {
        ByteBuffer byteBuffer = AudioProcessor.f21970a;
        this.f10783f = byteBuffer;
        this.f10784g = byteBuffer;
        AudioProcessor.C7122a aVar = AudioProcessor.C7122a.f21971e;
        this.f10781d = aVar;
        this.f10782e = aVar;
        this.f10779b = aVar;
        this.f10780c = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final AudioProcessor.C7122a mo18692a(AudioProcessor.C7122a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        this.f10781d = aVar;
        this.f10782e = mo28181b(aVar);
        return mo18690b() ? this.f10782e : AudioProcessor.C7122a.f21971e;
    }

    /* renamed from: a */
    public final ByteBuffer m28246a(int i) {
        if (this.f10783f.capacity() < i) {
            this.f10783f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f10783f.clear();
        }
        ByteBuffer byteBuffer = this.f10783f;
        this.f10784g = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: a */
    public final void mo18693a() {
        flush();
        this.f10783f = AudioProcessor.f21970a;
        AudioProcessor.C7122a aVar = AudioProcessor.C7122a.f21971e;
        this.f10781d = aVar;
        this.f10782e = aVar;
        this.f10779b = aVar;
        this.f10780c = aVar;
        mo28178i();
    }

    /* renamed from: b */
    public abstract AudioProcessor.C7122a mo28181b(AudioProcessor.C7122a aVar) throws AudioProcessor.UnhandledAudioFormatException;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: b */
    public boolean mo18690b() {
        return this.f10782e != AudioProcessor.C7122a.f21971e;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: c */
    public boolean mo18689c() {
        return this.f10785h && this.f10784g == AudioProcessor.f21970a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: d */
    public ByteBuffer mo18688d() {
        ByteBuffer byteBuffer = this.f10784g;
        this.f10784g = AudioProcessor.f21970a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    /* renamed from: e */
    public final void mo18687e() {
        this.f10785h = true;
        mo28179h();
    }

    /* renamed from: f */
    public final boolean m28245f() {
        return this.f10784g.hasRemaining();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void flush() {
        this.f10784g = AudioProcessor.f21970a;
        this.f10785h = false;
        this.f10779b = this.f10781d;
        this.f10780c = this.f10782e;
        mo28180g();
    }

    /* renamed from: g */
    public void mo28180g() {
    }

    /* renamed from: h */
    public void mo28179h() {
    }

    /* renamed from: i */
    public void mo28178i() {
    }
}
