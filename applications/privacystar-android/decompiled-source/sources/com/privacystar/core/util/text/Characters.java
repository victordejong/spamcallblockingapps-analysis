package com.privacystar.core.util.text;

import com.privacystar.core.util.MathUtil;
import com.zendesk.service.HttpConstants;
import kotlin.text.Typography;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/text/Characters.class */
public class Characters {
    public static final char APOSTROPHE = '\'';
    public static final char BULLET = 8226;
    public static final int EM_DASH = 8212;
    public static final int EN_DASH = 8211;
    public static final int LEFT_DOUBLE_QUOTATION = 8220;
    public static final int LEFT_SINGLE_QUOTATION = 8216;
    public static final char MODIFIER_LETTER_VERTICAL_LINE = 712;
    public static final char NON_BREAKING_HYPHEN = 8209;
    public static final int RIGHT_DOUBLE_QUOTATION = 8221;
    public static final int RIGHT_SINGLE_QUOTATION = 8217;
    public static final int TRADE_MARK_SIGN = 8482;
    private static char[] displayableCharacterConverstionTable;
    private static char[] windows1252ToUnicodeConverstionTable;

    private static char convertCharacter(char c, char[] cArr) {
        char c2 = c;
        if (c < cArr.length) {
            char c3 = cArr[c];
            c2 = c;
            if (c3 != 0) {
                c2 = c3;
            }
        }
        return c2;
    }

    public static char forDigit(int i, int i2) {
        if (2 > i2 || i2 > 36 || i < 0 || i >= i2) {
            return (char) 0;
        }
        return (char) (i < 10 ? i + 48 : (i + 97) - 10);
    }

    public static char fromWindows1252ToUnicode(char c) {
        return convertCharacter(c, getWindows1252ToUnicodeConverstionTable());
    }

    public static String fromWindows1252ToUnicode(String str) {
        char[] cArr = new char[str.length()];
        for (int i = 0; i < str.length(); i++) {
            cArr[i] = fromWindows1252ToUnicode(str.charAt(i));
        }
        return new String(cArr);
    }

    public static char getDisplayableCharacter(char c) {
        return convertCharacter(c, getDisplayableCharacterConverstionTable());
    }

    private static char[] getDisplayableCharacterConverstionTable() {
        if (displayableCharacterConverstionTable == null) {
            displayableCharacterConverstionTable = new char[8210];
            displayableCharacterConverstionTable[712] = (char) 39;
            displayableCharacterConverstionTable[8209] = (char) 45;
        }
        return displayableCharacterConverstionTable;
    }

    private static char[] getWindows1252ToUnicodeConverstionTable() {
        if (windows1252ToUnicodeConverstionTable == null) {
            windows1252ToUnicodeConverstionTable = new char[256];
            windows1252ToUnicodeConverstionTable[130] = (char) Typography.lowSingleQuote;
            windows1252ToUnicodeConverstionTable[131] = (char) HttpConstants.HTTP_PAYMENT_REQUIRED;
            windows1252ToUnicodeConverstionTable[132] = (char) Typography.lowDoubleQuote;
            windows1252ToUnicodeConverstionTable[133] = (char) Typography.ellipsis;
            windows1252ToUnicodeConverstionTable[134] = (char) Typography.f1906dagger;
            windows1252ToUnicodeConverstionTable[135] = (char) Typography.doubleDagger;
            windows1252ToUnicodeConverstionTable[138] = (char) 352;
            windows1252ToUnicodeConverstionTable[139] = (char) 8249;
            windows1252ToUnicodeConverstionTable[140] = (char) 338;
            windows1252ToUnicodeConverstionTable[145] = (char) 8216;
            windows1252ToUnicodeConverstionTable[146] = (char) 8217;
            windows1252ToUnicodeConverstionTable[147] = (char) 8220;
            windows1252ToUnicodeConverstionTable[148] = (char) 8221;
            windows1252ToUnicodeConverstionTable[149] = (char) 8226;
            windows1252ToUnicodeConverstionTable[150] = (char) 8211;
            windows1252ToUnicodeConverstionTable[151] = (char) 8212;
            windows1252ToUnicodeConverstionTable[153] = (char) 8482;
            windows1252ToUnicodeConverstionTable[154] = (char) 353;
            windows1252ToUnicodeConverstionTable[155] = (char) 8250;
            windows1252ToUnicodeConverstionTable[156] = (char) 339;
            windows1252ToUnicodeConverstionTable[159] = (char) 376;
        }
        return windows1252ToUnicodeConverstionTable;
    }

    public static boolean isAlphabetic(char c) {
        if (c < 'A' || c > 'Z') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    public static boolean isAlphanumeric(char c) {
        return isNumeric(c) || isAlphabetic(c);
    }

    public static boolean isNumeric(char c) {
        return Character.isDigit(c);
    }

    public static boolean isWhitespaceCharacter(char c) {
        return c <= ' ';
    }

    public static char safeCast(double d) {
        char c = (char) d;
        if (MathUtil.almostEqual(c, d)) {
            return c;
        }
        throw new ArithmeticException("There is no equivalent character value of " + d);
    }

    public static char safeCast(float f) {
        char c = (char) f;
        if (MathUtil.almostEqual(c, f)) {
            return c;
        }
        throw new ArithmeticException("There is no equivalent character value of " + f);
    }

    public static char swapCase(char c) {
        return Character.isLowerCase(c) ? Character.toUpperCase(c) : Character.toLowerCase(c);
    }
}
