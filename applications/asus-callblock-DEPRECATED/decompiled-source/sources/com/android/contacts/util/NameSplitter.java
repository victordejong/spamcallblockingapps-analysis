package com.android.contacts.util;

import android.content.ContentValues;
import android.text.TextUtils;
import com.android.contacts.util.CoverUtils;
import java.lang.Character;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.StringTokenizer;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/NameSplitter.class */
public class NameSplitter {
    public static final int MAX_TOKENS = 10;
    private final HashSet<String> mConjuctions;
    private final String mLanguage;
    private final HashSet<String> mLastNamePrefixesSet;
    private final Locale mLocale;
    private final int mMaxSuffixLength;
    private final HashSet<String> mPrefixesSet;
    private final HashSet<String> mSuffixesSet;
    private static final String JAPANESE_LANGUAGE = Locale.JAPANESE.getLanguage().toLowerCase();
    private static final String KOREAN_LANGUAGE = Locale.KOREAN.getLanguage().toLowerCase();
    private static final String CHINESE_LANGUAGE = Locale.CHINESE.getLanguage().toLowerCase();
    private static final String[] KOREAN_TWO_CHARCTER_FAMILY_NAMES = {"강전", "남궁", "독고", "동방", "망절", "사공", "서문", "선우", "소봉", "어금", "장곡", "제갈", "황보"};

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/NameSplitter$Name.class */
    public static class Name {
        public String familyName;
        public int fullNameStyle;
        public String givenNames;
        public String middleName;
        public String phoneticFamilyName;
        public String phoneticGivenName;
        public String phoneticMiddleName;
        public int phoneticNameStyle;
        public String prefix;
        public String suffix;

        public Name() {
        }

        public Name(String str, String str2, String str3, String str4, String str5) {
            this.prefix = str;
            this.givenNames = str2;
            this.middleName = str3;
            this.familyName = str4;
            this.suffix = str5;
        }

        private void putValueIfPresent(ContentValues contentValues, String str, String str2) {
            if (str2 != null) {
                contentValues.put(str, str2);
            }
        }

        public void clear() {
            this.prefix = null;
            this.givenNames = null;
            this.middleName = null;
            this.familyName = null;
            this.suffix = null;
            this.fullNameStyle = 0;
            this.phoneticFamilyName = null;
            this.phoneticMiddleName = null;
            this.phoneticGivenName = null;
            this.phoneticNameStyle = 0;
        }

        public void fromValues(ContentValues contentValues) {
            int intValue = 0;
            this.prefix = contentValues.getAsString("data4");
            this.givenNames = contentValues.getAsString(CoverUtils.CoverData.COVER_TYPE);
            this.middleName = contentValues.getAsString("data5");
            this.familyName = contentValues.getAsString(CoverUtils.CoverData.USER_SET);
            this.suffix = contentValues.getAsString("data6");
            Integer asInteger = contentValues.getAsInteger("data10");
            this.fullNameStyle = asInteger == null ? 0 : asInteger.intValue();
            this.phoneticFamilyName = contentValues.getAsString("data9");
            this.phoneticMiddleName = contentValues.getAsString("data8");
            this.phoneticGivenName = contentValues.getAsString("data7");
            Integer asInteger2 = contentValues.getAsInteger("data11");
            if (asInteger2 != null) {
                intValue = asInteger2.intValue();
            }
            this.phoneticNameStyle = intValue;
        }

        public String getFamilyName() {
            return this.familyName;
        }

        public int getFullNameStyle() {
            return this.fullNameStyle;
        }

        public String getGivenNames() {
            return this.givenNames;
        }

        public String getMiddleName() {
            return this.middleName;
        }

        public String getPhoneticFamilyName() {
            return this.phoneticFamilyName;
        }

        public String getPhoneticGivenName() {
            return this.phoneticGivenName;
        }

        public String getPhoneticMiddleName() {
            return this.phoneticMiddleName;
        }

        public int getPhoneticNameStyle() {
            return this.phoneticNameStyle;
        }

        public String getPrefix() {
            return this.prefix;
        }

        public String getSuffix() {
            return this.suffix;
        }

        public boolean isEmpty() {
            return TextUtils.isEmpty(this.givenNames) && TextUtils.isEmpty(this.middleName) && TextUtils.isEmpty(this.familyName) && TextUtils.isEmpty(this.suffix) && TextUtils.isEmpty(this.phoneticFamilyName) && TextUtils.isEmpty(this.phoneticMiddleName) && TextUtils.isEmpty(this.phoneticGivenName);
        }

        public String toString() {
            return "[prefix: " + this.prefix + " given: " + this.givenNames + " middle: " + this.middleName + " family: " + this.familyName + " suffix: " + this.suffix + " ph/given: " + this.phoneticGivenName + " ph/middle: " + this.phoneticMiddleName + " ph/family: " + this.phoneticFamilyName + "]";
        }

        public void toValues(ContentValues contentValues) {
            putValueIfPresent(contentValues, "data4", this.prefix);
            putValueIfPresent(contentValues, CoverUtils.CoverData.COVER_TYPE, this.givenNames);
            putValueIfPresent(contentValues, "data5", this.middleName);
            putValueIfPresent(contentValues, CoverUtils.CoverData.USER_SET, this.familyName);
            putValueIfPresent(contentValues, "data6", this.suffix);
            contentValues.put("data10", Integer.valueOf(this.fullNameStyle));
            putValueIfPresent(contentValues, "data9", this.phoneticFamilyName);
            putValueIfPresent(contentValues, "data8", this.phoneticMiddleName);
            putValueIfPresent(contentValues, "data7", this.phoneticGivenName);
            contentValues.put("data11", Integer.valueOf(this.phoneticNameStyle));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/NameSplitter$NameTokenizer.class */
    public static class NameTokenizer extends StringTokenizer {
        private int mCommaBitmask;
        private int mDotBitmask;
        private int mEndPointer;
        private int mStartPointer;
        private final String[] mTokens = new String[10];

        public NameTokenizer(String str) {
            super(str, " .,;", true);
            while (hasMoreTokens() && this.mEndPointer < 10) {
                String nextToken = nextToken();
                if (nextToken.length() <= 0 || nextToken.charAt(0) != ' ') {
                    if (this.mEndPointer > 0 && nextToken.charAt(0) == '.') {
                        this.mDotBitmask |= 1 << (this.mEndPointer - 1);
                    } else if (this.mEndPointer > 0 && nextToken.charAt(0) == ',') {
                        this.mCommaBitmask |= 1 << (this.mEndPointer - 1);
                    } else if (this.mEndPointer <= 0 || nextToken.charAt(0) != ';') {
                        this.mTokens[this.mEndPointer] = nextToken;
                        this.mEndPointer++;
                    } else {
                        this.mCommaBitmask |= 1 << (this.mEndPointer - 1);
                    }
                }
            }
        }

        static /* synthetic */ int access$008(NameTokenizer nameTokenizer) {
            int i = nameTokenizer.mStartPointer;
            nameTokenizer.mStartPointer = i + 1;
            return i;
        }

        static /* synthetic */ int access$110(NameTokenizer nameTokenizer) {
            int i = nameTokenizer.mEndPointer;
            nameTokenizer.mEndPointer = i - 1;
            return i;
        }

        public boolean hasComma(int i) {
            boolean z = true;
            if ((this.mCommaBitmask & (1 << i)) == 0) {
                z = false;
            }
            return z;
        }

        public boolean hasDot(int i) {
            boolean z = true;
            if ((this.mDotBitmask & (1 << i)) == 0) {
                z = false;
            }
            return z;
        }
    }

    public NameSplitter(String str, String str2, String str3, String str4, Locale locale) {
        this.mPrefixesSet = convertToSet(str);
        this.mLastNamePrefixesSet = convertToSet(str2);
        this.mSuffixesSet = convertToSet(str3);
        this.mConjuctions = convertToSet(str4);
        this.mLocale = locale == null ? Locale.getDefault() : locale;
        this.mLanguage = this.mLocale.getLanguage().toLowerCase();
        Iterator<String> it = this.mSuffixesSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            String next = it.next();
            if (next.length() > i) {
                i = next.length();
            }
        }
        this.mMaxSuffixLength = i;
    }

    private static HashSet<String> convertToSet(String str) {
        HashSet<String> hashSet = new HashSet<>();
        if (str != null) {
            for (String str2 : str.split(",")) {
                hashSet.add(str2.trim().toUpperCase());
            }
        }
        return hashSet;
    }

    private int guessCJKNameStyle(String str, int i) {
        int i2;
        int length = str.length();
        while (true) {
            if (i >= length) {
                i2 = 2;
                break;
            }
            int codePointAt = Character.codePointAt(str, i);
            if (Character.isLetter(codePointAt)) {
                Character.UnicodeBlock of = Character.UnicodeBlock.of(codePointAt);
                if (isJapanesePhoneticUnicodeBlock(of)) {
                    i2 = 4;
                    break;
                } else if (isKoreanUnicodeBlock(of)) {
                    i2 = 5;
                    break;
                }
            }
            i += Character.charCount(codePointAt);
        }
        return i2;
    }

    private void guessFullNameStyle(Name name) {
        if (name.fullNameStyle == 0) {
            int guessFullNameStyle = guessFullNameStyle(name.givenNames);
            if (guessFullNameStyle == 0 || guessFullNameStyle == 2 || guessFullNameStyle == 1) {
                int guessFullNameStyle2 = guessFullNameStyle(name.familyName);
                if (guessFullNameStyle2 != 0) {
                    guessFullNameStyle = guessFullNameStyle2;
                    if (guessFullNameStyle2 != 2) {
                        guessFullNameStyle = guessFullNameStyle2;
                        if (guessFullNameStyle2 != 1) {
                            name.fullNameStyle = guessFullNameStyle2;
                            return;
                        }
                    }
                }
                int guessFullNameStyle3 = guessFullNameStyle(name.middleName);
                if (guessFullNameStyle3 != 0) {
                    if (guessFullNameStyle3 == 2 || guessFullNameStyle3 == 1) {
                        guessFullNameStyle = guessFullNameStyle3;
                    } else {
                        name.fullNameStyle = guessFullNameStyle3;
                        return;
                    }
                }
                int guessFullNameStyle4 = guessFullNameStyle(name.prefix);
                if (guessFullNameStyle4 != 0) {
                    if (guessFullNameStyle4 == 2 || guessFullNameStyle4 == 1) {
                        guessFullNameStyle = guessFullNameStyle4;
                    } else {
                        name.fullNameStyle = guessFullNameStyle4;
                        return;
                    }
                }
                int guessFullNameStyle5 = guessFullNameStyle(name.suffix);
                if (guessFullNameStyle5 != 0) {
                    if (guessFullNameStyle5 == 2 || guessFullNameStyle5 == 1) {
                        guessFullNameStyle = guessFullNameStyle5;
                    } else {
                        name.fullNameStyle = guessFullNameStyle5;
                        return;
                    }
                }
                name.fullNameStyle = guessFullNameStyle;
                return;
            }
            name.fullNameStyle = guessFullNameStyle;
        }
    }

    private void guessPhoneticNameStyle(Name name) {
        if (name.phoneticNameStyle == 0) {
            int guessPhoneticNameStyle = guessPhoneticNameStyle(name.phoneticFamilyName);
            if (guessPhoneticNameStyle == 0 || guessPhoneticNameStyle == 2) {
                int guessPhoneticNameStyle2 = guessPhoneticNameStyle(name.phoneticGivenName);
                if (guessPhoneticNameStyle2 == 0 || guessPhoneticNameStyle2 == 2) {
                    int guessPhoneticNameStyle3 = guessPhoneticNameStyle(name.phoneticMiddleName);
                    if (guessPhoneticNameStyle3 != 0 && guessPhoneticNameStyle3 != 2) {
                        name.phoneticNameStyle = guessPhoneticNameStyle3;
                        return;
                    }
                    return;
                }
                name.phoneticNameStyle = guessPhoneticNameStyle2;
                return;
            }
            name.phoneticNameStyle = guessPhoneticNameStyle;
        }
    }

    private static boolean isCJKUnicodeBlock(Character.UnicodeBlock unicodeBlock) {
        return unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || unicodeBlock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeBlock == Character.UnicodeBlock.CJK_RADICALS_SUPPLEMENT || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_FORMS || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT;
    }

    private boolean isFamilyNamePrefix(String str) {
        String upperCase = str.toUpperCase();
        return this.mLastNamePrefixesSet.contains(upperCase) || this.mLastNamePrefixesSet.contains(new StringBuilder().append(upperCase).append(".").toString());
    }

    private static boolean isJapanesePhoneticUnicodeBlock(Character.UnicodeBlock unicodeBlock) {
        return unicodeBlock == Character.UnicodeBlock.KATAKANA || unicodeBlock == Character.UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS || unicodeBlock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS || unicodeBlock == Character.UnicodeBlock.HIRAGANA;
    }

    private static boolean isKoreanUnicodeBlock(Character.UnicodeBlock unicodeBlock) {
        return unicodeBlock == Character.UnicodeBlock.HANGUL_SYLLABLES || unicodeBlock == Character.UnicodeBlock.HANGUL_JAMO || unicodeBlock == Character.UnicodeBlock.HANGUL_COMPATIBILITY_JAMO;
    }

    private static boolean isLatinUnicodeBlock(Character.UnicodeBlock unicodeBlock) {
        return unicodeBlock == Character.UnicodeBlock.BASIC_LATIN || unicodeBlock == Character.UnicodeBlock.LATIN_1_SUPPLEMENT || unicodeBlock == Character.UnicodeBlock.LATIN_EXTENDED_A || unicodeBlock == Character.UnicodeBlock.LATIN_EXTENDED_B || unicodeBlock == Character.UnicodeBlock.LATIN_EXTENDED_ADDITIONAL;
    }

    private String join(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, boolean z3) {
        String trim = str == null ? null : str.trim();
        String trim2 = str2 == null ? null : str2.trim();
        String trim3 = str3 == null ? null : str3.trim();
        String trim4 = str4 == null ? null : str4.trim();
        String trim5 = str5 == null ? null : str5.trim();
        boolean z4 = !TextUtils.isEmpty(trim);
        boolean z5 = !TextUtils.isEmpty(trim2);
        boolean z6 = !TextUtils.isEmpty(trim3);
        boolean z7 = !TextUtils.isEmpty(trim4);
        boolean z8 = !TextUtils.isEmpty(trim5);
        String str6 = null;
        if (z4) {
            str6 = trim;
        }
        String str7 = str6;
        boolean z9 = true;
        if (z5) {
            if (str6 != null) {
                z9 = false;
                str7 = str6;
            } else {
                str7 = trim2;
                z9 = true;
            }
        }
        String str8 = str7;
        boolean z10 = z9;
        if (z6) {
            if (str7 != null) {
                z10 = false;
                str8 = str7;
            } else {
                str8 = trim3;
                z10 = z9;
            }
        }
        String str9 = str8;
        boolean z11 = z10;
        if (z7) {
            if (str8 != null) {
                z11 = false;
                str9 = str8;
            } else {
                str9 = trim4;
                z11 = z10;
            }
        }
        String str10 = str9;
        boolean z12 = z11;
        if (z8) {
            if (str9 != null) {
                z12 = false;
                str10 = str9;
            } else {
                str10 = normalizedSuffix(trim5);
                z12 = z11;
            }
        }
        if (!z12) {
            StringBuilder sb = new StringBuilder();
            if (z4) {
                sb.append(trim);
            }
            if (z5) {
                if (z4) {
                    sb.append(' ');
                }
                sb.append(trim2);
            }
            if (z6) {
                if (z4 || z5) {
                    if (z2) {
                        sb.append(',');
                    }
                    if (z) {
                        sb.append(' ');
                    }
                }
                sb.append(trim3);
            }
            if (z7) {
                if ((z4 || z5 || z6) && z) {
                    sb.append(' ');
                }
                sb.append(trim4);
            }
            if (z8) {
                if (z4 || z5 || z6 || z7) {
                    if (z3) {
                        sb.append(',');
                    }
                    if (z) {
                        sb.append(' ');
                    }
                }
                sb.append(normalizedSuffix(trim5));
            }
            str10 = sb.toString();
        }
        return str10;
    }

    private String normalizedSuffix(String str) {
        int length = str.length();
        String str2 = str;
        if (length != 0) {
            if (str.charAt(length - 1) == '.') {
                str2 = str;
            } else {
                String str3 = str + '.';
                str2 = str;
                if (this.mSuffixesSet.contains(str3.toUpperCase())) {
                    str2 = str3;
                }
            }
        }
        return str2;
    }

    private void parseGivenNames(Name name, NameTokenizer nameTokenizer) {
        if (nameTokenizer.mStartPointer != nameTokenizer.mEndPointer) {
            if (nameTokenizer.mEndPointer - nameTokenizer.mStartPointer == 1) {
                name.givenNames = nameTokenizer.mTokens[nameTokenizer.mStartPointer];
                return;
            }
            StringBuilder sb = new StringBuilder();
            for (int i = nameTokenizer.mStartPointer; i < nameTokenizer.mEndPointer; i++) {
                if (i != nameTokenizer.mStartPointer) {
                    sb.append(' ');
                }
                sb.append(nameTokenizer.mTokens[i]);
                if (nameTokenizer.hasDot(i)) {
                    sb.append('.');
                }
            }
            name.givenNames = sb.toString();
        }
    }

    private void parseLastName(Name name, NameTokenizer nameTokenizer) {
        if (nameTokenizer.mStartPointer != nameTokenizer.mEndPointer) {
            if (nameTokenizer.hasComma(nameTokenizer.mStartPointer)) {
                name.familyName = nameTokenizer.mTokens[nameTokenizer.mStartPointer];
                NameTokenizer.access$008(nameTokenizer);
            } else if (nameTokenizer.mStartPointer + 1 >= nameTokenizer.mEndPointer || !nameTokenizer.hasComma(nameTokenizer.mStartPointer + 1) || !isFamilyNamePrefix(nameTokenizer.mTokens[nameTokenizer.mStartPointer])) {
                name.familyName = nameTokenizer.mTokens[nameTokenizer.mEndPointer - 1];
                NameTokenizer.access$110(nameTokenizer);
                if (nameTokenizer.mEndPointer - nameTokenizer.mStartPointer > 0) {
                    String str = nameTokenizer.mTokens[nameTokenizer.mEndPointer - 1];
                    if (isFamilyNamePrefix(str)) {
                        String str2 = str;
                        if (nameTokenizer.hasDot(nameTokenizer.mEndPointer - 1)) {
                            str2 = str + '.';
                        }
                        name.familyName = str2 + " " + name.familyName;
                        NameTokenizer.access$110(nameTokenizer);
                    }
                }
            } else {
                String str3 = nameTokenizer.mTokens[nameTokenizer.mStartPointer];
                String str4 = str3;
                if (nameTokenizer.hasDot(nameTokenizer.mStartPointer)) {
                    str4 = str3 + '.';
                }
                name.familyName = str4 + " " + nameTokenizer.mTokens[nameTokenizer.mStartPointer + 1];
                nameTokenizer.mStartPointer += 2;
            }
        }
    }

    private void parseMiddleName(Name name, NameTokenizer nameTokenizer) {
        if (nameTokenizer.mStartPointer == nameTokenizer.mEndPointer || nameTokenizer.mEndPointer - nameTokenizer.mStartPointer <= 1) {
            return;
        }
        if (nameTokenizer.mEndPointer - nameTokenizer.mStartPointer == 2 || !this.mConjuctions.contains(nameTokenizer.mTokens[nameTokenizer.mEndPointer - 2].toUpperCase())) {
            name.middleName = nameTokenizer.mTokens[nameTokenizer.mEndPointer - 1];
            if (nameTokenizer.hasDot(nameTokenizer.mEndPointer - 1)) {
                name.middleName += '.';
            }
            NameTokenizer.access$110(nameTokenizer);
        }
    }

    private void parsePrefix(Name name, NameTokenizer nameTokenizer) {
        if (nameTokenizer.mStartPointer != nameTokenizer.mEndPointer) {
            String str = nameTokenizer.mTokens[nameTokenizer.mStartPointer];
            if (this.mPrefixesSet.contains(str.toUpperCase())) {
                String str2 = str;
                if (nameTokenizer.hasDot(nameTokenizer.mStartPointer)) {
                    str2 = str + '.';
                }
                name.prefix = str2;
                NameTokenizer.access$008(nameTokenizer);
            }
        }
    }

    private void parseSuffix(Name name, NameTokenizer nameTokenizer) {
        if (nameTokenizer.mStartPointer != nameTokenizer.mEndPointer) {
            String str = nameTokenizer.mTokens[nameTokenizer.mEndPointer - 1];
            if (nameTokenizer.mEndPointer - nameTokenizer.mStartPointer > 2 && nameTokenizer.hasComma(nameTokenizer.mEndPointer - 2)) {
                String str2 = str;
                if (nameTokenizer.hasDot(nameTokenizer.mEndPointer - 1)) {
                    str2 = str + '.';
                }
                name.suffix = str2;
                NameTokenizer.access$110(nameTokenizer);
            } else if (str.length() <= this.mMaxSuffixLength) {
                String upperCase = str.toUpperCase();
                if (this.mSuffixesSet.contains(upperCase)) {
                    name.suffix = str;
                    NameTokenizer.access$110(nameTokenizer);
                    return;
                }
                String str3 = str;
                if (nameTokenizer.hasDot(nameTokenizer.mEndPointer - 1)) {
                    str3 = str + '.';
                }
                String str4 = upperCase + ".";
                int i = nameTokenizer.mEndPointer - 1;
                while (str4.length() <= this.mMaxSuffixLength) {
                    if (this.mSuffixesSet.contains(str4)) {
                        name.suffix = str3;
                        nameTokenizer.mEndPointer = i;
                        return;
                    } else if (i != nameTokenizer.mStartPointer) {
                        i--;
                        str3 = nameTokenizer.hasDot(i) ? nameTokenizer.mTokens[i] + "." + str3 : nameTokenizer.mTokens[i] + " " + str3;
                        str4 = nameTokenizer.mTokens[i].toUpperCase() + "." + str4;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private void splitChineseName(Name name, String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (name.givenNames == null) {
                name.givenNames = nextToken;
            } else if (name.familyName == null) {
                name.familyName = name.givenNames;
                name.givenNames = nextToken;
            } else if (name.middleName == null) {
                name.middleName = name.givenNames;
                name.givenNames = nextToken;
            } else {
                name.middleName += name.givenNames;
                name.givenNames = nextToken;
            }
        }
        if (name.givenNames != null && name.familyName == null && name.middleName == null) {
            int length = str.length();
            if (length == 2) {
                name.familyName = str.substring(0, 1);
                name.givenNames = str.substring(1);
            } else if (length == 3) {
                name.familyName = str.substring(0, 1);
                name.middleName = str.substring(1, 2);
                name.givenNames = str.substring(2);
            } else if (length == 4) {
                name.familyName = str.substring(0, 2);
                name.middleName = str.substring(2, 3);
                name.givenNames = str.substring(3);
            }
        }
    }

    private void splitJapaneseName(Name name, String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (name.givenNames == null) {
                name.givenNames = nextToken;
            } else if (name.familyName == null) {
                name.familyName = name.givenNames;
                name.givenNames = nextToken;
            } else {
                name.givenNames += " " + nextToken;
            }
        }
    }

    private void splitKoreanName(Name name, String str) {
        int i = 1;
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        if (stringTokenizer.countTokens() > 1) {
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                if (name.givenNames == null) {
                    name.givenNames = nextToken;
                } else if (name.familyName == null) {
                    name.familyName = name.givenNames;
                    name.givenNames = nextToken;
                } else {
                    name.givenNames += " " + nextToken;
                }
            }
            return;
        }
        String[] strArr = KOREAN_TWO_CHARCTER_FAMILY_NAMES;
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            } else if (str.startsWith(strArr[i2])) {
                i = 2;
                break;
            } else {
                i2++;
            }
        }
        name.familyName = str.substring(0, i);
        if (str.length() > i) {
            name.givenNames = str.substring(i);
        }
    }

    private void splitWesternName(Name name, String str) {
        NameTokenizer nameTokenizer = new NameTokenizer(str);
        parsePrefix(name, nameTokenizer);
        if (nameTokenizer.mEndPointer > 2) {
            parseSuffix(name, nameTokenizer);
        }
        if (name.prefix == null && nameTokenizer.mEndPointer - nameTokenizer.mStartPointer == 1) {
            name.givenNames = nameTokenizer.mTokens[nameTokenizer.mStartPointer];
            return;
        }
        parseLastName(name, nameTokenizer);
        parseMiddleName(name, nameTokenizer);
        parseGivenNames(name, nameTokenizer);
    }

    public int getAdjustedFullNameStyle(int i) {
        int i2;
        if (i == 0) {
            i2 = JAPANESE_LANGUAGE.equals(this.mLanguage) ? 4 : KOREAN_LANGUAGE.equals(this.mLanguage) ? 5 : CHINESE_LANGUAGE.equals(this.mLanguage) ? 3 : 1;
        } else {
            i2 = i;
            if (i == 2) {
                i2 = JAPANESE_LANGUAGE.equals(this.mLanguage) ? 4 : KOREAN_LANGUAGE.equals(this.mLanguage) ? 5 : 3;
            }
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (r4 == 2) goto L_0x0011;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getAdjustedNameStyleBasedOnPhoneticNameStyle(int r4, int r5) {
        /*
            r3 = this;
            r0 = r4
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0018
            r0 = r4
            if (r0 == 0) goto L_0x0011
            r0 = r4
            r6 = r0
            r0 = r4
            r1 = 2
            if (r0 != r1) goto L_0x0018
        L_0x0011:
            r0 = r5
            r1 = 4
            if (r0 != r1) goto L_0x001a
            r0 = 4
            r6 = r0
        L_0x0018:
            r0 = r6
            return r0
        L_0x001a:
            r0 = r5
            r1 = 5
            if (r0 != r1) goto L_0x0024
            r0 = 5
            r6 = r0
            goto L_0x0018
        L_0x0024:
            r0 = r4
            r6 = r0
            r0 = r4
            r1 = 2
            if (r0 != r1) goto L_0x0018
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 3
            if (r0 != r1) goto L_0x0018
            r0 = 3
            r6 = r0
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.NameSplitter.getAdjustedNameStyleBasedOnPhoneticNameStyle(int, int):int");
    }

    public int guessFullNameStyle(String str) {
        int i;
        if (str != null) {
            int length = str.length();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= length) {
                    break;
                }
                int codePointAt = Character.codePointAt(str, i2);
                if (Character.isLetter(codePointAt)) {
                    Character.UnicodeBlock of = Character.UnicodeBlock.of(codePointAt);
                    if (!isLatinUnicodeBlock(of)) {
                        if (!isCJKUnicodeBlock(of)) {
                            if (!isJapanesePhoneticUnicodeBlock(of)) {
                                if (isKoreanUnicodeBlock(of)) {
                                    i = 5;
                                    break;
                                }
                            } else {
                                i = 4;
                                break;
                            }
                        } else {
                            i = guessCJKNameStyle(str, Character.charCount(codePointAt) + i2);
                            break;
                        }
                    }
                    i3 = 1;
                }
                i2 = Character.charCount(codePointAt) + i2;
            }
        } else {
            i = 0;
        }
        return i;
    }

    public void guessNameStyle(Name name) {
        guessFullNameStyle(name);
        guessPhoneticNameStyle(name);
        name.fullNameStyle = getAdjustedNameStyleBasedOnPhoneticNameStyle(name.fullNameStyle, name.phoneticNameStyle);
    }

    public int guessPhoneticNameStyle(String str) {
        int i;
        if (str != null) {
            int length = str.length();
            int i2 = 0;
            while (true) {
                i = 0;
                if (i2 >= length) {
                    break;
                }
                int codePointAt = Character.codePointAt(str, i2);
                if (Character.isLetter(codePointAt)) {
                    Character.UnicodeBlock of = Character.UnicodeBlock.of(codePointAt);
                    if (isJapanesePhoneticUnicodeBlock(of)) {
                        i = 4;
                        break;
                    } else if (isKoreanUnicodeBlock(of)) {
                        i = 5;
                        break;
                    } else if (isLatinUnicodeBlock(of)) {
                        i = 3;
                        break;
                    }
                }
                i2 += Character.charCount(codePointAt);
            }
        } else {
            i = 0;
        }
        return i;
    }

    public String join(Name name, boolean z, boolean z2) {
        String join;
        String str = z2 ? name.prefix : null;
        switch (name.fullNameStyle) {
            case 2:
            case 3:
            case 5:
                join = join(str, name.familyName, name.middleName, name.givenNames, name.suffix, false, false, false);
                break;
            case 4:
                join = join(str, name.familyName, name.middleName, name.givenNames, name.suffix, true, false, false);
                break;
            default:
                if (!z) {
                    join = join(str, name.familyName, name.givenNames, name.middleName, name.suffix, true, true, true);
                    break;
                } else {
                    join = join(str, name.givenNames, name.middleName, name.familyName, name.suffix, true, false, true);
                    break;
                }
        }
        return join;
    }

    public String joinPhoneticName(Name name) {
        return join(null, name.phoneticFamilyName, name.phoneticMiddleName, name.phoneticGivenName, null, true, false, false);
    }

    public void split(Name name, String str) {
        if (str != null) {
            int guessFullNameStyle = guessFullNameStyle(str);
            int i = guessFullNameStyle;
            if (guessFullNameStyle == 2) {
                i = getAdjustedFullNameStyle(guessFullNameStyle);
            }
            split(name, str, i);
        }
    }

    public void split(Name name, String str, int i) {
        if (str != null) {
            name.fullNameStyle = i;
            switch (i) {
                case 3:
                    splitChineseName(name, str);
                    return;
                case 4:
                    splitJapaneseName(name, str);
                    return;
                case 5:
                    splitKoreanName(name, str);
                    return;
                default:
                    splitWesternName(name, str);
                    return;
            }
        }
    }

    public int tokenize(String[] strArr, String str) {
        int i = 0;
        int i2 = 0;
        if (str != null) {
            NameTokenizer nameTokenizer = new NameTokenizer(str);
            if (nameTokenizer.mStartPointer != nameTokenizer.mEndPointer) {
                if (this.mPrefixesSet.contains(nameTokenizer.mTokens[nameTokenizer.mStartPointer].toUpperCase())) {
                    NameTokenizer.access$008(nameTokenizer);
                }
                int i3 = nameTokenizer.mStartPointer;
                while (true) {
                    i2 = i;
                    if (i3 >= nameTokenizer.mEndPointer) {
                        break;
                    }
                    strArr[i] = nameTokenizer.mTokens[i3];
                    i3++;
                    i++;
                }
            }
        }
        return i2;
    }
}
