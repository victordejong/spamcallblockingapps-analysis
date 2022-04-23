package com.google.android.exoplayer2.text.i;

import android.text.SpannedString;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.c;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/b.class */
public final class b extends c {

    /* renamed from: a  reason: collision with root package name */
    private final u f21863a = new u();

    public b() {
        super("Mp4WebvttDecoder");
    }

    private static com.google.android.exoplayer2.text.b a(u uVar, int i) throws SubtitleDecoderException {
        SpannedString spannedString = null;
        b.a aVar = null;
        while (i > 0) {
            if (i >= 8) {
                int j = uVar.j();
                int j2 = uVar.j();
                int i2 = j - 8;
                String a2 = af.a(uVar.f22335a, uVar.f22336b, i2);
                uVar.e(i2);
                int i3 = (i - 8) - i2;
                if (j2 == 1937011815) {
                    aVar = f.a(a2);
                    i = i3;
                } else {
                    i = i3;
                    if (j2 == 1885436268) {
                        spannedString = f.a((String) null, a2.trim(), Collections.emptyList());
                        i = i3;
                    }
                }
            } else {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
        }
        CharSequence charSequence = spannedString;
        if (spannedString == null) {
            charSequence = "";
        }
        if (aVar == null) {
            return f.a(charSequence);
        }
        aVar.f21738a = charSequence;
        return aVar.a();
    }

    @Override // com.google.android.exoplayer2.text.c
    public final e a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.f21863a.a(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.f21863a.a() > 0) {
            if (this.f21863a.a() >= 8) {
                int j = this.f21863a.j();
                if (this.f21863a.j() == 1987343459) {
                    arrayList.add(a(this.f21863a, j - 8));
                } else {
                    this.f21863a.e(j - 8);
                }
            } else {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new c(arrayList);
    }
}
