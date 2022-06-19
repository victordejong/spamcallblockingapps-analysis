package com.fasterxml.jackson.core.p309io;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
/* renamed from: com.fasterxml.jackson.core.io.JsonStringEncoder */
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/JsonStringEncoder.class */
public final class JsonStringEncoder {
    private static final int INITIAL_BYTE_BUFFER_SIZE = 200;
    private static final int INITIAL_CHAR_BUFFER_SIZE = 120;
    private static final int SURR1_FIRST = 55296;
    private static final int SURR1_LAST = 56319;
    private static final int SURR2_FIRST = 56320;
    private static final int SURR2_LAST = 57343;

    /* renamed from: HC */
    private static final char[] f34287HC = CharTypes.copyHexChars();

    /* renamed from: HB */
    private static final byte[] f34286HB = CharTypes.copyHexBytes();
    private static final JsonStringEncoder instance = new JsonStringEncoder();

    private int _appendByte(int i, int i2, ByteArrayBuilder byteArrayBuilder, int i3) {
        byteArrayBuilder.setCurrentSegmentLength(i3);
        byteArrayBuilder.append(92);
        if (i2 < 0) {
            byteArrayBuilder.append(117);
            if (i > 255) {
                int i4 = i >> 8;
                byte[] bArr = f34286HB;
                byteArrayBuilder.append(bArr[i4 >> 4]);
                byteArrayBuilder.append(bArr[i4 & 15]);
                i &= 255;
            } else {
                byteArrayBuilder.append(48);
                byteArrayBuilder.append(48);
            }
            byte[] bArr2 = f34286HB;
            byteArrayBuilder.append(bArr2[i >> 4]);
            byteArrayBuilder.append(bArr2[i & 15]);
        } else {
            byteArrayBuilder.append((byte) i2);
        }
        return byteArrayBuilder.getCurrentSegmentLength();
    }

    private int _appendNamed(int i, char[] cArr) {
        cArr[1] = (char) i;
        return 2;
    }

    private int _appendNumeric(int i, char[] cArr) {
        cArr[1] = (char) 117;
        char[] cArr2 = f34287HC;
        cArr[4] = cArr2[i >> 4];
        cArr[5] = cArr2[i & 15];
        return 6;
    }

    private static int _convert(int i, int i2) {
        if (i2 < 56320 || i2 > 57343) {
            throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2) + "; illegal combination");
        }
        return ((i - 55296) << 10) + 65536 + (i2 - 56320);
    }

    private static void _illegal(int i) {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i));
    }

    private char[] _qbuf() {
        return new char[]{(char) 92, 0, (char) 48, (char) 48};
    }

    public static JsonStringEncoder getInstance() {
        return instance;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0251 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] encodeAsUTF8(java.lang.CharSequence r6) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p309io.JsonStringEncoder.encodeAsUTF8(java.lang.CharSequence):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0245 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] encodeAsUTF8(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p309io.JsonStringEncoder.encodeAsUTF8(java.lang.String):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
        if (r11 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0041, code lost:
        r14 = _qbuf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        r0 = r6.charAt(r12);
        r0 = r0[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0059, code lost:
        if (r0 >= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005c, code lost:
        r0 = _appendNumeric(r0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0069, code lost:
        r0 = _appendNamed(r0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0073, code lost:
        r7.append(r14, 0, r0);
        r12 = r12 + 1;
        r11 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
        r14 = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void quoteAsString(java.lang.CharSequence r6, java.lang.StringBuilder r7) {
        /*
            r5 = this;
            int[] r0 = com.fasterxml.jackson.core.p309io.CharTypes.get7BitOutputEscapes()
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = r6
            int r0 = r0.length()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = 0
            r12 = r0
        L16:
            r0 = r12
            r1 = r10
            if (r0 >= r1) goto L9b
        L1d:
            r0 = r6
            r1 = r12
            char r0 = r0.charAt(r1)
            r13 = r0
            r0 = r13
            r1 = r9
            if (r0 >= r1) goto L87
            r0 = r8
            r1 = r13
            r0 = r0[r1]
            if (r0 != 0) goto L38
            goto L87
        L38:
            r0 = r11
            r14 = r0
            r0 = r11
            if (r0 != 0) goto L47
            r0 = r5
            char[] r0 = r0._qbuf()
            r14 = r0
        L47:
            r0 = r6
            r1 = r12
            char r0 = r0.charAt(r1)
            r15 = r0
            r0 = r8
            r1 = r15
            r0 = r0[r1]
            r16 = r0
            r0 = r16
            if (r0 >= 0) goto L69
            r0 = r5
            r1 = r15
            r2 = r14
            int r0 = r0._appendNumeric(r1, r2)
            r16 = r0
            goto L73
        L69:
            r0 = r5
            r1 = r16
            r2 = r14
            int r0 = r0._appendNamed(r1, r2)
            r16 = r0
        L73:
            r0 = r7
            r1 = r14
            r2 = 0
            r3 = r16
            java.lang.StringBuilder r0 = r0.append(r1, r2, r3)
            int r12 = r12 + 1
            r0 = r14
            r11 = r0
            goto L16
        L87:
            r0 = r7
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            int r12 = r12 + 1
            r0 = r12
            r1 = r10
            if (r0 >= r1) goto L9b
            goto L1d
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p309io.JsonStringEncoder.quoteAsString(java.lang.CharSequence, java.lang.StringBuilder):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0065, code lost:
        r17 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006b, code lost:
        if (r13 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006e, code lost:
        r17 = _qbuf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0074, code lost:
        r14 = r18 + 1;
        r0 = r7.charAt(r18);
        r0 = r0[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008c, code lost:
        if (r0 >= 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008f, code lost:
        r18 = _appendNumeric(r0, r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009c, code lost:
        r18 = _appendNamed(r0, r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a6, code lost:
        r0 = r15 + r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b2, code lost:
        if (r0 <= r16.length) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b5, code lost:
        r0 = r16.length - r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00bf, code lost:
        if (r0 <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c2, code lost:
        java.lang.System.arraycopy(r17, 0, r16, r15, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ce, code lost:
        r20 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d4, code lost:
        if (r12 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d7, code lost:
        r20 = com.fasterxml.jackson.core.util.TextBuffer.fromInitial(r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00de, code lost:
        r8 = r20.finishCurrentSegment();
        r15 = r18 - r0;
        java.lang.System.arraycopy(r17, r0, r8, 0, r15);
        r12 = r20;
        r13 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0101, code lost:
        java.lang.System.arraycopy(r17, 0, r16, r15, r18);
        r15 = r0;
        r8 = r16;
        r13 = r17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final char[] quoteAsString(java.lang.CharSequence r7) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p309io.JsonStringEncoder.quoteAsString(java.lang.CharSequence):char[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0051, code lost:
        r17 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0057, code lost:
        if (r13 != null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005a, code lost:
        r17 = _qbuf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0060, code lost:
        r14 = r18 + 1;
        r0 = r7.charAt(r18);
        r0 = r0[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0076, code lost:
        if (r0 >= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0079, code lost:
        r18 = _appendNumeric(r0, r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0086, code lost:
        r18 = _appendNamed(r0, r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0090, code lost:
        r0 = r15 + r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x009c, code lost:
        if (r0 <= r16.length) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x009f, code lost:
        r0 = r16.length - r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a9, code lost:
        if (r0 <= 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ac, code lost:
        java.lang.System.arraycopy(r17, 0, r16, r15, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b8, code lost:
        r20 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00be, code lost:
        if (r12 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c1, code lost:
        r20 = com.fasterxml.jackson.core.util.TextBuffer.fromInitial(r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c8, code lost:
        r8 = r20.finishCurrentSegment();
        r15 = r18 - r0;
        java.lang.System.arraycopy(r17, r0, r8, 0, r15);
        r12 = r20;
        r13 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00eb, code lost:
        java.lang.System.arraycopy(r17, 0, r16, r15, r18);
        r15 = r0;
        r8 = r16;
        r13 = r17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final char[] quoteAsString(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p309io.JsonStringEncoder.quoteAsString(java.lang.String):char[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x026e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] quoteAsUTF8(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.p309io.JsonStringEncoder.quoteAsUTF8(java.lang.String):byte[]");
    }
}
