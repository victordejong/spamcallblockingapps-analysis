package com.google.zxing.p177e.p179b;

import com.google.zxing.EnumC5095c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C5116a;
import com.google.zxing.common.EnumC5118c;
import com.google.zxing.common.reedsolomon.C5119a;
import com.google.zxing.common.reedsolomon.C5121c;
import com.google.zxing.p177e.p178a.C5137c;
import com.google.zxing.p177e.p178a.EnumC5135a;
import com.google.zxing.p177e.p178a.EnumC5136b;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: com.google.zxing.e.b.c */
/* loaded from: classes-dex2jar.jar:com/google/zxing/e/b/c.class */
public final class C5142c {

    /* renamed from: a */
    private static final int[] f21724a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* renamed from: com.google.zxing.e.b.c$1 */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/e/b/c$1.class */
    public static /* synthetic */ class C51431 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21725a = new int[EnumC5136b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:19:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:17:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0042 -> B:15:0x0014). Please submit an issue!!! */
        static {
            try {
                f21725a[EnumC5136b.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21725a[EnumC5136b.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21725a[EnumC5136b.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f21725a[EnumC5136b.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    static int m1369a(int i) {
        return i < f21724a.length ? f21724a[i] : -1;
    }

    /* renamed from: a */
    private static int m1362a(C5116a c5116a, EnumC5135a enumC5135a, C5137c c5137c, C5141b c5141b) {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 8; i3++) {
            C5145e.m1335a(c5116a, enumC5135a, c5137c, i3, c5141b);
            int m1357a = m1357a(c5141b);
            if (m1357a < i) {
                i2 = i3;
                i = m1357a;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static int m1358a(EnumC5136b enumC5136b, C5116a c5116a, C5116a c5116a2, C5137c c5137c) {
        return c5116a.m1475a() + enumC5136b.m1391a(c5137c) + c5116a2.m1475a();
    }

    /* renamed from: a */
    private static int m1357a(C5141b c5141b) {
        return C5144d.m1346a(c5141b) + C5144d.m1342b(c5141b) + C5144d.m1341c(c5141b) + C5144d.m1340d(c5141b);
    }

    /* renamed from: a */
    static C5116a m1363a(C5116a c5116a, int i, int i2, int i3) {
        int i4;
        if (c5116a.m1469b() != i2) {
            throw new WriterException("Number of bits and data bytes does not match");
        }
        ArrayList<C5140a> arrayList = new ArrayList(i3);
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            i4 = i8;
            if (i5 >= i3) {
                break;
            }
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            m1368a(i, i2, i3, i5, iArr, iArr2);
            int i9 = iArr[0];
            byte[] bArr = new byte[i9];
            c5116a.m1472a(i4 << 3, bArr, 0, i9);
            byte[] m1349a = m1349a(bArr, iArr2[0]);
            arrayList.add(new C5140a(bArr, m1349a));
            i7 = Math.max(i7, i9);
            i6 = Math.max(i6, m1349a.length);
            i5++;
            i8 = iArr[0] + i4;
        }
        if (i2 != i4) {
            throw new WriterException("Data bytes does not match offset");
        }
        C5116a c5116a2 = new C5116a();
        for (int i10 = 0; i10 < i7; i10++) {
            for (C5140a c5140a : arrayList) {
                byte[] m1378a = c5140a.m1378a();
                if (i10 < m1378a.length) {
                    c5116a2.m1473a(m1378a[i10], 8);
                }
            }
        }
        for (int i11 = 0; i11 < i6; i11++) {
            for (C5140a c5140a2 : arrayList) {
                byte[] m1377b = c5140a2.m1377b();
                if (i11 < m1377b.length) {
                    c5116a2.m1473a(m1377b[i11], 8);
                }
            }
        }
        if (i == c5116a2.m1469b()) {
            return c5116a2;
        }
        throw new WriterException("Interleaving error: " + i + " and " + c5116a2.m1469b() + " differ.");
    }

    /* renamed from: a */
    private static EnumC5136b m1350a(String str, String str2) {
        EnumC5136b enumC5136b;
        if (!"Shift_JIS".equals(str2) || !m1355a(str)) {
            int i = 0;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                if (i < str.length()) {
                    char charAt = str.charAt(i);
                    if (charAt >= '0' && charAt <= '9') {
                        z2 = true;
                    } else if (m1369a(charAt) == -1) {
                        enumC5136b = EnumC5136b.BYTE;
                        break;
                    } else {
                        z = true;
                    }
                    i++;
                } else {
                    enumC5136b = z ? EnumC5136b.ALPHANUMERIC : z2 ? EnumC5136b.NUMERIC : EnumC5136b.BYTE;
                }
            }
        } else {
            enumC5136b = EnumC5136b.KANJI;
        }
        return enumC5136b;
    }

    /* renamed from: a */
    private static C5137c m1366a(int i, EnumC5135a enumC5135a) {
        for (int i2 = 1; i2 <= 40; i2++) {
            C5137c m1389a = C5137c.m1389a(i2);
            if (m1365a(i, m1389a, enumC5135a)) {
                return m1389a;
            }
        }
        throw new WriterException("Data too big");
    }

    /* renamed from: a */
    private static C5137c m1360a(EnumC5135a enumC5135a, EnumC5136b enumC5136b, C5116a c5116a, C5116a c5116a2) {
        return m1366a(m1358a(enumC5136b, c5116a, c5116a2, m1366a(m1358a(enumC5136b, c5116a, c5116a2, C5137c.m1389a(1)), enumC5135a)), enumC5135a);
    }

    /* renamed from: a */
    public static C5146f m1352a(String str, EnumC5135a enumC5135a, Map<EnumC5095c, ?> map) {
        C5137c c5137c;
        EnumC5118c m1454a;
        String str2 = "ISO-8859-1";
        boolean z = map != null && map.containsKey(EnumC5095c.CHARACTER_SET);
        if (z) {
            str2 = map.get(EnumC5095c.CHARACTER_SET).toString();
        }
        EnumC5136b m1350a = m1350a(str, str2);
        C5116a c5116a = new C5116a();
        if (m1350a == EnumC5136b.BYTE && z && (m1454a = EnumC5118c.m1454a(str2)) != null) {
            m1361a(m1454a, c5116a);
        }
        if ((map != null && map.containsKey(EnumC5095c.GS1_FORMAT)) && Boolean.valueOf(map.get(EnumC5095c.GS1_FORMAT).toString()).booleanValue()) {
            m1359a(EnumC5136b.FNC1_FIRST_POSITION, c5116a);
        }
        m1359a(m1350a, c5116a);
        C5116a c5116a2 = new C5116a();
        m1351a(str, m1350a, c5116a2, str2);
        if (map == null || !map.containsKey(EnumC5095c.QR_VERSION)) {
            c5137c = m1360a(enumC5135a, m1350a, c5116a, c5116a2);
        } else {
            C5137c m1389a = C5137c.m1389a(Integer.parseInt(map.get(EnumC5095c.QR_VERSION).toString()));
            c5137c = m1389a;
            if (!m1365a(m1358a(m1350a, c5116a, c5116a2, m1389a), m1389a, enumC5135a)) {
                throw new WriterException("Data too big for requested version");
            }
        }
        C5116a c5116a3 = new C5116a();
        c5116a3.m1471a(c5116a);
        m1364a(m1350a == EnumC5136b.BYTE ? c5116a2.m1469b() : str.length(), c5137c, m1350a, c5116a3);
        c5116a3.m1471a(c5116a2);
        C5137c.C5139b m1388a = c5137c.m1388a(enumC5135a);
        int m1387b = c5137c.m1387b() - m1388a.m1380c();
        m1367a(m1387b, c5116a3);
        C5116a m1363a = m1363a(c5116a3, c5137c.m1387b(), m1387b, m1388a.m1381b());
        C5146f c5146f = new C5146f();
        c5146f.m1318a(enumC5135a);
        c5146f.m1317a(m1350a);
        c5146f.m1316a(c5137c);
        int m1386c = c5137c.m1386c();
        C5141b c5141b = new C5141b(m1386c, m1386c);
        int m1362a = m1362a(m1363a, enumC5135a, c5137c, c5141b);
        c5146f.m1319a(m1362a);
        C5145e.m1335a(m1363a, enumC5135a, c5137c, m1362a, c5141b);
        c5146f.m1315a(c5141b);
        return c5146f;
    }

    /* renamed from: a */
    static void m1368a(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        if (i4 >= i3) {
            throw new WriterException("Block ID too large");
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i2 / i3;
        int i9 = i8 + 1;
        int i10 = i7 - i8;
        int i11 = (i7 + 1) - i9;
        if (i10 != i11) {
            throw new WriterException("EC bytes mismatch");
        }
        if (i3 != i6 + i5) {
            throw new WriterException("RS blocks mismatch");
        }
        if (i != (i5 * (i9 + i11)) + ((i8 + i10) * i6)) {
            throw new WriterException("Total bytes mismatch");
        }
        if (i4 < i6) {
            iArr[0] = i8;
            iArr2[0] = i10;
            return;
        }
        iArr[0] = i9;
        iArr2[0] = i11;
    }

    /* renamed from: a */
    static void m1367a(int i, C5116a c5116a) {
        int i2 = i << 3;
        if (c5116a.m1475a() > i2) {
            throw new WriterException("data bits cannot fit in the QR Code" + c5116a.m1475a() + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && c5116a.m1475a() < i2; i3++) {
            c5116a.m1470a(false);
        }
        int m1475a = c5116a.m1475a() & 7;
        if (m1475a > 0) {
            while (m1475a < 8) {
                c5116a.m1470a(false);
                m1475a++;
            }
        }
        int m1469b = c5116a.m1469b();
        for (int i4 = 0; i4 < i - m1469b; i4++) {
            c5116a.m1473a((i4 & 1) == 0 ? 236 : 17, 8);
        }
        if (c5116a.m1475a() == i2) {
            return;
        }
        throw new WriterException("Bits size does not equal capacity");
    }

    /* renamed from: a */
    static void m1364a(int i, C5137c c5137c, EnumC5136b enumC5136b, C5116a c5116a) {
        int m1391a = enumC5136b.m1391a(c5137c);
        if (i >= (1 << m1391a)) {
            throw new WriterException(i + " is bigger than " + ((1 << m1391a) - 1));
        }
        c5116a.m1473a(i, m1391a);
    }

    /* renamed from: a */
    private static void m1361a(EnumC5118c enumC5118c, C5116a c5116a) {
        c5116a.m1473a(EnumC5136b.ECI.m1392a(), 4);
        c5116a.m1473a(enumC5118c.m1455a(), 8);
    }

    /* renamed from: a */
    static void m1359a(EnumC5136b enumC5136b, C5116a c5116a) {
        c5116a.m1473a(enumC5136b.m1392a(), 4);
    }

    /* renamed from: a */
    static void m1356a(CharSequence charSequence, C5116a c5116a) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int charAt = charSequence.charAt(i) - '0';
            if (i + 2 < length) {
                c5116a.m1473a((charAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i + 2) - '0'), 10);
                i += 3;
            } else if (i + 1 < length) {
                c5116a.m1473a((charAt * 10) + (charSequence.charAt(i + 1) - '0'), 7);
                i += 2;
            } else {
                c5116a.m1473a(charAt, 4);
                i++;
            }
        }
    }

    /* renamed from: a */
    static void m1354a(String str, C5116a c5116a) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            for (int i = 0; i < length; i += 2) {
                int i2 = ((bytes[i] & 255) << 8) | (bytes[i + 1] & 255);
                int i3 = (i2 < 33088 || i2 > 40956) ? (i2 < 57408 || i2 > 60351) ? -1 : i2 - 49472 : i2 - 33088;
                if (i3 == -1) {
                    throw new WriterException("Invalid byte sequence");
                }
                c5116a.m1473a((i3 & 255) + ((i3 >> 8) * 192), 13);
            }
        } catch (UnsupportedEncodingException e) {
            throw new WriterException(e);
        }
    }

    /* renamed from: a */
    static void m1353a(String str, C5116a c5116a, String str2) {
        try {
            for (byte b : str.getBytes(str2)) {
                c5116a.m1473a(b, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new WriterException(e);
        }
    }

    /* renamed from: a */
    static void m1351a(String str, EnumC5136b enumC5136b, C5116a c5116a, String str2) {
        switch (C51431.f21725a[enumC5136b.ordinal()]) {
            case 1:
                m1356a((CharSequence) str, c5116a);
                return;
            case 2:
                m1348b(str, c5116a);
                return;
            case 3:
                m1353a(str, c5116a, str2);
                return;
            case 4:
                m1354a(str, c5116a);
                return;
            default:
                throw new WriterException("Invalid mode: ".concat(String.valueOf(enumC5136b)));
        }
    }

    /* renamed from: a */
    private static boolean m1365a(int i, C5137c c5137c, EnumC5135a enumC5135a) {
        return c5137c.m1387b() - c5137c.m1388a(enumC5135a).m1380c() >= (i + 7) / 8;
    }

    /* renamed from: a */
    private static boolean m1355a(String str) {
        boolean z;
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 == 0) {
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = true;
                        break;
                    }
                    int i2 = bytes[i] & 255;
                    if (i2 < 129 || i2 > 159) {
                        z = false;
                        if (i2 < 224) {
                            break;
                        }
                        z = false;
                        if (i2 > 235) {
                            break;
                        }
                    }
                    i += 2;
                }
            } else {
                z = false;
            }
        } catch (UnsupportedEncodingException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    static byte[] m1349a(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new C5121c(C5119a.f21642e).m1436a(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    /* renamed from: b */
    static void m1348b(CharSequence charSequence, C5116a c5116a) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int m1369a = m1369a(charSequence.charAt(i));
            if (m1369a == -1) {
                throw new WriterException();
            }
            if (i + 1 < length) {
                int m1369a2 = m1369a(charSequence.charAt(i + 1));
                if (m1369a2 == -1) {
                    throw new WriterException();
                }
                c5116a.m1473a((m1369a * 45) + m1369a2, 11);
                i += 2;
            } else {
                c5116a.m1473a(m1369a, 6);
                i++;
            }
        }
    }
}
