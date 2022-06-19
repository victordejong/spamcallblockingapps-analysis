package com.google.common.base;
/* renamed from: com.google.common.base.c */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/c.class */
public abstract class AbstractC15369c implements AbstractC15392n<Character> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.c$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/c$a.class */
    public static abstract class AbstractC15370a extends AbstractC15369c {
        AbstractC15370a() {
        }

        @Override // com.google.common.base.AbstractC15369c, com.google.common.base.AbstractC15392n
        @Deprecated
        public /* synthetic */ boolean apply(Character ch) {
            return AbstractC15369c.super.apply(ch);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.c$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/c$b.class */
    public static final class C15371b extends AbstractC15370a {

        /* renamed from: a */
        private final char f55615a;

        C15371b(char c) {
            this.f55615a = c;
        }

        @Override // com.google.common.base.AbstractC15369c
        /* renamed from: b */
        public final boolean mo8967b(char c) {
            return c == this.f55615a;
        }

        @Override // com.google.common.base.AbstractC15369c
        public final String toString() {
            char c = this.f55615a;
            char[] cArr = new char[6];
            cArr[0] = '\\';
            cArr[1] = 'u';
            cArr[2] = 0;
            cArr[3] = 0;
            cArr[4] = 0;
            cArr[5] = 0;
            for (int i = 0; i < 4; i++) {
                cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
                c = (char) (c >> 4);
            }
            String copyValueOf = String.copyValueOf(cArr);
            StringBuilder sb = new StringBuilder(String.valueOf(copyValueOf).length() + 18);
            sb.append("CharMatcher.is('");
            sb.append(copyValueOf);
            sb.append("')");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.c$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/c$c.class */
    public static abstract class AbstractC15372c extends AbstractC15370a {

        /* renamed from: a */
        private final String f55616a;

        AbstractC15372c(String str) {
            this.f55616a = (String) C15391m.m8946a(str);
        }

        @Override // com.google.common.base.AbstractC15369c
        public final String toString() {
            return this.f55616a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.base.c$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/c$d.class */
    public static final class C15373d extends AbstractC15372c {

        /* renamed from: a */
        static final C15373d f55617a = new C15373d();

        private C15373d() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.AbstractC15369c
        /* renamed from: a */
        public final int mo8968a(CharSequence charSequence, int i) {
            C15391m.m8935b(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.AbstractC15369c
        /* renamed from: b */
        public final boolean mo8967b(char c) {
            return false;
        }
    }

    protected AbstractC15369c() {
    }

    /* renamed from: a */
    public static AbstractC15369c m8971a() {
        return C15373d.f55617a;
    }

    /* renamed from: a */
    public static AbstractC15369c m8970a(char c) {
        return new C15371b(c);
    }

    /* renamed from: a */
    public int mo8968a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        C15391m.m8935b(i, length);
        while (i < length) {
            if (mo8967b(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Deprecated
    /* renamed from: a */
    public final boolean apply(Character ch) {
        return mo8967b(ch.charValue());
    }

    /* renamed from: b */
    public abstract boolean mo8967b(char c);

    public String toString() {
        return super.toString();
    }
}
