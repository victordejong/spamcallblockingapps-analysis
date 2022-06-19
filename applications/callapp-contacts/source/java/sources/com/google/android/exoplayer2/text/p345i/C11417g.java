package com.google.android.exoplayer2.text.p345i;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.AbstractC11370c;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
/* renamed from: com.google.android.exoplayer2.text.i.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/g.class */
public final class C11417g extends AbstractC11370c {

    /* renamed from: a */
    private final C11628u f37694a = new C11628u();

    /* renamed from: b */
    private final C11406a f37695b = new C11406a();

    public C11417g() {
        super("WebvttDecoder");
    }

    /* renamed from: a */
    private static int m20623a(C11628u c11628u) {
        int i = -1;
        int i2 = 0;
        while (i == -1) {
            i2 = c11628u.f38734b;
            String m19782t = c11628u.m19782t();
            i = m19782t == null ? 0 : "STYLE".equals(m19782t) ? 2 : m19782t.startsWith("NOTE") ? 1 : 3;
        }
        c11628u.m19801d(i2);
        return i;
    }

    /* renamed from: b */
    private static void m20621b(C11628u c11628u) {
        do {
        } while (!TextUtils.isEmpty(c11628u.m19782t()));
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11370c
    /* renamed from: a */
    public final AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        C11410e m20649a;
        this.f37694a.m19808a(bArr, i);
        ArrayList arrayList = new ArrayList();
        try {
            C11418h.m20620a(this.f37694a);
            do {
            } while (!TextUtils.isEmpty(this.f37694a.m19782t()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int m20623a = m20623a(this.f37694a);
                if (m20623a == 0) {
                    return new C11419i(arrayList2);
                }
                if (m20623a == 1) {
                    m20621b(this.f37694a);
                } else if (m20623a == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.f37694a.m19782t();
                    arrayList.addAll(this.f37695b.m20661a(this.f37694a));
                } else if (m20623a == 3 && (m20649a = C11411f.m20649a(this.f37694a, arrayList)) != null) {
                    arrayList2.add(m20649a);
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }
}
