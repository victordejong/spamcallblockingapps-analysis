package androidx.media2.exoplayer.external.text.p078h;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.text.AbstractC1870b;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.p078h.C1910e;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.text.h.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/g.class */
public final class C1916g extends AbstractC1870b {

    /* renamed from: a */
    private final C1913f f7707a = new C1913f();

    /* renamed from: b */
    private final C2018p f7708b = new C2018p();

    /* renamed from: c */
    private final C1910e.C1912a f7709c = new C1910e.C1912a();

    /* renamed from: d */
    private final C1906a f7710d = new C1906a();

    /* renamed from: e */
    private final List<C1909d> f7711e = new ArrayList();

    public C1916g() {
        super("WebvttDecoder");
    }

    /* renamed from: a */
    private static int m41892a(C2018p c2018p) {
        int i = -1;
        int i2 = 0;
        while (i == -1) {
            i2 = c2018p.f8132b;
            String m41515r = c2018p.m41515r();
            i = m41515r == null ? 0 : "STYLE".equals(m41515r) ? 2 : m41515r.startsWith("NOTE") ? 1 : 3;
        }
        c2018p.m41533c(i2);
        return i;
    }

    /* renamed from: b */
    private static void m41890b(C2018p c2018p) {
        do {
        } while (!TextUtils.isEmpty(c2018p.m41515r()));
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1870b
    /* renamed from: a */
    public final AbstractC1886d mo41891a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f7708b.m41538a(bArr, i);
        this.f7709c.m41904a();
        this.f7711e.clear();
        try {
            C1917h.m41889a(this.f7708b);
            do {
            } while (!TextUtils.isEmpty(this.f7708b.m41515r()));
            ArrayList arrayList = new ArrayList();
            while (true) {
                int m41892a = m41892a(this.f7708b);
                if (m41892a == 0) {
                    return new C1918i(arrayList);
                }
                if (m41892a == 1) {
                    m41890b(this.f7708b);
                } else if (m41892a == 2) {
                    if (!arrayList.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.f7708b.m41515r();
                    this.f7711e.addAll(this.f7710d.m41913a(this.f7708b));
                } else if (m41892a == 3 && this.f7707a.m41901a(this.f7708b, this.f7709c, this.f7711e)) {
                    arrayList.add(this.f7709c.m41903b());
                    this.f7709c.m41904a();
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }
}
