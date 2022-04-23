package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import androidx.core.c.b;
import androidx.core.content.res.c;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/i.class */
public final class i extends j {
    @Override // androidx.core.graphics.j
    public final Typeface a(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (IOException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009b, code lost:
        if (r0 != null) goto L_0x003f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003c, code lost:
        if (r0 != null) goto L_0x003f;
     */
    @Override // androidx.core.graphics.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Typeface a(android.content.Context r6, android.os.CancellationSignal r7, androidx.core.c.b.C0043b[] r8, int r9) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.i.a(android.content.Context, android.os.CancellationSignal, androidx.core.c.b$b[], int):android.graphics.Typeface");
    }

    @Override // androidx.core.graphics.j
    public final Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0045c[] cVarArr = bVar.f1836a;
        int length = cVarArr.length;
        int i2 = 0;
        FontFamily.Builder builder = null;
        int i3 = 0;
        while (true) {
            int i4 = 1;
            if (i3 >= length) {
                break;
            }
            c.C0045c cVar = cVarArr[i3];
            try {
                Font.Builder weight = new Font.Builder(resources, cVar.f).setWeight(cVar.f1838b);
                if (!cVar.f1839c) {
                    i4 = 0;
                }
                Font build = weight.setSlant(i4).setTtcIndex(cVar.e).setFontVariationSettings(cVar.f1840d).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException e) {
            }
            i3++;
        }
        if (builder == null) {
            return null;
        }
        int i5 = (i & 1) != 0 ? 700 : 400;
        if ((i & 2) != 0) {
            i2 = 1;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i5, i2)).build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.graphics.j
    public final Typeface a(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.graphics.j
    public final b.C0043b a(b.C0043b[] bVarArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
