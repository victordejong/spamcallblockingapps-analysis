package p020b.p041h.p042e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import androidx.core.content.p007d.C0597c;
import java.io.IOException;
import java.io.InputStream;
import p020b.p041h.p046h.C1556f;
/* renamed from: b.h.e.i */
/* loaded from: classes-dex2jar.jar:b/h/e/i.class */
public class C1533i extends C1534j {
    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: b */
    public Typeface mo29795b(Context context, C0597c.C0599b c0599b, Resources resources, int i) {
        Typeface typeface;
        FontFamily.Builder builder;
        try {
            C0597c.C0600c[] m33295a = c0599b.m33295a();
            int length = m33295a.length;
            builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    break;
                }
                C0597c.C0600c c0600c = m33295a[i2];
                try {
                    Font.Builder weight = new Font.Builder(resources, c0600c.m33293b()).setWeight(c0600c.m33290e());
                    if (!c0600c.m33289f()) {
                        i3 = 0;
                    }
                    Font build = weight.setSlant(i3).setTtcIndex(c0600c.m33292c()).setFontVariationSettings(c0600c.m33291d()).build();
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
    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface mo29794c(android.content.Context r6, android.os.CancellationSignal r7, p020b.p041h.p046h.C1556f.C1558b[] r8, int r9) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p041h.p042e.C1533i.mo29794c(android.content.Context, android.os.CancellationSignal, b.h.h.f$b[], int):android.graphics.Typeface");
    }

    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: d */
    public Typeface mo29793d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: e */
    public Typeface mo29792e(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: h */
    public C1556f.C1558b mo29789h(C1556f.C1558b[] c1558bArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
