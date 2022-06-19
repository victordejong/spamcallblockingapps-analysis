package com.google.zxing.oned;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/CodaBarWriter.class */
public final class CodaBarWriter extends OneDimensionalCodeWriter {
    private static final char[] ALT_START_END_CHARS = {'T', 'N', '*', 'E'};
    private static final char[] CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED = {'/', ':', '+', '.'};
    private static final char DEFAULT_GUARD;
    private static final char[] START_END_CHARS = {'A', 'B', 'C', 'D'};

    static {
        char[] cArr;
        DEFAULT_GUARD = cArr[0];
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0189, code lost:
        if (r16 == (r6.length() - 1)) goto L45;
     */
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean[] encode(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.CodaBarWriter.encode(java.lang.String):boolean[]");
    }
}
