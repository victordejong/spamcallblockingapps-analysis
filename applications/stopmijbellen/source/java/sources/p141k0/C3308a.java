package p141k0;

import android.text.TextUtils;
import java.util.Locale;
/* renamed from: k0.a */
/* loaded from: classes-dex2jar.jar:k0/a.class */
public final class C3308a {

    /* renamed from: d */
    public static final AbstractC3312c f11216d;

    /* renamed from: e */
    public static final String f11217e = Character.toString(8206);

    /* renamed from: f */
    public static final String f11218f = Character.toString(8207);

    /* renamed from: g */
    public static final C3308a f11219g;

    /* renamed from: h */
    public static final C3308a f11220h;

    /* renamed from: a */
    public final boolean f11221a;

    /* renamed from: b */
    public final int f11222b;

    /* renamed from: c */
    public final AbstractC3312c f11223c;

    /* renamed from: k0.a$a */
    /* loaded from: classes-dex2jar.jar:k0/a$a.class */
    public static class C3309a {

        /* renamed from: e */
        public static final byte[] f11224e = new byte[1792];

        /* renamed from: a */
        public final CharSequence f11225a;

        /* renamed from: b */
        public final int f11226b;

        /* renamed from: c */
        public int f11227c;

        /* renamed from: d */
        public char f11228d;

        static {
            for (int i = 0; i < 1792; i++) {
                f11224e[i] = Character.getDirectionality(i);
            }
        }

        public C3309a(CharSequence charSequence, boolean z) {
            this.f11225a = charSequence;
            this.f11226b = charSequence.length();
        }

        /* renamed from: a */
        public byte m2391a() {
            char charAt = this.f11225a.charAt(this.f11227c - 1);
            this.f11228d = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f11225a, this.f11227c);
                this.f11227c -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f11227c--;
            char c = this.f11228d;
            return c < 1792 ? f11224e[c] : Character.getDirectionality(c);
        }
    }

    static {
        AbstractC3312c abstractC3312c = C3313d.f11235c;
        f11216d = abstractC3312c;
        f11219g = new C3308a(false, 2, abstractC3312c);
        f11220h = new C3308a(true, 2, abstractC3312c);
    }

    public C3308a(boolean z, int i, AbstractC3312c abstractC3312c) {
        this.f11221a = z;
        this.f11222b = i;
        this.f11223c = abstractC3312c;
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
        if (r0.f11227c <= 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x012b, code lost:
        switch(r0.m2391a()) {
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
    public static int m2395a(java.lang.CharSequence r5) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p141k0.C3308a.m2395a(java.lang.CharSequence):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x008b, code lost:
        r9 = 1;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m2394b(java.lang.CharSequence r5) {
        /*
            r0 = 0
            r6 = r0
            k0.a$a r0 = new k0.a$a
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r5
            r1 = r5
            int r1 = r1.f11226b
            r0.f11227c = r1
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        L18:
            r0 = r6
            r9 = r0
            r0 = r5
            int r0 = r0.f11227c
            if (r0 <= 0) goto Lab
            r0 = r5
            byte r0 = r0.m2391a()
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
            r0 = r8
            if (r0 != 0) goto L18
            goto La6
        L6b:
            int r7 = r7 + 1
            goto L18
        L71:
            r0 = r8
            r1 = r7
            if (r0 != r1) goto L81
            goto L8b
        L79:
            r0 = r8
            r1 = r7
            if (r0 != r1) goto L81
            goto L9c
        L81:
            int r7 = r7 + (-1)
            goto L18
        L87:
            r0 = r7
            if (r0 != 0) goto L91
        L8b:
            r0 = 1
            r9 = r0
            goto Lab
        L91:
            r0 = r8
            if (r0 != 0) goto L18
            goto La6
        L98:
            r0 = r7
            if (r0 != 0) goto La2
        L9c:
            r0 = -1
            r9 = r0
            goto Lab
        La2:
            r0 = r8
            if (r0 != 0) goto L18
        La6:
            r0 = r7
            r8 = r0
            goto L18
        Lab:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p141k0.C3308a.m2394b(java.lang.CharSequence):int");
    }

    /* renamed from: c */
    public static C3308a m2393c() {
        Locale locale = Locale.getDefault();
        int i = C3318e.f11240a;
        boolean z = true;
        if (TextUtils.getLayoutDirectionFromLocale(locale) != 1) {
            z = false;
        }
        AbstractC3312c abstractC3312c = f11216d;
        return abstractC3312c == f11216d ? z ? f11220h : f11219g : new C3308a(z, 2, abstractC3312c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0145, code lost:
        if (m2394b(r6) == (-1)) goto L60;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence m2392d(java.lang.CharSequence r6, p141k0.AbstractC3312c r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p141k0.C3308a.m2392d(java.lang.CharSequence, k0.c, boolean):java.lang.CharSequence");
    }
}
