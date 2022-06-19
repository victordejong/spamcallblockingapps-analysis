package com.huawei.secure.android.common.util;

import android.text.TextUtils;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/EncodeUtil.class */
public class EncodeUtil {

    /* renamed from: a */
    private static final String f8116a = "EncodeUtil";

    /* renamed from: b */
    private static final char[] f8117b = {',', '.', '-'};

    /* renamed from: c */
    private static final String[] f8118c = new String[256];

    static {
        char c = 0;
        while (true) {
            char c2 = c;
            if (c2 < 255) {
                if ((c2 < '0' || c2 > '9') && ((c2 < 'A' || c2 > 'Z') && (c2 < 'a' || c2 > 'z'))) {
                    f8118c[c2] = m36933b(c2).intern();
                } else {
                    f8118c[c2] = null;
                }
                c = (char) (c2 + 1);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private static Character m36936a(C2499a c2499a) {
        c2499a.m36878c();
        Character m36876d = c2499a.m36876d();
        if (m36876d == null) {
            c2499a.m36871i();
            return null;
        } else if (m36876d.charValue() != '\\') {
            c2499a.m36871i();
            return null;
        } else {
            Character m36876d2 = c2499a.m36876d();
            if (m36876d2 == null) {
                c2499a.m36871i();
                return null;
            } else if (m36876d2.charValue() == 'b') {
                return '\b';
            } else {
                if (m36876d2.charValue() == 't') {
                    return '\t';
                }
                if (m36876d2.charValue() == 'n') {
                    return '\n';
                }
                if (m36876d2.charValue() == 'v') {
                    return (char) 11;
                }
                if (m36876d2.charValue() == 'f') {
                    return '\f';
                }
                if (m36876d2.charValue() == 'r') {
                    return '\r';
                }
                if (m36876d2.charValue() == '\"') {
                    return '\"';
                }
                if (m36876d2.charValue() == '\'') {
                    return '\'';
                }
                if (m36876d2.charValue() == '\\') {
                    return '\\';
                }
                if (Character.toLowerCase(m36876d2.charValue()) == 'x') {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < 2; i++) {
                        Character m36875e = c2499a.m36875e();
                        if (m36875e == null) {
                            c2499a.m36871i();
                            return null;
                        }
                        sb.append(m36875e);
                    }
                    try {
                        int parseInt = Integer.parseInt(sb.toString(), 16);
                        if (Character.isValidCodePoint(parseInt)) {
                            return Character.valueOf((char) parseInt);
                        }
                    } catch (NumberFormatException e) {
                        c2499a.m36871i();
                        return null;
                    }
                } else if (Character.toLowerCase(m36876d2.charValue()) == 'u') {
                    StringBuilder sb2 = new StringBuilder();
                    for (int i2 = 0; i2 < 4; i2++) {
                        Character m36875e2 = c2499a.m36875e();
                        if (m36875e2 == null) {
                            c2499a.m36871i();
                            return null;
                        }
                        sb2.append(m36875e2);
                    }
                    try {
                        int parseInt2 = Integer.parseInt(sb2.toString(), 16);
                        if (Character.isValidCodePoint(parseInt2)) {
                            return Character.valueOf((char) parseInt2);
                        }
                    } catch (NumberFormatException e2) {
                        c2499a.m36871i();
                        return null;
                    }
                } else if (C2499a.m36877c(m36876d2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(m36876d2);
                    Character m36876d3 = c2499a.m36876d();
                    if (!C2499a.m36877c(m36876d3)) {
                        c2499a.m36881a(m36876d3);
                    } else {
                        sb3.append(m36876d3);
                        Character m36876d4 = c2499a.m36876d();
                        if (!C2499a.m36877c(m36876d4)) {
                            c2499a.m36881a(m36876d4);
                        } else {
                            sb3.append(m36876d4);
                        }
                    }
                    try {
                        int parseInt3 = Integer.parseInt(sb3.toString(), 8);
                        if (Character.isValidCodePoint(parseInt3)) {
                            return Character.valueOf((char) parseInt3);
                        }
                    } catch (NumberFormatException e3) {
                        c2499a.m36871i();
                        return null;
                    }
                }
                return m36876d2;
            }
        }
    }

    /* renamed from: a */
    private static String m36938a(char c) {
        return c < 255 ? f8118c[c] : m36933b(c);
    }

    /* renamed from: a */
    private static String m36935a(char[] cArr, Character ch) {
        if (m36937a(ch.charValue(), cArr)) {
            return "" + ch;
        } else if (m36938a(ch.charValue()) == null) {
            return "" + ch;
        } else {
            String hexString = Integer.toHexString(ch.charValue());
            if (ch.charValue() < 256) {
                StringBuilder m8728C = C22128a.m8728C("\\x");
                m8728C.append("00".substring(hexString.length()));
                m8728C.append(hexString.toUpperCase(Locale.ENGLISH));
                return m8728C.toString();
            }
            StringBuilder m8728C2 = C22128a.m8728C("\\u");
            m8728C2.append("0000".substring(hexString.length()));
            m8728C2.append(hexString.toUpperCase(Locale.ENGLISH));
            return m8728C2.toString();
        }
    }

    /* renamed from: a */
    private static String m36934a(char[] cArr, String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append(m36935a(cArr, Character.valueOf(str.charAt(i))));
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static boolean m36937a(char c, char[] cArr) {
        for (char c2 : cArr) {
            if (c == c2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static String m36933b(char c) {
        return Integer.toHexString(c);
    }

    public static String decodeForJavaScript(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            StringBuilder sb = new StringBuilder();
            C2499a c2499a = new C2499a(str);
            while (c2499a.m36883a()) {
                Character m36936a = m36936a(c2499a);
                if (m36936a != null) {
                    sb.append(m36936a);
                } else {
                    sb.append(c2499a.m36876d());
                }
            }
            return sb.toString();
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }

    public static String encodeForJavaScript(String str) {
        return encodeForJavaScript(str, f8117b);
    }

    public static String encodeForJavaScript(String str, char[] cArr) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return m36934a(cArr, str);
        } catch (Exception e) {
            e.getMessage();
            return "";
        }
    }
}
