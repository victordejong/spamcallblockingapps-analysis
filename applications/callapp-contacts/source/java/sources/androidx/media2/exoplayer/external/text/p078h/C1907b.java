package androidx.media2.exoplayer.external.text.p078h;

import androidx.media2.exoplayer.external.text.AbstractC1870b;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.p078h.C1910e;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.Collections;
/* renamed from: androidx.media2.exoplayer.external.text.h.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/b.class */
public final class C1907b extends AbstractC1870b {

    /* renamed from: a */
    private final C2018p f7665a = new C2018p();

    /* renamed from: b */
    private final C1910e.C1912a f7666b = new C1910e.C1912a();

    public C1907b() {
        super("Mp4WebvttDecoder");
    }

    /* renamed from: a */
    private static C1856a m41907a(C2018p c2018p, C1910e.C1912a c1912a, int i) throws SubtitleDecoderException {
        c1912a.m41904a();
        while (i > 0) {
            if (i < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int m41524i = c2018p.m41524i();
            int m41524i2 = c2018p.m41524i();
            int i2 = m41524i - 8;
            String m41648a = C1996ac.m41648a(c2018p.f8131a, c2018p.f8132b, i2);
            c2018p.m41531d(i2);
            int i3 = (i - 8) - i2;
            if (m41524i2 == 1937011815) {
                C1913f.m41899a(m41648a, c1912a);
                i = i3;
            } else {
                i = i3;
                if (m41524i2 == 1885436268) {
                    C1913f.m41897a((String) null, m41648a.trim(), c1912a, Collections.emptyList());
                    i = i3;
                }
            }
        }
        return c1912a.m41903b();
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1870b
    /* renamed from: a */
    public final AbstractC1886d mo41891a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f7665a.m41538a(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.f7665a.m41536b() > 0) {
            if (this.f7665a.m41536b() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int m41524i = this.f7665a.m41524i();
            if (this.f7665a.m41524i() == 1987343459) {
                arrayList.add(m41907a(this.f7665a, this.f7666b, m41524i - 8));
            } else {
                this.f7665a.m41531d(m41524i - 8);
            }
        }
        return new C1908c(arrayList);
    }
}
