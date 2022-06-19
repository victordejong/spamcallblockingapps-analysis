package com.google.zxing.common;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.zxing.common.c */
/* loaded from: classes-dex2jar.jar:com/google/zxing/common/c.class */
public enum EnumC5118c {
    Cp437(new int[]{0, 2}, new String[0]),
    ISO8859_1(new int[]{1, 3}, "ISO-8859-1"),
    ISO8859_2(4, "ISO-8859-2"),
    ISO8859_3(5, "ISO-8859-3"),
    ISO8859_4(6, "ISO-8859-4"),
    ISO8859_5(7, "ISO-8859-5"),
    ISO8859_6(8, "ISO-8859-6"),
    ISO8859_7(9, "ISO-8859-7"),
    ISO8859_8(10, "ISO-8859-8"),
    ISO8859_9(11, "ISO-8859-9"),
    ISO8859_10(12, "ISO-8859-10"),
    ISO8859_11(13, "ISO-8859-11"),
    ISO8859_13(15, "ISO-8859-13"),
    ISO8859_14(16, "ISO-8859-14"),
    ISO8859_15(17, "ISO-8859-15"),
    ISO8859_16(18, "ISO-8859-16"),
    SJIS(20, "Shift_JIS"),
    Cp1250(21, "windows-1250"),
    Cp1251(22, "windows-1251"),
    Cp1252(23, "windows-1252"),
    Cp1256(24, "windows-1256"),
    UnicodeBigUnmarked(25, "UTF-16BE", "UnicodeBig"),
    UTF8(26, "UTF-8"),
    ASCII(new int[]{27, 170}, "US-ASCII"),
    Big5(28),
    GB18030(29, "GB2312", "EUC_CN", "GBK"),
    EUC_KR(30, "EUC-KR");
    

    /* renamed from: B */
    private static final Map<Integer, EnumC5118c> f21607B = new HashMap();

    /* renamed from: C */
    private static final Map<String, EnumC5118c> f21608C = new HashMap();

    /* renamed from: D */
    private final int[] f21636D;

    /* renamed from: E */
    private final String[] f21637E;

    static {
        EnumC5118c[] values;
        for (EnumC5118c enumC5118c : values()) {
            for (int i : enumC5118c.f21636D) {
                f21607B.put(Integer.valueOf(i), enumC5118c);
            }
            f21608C.put(enumC5118c.name(), enumC5118c);
            for (String str : enumC5118c.f21637E) {
                f21608C.put(str, enumC5118c);
            }
        }
    }

    EnumC5118c(int i) {
        this(new int[]{i}, new String[0]);
    }

    EnumC5118c(int i, String... strArr) {
        this.f21636D = new int[]{i};
        this.f21637E = strArr;
    }

    EnumC5118c(int[] iArr, String... strArr) {
        this.f21636D = iArr;
        this.f21637E = strArr;
    }

    /* renamed from: a */
    public static EnumC5118c m1454a(String str) {
        return f21608C.get(str);
    }

    /* renamed from: a */
    public int m1455a() {
        return this.f21636D[0];
    }
}
