package com.google.android.exoplayer2.text.p259s;

import com.google.android.exoplayer2.text.AbstractC5318c;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.p259s.C5379e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Collections;
/* renamed from: com.google.android.exoplayer2.text.s.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/b.class */
public final class C5376b extends AbstractC5318c {

    /* renamed from: o */
    private final C5536v f17198o = new C5536v();

    /* renamed from: p */
    private final C5379e.C5381b f17199p = new C5379e.C5381b();

    public C5376b() {
        super("Mp4WebvttDecoder");
    }

    /* renamed from: C */
    private static C5317b m19440C(C5536v c5536v, C5379e.C5381b c5381b, int i) {
        c5381b.m19408g();
        while (i > 0) {
            if (i < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int m18668k = c5536v.m18668k();
            int m18668k2 = c5536v.m18668k();
            int i2 = m18668k - 8;
            String m18801w = C5515h0.m18801w(c5536v.f17941a, c5536v.m18676c(), i2);
            c5536v.m18679N(i2);
            int i3 = (i - 8) - i2;
            if (m18668k2 == 1937011815) {
                C5382f.m19388j(m18801w, c5381b);
                i = i3;
            } else {
                i = i3;
                if (m18668k2 == 1885436268) {
                    C5382f.m19387k(null, m18801w.trim(), c5381b, Collections.emptyList());
                    i = i3;
                }
            }
        }
        return c5381b.m19414a();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5318c
    /* renamed from: z */
    protected AbstractC5320e mo19377z(byte[] bArr, int i, boolean z) {
        this.f17198o.m18682K(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.f17198o.m18678a() > 0) {
            if (this.f17198o.m18678a() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int m18668k = this.f17198o.m18668k();
            if (this.f17198o.m18668k() == 1987343459) {
                arrayList.add(m19440C(this.f17198o, this.f17199p, m18668k - 8));
            } else {
                this.f17198o.m18679N(m18668k - 8);
            }
        }
        return new C5377c(arrayList);
    }
}
