package com.google.android.exoplayer2.text.i;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.u;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f21891a = Pattern.compile("^NOTE([ \t].*)?$");

    private h() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(java.lang.String r5) throws java.lang.NumberFormatException {
        /*
            r0 = r5
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = com.google.android.exoplayer2.util.af.b(r0, r1)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = 0
            r0 = r0[r1]
            java.lang.String r1 = ":"
            java.lang.String[] r0 = com.google.android.exoplayer2.util.af.a(r0, r1)
            r5 = r0
            r0 = r5
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0018:
            r0 = r7
            r1 = r8
            if (r0 >= r1) goto L_0x0032
            r0 = r9
            r1 = 60
            long r0 = r0 * r1
            r1 = r5
            r2 = r7
            r1 = r1[r2]
            long r1 = java.lang.Long.parseLong(r1)
            long r0 = r0 + r1
            r9 = r0
            int r7 = r7 + 1
            goto L_0x0018
        L_0x0032:
            r0 = r9
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r6
            int r0 = r0.length
            r1 = 2
            if (r0 != r1) goto L_0x004f
            r0 = r11
            r1 = r6
            r2 = 1
            r1 = r1[r2]
            long r1 = java.lang.Long.parseLong(r1)
            long r0 = r0 + r1
            r9 = r0
        L_0x004f:
            r0 = r9
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.i.h.a(java.lang.String):long");
    }

    public static void a(u uVar) throws ParserException {
        int i = uVar.f22336b;
        String t = uVar.t();
        if (!(t != null && t.startsWith("WEBVTT"))) {
            uVar.d(i);
            throw new ParserException("Expected WEBVTT. Got " + uVar.t());
        }
    }

    public static float b(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }
}
