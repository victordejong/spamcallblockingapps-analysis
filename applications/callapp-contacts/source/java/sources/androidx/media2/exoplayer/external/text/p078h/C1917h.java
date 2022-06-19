package androidx.media2.exoplayer.external.text.p078h;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: androidx.media2.exoplayer.external.text.h.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/h/h.class */
public final class C1917h {

    /* renamed from: a */
    private static final Pattern f7712a = Pattern.compile("^NOTE(( |\t).*)?$");

    private C1917h() {
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: a */
    public static long m41888a(String str) throws NumberFormatException {
        String[] m41630b = C1996ac.m41630b(str, "\\.");
        char c = 0;
        for (String str2 : C1996ac.m41654a(m41630b[0], ":")) {
            c = (c * '<') + Long.parseLong(str2);
        }
        ?? r0 = c * 1000;
        char c2 = r0;
        if (m41630b.length == 2) {
            c2 = r0 + Long.parseLong(m41630b[1]);
        }
        return c2 * 1000;
    }

    /* renamed from: a */
    public static void m41889a(C2018p c2018p) throws ParserException {
        int i = c2018p.f8132b;
        if (!m41887b(c2018p)) {
            c2018p.m41533c(i);
            String valueOf = String.valueOf(c2018p.m41515r());
            throw new ParserException(valueOf.length() != 0 ? "Expected WEBVTT. Got ".concat(valueOf) : new String("Expected WEBVTT. Got "));
        }
    }

    /* renamed from: b */
    public static float m41886b(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    /* renamed from: b */
    public static boolean m41887b(C2018p c2018p) {
        String m41515r = c2018p.m41515r();
        return m41515r != null && m41515r.startsWith("WEBVTT");
    }

    /* renamed from: c */
    public static Matcher m41885c(C2018p c2018p) {
        String m41515r;
        while (true) {
            String m41515r2 = c2018p.m41515r();
            if (m41515r2 != null) {
                if (f7712a.matcher(m41515r2).matches()) {
                    do {
                        m41515r = c2018p.m41515r();
                        if (m41515r != null) {
                        }
                    } while (!m41515r.isEmpty());
                } else {
                    Matcher matcher = C1913f.f7697a.matcher(m41515r2);
                    if (matcher.matches()) {
                        return matcher;
                    }
                }
            } else {
                return null;
            }
        }
    }
}
