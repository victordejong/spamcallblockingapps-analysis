package p1727n3.p1807k.p1812c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import java.io.IOException;
import java.io.InputStream;
import p1727n3.p1807k.p1809b.p1811d.C26484d;
import p1727n3.p1807k.p1809b.p1811d.C26485e;
/* renamed from: n3.k.c.i */
/* loaded from: classes-dex2jar.jar:n3/k/c/i.class */
public class C26500i extends C26502k {
    @Override // p1727n3.p1807k.p1812c.C26502k
    /* renamed from: a */
    public Typeface mo1733a(Context context, C26484d c26484d, Resources resources, int i) {
        Typeface typeface;
        FontFamily.Builder builder;
        try {
            C26485e[] c26485eArr = c26484d.f74252a;
            int length = c26485eArr.length;
            builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    break;
                }
                C26485e c26485e = c26485eArr[i2];
                try {
                    Font.Builder weight = new Font.Builder(resources, c26485e.f74258f).setWeight(c26485e.f74254b);
                    if (!c26485e.f74255c) {
                        i3 = 0;
                    }
                    Font build = weight.setSlant(i3).setTtcIndex(c26485e.f74257e).setFontVariationSettings(c26485e.f74256d).build();
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
    @Override // p1727n3.p1807k.p1812c.C26502k
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface mo1732b(android.content.Context r6, android.os.CancellationSignal r7, p1727n3.p1807k.p1817f.C26530l[] r8, int r9) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1812c.C26500i.mo1732b(android.content.Context, android.os.CancellationSignal, n3.k.f.l[], int):android.graphics.Typeface");
    }

    @Override // p1727n3.p1807k.p1812c.C26502k
    /* renamed from: c */
    public Typeface mo1731c(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p1727n3.p1807k.p1812c.C26502k
    /* renamed from: d */
    public Typeface mo1730d(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }
}
