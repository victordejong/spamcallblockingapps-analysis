package com.callapp.contacts.activity.contact.list.search;

import android.text.InputFilter;
import android.text.Spanned;
import android.util.Pair;
import android.util.SparseIntArray;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.settings.Language;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/T9Helper.class */
public class T9Helper {

    /* renamed from: a */
    private static Map<Character, Character> f22882a = new HashMap();

    /* renamed from: b */
    private static boolean f22883b = false;

    /* renamed from: com.callapp.contacts.activity.contact.list.search.T9Helper$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/T9Helper$3.class */
    public static /* synthetic */ class C65903 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22884a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[Language.values().length];
            f22884a = iArr;
            try {
                iArr[Language.RUSSIAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22884a[Language.HEBREW.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f22884a[Language.UKRAINIAN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f22884a[Language.ARABIC.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f22884a[Language.THAI.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f22884a[Language.GREEK.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f22884a[Language.KOREAN.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f22884a[Language.BULGARIAN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: a */
    public static Pair<Boolean, List<BaseAdapterItemData>> m30355a(String str, String str2, List<BaseAdapterItemData> list, List<BaseAdapterItemData> list2) {
        String[] strArr;
        String[] strArr2;
        String str3;
        boolean z;
        List<BaseAdapterItemData> list3 = list;
        if (StringUtils.m26059a((CharSequence) str)) {
            return new Pair<>(Boolean.FALSE, list3);
        }
        String m31911a = RegexUtils.m31911a((CharSequence) str.toLowerCase());
        if (StringUtils.m26059a((CharSequence) m31911a)) {
            return new Pair<>(Boolean.FALSE, list3);
        }
        boolean z2 = str.length() != m31911a.length();
        ArrayList arrayList = new ArrayList();
        boolean z3 = StringUtils.m26059a((CharSequence) str2) || !m31911a.startsWith(str2);
        String m30360a = m30360a((CharSequence) m31911a);
        if (m30360a.length() != m31911a.length()) {
            m30360a = null;
        }
        boolean m26045b = StringUtils.m26045b((CharSequence) m30360a);
        if (m26045b) {
            strArr2 = m31911a.split("0");
            str3 = null;
            strArr = null;
        } else {
            str3 = RegexUtils.m31889l(m31911a);
            strArr = str3.split(org.apache.commons.lang3.StringUtils.SPACE);
            strArr2 = null;
        }
        if (!z3) {
            list3 = list2;
        }
        for (BaseAdapterItemData baseAdapterItemData : list3) {
            SparseIntArray sparseIntArray = new SparseIntArray(2);
            int i = -1;
            baseAdapterItemData.numberMatchIndexStart = -1;
            baseAdapterItemData.numberMatchIndexEnd = -1;
            String next = (baseAdapterItemData.normalNumbers == null || baseAdapterItemData.normalNumbers.isEmpty()) ? null : baseAdapterItemData.normalNumbers.iterator().next();
            if (m26045b) {
                if (next != null) {
                    i = next.indexOf(m30360a);
                }
                if (i == 0 || (i > 0 && next.length() - i > 6)) {
                    baseAdapterItemData.numberMatchIndexStart = i;
                    baseAdapterItemData.numberMatchIndexEnd = m31911a.length() + i;
                    z = true;
                } else {
                    z = false;
                }
                if (z && baseAdapterItemData.displayName.equals(baseAdapterItemData.nameT9)) {
                    sparseIntArray.put(i, m31911a.length() + i);
                } else if (!z2 && StringUtils.m26045b((CharSequence) baseAdapterItemData.nameT9)) {
                    z = m30354a(baseAdapterItemData.nameT9, baseAdapterItemData.nameT9.split("0"), sparseIntArray, m31911a, strArr2, "0") | z;
                    if (!z) {
                        z = m30358a(baseAdapterItemData.nameT9, sparseIntArray, m31911a, "0".charAt(0));
                    }
                }
            } else {
                String str4 = str3;
                baseAdapterItemData.textHighlights.clear();
                if (!z2) {
                    if (baseAdapterItemData.unaccentName == null) {
                        baseAdapterItemData.unaccentName = baseAdapterItemData.displayName;
                    }
                    boolean m30354a = m30354a(baseAdapterItemData.unaccentName, baseAdapterItemData.unaccentName.split(org.apache.commons.lang3.StringUtils.SPACE), sparseIntArray, str4, strArr, org.apache.commons.lang3.StringUtils.SPACE);
                    z = m30354a;
                    if (!m30354a) {
                        str3 = str4;
                        z = m30358a(baseAdapterItemData.unaccentName, sparseIntArray, str3, ' ');
                    }
                } else {
                    str3 = str4;
                    z = false;
                }
            }
            baseAdapterItemData.textHighlights = sparseIntArray;
            if (z) {
                arrayList.add(baseAdapterItemData);
            }
        }
        return new Pair<>(Boolean.TRUE, arrayList);
    }

    /* renamed from: a */
    public static String m30360a(CharSequence charSequence) {
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            if (m30352b(charAt, i)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m30359a(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        m30353a(false);
        int length = lowerCase.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            Character ch = f22882a.get(Character.valueOf(Character.toUpperCase(lowerCase.charAt(i))));
            if (ch != null) {
                sb.append(ch);
            } else {
                sb.append(f22882a.get('0'));
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m30362a() {
        if (((Language) Prefs.f26277bA.get()) == Language.NONE) {
            Prefs.f26277bA.set(getExtraLanguageForKeypad());
        }
        m30353a(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000a, code lost:
        if (com.callapp.contacts.activity.contact.list.search.T9Helper.f22883b == false) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m30353a(boolean r4) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.search.T9Helper.m30353a(boolean):void");
    }

    /* renamed from: a */
    private static boolean m30358a(String str, SparseIntArray sparseIntArray, String str2, char c) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            i = i4;
            i2 = i5;
            i3 = i7;
            if (i4 >= str.length()) {
                break;
            }
            char charAt = str.charAt(i4);
            int i8 = i4;
            int i9 = i5;
            int i10 = i7;
            if (charAt != c) {
                if (charAt == str2.charAt(i5)) {
                    if (i5 == 0) {
                        i7 = i4;
                    }
                    int i11 = i5 + 1;
                    i8 = i4;
                    i9 = i11;
                    i10 = i7;
                    if (i11 >= str2.length()) {
                        i = i4 + 1;
                        i2 = i11;
                        i3 = i7;
                        break;
                    }
                } else if (i5 != 0) {
                    return false;
                } else {
                    int indexOf = str.indexOf(c, i4);
                    i = indexOf;
                    i2 = i5;
                    i3 = i7;
                    if (indexOf <= 0) {
                        break;
                    }
                    i8 = indexOf;
                    i9 = i5;
                    i10 = i7;
                }
            }
            i4 = i8 + 1;
            i5 = i9;
            i6 = i10;
        }
        if (i2 == str2.length()) {
            sparseIntArray.put(i3, i);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m30357a(String str, SparseIntArray sparseIntArray, String str2, String str3) {
        int i;
        SparseIntArray sparseIntArray2 = new SparseIntArray(2);
        String[] split = str2.split(str3);
        int length = split.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            i = i4;
            if (i2 >= length) {
                break;
            }
            String str4 = split[i2];
            int i5 = i4;
            if (StringUtils.m26045b((CharSequence) str4)) {
                int i6 = i4 + 1;
                i = i6;
                if (!m30356a(str, sparseIntArray2, str3, str4, 0)) {
                    break;
                }
                i5 = i6;
            }
            i2++;
            i3 = i5;
        }
        if (sparseIntArray2.size() == i) {
            for (int i7 = 0; i7 < sparseIntArray2.size(); i7++) {
                sparseIntArray.put(sparseIntArray2.keyAt(i7), sparseIntArray2.valueAt(i7));
            }
            return true;
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m30356a(String str, SparseIntArray sparseIntArray, String str2, String str3, int i) {
        while (true) {
            if (i != 0 || !str.startsWith(str3)) {
                int indexOf = str.indexOf(str2 + str3, i);
                if (indexOf < 0) {
                    return false;
                }
                int i2 = indexOf + 1;
                if (sparseIntArray.get(i2, -10) == -10) {
                    sparseIntArray.put(i2, str3.length() + i2);
                    return true;
                }
                i = i2 + 1;
            } else if (sparseIntArray.get(0, -10) == -10) {
                sparseIntArray.put(0, str3.length());
                return true;
            } else {
                i = 1;
            }
        }
    }

    /* renamed from: a */
    private static boolean m30354a(String str, String[] strArr, SparseIntArray sparseIntArray, String str2, String[] strArr2, String str3) {
        int i;
        SparseIntArray sparseIntArray2 = new SparseIntArray(2);
        int length = strArr2.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            i = i4;
            if (i2 >= length) {
                break;
            }
            String str4 = strArr2[i2];
            int i5 = i4;
            if (StringUtils.m26045b((CharSequence) str4)) {
                int i6 = i4 + 1;
                i = i6;
                if (!m30356a(str, sparseIntArray2, str3, str4, 0)) {
                    break;
                }
                i5 = i6;
            }
            i2++;
            i3 = i5;
        }
        if ((strArr.length != 2 || str.length() < str2.length()) && sparseIntArray2.size() == 0 && strArr2.length == 1 && strArr.length == 2 && str2.length() > 2) {
            for (int length2 = str2.length() - 1; length2 > 0; length2--) {
                String substring = str2.substring(0, length2);
                int indexOf = str.indexOf(substring);
                if (indexOf > 1 && strArr[1].endsWith(substring)) {
                    String substring2 = str2.substring(length2);
                    if (str.startsWith(substring2)) {
                        StringBuilder sb = new StringBuilder(substring);
                        int i7 = 1;
                        for (int i8 = 0; str.substring(indexOf - i7, indexOf - i8).equals(str3); i8++) {
                            sb.append(str3);
                            i7++;
                        }
                        sb.append(substring2);
                        if (m30357a(str, sparseIntArray2, sb.toString(), str3)) {
                            for (int i9 = 0; i9 < sparseIntArray2.size(); i9++) {
                                sparseIntArray.put(sparseIntArray2.keyAt(i9), sparseIntArray2.valueAt(i9));
                            }
                            return true;
                        }
                    } else {
                        continue;
                    }
                } else if (indexOf == 0) {
                    String substring3 = str2.substring(length2);
                    if (strArr[0].endsWith(substring)) {
                        StringBuilder sb2 = new StringBuilder(strArr[0]);
                        int indexOf2 = str.indexOf(str3);
                        int i10 = 1;
                        for (int i11 = 0; str.substring(indexOf2 + i11, indexOf2 + i10).equals(str3); i11++) {
                            sb2.append(str3);
                            sb2.append(substring3);
                            if (m30357a(str, sparseIntArray2, sb2.toString(), str3)) {
                                for (int i12 = 0; i12 < sparseIntArray2.size(); i12++) {
                                    sparseIntArray.put(sparseIntArray2.keyAt(i12), sparseIntArray2.valueAt(i12));
                                }
                                return true;
                            }
                            i10++;
                        }
                        continue;
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        if (sparseIntArray2.size() == i) {
            for (int i13 = 0; i13 < sparseIntArray2.size(); i13++) {
                sparseIntArray.put(sparseIntArray2.keyAt(i13), sparseIntArray2.valueAt(i13));
            }
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private static Language m30351b(String str) {
        return "en".equalsIgnoreCase(str) ? Language.ENGLISH : "es".equalsIgnoreCase(str) ? Language.SPANISH : "uk".equalsIgnoreCase(str) ? Language.UKRAINIAN : ("hb".equalsIgnoreCase(str) || "iw".equalsIgnoreCase(str)) ? Language.HEBREW : "ru".equalsIgnoreCase(str) ? Language.RUSSIAN : "de".equalsIgnoreCase(str) ? Language.GERMAN : "el".equalsIgnoreCase(str) ? Language.GREEK : "fr".equalsIgnoreCase(str) ? Language.FRENCH : "br".equalsIgnoreCase(str) ? Language.PORTUGUESE : "pl".equalsIgnoreCase(str) ? Language.POLISH : "tr".equalsIgnoreCase(str) ? Language.TURKISH : "ga".equalsIgnoreCase(str) ? Language.IRISH : "th".equalsIgnoreCase(str) ? Language.THAI : "ko".equalsIgnoreCase(str) ? Language.KOREAN : "bg".equalsIgnoreCase(str) ? Language.BULGARIAN : ("id".equalsIgnoreCase(str) || "in".equalsIgnoreCase(str)) ? Language.INDONESIAN : "ar".equalsIgnoreCase(str) ? Language.ARABIC : "it".equalsIgnoreCase(str) ? Language.ITALIAN : "zu".equalsIgnoreCase(str) ? Language.ZULU : "ja".equalsIgnoreCase(str) ? Language.JAPANESE : "af".equalsIgnoreCase(str) ? Language.AFRIKAANS : Language.NONE;
    }

    /* renamed from: b */
    public static boolean m30352b(char c, int i) {
        if ((c >= '0' && c <= '9') || c == '*' || c == '#') {
            return true;
        }
        return (c == '+' && i == 0) || c == ',' || c == ';' || c == 'N';
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
        if (r4 == com.callapp.contacts.activity.settings.Language.NONE) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.callapp.contacts.activity.settings.Language getExtraLanguageForKeypad() {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.search.T9Helper.getExtraLanguageForKeypad():com.callapp.contacts.activity.settings.Language");
    }

    public static InputFilter getT9TextFilter() {
        return new InputFilter() { // from class: com.callapp.contacts.activity.contact.list.search.T9Helper.2
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                StringBuilder sb = new StringBuilder();
                while (i < i2) {
                    char charAt = charSequence.charAt(i);
                    if (T9Helper.m30352b(charAt, i)) {
                        sb.append(charAt);
                    }
                    i++;
                }
                return sb.toString();
            }
        };
    }
}
