package com.google.android.exoplayer2.text.i;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.c;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/g.class */
public final class g extends c {

    /* renamed from: a  reason: collision with root package name */
    private final u f21889a = new u();

    /* renamed from: b  reason: collision with root package name */
    private final a f21890b = new a();

    public g() {
        super("WebvttDecoder");
    }

    private static int a(u uVar) {
        int i = -1;
        int i2 = 0;
        while (i == -1) {
            i2 = uVar.f22336b;
            String t = uVar.t();
            i = t == null ? 0 : "STYLE".equals(t) ? 2 : t.startsWith("NOTE") ? 1 : 3;
        }
        uVar.d(i2);
        return i;
    }

    private static void b(u uVar) {
        do {
        } while (!TextUtils.isEmpty(uVar.t()));
    }

    @Override // com.google.android.exoplayer2.text.c
    public final e a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        e a2;
        this.f21889a.a(bArr, i);
        ArrayList arrayList = new ArrayList();
        try {
            h.a(this.f21889a);
            do {
            } while (!TextUtils.isEmpty(this.f21889a.t()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int a3 = a(this.f21889a);
                if (a3 == 0) {
                    return new i(arrayList2);
                }
                if (a3 == 1) {
                    b(this.f21889a);
                } else if (a3 == 2) {
                    if (arrayList2.isEmpty()) {
                        this.f21889a.t();
                        arrayList.addAll(this.f21890b.a(this.f21889a));
                    } else {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                } else if (a3 == 3 && (a2 = f.a(this.f21889a, arrayList)) != null) {
                    arrayList2.add(a2);
                }
            }
        } catch (ParserException e) {
            throw new SubtitleDecoderException(e);
        }
    }
}
