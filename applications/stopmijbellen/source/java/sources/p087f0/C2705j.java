package p087f0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import java.io.IOException;
import java.io.InputStream;
import p076e0.C2505d;
import p130j0.C3158l;
/* renamed from: f0.j */
/* loaded from: classes-dex2jar.jar:f0/j.class */
public class C2705j extends C2706k {
    @Override // p087f0.C2706k
    /* renamed from: a */
    public Typeface mo3227a(Context context, C2505d.C2507b c2507b, Resources resources, int i) {
        Typeface typeface;
        FontFamily.Builder builder;
        try {
            C2505d.C2508c[] c2508cArr = c2507b.f8762a;
            int length = c2508cArr.length;
            builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    break;
                }
                C2505d.C2508c c2508c = c2508cArr[i2];
                try {
                    Font.Builder weight = new Font.Builder(resources, c2508c.f8768f).setWeight(c2508c.f8764b);
                    if (!c2508c.f8765c) {
                        i3 = 0;
                    }
                    Font build = weight.setSlant(i3).setTtcIndex(c2508c.f8767e).setFontVariationSettings(c2508c.f8766d).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException e) {
                }
                i2++;
            }
        } catch (Exception e2) {
            typeface = null;
        }
        if (builder == null) {
            return null;
        }
        int i4 = (i & 1) != 0 ? 700 : 400;
        int i5 = 0;
        if ((i & 2) != 0) {
            i5 = 1;
        }
        typeface = new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i4, i5)).build();
        return typeface;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        if (r0 != null) goto L12;
     */
    @Override // p087f0.C2706k
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface mo3226b(android.content.Context r6, android.os.CancellationSignal r7, p130j0.C3158l[] r8, int r9) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p087f0.C2705j.mo3226b(android.content.Context, android.os.CancellationSignal, j0.l[], int):android.graphics.Typeface");
    }

    @Override // p087f0.C2706k
    /* renamed from: c */
    public Typeface mo3225c(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p087f0.C2706k
    /* renamed from: d */
    public Typeface mo3224d(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // p087f0.C2706k
    /* renamed from: e */
    public C3158l mo3223e(C3158l[] c3158lArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
