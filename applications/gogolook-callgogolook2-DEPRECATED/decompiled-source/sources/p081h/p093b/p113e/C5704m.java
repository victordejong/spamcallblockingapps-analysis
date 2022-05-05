package p081h.p093b.p113e;

import android.telephony.PhoneNumberUtils;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Log;
import gogolook.callgogolook2.gson.CallAction;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: h.b.e.m */
/* loaded from: classes-dex2jar.jar:h/b/e/m.class */
public class C5704m {

    /* renamed from: a */
    public static final Map<Integer, String> f14309a = new HashMap();

    /* renamed from: c */
    public static final Map<String, Integer> f14311c = new HashMap();

    /* renamed from: b */
    public static final Set<String> f14310b = new HashSet();

    /* renamed from: d */
    public static final Map<Integer, String> f14312d = new HashMap();

    /* renamed from: h.b.e.m$a */
    /* loaded from: classes-dex2jar.jar:h/b/e/m$a.class */
    public static class C5705a extends Exception {
        public C5705a(String str) {
            super(str);
        }
    }

    /* renamed from: h.b.e.m$b */
    /* loaded from: classes-dex2jar.jar:h/b/e/m$b.class */
    public static class C5706b {
        /* renamed from: a */
        public static String m24666a(String str, int i) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            PhoneNumberUtils.formatNumber(spannableStringBuilder, i);
            return spannableStringBuilder.toString();
        }
    }

    /* renamed from: h.b.e.m$c */
    /* loaded from: classes-dex2jar.jar:h/b/e/m$c.class */
    public static class C5707c {

        /* renamed from: a */
        public static byte f14313a = 61;

        /* renamed from: a */
        public static final byte[] m24665a(byte[] bArr) throws C5705a {
            if (bArr == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i = 0;
            while (i < bArr.length) {
                byte b = bArr[i];
                if (b == f14313a) {
                    int i2 = i + 1;
                    try {
                        int digit = Character.digit((char) bArr[i2], 16);
                        i = i2 + 1;
                        int digit2 = Character.digit((char) bArr[i], 16);
                        if (digit == -1 || digit2 == -1) {
                            throw new C5705a("Invalid quoted-printable encoding");
                        }
                        byteArrayOutputStream.write((char) ((digit << 4) + digit2));
                    } catch (ArrayIndexOutOfBoundsException e) {
                        throw new C5705a("Invalid quoted-printable encoding");
                    }
                } else {
                    byteArrayOutputStream.write(b);
                }
                i++;
            }
            return byteArrayOutputStream.toByteArray();
        }
    }

    /* renamed from: h.b.e.m$d */
    /* loaded from: classes-dex2jar.jar:h/b/e/m$d.class */
    public static class C5708d {
        /* renamed from: a */
        public static boolean m24664a(char c) {
            return (' ' <= c && c <= '~') || c == '\r' || c == '\n';
        }

        /* renamed from: a */
        public static boolean m24663a(CharSequence charSequence) {
            int length = charSequence.length();
            for (int i = 0; i < length; i++) {
                if (!m24664a(charSequence.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    }

    static {
        f14309a.put(9, "CAR");
        f14311c.put("CAR", 9);
        f14309a.put(6, "PAGER");
        f14311c.put("PAGER", 6);
        f14309a.put(11, "ISDN");
        f14311c.put("ISDN", 11);
        f14311c.put("HOME", 1);
        f14311c.put("WORK", 3);
        f14311c.put("CELL", 2);
        f14311c.put("OTHER", 7);
        f14311c.put(CallAction.ACTION_CALL_BACK, 8);
        f14311c.put("COMPANY-MAIN", 10);
        f14311c.put("RADIO", 14);
        f14311c.put("TTY-TDD", 16);
        f14311c.put("ASSISTANT", 19);
        f14311c.put("VOICE", 7);
        f14310b.add("MODEM");
        f14310b.add("MSG");
        f14310b.add("BBS");
        f14310b.add("VIDEO");
        f14312d.put(0, "X-AIM");
        f14312d.put(1, "X-MSN");
        f14312d.put(2, "X-YAHOO");
        f14312d.put(3, "X-SKYPE-USERNAME");
        f14312d.put(5, "X-GOOGLE-TALK");
        f14312d.put(6, "X-ICQ");
        f14312d.put(7, "X-JABBER");
        f14312d.put(4, "X-QQ");
        f14312d.put(8, "X-NETMEETING");
        new HashSet(Arrays.asList("MOBILE", "携帯電話", "携帯", "ケイタイ", "ｹｲﾀｲ"));
        new HashSet(Arrays.asList('[', ']', '=', ':', '.', ',', ' '));
    }

    /* renamed from: a */
    public static int m24677a(int i) {
        return C5672a.m24838b(i) ? 2 : 1;
    }

    /* renamed from: a */
    public static Object m24669a(Collection<String> collection, String str) {
        boolean z;
        String str2;
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        int i = -1;
        boolean z2 = false;
        if (collection != null) {
            str2 = null;
            z2 = false;
            z = false;
            i = -1;
            for (String str4 : collection) {
                if (str4 != null) {
                    String upperCase = str4.toUpperCase();
                    if (upperCase.equals("PREF")) {
                        z = true;
                    } else if (upperCase.equals("FAX")) {
                        z2 = true;
                    } else {
                        String str5 = str4;
                        if (upperCase.startsWith("X-")) {
                            str5 = str4;
                            if (i < 0) {
                                str5 = str4.substring(2);
                            }
                        }
                        if (str5.length() != 0) {
                            Integer num = f14311c.get(str5.toUpperCase());
                            if (num != null) {
                                int intValue = num.intValue();
                                int indexOf = str3.indexOf("@");
                                if ((intValue == 6 && indexOf > 0 && indexOf < str3.length() - 1) || i < 0 || i == 0 || i == 7) {
                                    i = num.intValue();
                                }
                            } else if (i < 0) {
                                str2 = str5;
                                i = 0;
                            }
                        }
                    }
                }
            }
        } else {
            str2 = null;
            z = false;
        }
        int i2 = i < 0 ? z ? 12 : 1 : i;
        int i3 = i2;
        if (z2) {
            if (i2 == 1) {
                i3 = 5;
            } else if (i2 == 3) {
                i3 = 4;
            } else {
                i3 = i2;
                if (i2 == 7) {
                    i3 = 13;
                }
            }
        }
        return i3 == 0 ? str2 : Integer.valueOf(i3);
    }

    /* renamed from: a */
    public static String m24676a(int i, String str, String str2, String str3) {
        return m24675a(i, str, str2, str3, null, null);
    }

    /* renamed from: a */
    public static String m24675a(int i, String str, String str2, String str3, String str4, String str5) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        String[] b = m24667b(i, str, str2, str3);
        if (!TextUtils.isEmpty(str4)) {
            sb.append(str4);
            z = false;
        } else {
            z = true;
        }
        for (String str6 : b) {
            z = z;
            if (!TextUtils.isEmpty(str6)) {
                if (z) {
                    z = false;
                } else {
                    sb.append(' ');
                }
                sb.append(str6);
            }
        }
        if (!TextUtils.isEmpty(str5)) {
            if (!z) {
                sb.append(' ');
            }
            sb.append(str5);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static final String m24672a(String str, String str2, String str3) {
        if (str2.equalsIgnoreCase(str3)) {
            return str;
        }
        ByteBuffer encode = Charset.forName(str2).encode(str);
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        try {
            return new String(bArr, str3);
        } catch (UnsupportedEncodingException e) {
            Log.e("vCard", "Failed to encode: charset=" + str3);
            return null;
        }
    }

    /* renamed from: a */
    public static String m24671a(String str, boolean z, String str2, String str3) {
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
            while (i4 < length2) {
                char charAt3 = sb2.charAt(i4);
                if (charAt3 == '\n') {
                    arrayList.add(sb3.toString());
                    sb3 = new StringBuilder();
                    i = i4;
                } else if (charAt3 == '\r') {
                    arrayList.add(sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    sb3 = sb4;
                    i = i4;
                    if (i4 < length2 - 1) {
                        int i5 = i4 + 1;
                        sb3 = sb4;
                        i = i4;
                        if (sb2.charAt(i5) == '\n') {
                            i = i5;
                            sb3 = sb4;
                        }
                    }
                } else {
                    sb3.append(charAt3);
                    i = i4;
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
            if (str4.endsWith("=")) {
                str5 = str4.substring(0, str4.length() - 1);
            }
            sb6.append(str5);
        }
        String sb7 = sb6.toString();
        TextUtils.isEmpty(sb7);
        try {
            bArr = sb7.getBytes(str2);
        } catch (UnsupportedEncodingException e) {
            String str6 = "Failed to decode: " + str2;
            bArr = sb7.getBytes();
        }
        try {
            bArr = C5707c.m24665a(bArr);
        } catch (C5705a e2) {
            Log.e("vCard", "DecoderException is thrown.");
        }
        try {
            return new String(bArr, str3);
        } catch (UnsupportedEncodingException e3) {
            Log.e("vCard", "Failed to encode: charset=" + str3);
            return new String(bArr);
        }
    }

    /* renamed from: a */
    public static List<String> m24673a(String str, int i) {
        String str2;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == '\\' && i2 < length - 1) {
                int i3 = i2 + 1;
                char charAt2 = str.charAt(i3);
                if (C5672a.m24835e(i)) {
                    str2 = C5699h.m24696b(charAt2);
                } else if (C5672a.m24836d(i)) {
                    str2 = C5698g.m24709b(charAt2);
                } else {
                    C5672a.m24837c(i);
                    str2 = C5696f.m24731b(charAt2);
                }
                if (str2 != null) {
                    sb.append(str2);
                    i2 = i3;
                } else {
                    sb.append(charAt);
                }
            } else if (charAt == ';') {
                arrayList.add(sb.toString());
                sb = new StringBuilder();
            } else {
                sb.append(charAt);
            }
            i2++;
        }
        arrayList.add(sb.toString());
        return arrayList;
    }

    /* renamed from: a */
    public static boolean m24674a(String str) {
        int length = str.length() % 3;
        if (str.length() < 2) {
            return false;
        }
        if (!(length == 1 || length == 0)) {
            return false;
        }
        for (int i = 0; i < str.length(); i += 3) {
            if (str.charAt(i) != '=') {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m24670a(Collection<String> collection) {
        if (collection == null) {
            return true;
        }
        for (String str : collection) {
            if (!TextUtils.isEmpty(str) && !C5708d.m24663a(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m24668a(String... strArr) {
        if (strArr == null) {
            return true;
        }
        return m24670a(Arrays.asList(strArr));
    }

    /* renamed from: b */
    public static String[] m24667b(int i, String str, String str2, String str3) {
        String[] strArr = new String[3];
        int a = C5672a.m24840a(i);
        if (a == 4) {
            strArr[0] = str2;
            strArr[1] = str3;
            strArr[2] = str;
        } else if (a != 8) {
            strArr[0] = str3;
            strArr[1] = str2;
            strArr[2] = str;
        } else if (!m24668a(str) || !m24668a(str3)) {
            strArr[0] = str;
            strArr[1] = str2;
            strArr[2] = str3;
        } else {
            strArr[0] = str3;
            strArr[1] = str2;
            strArr[2] = str;
        }
        return strArr;
    }
}
