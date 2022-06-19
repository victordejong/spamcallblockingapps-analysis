package androidx.media2.exoplayer.external.source.hls;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.text.p078h.C1917h;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: androidx.media2.exoplayer.external.source.hls.p */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/p.class */
public final class C1804p implements AbstractC1599g {

    /* renamed from: a */
    private static final Pattern f7183a = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: b */
    private static final Pattern f7184b = Pattern.compile("MPEGTS:(\\d+)");

    /* renamed from: c */
    private final String f7185c;

    /* renamed from: d */
    private final C2030z f7186d;

    /* renamed from: f */
    private AbstractC1601i f7188f;

    /* renamed from: h */
    private int f7190h;

    /* renamed from: e */
    private final C2018p f7187e = new C2018p();

    /* renamed from: g */
    private byte[] f7189g = new byte[1024];

    public C1804p(String str, C2030z c2030z) {
        this.f7185c = str;
        this.f7186d = c2030z;
    }

    /* renamed from: a */
    private AbstractC1641q m42190a(long j) {
        AbstractC1641q mo42213a = this.f7188f.mo42213a(0, 3);
        mo42213a.mo42192a(Format.createTextSampleFormat((String) null, "text/vtt", (String) null, -1, 0, this.f7185c, (DrmInitData) null, j));
        this.f7188f.mo42215a();
        return mo42213a;
    }

    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        int mo42600d = (int) abstractC1600h.mo42600d();
        int i = this.f7190h;
        byte[] bArr = this.f7189g;
        if (i == bArr.length) {
            this.f7189g = Arrays.copyOf(bArr, ((mo42600d != -1 ? mo42600d : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f7189g;
        int i2 = this.f7190h;
        int mo42609a = abstractC1600h.mo42609a(bArr2, i2, bArr2.length - i2);
        if (mo42609a != -1) {
            int i3 = this.f7190h + mo42609a;
            this.f7190h = i3;
            if (mo42600d == -1 || i3 != mo42600d) {
                return 0;
            }
        }
        C2018p c2018p = new C2018p(this.f7189g);
        C1917h.m41889a(c2018p);
        char c = 0;
        char c2 = 0;
        while (true) {
            String m41515r = c2018p.m41515r();
            if (TextUtils.isEmpty(m41515r)) {
                Matcher m41885c = C1917h.m41885c(c2018p);
                if (m41885c == null) {
                    m42190a(0L);
                    return -1;
                }
                long m41888a = C1917h.m41888a(m41885c.group(1));
                long m41478b = this.f7186d.m41478b(C2030z.m41475e((c + m41888a) - c2));
                AbstractC1641q m42190a = m42190a(m41478b - m41888a);
                this.f7187e.m41538a(this.f7189g, this.f7190h);
                m42190a.mo42306a(this.f7187e, this.f7190h);
                m42190a.mo42313a(m41478b, 1, this.f7190h, 0, null);
                return -1;
            } else if (m41515r.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f7183a.matcher(m41515r);
                if (!matcher.find()) {
                    String valueOf = String.valueOf(m41515r);
                    throw new ParserException(valueOf.length() != 0 ? "X-TIMESTAMP-MAP doesn't contain local timestamp: ".concat(valueOf) : new String("X-TIMESTAMP-MAP doesn't contain local timestamp: "));
                }
                Matcher matcher2 = f7184b.matcher(m41515r);
                if (!matcher2.find()) {
                    String valueOf2 = String.valueOf(m41515r);
                    throw new ParserException(valueOf2.length() != 0 ? "X-TIMESTAMP-MAP doesn't contain media timestamp: ".concat(valueOf2) : new String("X-TIMESTAMP-MAP doesn't contain media timestamp: "));
                }
                c2 = C1917h.m41888a(matcher.group(1));
                c = C2030z.m41476d(Long.parseLong(matcher2.group(1)));
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        throw new IllegalStateException();
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f7188f = abstractC1601i;
        abstractC1601i.mo42209a(new AbstractC1637o.C1639b(-9223372036854775807L));
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        abstractC1600h.mo42604b(this.f7189g, 0, 6, false);
        this.f7187e.m41538a(this.f7189g, 6);
        if (C1917h.m41887b(this.f7187e)) {
            return true;
        }
        abstractC1600h.mo42604b(this.f7189g, 6, 3, false);
        this.f7187e.m41538a(this.f7189g, 9);
        return C1917h.m41887b(this.f7187e);
    }
}
