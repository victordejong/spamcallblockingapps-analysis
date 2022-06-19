package com.google.common.base;
/* renamed from: com.google.common.base.b */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/b.class */
public abstract class AbstractC8739b implements AbstractC8757k<Character> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/b$a.class */
    public static abstract class AbstractC8740a extends AbstractC8739b {
        AbstractC8740a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.base.b$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/b$b.class */
    public static final class C8741b extends AbstractC8740a {

        /* renamed from: d */
        private final char f38619d;

        C8741b(char c) {
            this.f38619d = c;
        }

        @Override // com.google.common.base.AbstractC8739b
        /* renamed from: d */
        public boolean mo2820d(char c) {
            return c == this.f38619d;
        }

        public String toString() {
            return "CharMatcher.is('" + AbstractC8739b.m2822f(this.f38619d) + "')";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.b$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/b$c.class */
    public static abstract class AbstractC8742c extends AbstractC8740a {

        /* renamed from: d */
        private final String f38620d;

        AbstractC8742c(String str) {
            this.f38620d = (String) C8756j.m2789l(str);
        }

        public final String toString() {
            return this.f38620d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.base.b$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/b$d.class */
    public static final class C8743d extends AbstractC8742c {

        /* renamed from: e */
        static final C8743d f38621e = new C8743d();

        private C8743d() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.AbstractC8739b
        /* renamed from: b */
        public int mo2821b(CharSequence charSequence, int i) {
            C8756j.m2786o(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.AbstractC8739b
        /* renamed from: d */
        public boolean mo2820d(char c) {
            return false;
        }
    }

    protected AbstractC8739b() {
    }

    /* renamed from: c */
    public static AbstractC8739b m2824c(char c) {
        return new C8741b(c);
    }

    /* renamed from: e */
    public static AbstractC8739b m2823e() {
        return C8743d.f38621e;
    }

    /* renamed from: f */
    public static String m2822f(char c) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        char c2 = c;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    /* renamed from: b */
    public int mo2821b(CharSequence charSequence, int i) {
        int length = charSequence.length();
        C8756j.m2786o(i, length);
        while (i < length) {
            if (mo2820d(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: d */
    public abstract boolean mo2820d(char c);
}
