package p330f.p331a.p332a;

import p330f.p331a.p332a.p333e.C9484b;
/* renamed from: f.a.a.c */
/* loaded from: classes2-dex2jar.jar:f/a/a/c.class */
public class C9481c {

    /* renamed from: a */
    private static final String[] f40351a = new String[0];

    /* renamed from: a */
    private static String[] m499a(char c, C9484b c9484b) {
        String[] m498b = m498b(c);
        if (m498b != null) {
            for (int i = 0; i < m498b.length; i++) {
                m498b[i] = C9480b.m500b(m498b[i], c9484b);
            }
            return m498b;
        }
        return f40351a;
    }

    /* renamed from: b */
    private static String[] m498b(char c) {
        return C9477a.m507c().m508b(c);
    }

    /* renamed from: c */
    public static String[] m497c(char c, C9484b c9484b) {
        return m499a(c, c9484b);
    }
}
