package androidx.media2.exoplayer.external.text.h;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.b;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.text.h.e;
import androidx.media2.exoplayer.external.util.p;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/g.class */
public final class g extends b {

    /* renamed from: a  reason: collision with root package name */
    private final f f3934a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final p f3935b = new p();

    /* renamed from: c  reason: collision with root package name */
    private final e.a f3936c = new e.a();

    /* renamed from: d  reason: collision with root package name */
    private final a f3937d = new a();
    private final List<d> e = new ArrayList();

    public g() {
        super("WebvttDecoder");
    }

    private static int a(p pVar) {
        int i = -1;
        int i2 = 0;
        while (i == -1) {
            i2 = pVar.f4167b;
            String r = pVar.r();
            i = r == null ? 0 : "STYLE".equals(r) ? 2 : r.startsWith("NOTE") ? 1 : 3;
        }
        pVar.c(i2);
        return i;
    }

    private static void b(p pVar) {
        do {
        } while (!TextUtils.isEmpty(pVar.r()));
    }

    @Override // androidx.media2.exoplayer.external.text.b
    public final d a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f3935b.a(bArr, i);
        this.f3936c.a();
        this.e.clear();
        try {
            h.a(this.f3935b);
            do {
            } while (!TextUtils.isEmpty(this.f3935b.r()));
            ArrayList arrayList = new ArrayList();
            while (true) {
                int a2 = a(this.f3935b);
                if (a2 == 0) {
                    return new i(arrayList);
                }
                if (a2 == 1) {
                    b(this.f3935b);
                } else if (a2 == 2) {
                    if (arrayList.isEmpty()) {
                        this.f3935b.r();
                        this.e.addAll(this.f3937d.a(this.f3935b));
                    } else {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                } else if (a2 == 3 && this.f3934a.a(this.f3935b, this.f3936c, this.e)) {
                    arrayList.add(this.f3936c.b());
                    this.f3936c.a();
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }
}
