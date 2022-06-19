package androidx.media2.exoplayer.external.text;

import androidx.media2.exoplayer.external.p063b.AbstractC1444g;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.text.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/b.class */
public abstract class AbstractC1870b extends AbstractC1444g<C1902g, AbstractC1905h, SubtitleDecoderException> implements AbstractC1889e {

    /* renamed from: a */
    private final String f7505a;

    public AbstractC1870b(String str) {
        super(new C1902g[2], new AbstractC1905h[2]);
        this.f7505a = str;
        m42901e();
    }

    /* renamed from: a */
    public SubtitleDecoderException mo41976a(C1902g c1902g, AbstractC1905h abstractC1905h, boolean z) {
        try {
            ByteBuffer byteBuffer = c1902g.f5494c;
            abstractC1905h.m41915a(c1902g.f5495d, mo41891a(byteBuffer.array(), byteBuffer.limit(), z), c1902g.f7650f);
            abstractC1905h.f5471a &= Integer.MAX_VALUE;
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }

    /* renamed from: a */
    protected abstract AbstractC1886d mo41891a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException;

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1444g
    /* renamed from: a */
    public final /* synthetic */ SubtitleDecoderException mo41972a(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1889e
    /* renamed from: a */
    public final void mo41951a(long j) {
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1444g
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo41975a(AbstractC1905h abstractC1905h) {
        super.mo41975a((AbstractC1870b) abstractC1905h);
    }

    /* renamed from: a */
    public final void m41973a(AbstractC1905h abstractC1905h) {
        super.mo41975a((AbstractC1870b) abstractC1905h);
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1444g
    /* renamed from: g */
    public final /* synthetic */ C1902g mo41971g() {
        return new C1902g();
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1444g
    /* renamed from: h */
    public final /* synthetic */ AbstractC1905h mo41970h() {
        return new C1882c(this);
    }
}
