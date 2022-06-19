package com.google.android.exoplayer2.text.p259s;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.AbstractC5318c;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.p259s.C5379e;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.s.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/g.class */
public final class C5385g extends AbstractC5318c {

    /* renamed from: o */
    private final C5382f f17239o = new C5382f();

    /* renamed from: p */
    private final C5536v f17240p = new C5536v();

    /* renamed from: q */
    private final C5379e.C5381b f17241q = new C5379e.C5381b();

    /* renamed from: r */
    private final C5375a f17242r = new C5375a();

    /* renamed from: s */
    private final List<C5378d> f17243s = new ArrayList();

    public C5385g() {
        super("WebvttDecoder");
    }

    /* renamed from: C */
    private static int m19379C(C5536v c5536v) {
        int i = -1;
        int i2 = 0;
        while (i == -1) {
            i2 = c5536v.m18676c();
            String m18666m = c5536v.m18666m();
            i = m18666m == null ? 0 : "STYLE".equals(m18666m) ? 2 : m18666m.startsWith("NOTE") ? 1 : 3;
        }
        c5536v.m18680M(i2);
        return i;
    }

    /* renamed from: D */
    private static void m19378D(C5536v c5536v) {
        do {
        } while (!TextUtils.isEmpty(c5536v.m18666m()));
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5318c
    /* renamed from: z */
    protected AbstractC5320e mo19377z(byte[] bArr, int i, boolean z) {
        this.f17240p.m18682K(bArr, i);
        this.f17241q.m19408g();
        this.f17243s.clear();
        try {
            C5386h.m19372e(this.f17240p);
            do {
            } while (!TextUtils.isEmpty(this.f17240p.m18666m()));
            ArrayList arrayList = new ArrayList();
            while (true) {
                int m19379C = m19379C(this.f17240p);
                if (m19379C == 0) {
                    return new C5387i(arrayList);
                }
                if (m19379C == 1) {
                    m19378D(this.f17240p);
                } else if (m19379C == 2) {
                    if (!arrayList.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.f17240p.m18666m();
                    this.f17243s.addAll(this.f17242r.m19450d(this.f17240p));
                } else if (m19379C == 3 && this.f17239o.m19390h(this.f17240p, this.f17241q, this.f17243s)) {
                    arrayList.add(this.f17241q.m19414a());
                    this.f17241q.m19408g();
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }
}
