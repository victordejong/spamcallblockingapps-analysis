package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import androidx.core.content.res.C0796c;
import androidx.core.p033c.C0772b;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: androidx.core.graphics.i */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/i.class */
public final class C0850i extends C0851j {
    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public final Typeface mo44319a(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (IOException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009b, code lost:
        if (r0 != null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003c, code lost:
        if (r0 != null) goto L10;
     */
    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Typeface mo44318a(android.content.Context r6, android.os.CancellationSignal r7, androidx.core.p033c.C0772b.C0778b[] r8, int r9) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0850i.mo44318a(android.content.Context, android.os.CancellationSignal, androidx.core.c.b$b[], int):android.graphics.Typeface");
    }

    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public final Typeface mo44317a(Context context, C0796c.C0798b c0798b, Resources resources, int i) {
        C0796c.C0799c[] c0799cArr = c0798b.f3490a;
        int length = c0799cArr.length;
        FontFamily.Builder builder = null;
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i2 >= length) {
                break;
            }
            C0796c.C0799c c0799c = c0799cArr[i2];
            try {
                Font.Builder weight = new Font.Builder(resources, c0799c.f3496f).setWeight(c0799c.f3492b);
                if (!c0799c.f3493c) {
                    i3 = 0;
                }
                Font build = weight.setSlant(i3).setTtcIndex(c0799c.f3495e).setFontVariationSettings(c0799c.f3494d).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException e) {
            }
            i2++;
        }
        if (builder == null) {
            return null;
        }
        int i4 = (i & 1) != 0 ? 700 : 400;
        int i5 = 0;
        if ((i & 2) != 0) {
            i5 = 1;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i4, i5)).build();
    }

    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public final Typeface mo44316a(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public final C0772b.C0778b mo44314a(C0772b.C0778b[] c0778bArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
