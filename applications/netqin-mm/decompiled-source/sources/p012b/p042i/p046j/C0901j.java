package p012b.p042i.p046j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import com.google.logging.type.LogSeverity;
import java.io.IOException;
import java.io.InputStream;
import p012b.p042i.p044i.p045c.C0874c;
import p012b.p042i.p051m.C0924b;
/* renamed from: b.i.j.j */
/* loaded from: classes-dex2jar.jar:b/i/j/j.class */
public class C0901j extends C0902k {
    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35553a(Context context, Resources resources, int i, String str, int i2) {
        try {
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(new Font.Builder(resources, i).build()).build()).setStyle(new FontStyle((i2 & 1) != 0 ? LogSeverity.ALERT_VALUE : LogSeverity.WARNING_VALUE, (i2 & 2) != 0 ? 1 : 0)).build();
        } catch (IOException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00aa, code lost:
        if (r0 != null) goto L_0x0041;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        if (r0 != null) goto L_0x0041;
     */
    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface mo35552a(android.content.Context r6, android.os.CancellationSignal r7, p012b.p042i.p051m.C0924b.C0930f[] r8, int r9) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p046j.C0901j.mo35552a(android.content.Context, android.os.CancellationSignal, b.i.m.b$f[], int):android.graphics.Typeface");
    }

    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35551a(Context context, C0874c.C0876b bVar, Resources resources, int i) {
        C0874c.C0877c[] a = bVar.m35654a();
        int length = a.length;
        int i2 = 0;
        FontFamily.Builder builder = null;
        int i3 = 0;
        while (true) {
            int i4 = 1;
            if (i3 >= length) {
                break;
            }
            C0874c.C0877c cVar = a[i3];
            try {
                Font.Builder weight = new Font.Builder(resources, cVar.m35652b()).setWeight(cVar.m35649e());
                if (!cVar.m35648f()) {
                    i4 = 0;
                }
                Font build = weight.setSlant(i4).setTtcIndex(cVar.m35651c()).setFontVariationSettings(cVar.m35650d()).build();
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
        int i5 = (i & 1) != 0 ? LogSeverity.ALERT_VALUE : LogSeverity.WARNING_VALUE;
        if ((i & 2) != 0) {
            i2 = 1;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i5, i2)).build();
    }

    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35550a(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public C0924b.C0930f mo35546a(C0924b.C0930f[] fVarArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
