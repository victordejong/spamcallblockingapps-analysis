package com.google.common.base;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/c.class */
public abstract class c implements n<Character> {

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/c$a.class */
    static abstract class a extends c {
        a() {
        }

        @Override // com.google.common.base.c, com.google.common.base.n
        @Deprecated
        public /* synthetic */ boolean apply(Character ch) {
            return c.super.apply(ch);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/c$b.class */
    static final class b extends a {

        /* renamed from: a  reason: collision with root package name */
        private final char f31915a;

        b(char c2) {
            this.f31915a = c2;
        }

        @Override // com.google.common.base.c
        public final boolean b(char c2) {
            return c2 == this.f31915a;
        }

        @Override // com.google.common.base.c
        public final String toString() {
            char c2 = this.f31915a;
            char[] cArr = new char[6];
            cArr[0] = '\\';
            cArr[1] = 'u';
            cArr[2] = 0;
            cArr[3] = 0;
            cArr[4] = 0;
            cArr[5] = 0;
            for (int i = 0; i < 4; i++) {
                cArr[5 - i] = "0123456789ABCDEF".charAt(c2 & 15);
                c2 = (char) (c2 >> 4);
            }
            String copyValueOf = String.copyValueOf(cArr);
            StringBuilder sb = new StringBuilder(String.valueOf(copyValueOf).length() + 18);
            sb.append("CharMatcher.is('");
            sb.append(copyValueOf);
            sb.append("')");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.base.c$c  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/c$c.class */
    static abstract class AbstractC0507c extends a {

        /* renamed from: a  reason: collision with root package name */
        private final String f31916a;

        AbstractC0507c(String str) {
            this.f31916a = (String) m.a(str);
        }

        @Override // com.google.common.base.c
        public final String toString() {
            return this.f31916a;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/c$d.class */
    static final class d extends AbstractC0507c {

        /* renamed from: a  reason: collision with root package name */
        static final d f31917a = new d();

        private d() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.c
        public final int a(CharSequence charSequence, int i) {
            m.b(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.c
        public final boolean b(char c2) {
            return false;
        }
    }

    protected c() {
    }

    public static c a() {
        return d.f31917a;
    }

    public static c a(char c2) {
        return new b(c2);
    }

    public int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        m.b(i, length);
        while (i < length) {
            if (b(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Deprecated
    /* renamed from: a */
    public final boolean apply(Character ch) {
        return b(ch.charValue());
    }

    public abstract boolean b(char c2);

    public String toString() {
        return super.toString();
    }
}
