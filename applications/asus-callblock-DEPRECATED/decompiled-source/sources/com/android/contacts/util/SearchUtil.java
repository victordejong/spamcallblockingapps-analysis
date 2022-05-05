package com.android.contacts.util;

import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/SearchUtil.class */
public class SearchUtil {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/SearchUtil$MatchedLine.class */
    public static class MatchedLine {
        public String line;
        public int startIndex = -1;

        public String toString() {
            return "MatchedLine{line='" + this.line + "', startIndex=" + this.startIndex + '}';
        }
    }

    public static String cleanStartAndEndOfSearchQuery(String str) {
        int i;
        String substring;
        int i2 = 0;
        while (i2 < str.length()) {
            int codePointAt = str.codePointAt(i2);
            if (Character.isLetterOrDigit(codePointAt)) {
                break;
            }
            i2 += Character.charCount(codePointAt);
        }
        if (i2 == str.length()) {
            substring = BuildConfig.FLAVOR;
        } else {
            int length = str.length();
            while (true) {
                int i3 = length - 1;
                i = i3;
                if (i3 < 0) {
                    break;
                }
                int i4 = i3;
                if (Character.isLowSurrogate(str.charAt(i3))) {
                    i4 = i3 - 1;
                }
                i = i4;
                if (Character.isLetterOrDigit(str.codePointAt(i4))) {
                    break;
                }
                length = i4;
            }
            substring = str.substring(i2, i + 1);
        }
        return substring;
    }

    static int contains(String str, String str2) {
        int i;
        int lowerCase;
        if (str.length() >= str2.length()) {
            int[] iArr = new int[str2.length()];
            int i2 = 0;
            int i3 = 0;
            while (i2 < str2.length()) {
                int codePointAt = Character.codePointAt(str2, i2);
                iArr[i3] = codePointAt;
                i3++;
                i2 += Character.charCount(codePointAt);
            }
            int i4 = 0;
            while (true) {
                if (i4 >= str.length()) {
                    i = -1;
                    break;
                }
                int i5 = 0;
                int i6 = i4;
                while (i6 < str.length() && i5 < i3 && (lowerCase = Character.toLowerCase(str.codePointAt(i6))) == iArr[i5]) {
                    i6 += Character.charCount(lowerCase);
                    i5++;
                }
                i = i4;
                if (i5 == i3) {
                    break;
                }
                i4 = findNextTokenStart(str, i4);
            }
        } else {
            i = -1;
        }
        return i;
    }

    public static MatchedLine findMatchingLine(String str, String str2) {
        MatchedLine matchedLine = new MatchedLine();
        int contains = contains(str, str2);
        if (contains != -1) {
            int i = contains - 1;
            while (i >= 0 && str.charAt(i) != '\n') {
                i--;
            }
            int i2 = contains + 1;
            while (i2 < str.length() && str.charAt(i2) != '\n') {
                i2++;
            }
            matchedLine.line = str.substring(i + 1, i2);
            matchedLine.startIndex = contains - (i + 1);
        }
        return matchedLine;
    }

    public static MatchedLine findMatchingLine2(String str, String str2) {
        MatchedLine matchedLine = new MatchedLine();
        int indexOf = str.indexOf(str2);
        if (indexOf != -1) {
            int i = indexOf - 1;
            while (i >= 0 && str.charAt(i) != '\n') {
                i--;
            }
            int i2 = indexOf + 1;
            while (i2 < str.length() && str.charAt(i2) != '\n') {
                i2++;
            }
            matchedLine.line = str.substring(i + 1, i2);
            matchedLine.startIndex = indexOf - (i + 1);
        }
        return matchedLine;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        r0 = r3.codePointAt(r5);
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
        if (java.lang.Character.isLetterOrDigit(r0) != false) goto L_0x0012;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x003c, code lost:
        r5 = r5 + java.lang.Character.charCount(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        if (r5 > r3.length()) goto L_0x0012;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r5 != r3.length()) goto L_0x002d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0055, code lost:
        r4 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int findNextTokenStart(java.lang.String r3, int r4) {
        /*
        L_0x0000:
            r0 = r4
            r5 = r0
            r0 = r4
            r1 = r3
            int r1 = r1.length()
            if (r0 > r1) goto L_0x0043
            r0 = r4
            r1 = r3
            int r1 = r1.length()
            if (r0 != r1) goto L_0x0014
        L_0x0012:
            r0 = r4
            return r0
        L_0x0014:
            r0 = r3
            r1 = r4
            int r0 = r0.codePointAt(r1)
            r6 = r0
            r0 = r4
            r5 = r0
            r0 = r6
            boolean r0 = java.lang.Character.isLetterOrDigit(r0)
            if (r0 == 0) goto L_0x0043
            r0 = r4
            r1 = r6
            int r1 = java.lang.Character.charCount(r1)
            int r0 = r0 + r1
            r4 = r0
            goto L_0x0000
        L_0x002d:
            r0 = r3
            r1 = r5
            int r0 = r0.codePointAt(r1)
            r6 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            boolean r0 = java.lang.Character.isLetterOrDigit(r0)
            if (r0 != 0) goto L_0x0012
            r0 = r5
            r1 = r6
            int r1 = java.lang.Character.charCount(r1)
            int r0 = r0 + r1
            r5 = r0
        L_0x0043:
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = r3
            int r1 = r1.length()
            if (r0 > r1) goto L_0x0012
            r0 = r5
            r1 = r3
            int r1 = r1.length()
            if (r0 != r1) goto L_0x002d
            r0 = r5
            r4 = r0
            goto L_0x0012
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.SearchUtil.findNextTokenStart(java.lang.String, int):int");
    }
}
