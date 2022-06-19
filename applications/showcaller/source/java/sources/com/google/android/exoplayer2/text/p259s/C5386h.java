package com.google.android.exoplayer2.text.p259s;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.s.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/h.class */
public final class C5386h {

    /* renamed from: a */
    private static final Pattern f17244a = Pattern.compile("^NOTE([ \t].*)?$");

    /* renamed from: a */
    public static Matcher m19376a(C5536v c5536v) {
        String m18666m;
        while (true) {
            String m18666m2 = c5536v.m18666m();
            if (m18666m2 != null) {
                if (f17244a.matcher(m18666m2).matches()) {
                    do {
                        m18666m = c5536v.m18666m();
                        if (m18666m != null) {
                        }
                    } while (!m18666m.isEmpty());
                } else {
                    Matcher matcher = C5382f.f17229a.matcher(m18666m2);
                    if (matcher.matches()) {
                        return matcher;
                    }
                }
            } else {
                return null;
            }
        }
    }

    /* renamed from: b */
    public static boolean m19375b(C5536v c5536v) {
        String m18666m = c5536v.m18666m();
        return m18666m != null && m18666m.startsWith("WEBVTT");
    }

    /* renamed from: c */
    public static float m19374c(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: d */
    public static long m19373d(String str) {
        String[] m18816o0 = C5515h0.m18816o0(str, "\\.");
        char c = 0;
        for (String str2 : C5515h0.m18818n0(m18816o0[0], ":")) {
            c = (c * '<') + Long.parseLong(str2);
        }
        ?? r0 = c * 1000;
        char c2 = r0;
        if (m18816o0.length == 2) {
            c2 = r0 + Long.parseLong(m18816o0[1]);
        }
        return c2 * 1000;
    }

    /* renamed from: e */
    public static void m19372e(C5536v c5536v) {
        int m18676c = c5536v.m18676c();
        if (m19375b(c5536v)) {
            return;
        }
        c5536v.m18680M(m18676c);
        throw new ParserException("Expected WEBVTT. Got " + c5536v.m18666m());
    }
}
