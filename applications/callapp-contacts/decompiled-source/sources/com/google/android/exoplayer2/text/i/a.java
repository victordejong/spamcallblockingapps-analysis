package com.google.android.exoplayer2.text.i;

import com.google.android.exoplayer2.util.u;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f21860a = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: b  reason: collision with root package name */
    private final u f21861b = new u();

    /* renamed from: c  reason: collision with root package name */
    private final StringBuilder f21862c = new StringBuilder();

    private static String a(u uVar, StringBuilder sb) {
        c(uVar);
        if (uVar.a() == 0) {
            return null;
        }
        String c2 = c(uVar, sb);
        if (!"".equals(c2)) {
            return c2;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((char) uVar.c());
        return sb2.toString();
    }

    private static String b(u uVar) {
        int i = uVar.f22336b;
        int i2 = uVar.f22337c;
        boolean z = false;
        while (i < i2 && !z) {
            z = ((char) uVar.f22335a[i]) == ')';
            i++;
        }
        return uVar.f((i - 1) - uVar.f22336b).trim();
    }

    private static String b(u uVar, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int i = uVar.f22336b;
            String a2 = a(uVar, sb);
            if (a2 == null) {
                return null;
            }
            if ("}".equals(a2) || ";".equals(a2)) {
                uVar.d(i);
                z = true;
            } else {
                sb2.append(a2);
            }
        }
        return sb2.toString();
    }

    private static String c(u uVar, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int i = uVar.f22336b;
        int i2 = uVar.f22337c;
        while (i < i2 && !z) {
            char c2 = (char) uVar.f22335a[i];
            if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                z = true;
            } else {
                i++;
                sb.append(c2);
            }
        }
        uVar.e(i - uVar.f22336b);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf A[LOOP:1: B:3:0x0002->B:39:0x00bf, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void c(com.google.android.exoplayer2.util.u r4) {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.i.a.c(com.google.android.exoplayer2.util.u):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b5, code lost:
        if (")".equals(a(r0, r0)) == false) goto L_0x0055;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0355 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0036 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.exoplayer2.text.i.d> a(com.google.android.exoplayer2.util.u r7) {
        /*
            Method dump skipped, instructions count: 867
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.i.a.a(com.google.android.exoplayer2.util.u):java.util.List");
    }
}
