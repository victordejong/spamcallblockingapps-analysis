package p1727n3.p1807k.p1818g;

import android.text.TextUtils;
import java.util.Locale;
/* renamed from: n3.k.g.a */
/* loaded from: classes-dex2jar.jar:n3/k/g/a.class */
public final class C26536a {

    /* renamed from: d */
    public static final AbstractC26540c f74351d;

    /* renamed from: e */
    public static final String f74352e = Character.toString(8206);

    /* renamed from: f */
    public static final String f74353f = Character.toString(8207);

    /* renamed from: g */
    public static final C26536a f74354g;

    /* renamed from: h */
    public static final C26536a f74355h;

    /* renamed from: a */
    public final boolean f74356a;

    /* renamed from: b */
    public final int f74357b;

    /* renamed from: c */
    public final AbstractC26540c f74358c;

    /* renamed from: n3.k.g.a$a */
    /* loaded from: classes-dex2jar.jar:n3/k/g/a$a.class */
    public static class C26537a {

        /* renamed from: e */
        public static final byte[] f74359e = new byte[1792];

        /* renamed from: a */
        public final CharSequence f74360a;

        /* renamed from: b */
        public final int f74361b;

        /* renamed from: c */
        public int f74362c;

        /* renamed from: d */
        public char f74363d;

        static {
            for (int i = 0; i < 1792; i++) {
                f74359e[i] = Character.getDirectionality(i);
            }
        }

        public C26537a(CharSequence charSequence, boolean z) {
            this.f74360a = charSequence;
            this.f74361b = charSequence.length();
        }

        /* renamed from: a */
        public byte m1706a() {
            char charAt = this.f74360a.charAt(this.f74362c - 1);
            this.f74363d = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f74360a, this.f74362c);
                this.f74362c -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f74362c--;
            char c = this.f74363d;
            return c < 1792 ? f74359e[c] : Character.getDirectionality(c);
        }
    }

    static {
        AbstractC26540c abstractC26540c = C26541d.f74370c;
        f74351d = abstractC26540c;
        f74354g = new C26536a(false, 2, abstractC26540c);
        f74355h = new C26536a(true, 2, abstractC26540c);
    }

    public C26536a(boolean z, int i, AbstractC26540c abstractC26540c) {
        this.f74356a = z;
        this.f74357b = i;
        this.f74358c = abstractC26540c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0106, code lost:
        if (r7 != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0109, code lost:
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x010f, code lost:
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0114, code lost:
        if (r8 == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0117, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011d, code lost:
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0124, code lost:
        if (r0.f74362c <= 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x012b, code lost:
        switch(r0.m1706a()) {
            case 14: goto L73;
            case 15: goto L73;
            case 16: goto L72;
            case 17: goto L72;
            case 18: goto L71;
            default: goto L77;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014f, code lost:
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0158, code lost:
        if (r7 != r10) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x015b, code lost:
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0164, code lost:
        if (r7 != r10) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x016d, code lost:
        r10 = r10 - 1;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m1712a(java.lang.CharSequence r5) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1818g.C26536a.m1712a(java.lang.CharSequence):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x008b, code lost:
        r9 = 1;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m1711b(java.lang.CharSequence r5) {
        /*
            r0 = 0
            r6 = r0
            n3.k.g.a$a r0 = new n3.k.g.a$a
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r5
            r1 = r5
            int r1 = r1.f74361b
            r0.f74362c = r1
            r0 = 0
            r7 = r0
        L16:
            r0 = r7
            r8 = r0
        L18:
            r0 = r6
            r9 = r0
            r0 = r5
            int r0 = r0.f74362c
            if (r0 <= 0) goto Lab
            r0 = r5
            byte r0 = r0.m1706a()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L98
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L87
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L87
            r0 = r9
            r1 = 9
            if (r0 == r1) goto L18
            r0 = r9
            switch(r0) {
                case 14: goto L79;
                case 15: goto L79;
                case 16: goto L71;
                case 17: goto L71;
                case 18: goto L6b;
                default: goto L64;
            }
        L64:
            r0 = r7
            if (r0 != 0) goto L18
            goto La6
        L6b:
            int r8 = r8 + 1
            goto L18
        L71:
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L81
            goto L8b
        L79:
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L81
            goto L9c
        L81:
            int r8 = r8 + (-1)
            goto L18
        L87:
            r0 = r8
            if (r0 != 0) goto L91
        L8b:
            r0 = 1
            r9 = r0
            goto Lab
        L91:
            r0 = r7
            if (r0 != 0) goto L18
            goto La6
        L98:
            r0 = r8
            if (r0 != 0) goto La2
        L9c:
            r0 = -1
            r9 = r0
            goto Lab
        La2:
            r0 = r7
            if (r0 != 0) goto L18
        La6:
            r0 = r8
            r7 = r0
            goto L16
        Lab:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1818g.C26536a.m1711b(java.lang.CharSequence):int");
    }

    /* renamed from: c */
    public static C26536a m1710c() {
        Locale locale = Locale.getDefault();
        Locale locale2 = C26545e.f74374a;
        boolean z = true;
        if (TextUtils.getLayoutDirectionFromLocale(locale) != 1) {
            z = false;
        }
        AbstractC26540c abstractC26540c = f74351d;
        return abstractC26540c == f74351d ? z ? f74355h : f74354g : new C26536a(z, 2, abstractC26540c);
    }

    /* renamed from: d */
    public CharSequence m1709d(CharSequence charSequence) {
        return m1708e(charSequence, this.f74358c, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0145, code lost:
        if (m1711b(r6) == (-1)) goto L60;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence m1708e(java.lang.CharSequence r6, p1727n3.p1807k.p1818g.AbstractC26540c r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1818g.C26536a.m1708e(java.lang.CharSequence, n3.k.g.c, boolean):java.lang.CharSequence");
    }

    /* renamed from: f */
    public String m1707f(String str) {
        return str == null ? null : m1708e(str, this.f74358c, true).toString();
    }
}
