package p193e.p194a.p1129p5;

import android.icu.text.CompactDecimalFormat;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import java.util.Locale;
import s1.z.c.l;
/* renamed from: e.a.p5.z */
/* loaded from: classes15-dex2jar.jar:e/a/p5/z.class */
public final class C19353z implements AbstractC19352y {
    @Override // p193e.p194a.p1129p5.AbstractC19352y
    /* renamed from: a */
    public String mo13417a(Locale locale, int i) {
        l.e(locale, AnalyticsConstants.LOCALE);
        if (i >= 10000 && Build.VERSION.SDK_INT >= 24) {
            String format = CompactDecimalFormat.getInstance(locale, CompactDecimalFormat.CompactStyle.SHORT).format(i);
            l.d(format, "formatter.format(number.toLong())");
            return format;
        }
        return String.valueOf(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r5 != null) goto L14;
     */
    @Override // p193e.p194a.p1129p5.AbstractC19352y
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo13416b(java.util.Locale r5, int r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "locale"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7 = r0
            r0 = r7
            int r0 = r0.intValue()
            if (r0 == 0) goto L18
            r0 = 1
            r8 = r0
            goto L1b
        L18:
            r0 = 0
            r8 = r0
        L1b:
            r0 = r8
            if (r0 == 0) goto L23
            goto L25
        L23:
            r0 = 0
            r7 = r0
        L25:
            r0 = r7
            if (r0 == 0) goto L3c
            r0 = r7
            int r0 = r0.intValue()
            r0 = r4
            r1 = r5
            r2 = r6
            java.lang.String r0 = r0.mo13417a(r1, r2)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L3c
            goto L3f
        L3c:
            java.lang.String r0 = ""
            r5 = r0
        L3f:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.C19353z.mo13416b(java.util.Locale, int):java.lang.String");
    }
}
