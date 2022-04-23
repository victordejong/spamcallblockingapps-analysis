package androidx.media2.exoplayer.external.text.h;

import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.a;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.text.h.e;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.p;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/b.class */
public final class b extends androidx.media2.exoplayer.external.text.b {

    /* renamed from: a  reason: collision with root package name */
    private final p f3913a = new p();

    /* renamed from: b  reason: collision with root package name */
    private final e.a f3914b = new e.a();

    public b() {
        super("Mp4WebvttDecoder");
    }

    private static a a(p pVar, e.a aVar, int i) throws SubtitleDecoderException {
        aVar.a();
        while (i > 0) {
            if (i >= 8) {
                int i2 = pVar.i();
                int i3 = pVar.i();
                int i4 = i2 - 8;
                String a2 = ac.a(pVar.f4166a, pVar.f4167b, i4);
                pVar.d(i4);
                int i5 = (i - 8) - i4;
                if (i3 == 1937011815) {
                    f.a(a2, aVar);
                    i = i5;
                } else {
                    i = i5;
                    if (i3 == 1885436268) {
                        f.a((String) null, a2.trim(), aVar, Collections.emptyList());
                        i = i5;
                    }
                }
            } else {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
        }
        return aVar.b();
    }

    @Override // androidx.media2.exoplayer.external.text.b
    public final d a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f3913a.a(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.f3913a.b() > 0) {
            if (this.f3913a.b() >= 8) {
                int i2 = this.f3913a.i();
                if (this.f3913a.i() == 1987343459) {
                    arrayList.add(a(this.f3913a, this.f3914b, i2 - 8));
                } else {
                    this.f3913a.d(i2 - 8);
                }
            } else {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new c(arrayList);
    }
}
