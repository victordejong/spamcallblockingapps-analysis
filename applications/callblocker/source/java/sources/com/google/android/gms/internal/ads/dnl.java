package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dpi;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dnl.class */
public final class dnl {

    /* renamed from: c */
    private static final dpm f14896c = new dnk();

    /* renamed from: d */
    private static final Pattern f14897d = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f14898a = -1;

    /* renamed from: b */
    public int f14899b = -1;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
        if (r0 > 0) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m9052a(java.lang.String r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = 0
            r6 = r0
            java.lang.String r0 = "iTunSMPB"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L11
            r0 = r6
            r7 = r0
        Le:
            r0 = r7
            return r0
        L11:
            java.util.regex.Pattern r0 = com.google.android.gms.internal.ads.dnl.f14897d
            r1 = r5
            java.util.regex.Matcher r0 = r0.matcher(r1)
            r4 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.find()
            if (r0 == 0) goto Le
            r0 = r4
            r1 = 1
            java.lang.String r0 = r0.group(r1)     // Catch: java.lang.NumberFormatException -> L5a
            r1 = 16
            int r0 = java.lang.Integer.parseInt(r0, r1)     // Catch: java.lang.NumberFormatException -> L5a
            r8 = r0
            r0 = r4
            r1 = 2
            java.lang.String r0 = r0.group(r1)     // Catch: java.lang.NumberFormatException -> L5a
            r1 = 16
            int r0 = java.lang.Integer.parseInt(r0, r1)     // Catch: java.lang.NumberFormatException -> L5a
            r9 = r0
            r0 = r8
            if (r0 > 0) goto L48
            r0 = r6
            r7 = r0
            r0 = r9
            if (r0 <= 0) goto Le
        L48:
            r0 = r3
            r1 = r8
            r0.f14898a = r1     // Catch: java.lang.NumberFormatException -> L5a
            r0 = r3
            r1 = r9
            r0.f14899b = r1     // Catch: java.lang.NumberFormatException -> L5a
            r0 = 1
            r7 = r0
            goto Le
        L5a:
            r4 = move-exception
            r0 = r6
            r7 = r0
            goto Le
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dnl.m9052a(java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: a */
    public final boolean m9054a() {
        return (this.f14898a == -1 || this.f14899b == -1) ? false : true;
    }

    /* renamed from: a */
    public final boolean m9053a(dpi dpiVar) {
        boolean z;
        int i = 0;
        while (true) {
            z = false;
            if (i >= dpiVar.m8933a()) {
                break;
            }
            dpi.AbstractC3010a m8932a = dpiVar.m8932a(i);
            if (m8932a instanceof dpk) {
                dpk dpkVar = (dpk) m8932a;
                if (m9052a(dpkVar.f15291a, dpkVar.f15292b)) {
                    z = true;
                    break;
                }
            }
            i++;
        }
        return z;
    }
}
