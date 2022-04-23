package androidx.media2.exoplayer.external.text;

import androidx.media2.exoplayer.external.b.g;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b.class */
public abstract class b extends g<g, h, SubtitleDecoderException> implements e {

    /* renamed from: a  reason: collision with root package name */
    private final String f3816a;

    public b(String str) {
        super(new g[2], new h[2]);
        this.f3816a = str;
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SubtitleDecoderException a(g gVar, h hVar, boolean z) {
        try {
            ByteBuffer byteBuffer = gVar.f2949c;
            hVar.a(gVar.f2950d, a(byteBuffer.array(), byteBuffer.limit(), z), gVar.f);
            hVar.f2937a &= Integer.MAX_VALUE;
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }

    protected abstract d a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException;

    @Override // androidx.media2.exoplayer.external.b.g
    public final /* synthetic */ SubtitleDecoderException a(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    @Override // androidx.media2.exoplayer.external.text.e
    public final void a(long j) {
    }

    @Override // androidx.media2.exoplayer.external.b.g
    public final /* bridge */ /* synthetic */ void a(h hVar) {
        super.a((b) hVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void a2(h hVar) {
        super.a((b) hVar);
    }

    @Override // androidx.media2.exoplayer.external.b.g
    public final /* synthetic */ g g() {
        return new g();
    }

    @Override // androidx.media2.exoplayer.external.b.g
    public final /* synthetic */ h h() {
        return new c(this);
    }
}
