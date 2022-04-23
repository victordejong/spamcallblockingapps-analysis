package com.facebook.stetho.rhino;

import android.support.annotation.NonNull;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/rhino/JsFormat.class */
class JsFormat {
    private static final Pattern FORMAT_SPECIFIER_PATTERN = Pattern.compile("^%([0-9]+ [$])?([0-9]+)?([.] [0-9]+)?([difs])", 4);

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/rhino/JsFormat$ArrayCharSequence.class */
    private static class ArrayCharSequence implements CharSequence {
        @NonNull
        private final char[] array;
        private final int end;
        private final int start;

        private ArrayCharSequence(@NonNull char[] cArr, int i, int i2) {
            this.array = cArr;
            this.start = i;
            this.end = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        public CharSequence substring(int i) {
            return new ArrayCharSequence(this.array, this.start + i, this.start + this.end);
        }

        @Override // java.lang.CharSequence
        public char charAt(int i) {
            return this.array[this.start + i];
        }

        @Override // java.lang.CharSequence
        public int length() {
            return this.end - this.start;
        }

        @Override // java.lang.CharSequence
        public CharSequence subSequence(int i, int i2) {
            return new ArrayCharSequence(this.array, this.start + i, this.start + i2);
        }

        @Override // java.lang.CharSequence
        @NonNull
        public String toString() {
            return new String(this.array, this.start, this.end - this.start);
        }
    }

    JsFormat() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0202  */
    @android.support.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String parse(@android.support.annotation.NonNull java.lang.Object... r7) {
        /*
            Method dump skipped, instructions count: 825
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.stetho.rhino.JsFormat.parse(java.lang.Object[]):java.lang.String");
    }
}
