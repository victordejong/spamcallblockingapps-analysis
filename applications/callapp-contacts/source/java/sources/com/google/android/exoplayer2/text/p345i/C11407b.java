package com.google.android.exoplayer2.text.p345i;

import android.text.SpannedString;
import com.google.android.exoplayer2.text.AbstractC11370c;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
import java.util.Collections;
/* renamed from: com.google.android.exoplayer2.text.i.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/b.class */
public final class C11407b extends AbstractC11370c {

    /* renamed from: a */
    private final C11628u f37648a = new C11628u();

    public C11407b() {
        super("Mp4WebvttDecoder");
    }

    /* renamed from: a */
    private static C11356b m20655a(C11628u c11628u, int i) throws SubtitleDecoderException {
        SpannedString spannedString = null;
        C11356b.C11358a c11358a = null;
        while (i > 0) {
            if (i < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int m19792j = c11628u.m19792j();
            int m19792j2 = c11628u.m19792j();
            int i2 = m19792j - 8;
            String m19960a = C11599af.m19960a(c11628u.f38733a, c11628u.f38734b, i2);
            c11628u.m19799e(i2);
            int i3 = (i - 8) - i2;
            if (m19792j2 == 1937011815) {
                c11358a = C11411f.m20647a(m19960a);
                i = i3;
            } else {
                i = i3;
                if (m19792j2 == 1885436268) {
                    spannedString = C11411f.m20644a((String) null, m19960a.trim(), Collections.emptyList());
                    i = i3;
                }
            }
        }
        SpannedString spannedString2 = spannedString;
        if (spannedString == null) {
            spannedString2 = "";
        }
        if (c11358a != null) {
            c11358a.f37428a = spannedString2;
            return c11358a.m20744a();
        }
        return C11411f.m20648a(spannedString2);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11370c
    /* renamed from: a */
    public final AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f37648a.m19808a(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.f37648a.m19812a() > 0) {
            if (this.f37648a.m19812a() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int m19792j = this.f37648a.m19792j();
            if (this.f37648a.m19792j() == 1987343459) {
                arrayList.add(m20655a(this.f37648a, m19792j - 8));
            } else {
                this.f37648a.m19799e(m19792j - 8);
            }
        }
        return new C11408c(arrayList);
    }
}
