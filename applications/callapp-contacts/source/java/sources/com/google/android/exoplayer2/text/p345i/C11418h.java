package com.google.android.exoplayer2.text.p345i;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11628u;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.i.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/h.class */
public final class C11418h {

    /* renamed from: a */
    private static final Pattern f37696a = Pattern.compile("^NOTE([ \t].*)?$");

    private C11418h() {
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    public static long m20619a(String str) throws NumberFormatException {
        String[] m19943b = C11599af.m19943b(str, "\\.");
        char c = 0;
        for (String str2 : C11599af.m19969a(m19943b[0], ":")) {
            c = (c * '<') + Long.parseLong(str2);
        }
        ?? r0 = c * 1000;
        char c2 = r0;
        if (m19943b.length == 2) {
            c2 = r0 + Long.parseLong(m19943b[1]);
        }
        return c2 * 1000;
    }

    /* renamed from: a */
    public static void m20620a(C11628u c11628u) throws ParserException {
        int i = c11628u.f38734b;
        String m19782t = c11628u.m19782t();
        if (m19782t != null && m19782t.startsWith("WEBVTT")) {
            return;
        }
        c11628u.m19801d(i);
        throw new ParserException("Expected WEBVTT. Got " + c11628u.m19782t());
    }

    /* renamed from: b */
    public static float m20618b(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }
}
