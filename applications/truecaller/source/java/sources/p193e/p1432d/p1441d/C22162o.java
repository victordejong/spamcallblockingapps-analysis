package p193e.p1432d.p1441d;

import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p193e.p1432d.p1441d.p1442p.C22166b;
/* renamed from: e.d.d.o */
/* loaded from: classes-dex2jar.jar:e/d/d/o.class */
public class C22162o {

    /* renamed from: a */
    public static final Map<Integer, String> f61592a;

    /* renamed from: b */
    public static final Set<String> f61593b;

    /* renamed from: c */
    public static final Map<String, Integer> f61594c;

    /* renamed from: d */
    public static final Map<Integer, String> f61595d;

    /* renamed from: e.d.d.o$a */
    /* loaded from: classes-dex2jar.jar:e/d/d/o$a.class */
    public static class C22163a extends Exception {
        public C22163a(String str) {
            super(str);
        }
    }

    /* renamed from: e.d.d.o$b */
    /* loaded from: classes-dex2jar.jar:e/d/d/o$b.class */
    public static class C22164b {
        /* renamed from: a */
        public static final byte[] m8492a(byte[] bArr) throws C22163a {
            if (bArr == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i = 0;
            while (i < bArr.length) {
                byte b = bArr[i];
                if (b == 61) {
                    int i2 = i + 1;
                    try {
                        int digit = Character.digit((char) bArr[i2], 16);
                        i = i2 + 1;
                        int digit2 = Character.digit((char) bArr[i], 16);
                        if (digit == -1 || digit2 == -1) {
                            throw new C22163a("Invalid quoted-printable encoding");
                        }
                        byteArrayOutputStream.write((char) ((digit << 4) + digit2));
                    } catch (ArrayIndexOutOfBoundsException e) {
                        throw new C22163a("Invalid quoted-printable encoding");
                    }
                } else {
                    byteArrayOutputStream.write(b);
                }
                i++;
            }
            return byteArrayOutputStream.toByteArray();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f61592a = hashMap;
        HashMap hashMap2 = new HashMap();
        f61594c = hashMap2;
        hashMap.put(9, "CAR");
        hashMap2.put("CAR", 9);
        hashMap.put(6, "PAGER");
        hashMap2.put("PAGER", 6);
        hashMap.put(11, "ISDN");
        hashMap2.put("ISDN", 11);
        hashMap2.put("HOME", 1);
        hashMap2.put("WORK", 3);
        hashMap2.put("CELL", 2);
        hashMap2.put("OTHER", 7);
        hashMap2.put("CALLBACK", 8);
        hashMap2.put("COMPANY-MAIN", 10);
        hashMap2.put("RADIO", 14);
        hashMap2.put("TTY-TDD", 16);
        hashMap2.put("ASSISTANT", 19);
        HashSet hashSet = new HashSet();
        f61593b = hashSet;
        hashSet.add("MODEM");
        hashSet.add("MSG");
        hashSet.add("BBS");
        hashSet.add("VIDEO");
        HashMap hashMap3 = new HashMap();
        f61595d = hashMap3;
        hashMap3.put(0, "X-AIM");
        hashMap3.put(1, "X-MSN");
        hashMap3.put(2, "X-YAHOO");
        hashMap3.put(3, "X-SKYPE-USERNAME");
        hashMap3.put(5, "X-GOOGLE-TALK");
        hashMap3.put(6, "X-ICQ");
        hashMap3.put(7, "X-JABBER");
        hashMap3.put(4, "X-QQ");
        hashMap3.put(8, "X-NETMEETING");
        new HashSet(Arrays.asList("MOBILE", "携帯電話", "携帯", "ケイタイ", "ｹｲﾀｲ"));
        new HashSet(Arrays.asList('[', ']', '=', ':', '.', ',', ' '));
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> m8498a(java.lang.String r4, int r5) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1441d.C22162o.m8498a(java.lang.String, int):java.util.List");
    }

    /* renamed from: b */
    public static String m8497b(int i, String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        String[] strArr = new String[3];
        Map<String, Integer> map = C22129a.f61462a;
        int i2 = i & 12;
        boolean z = true;
        if (i2 == 4) {
            strArr[0] = str2;
            strArr[1] = str3;
            strArr[2] = str;
        } else if (i2 != 8) {
            strArr[0] = str3;
            strArr[1] = str2;
            strArr[2] = str;
        } else if (!m8496c(str) || !m8496c(str3)) {
            strArr[0] = str;
            strArr[1] = str2;
            strArr[2] = str3;
        } else {
            strArr[0] = str3;
            strArr[1] = str2;
            strArr[2] = str;
        }
        if (!TextUtils.isEmpty(str4)) {
            sb.append(str4);
            z = false;
        }
        int i3 = 0;
        while (i3 < 3) {
            String str6 = strArr[i3];
            boolean z2 = z;
            if (!TextUtils.isEmpty(str6)) {
                if (z) {
                    z = false;
                } else {
                    sb.append(' ');
                }
                sb.append(str6);
                z2 = z;
            }
            i3++;
            z = z2;
        }
        if (!TextUtils.isEmpty(str5)) {
            if (!z) {
                sb.append(' ');
            }
            sb.append(str5);
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static boolean m8496c(String... strArr) {
        boolean z;
        boolean z2;
        List asList = Arrays.asList(strArr);
        if (asList != null) {
            Iterator it = asList.iterator();
            while (true) {
                z = true;
                if (!it.hasNext()) {
                    break;
                }
                String str = (String) it.next();
                if (!TextUtils.isEmpty(str)) {
                    int length = str.length();
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z2 = true;
                            break;
                        }
                        char charAt = str.charAt(i);
                        if (!((' ' <= charAt && charAt <= '~') || charAt == '\r' || charAt == '\n')) {
                            z2 = false;
                            break;
                        }
                        i++;
                    }
                    if (!z2) {
                        z = false;
                        break;
                    }
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public static final String m8495d(String str, String str2, String str3) {
        if (str2.equalsIgnoreCase(str3)) {
            return str;
        }
        ByteBuffer encode = Charset.forName(str2).encode(str);
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        try {
            return new String(bArr, str3);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    /* renamed from: e */
    public static final AbstractC22153f m8494e(int i) throws C22166b {
        Map<String, Integer> map = C22129a.f61462a;
        if ((i & 3) == 0) {
            return new C22157j();
        }
        if (C22129a.m8542a(i)) {
            return new C22158k();
        }
        if (!C22129a.m8541b(i)) {
            throw new C22166b("Version is not specified");
        }
        return new C22159l();
    }

    /* renamed from: f */
    public static String m8493f(String str, boolean z, String str2, String str3) {
        String[] strArr;
        byte[] bArr;
        int i;
        int i2;
        char charAt;
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i3 = 0;
        while (i3 < length) {
            char charAt2 = str.charAt(i3);
            if (charAt2 == '=' && i3 < length - 1 && ((charAt = str.charAt((i2 = i3 + 1))) == ' ' || charAt == '\t')) {
                sb.append(charAt);
                i3 = i2;
            } else {
                sb.append(charAt2);
            }
            i3++;
        }
        String sb2 = sb.toString();
        if (z) {
            strArr = sb2.split("\r\n");
        } else {
            StringBuilder sb3 = new StringBuilder();
            int length2 = sb2.length();
            ArrayList arrayList = new ArrayList();
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 >= length2) {
                    break;
                }
                char charAt3 = sb2.charAt(i5);
                if (charAt3 == '\n') {
                    arrayList.add(sb3.toString());
                    sb3 = new StringBuilder();
                    i = i5;
                } else if (charAt3 == '\r') {
                    arrayList.add(sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    i = i5;
                    sb3 = sb4;
                    if (i5 < length2 - 1) {
                        int i6 = i5 + 1;
                        i = i5;
                        sb3 = sb4;
                        if (sb2.charAt(i6) == '\n') {
                            i = i6;
                            sb3 = sb4;
                        }
                    }
                } else {
                    sb3.append(charAt3);
                    i = i5;
                }
                i4 = i + 1;
            }
            String sb5 = sb3.toString();
            if (sb5.length() > 0) {
                arrayList.add(sb5);
            }
            strArr = (String[]) arrayList.toArray(new String[0]);
        }
        StringBuilder sb6 = new StringBuilder();
        for (String str4 : strArr) {
            String str5 = str4;
            if (str4.endsWith(ContainerUtils.KEY_VALUE_DELIMITER)) {
                str5 = str4.substring(0, str4.length() - 1);
            }
            sb6.append(str5);
        }
        String sb7 = sb6.toString();
        TextUtils.isEmpty(sb7);
        try {
            bArr = sb7.getBytes(str2);
        } catch (UnsupportedEncodingException e) {
            bArr = sb7.getBytes();
        }
        try {
            bArr = C22164b.m8492a(bArr);
        } catch (C22163a e2) {
        }
        try {
            return new String(bArr, str3);
        } catch (UnsupportedEncodingException e3) {
            return new String(bArr);
        }
    }
}
