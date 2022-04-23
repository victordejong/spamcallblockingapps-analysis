package com.google.android.exoplayer2.text.f;

import com.google.android.exoplayer2.text.c;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/f/a.class */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f21815a = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f21816b = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: c  reason: collision with root package name */
    private final StringBuilder f21817c = new StringBuilder();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<String> f21818d = new ArrayList<>();

    public a() {
        super("SubripDecoder");
    }

    private static float a(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(java.util.regex.Matcher r7, int r8) {
        /*
            r0 = r7
            r1 = r8
            r2 = 1
            int r1 = r1 + r2
            java.lang.String r0 = r0.group(r1)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0020
            r0 = r9
            long r0 = java.lang.Long.parseLong(r0)
            r1 = 60
            long r0 = r0 * r1
            r1 = 60
            long r0 = r0 * r1
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r10 = r0
            goto L_0x0022
        L_0x0020:
            r0 = 0
            r10 = r0
        L_0x0022:
            r0 = r10
            r1 = r7
            r2 = r8
            r3 = 2
            int r2 = r2 + r3
            java.lang.String r1 = r1.group(r2)
            java.lang.Object r1 = com.google.android.exoplayer2.util.a.b(r1)
            java.lang.String r1 = (java.lang.String) r1
            long r1 = java.lang.Long.parseLong(r1)
            r2 = 60
            long r1 = r1 * r2
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 * r2
            long r0 = r0 + r1
            r1 = r7
            r2 = r8
            r3 = 3
            int r2 = r2 + r3
            java.lang.String r1 = r1.group(r2)
            java.lang.Object r1 = com.google.android.exoplayer2.util.a.b(r1)
            java.lang.String r1 = (java.lang.String) r1
            long r1 = java.lang.Long.parseLong(r1)
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 * r2
            long r0 = r0 + r1
            r12 = r0
            r0 = r7
            r1 = r8
            r2 = 4
            int r1 = r1 + r2
            java.lang.String r0 = r0.group(r1)
            r7 = r0
            r0 = r12
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006a
            r0 = r12
            r1 = r7
            long r1 = java.lang.Long.parseLong(r1)
            long r0 = r0 + r1
            r10 = r0
        L_0x006a:
            r0 = r10
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.f.a.a(java.util.regex.Matcher, int):long");
    }

    private static String a(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = f21816b.matcher(trim);
        int i = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i;
            int length = group.length();
            sb.replace(start, start + length, "");
            i += length;
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:28:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0129  */
    @Override // com.google.android.exoplayer2.text.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.text.e a(byte[] r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.f.a.a(byte[], int, boolean):com.google.android.exoplayer2.text.e");
    }
}
