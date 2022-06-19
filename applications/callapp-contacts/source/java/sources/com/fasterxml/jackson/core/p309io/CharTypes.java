package com.fasterxml.jackson.core.p309io;

import io.objectbox.model.PropertyFlags;
import java.util.Arrays;
/* renamed from: com.fasterxml.jackson.core.io.CharTypes */
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/CharTypes.class */
public final class CharTypes {

    /* renamed from: HB */
    protected static final byte[] f34284HB;

    /* renamed from: HC */
    protected static final char[] f34285HC;
    protected static final int[] sHexValues;
    protected static final int[] sInputCodes;
    protected static final int[] sInputCodesComment;
    protected static final int[] sInputCodesJsNames;
    protected static final int[] sInputCodesUTF8;
    protected static final int[] sInputCodesUtf8JsNames;
    protected static final int[] sInputCodesWS;
    protected static final int[] sOutputEscapes128;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.core.io.CharTypes$AltEscapes */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/CharTypes$AltEscapes.class */
    public static class AltEscapes {
        public static final AltEscapes instance = new AltEscapes();
        private int[][] _altEscapes = new int[128];

        /* JADX WARN: Type inference failed for: r1v1, types: [int[], int[][]] */
        private AltEscapes() {
        }

        public int[] escapesFor(int i) {
            int[] iArr = this._altEscapes[i];
            int[] iArr2 = iArr;
            if (iArr == null) {
                iArr2 = Arrays.copyOf(CharTypes.sOutputEscapes128, 128);
                if (iArr2[i] == 0) {
                    iArr2[i] = -1;
                }
                this._altEscapes[i] = iArr2;
            }
            return iArr2;
        }
    }

    static {
        int i;
        char[] charArray = "0123456789ABCDEF".toCharArray();
        f34285HC = charArray;
        int length = charArray.length;
        f34284HB = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            f34284HB[i2] = (byte) f34285HC[i2];
        }
        int[] iArr = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        for (int i3 = 0; i3 < 32; i3++) {
            iArr[i3] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        sInputCodes = iArr;
        int[] iArr2 = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        System.arraycopy(iArr, 0, iArr2, 0, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        for (int i4 = 128; i4 < 256; i4++) {
            iArr2[i4] = (i4 & 224) == 192 ? 2 : (i4 & 240) == 224 ? 3 : (i4 & 248) == 240 ? 4 : -1;
        }
        sInputCodesUTF8 = iArr2;
        int[] iArr3 = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        Arrays.fill(iArr3, -1);
        for (int i5 = 33; i5 < 256; i5++) {
            if (Character.isJavaIdentifierPart((char) i5)) {
                iArr3[i5] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        sInputCodesJsNames = iArr3;
        int[] iArr4 = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        System.arraycopy(iArr3, 0, iArr4, 0, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);
        Arrays.fill(iArr4, 128, 128, 0);
        sInputCodesUtf8JsNames = iArr4;
        int[] iArr5 = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        int[] iArr6 = sInputCodesUTF8;
        System.arraycopy(iArr6, 128, iArr5, 128, 128);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        sInputCodesComment = iArr5;
        int[] iArr7 = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        System.arraycopy(iArr6, 128, iArr7, 128, 128);
        Arrays.fill(iArr7, 0, 32, -1);
        iArr7[32] = 1;
        iArr7[9] = 1;
        iArr7[10] = 10;
        iArr7[13] = 13;
        iArr7[47] = 47;
        iArr7[35] = 35;
        sInputCodesWS = iArr7;
        int[] iArr8 = new int[128];
        for (int i6 = 0; i6 < 32; i6++) {
            iArr8[i6] = -1;
        }
        iArr8[34] = 34;
        iArr8[92] = 92;
        iArr8[8] = 98;
        iArr8[9] = 116;
        iArr8[12] = 102;
        iArr8[10] = 110;
        iArr8[13] = 114;
        sOutputEscapes128 = iArr8;
        int[] iArr9 = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        sHexValues = iArr9;
        Arrays.fill(iArr9, -1);
        int i7 = 0;
        while (true) {
            if (i7 < 10) {
                sHexValues[i7 + 48] = i7;
                i7++;
            }
        }
        for (i = 0; i < 6; i++) {
            int[] iArr10 = sHexValues;
            int i8 = i + 10;
            iArr10[i + 97] = i8;
            iArr10[i + 65] = i8;
        }
    }

    public static void appendQuoted(StringBuilder sb, String str) {
        int[] iArr = sOutputEscapes128;
        int length = iArr.length;
        int length2 = str.length();
        for (int i = 0; i < length2; i++) {
            char charAt = str.charAt(i);
            if (charAt >= length || iArr[charAt] == 0) {
                sb.append(charAt);
            } else {
                sb.append('\\');
                int i2 = iArr[charAt];
                if (i2 < 0) {
                    sb.append('u');
                    sb.append('0');
                    sb.append('0');
                    char[] cArr = f34285HC;
                    sb.append(cArr[charAt >> 4]);
                    sb.append(cArr[charAt & 15]);
                } else {
                    sb.append((char) i2);
                }
            }
        }
    }

    public static int charToHex(int i) {
        return sHexValues[i & 255];
    }

    public static byte[] copyHexBytes() {
        return (byte[]) f34284HB.clone();
    }

    public static char[] copyHexChars() {
        return (char[]) f34285HC.clone();
    }

    public static int[] get7BitOutputEscapes() {
        return sOutputEscapes128;
    }

    public static int[] get7BitOutputEscapes(int i) {
        return i == 34 ? sOutputEscapes128 : AltEscapes.instance.escapesFor(i);
    }

    public static int[] getInputCodeComment() {
        return sInputCodesComment;
    }

    public static int[] getInputCodeLatin1() {
        return sInputCodes;
    }

    public static int[] getInputCodeLatin1JsNames() {
        return sInputCodesJsNames;
    }

    public static int[] getInputCodeUtf8() {
        return sInputCodesUTF8;
    }

    public static int[] getInputCodeUtf8JsNames() {
        return sInputCodesUtf8JsNames;
    }
}
