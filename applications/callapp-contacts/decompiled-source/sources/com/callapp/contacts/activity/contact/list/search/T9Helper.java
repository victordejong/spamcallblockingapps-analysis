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

    /* renamed from: a  reason: collision with root package name */
    private static Map<Character, Character> f12803a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f12804b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.list.search.T9Helper$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/T9Helper$3.class */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12805a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[Language.values().length];
            f12805a = iArr;
            try {
                iArr[Language.RUSSIAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12805a[Language.HEBREW.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12805a[Language.UKRAINIAN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12805a[Language.ARABIC.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12805a[Language.THAI.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12805a[Language.GREEK.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f12805a[Language.KOREAN.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f12805a[Language.BULGARIAN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    public static Pair<Boolean, List<BaseAdapterItemData>> a(String str, String str2, List<BaseAdapterItemData> list, List<BaseAdapterItemData> list2) {
        String[] strArr;
        String[] strArr2;
        String str3;
        boolean z;
        List<BaseAdapterItemData> list3 = list;
        if (StringUtils.a((CharSequence) str)) {
            return new Pair<>(Boolean.FALSE, list3);
        }
        String a2 = RegexUtils.a((CharSequence) str.toLowerCase());
        if (StringUtils.a((CharSequence) a2)) {
            return new Pair<>(Boolean.FALSE, list3);
        }
        boolean z2 = str.length() != a2.length();
        ArrayList arrayList = new ArrayList();
        boolean z3 = StringUtils.a((CharSequence) str2) || !a2.startsWith(str2);
        String a3 = a((CharSequence) a2);
        if (a3.length() != a2.length()) {
            a3 = null;
        }
        boolean b2 = StringUtils.b((CharSequence) a3);
        if (b2) {
            strArr2 = a2.split("0");
            str3 = null;
            strArr = null;
        } else {
            str3 = RegexUtils.l(a2);
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
            if (b2) {
                if (next != null) {
                    i = next.indexOf(a3);
                }
                if (i == 0 || (i > 0 && next.length() - i > 6)) {
                    baseAdapterItemData.numberMatchIndexStart = i;
                    baseAdapterItemData.numberMatchIndexEnd = a2.length() + i;
                    z = true;
                } else {
                    z = false;
                }
                if (z && baseAdapterItemData.displayName.equals(baseAdapterItemData.nameT9)) {
                    sparseIntArray.put(i, a2.length() + i);
                } else if (!z2 && StringUtils.b((CharSequence) baseAdapterItemData.nameT9)) {
                    z = a(baseAdapterItemData.nameT9, baseAdapterItemData.nameT9.split("0"), sparseIntArray, a2, strArr2, "0") | z;
                    if (!z) {
                        z = a(baseAdapterItemData.nameT9, sparseIntArray, a2, "0".charAt(0));
                    }
                }
            } else {
                baseAdapterItemData.textHighlights.clear();
                if (!z2) {
                    if (baseAdapterItemData.unaccentName == null) {
                        baseAdapterItemData.unaccentName = baseAdapterItemData.displayName;
                    }
                    boolean a4 = a(baseAdapterItemData.unaccentName, baseAdapterItemData.unaccentName.split(org.apache.commons.lang3.StringUtils.SPACE), sparseIntArray, str3, strArr, org.apache.commons.lang3.StringUtils.SPACE);
                    z = a4;
                    if (!a4) {
                        str3 = str3;
                        z = a(baseAdapterItemData.unaccentName, sparseIntArray, str3, ' ');
                    }
                } else {
                    str3 = str3;
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

    public static String a(CharSequence charSequence) {
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = charSequence.charAt(i);
            if (b(charAt, i)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static String a(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        a(false);
        int length = lowerCase.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            Character ch = f12803a.get(Character.valueOf(Character.toUpperCase(lowerCase.charAt(i))));
            if (ch != null) {
                sb.append(ch);
            } else {
                sb.append(f12803a.get('0'));
            }
        }
        return sb.toString();
    }

    public static void a() {
        if (((Language) Prefs.bA.get()) == Language.NONE) {
            Prefs.bA.set(getExtraLanguageForKeypad());
        }
        a(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000a, code lost:
        if (com.callapp.contacts.activity.contact.list.search.T9Helper.f12804b == false) goto L_0x000d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(boolean r4) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.contact.list.search.T9Helper.a(boolean):void");
    }

    private static boolean a(String str, SparseIntArray sparseIntArray, String str2, char c2) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = i4;
            i2 = i5;
            i3 = i6;
            if (i4 >= str.length()) {
                break;
            }
            char charAt = str.charAt(i4);
            int i7 = i4;
            i5 = i5;
            i6 = i6;
            if (charAt != c2) {
                if (charAt == str2.charAt(i5)) {
                    if (i5 == 0) {
                        i6 = i4;
                    }
                    int i8 = i5 + 1;
                    i7 = i4;
                    i5 = i8;
                    i6 = i6;
                    if (i8 >= str2.length()) {
                        i = i4 + 1;
                        i2 = i8;
                        i3 = i6;
                        break;
                    }
                } else if (i5 == 0) {
                    int indexOf = str.indexOf(c2, i4);
                    i = indexOf;
                    i2 = i5;
                    i3 = i6;
                    if (indexOf <= 0) {
                        break;
                    }
                    i7 = indexOf;
                    i5 = i5;
                    i6 = i6;
                } else {
                    return false;
                }
            }
            i4 = i7 + 1;
        }
        if (i2 != str2.length()) {
            return false;
        }
        sparseIntArray.put(i3, i);
        return true;
    }

    public static boolean a(String str, SparseIntArray sparseIntArray, String str2, String str3) {
        int i;
        SparseIntArray sparseIntArray2 = new SparseIntArray(2);
        String[] split = str2.split(str3);
        int length = split.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            String str4 = split[i2];
            i3 = i3;
            if (StringUtils.b((CharSequence) str4)) {
                int i4 = i3 + 1;
                i = i4;
                if (!a(str, sparseIntArray2, str3, str4, 0)) {
                    break;
                }
                i3 = i4;
            }
            i2++;
        }
        if (sparseIntArray2.size() != i) {
            return false;
        }
        for (int i5 = 0; i5 < sparseIntArray2.size(); i5++) {
            sparseIntArray.put(sparseIntArray2.keyAt(i5), sparseIntArray2.valueAt(i5));
        }
        return true;
    }

    private static boolean a(String str, SparseIntArray sparseIntArray, String str2, String str3, int i) {
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

    private static boolean a(String str, String[] strArr, SparseIntArray sparseIntArray, String str2, String[] strArr2, String str3) {
        int i;
        SparseIntArray sparseIntArray2 = new SparseIntArray(2);
        int length = strArr2.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            String str4 = strArr2[i2];
            i3 = i3;
            if (StringUtils.b((CharSequence) str4)) {
                int i4 = i3 + 1;
                i = i4;
                if (!a(str, sparseIntArray2, str3, str4, 0)) {
                    break;
                }
                i3 = i4;
            }
            i2++;
        }
        if ((strArr.length != 2 || str.length() < str2.length()) && sparseIntArray2.size() == 0 && strArr2.length == 1 && strArr.length == 2 && str2.length() > 2) {
            for (int length2 = str2.length() - 1; length2 > 0; length2--) {
                String substring = str2.substring(0, length2);
                int indexOf = str.indexOf(substring);
                if (indexOf > 1 && strArr[1].endsWith(substring)) {
                    String substring2 = str2.substring(length2);
                    if (str.startsWith(substring2)) {
                        StringBuilder sb = new StringBuilder(substring);
                        int i5 = 1;
                        for (int i6 = 0; str.substring(indexOf - i5, indexOf - i6).equals(str3); i6++) {
                            sb.append(str3);
                            i5++;
                        }
                        sb.append(substring2);
                        if (a(str, sparseIntArray2, sb.toString(), str3)) {
                            for (int i7 = 0; i7 < sparseIntArray2.size(); i7++) {
                                sparseIntArray.put(sparseIntArray2.keyAt(i7), sparseIntArray2.valueAt(i7));
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
                        int i8 = 1;
                        for (int i9 = 0; str.substring(indexOf2 + i9, indexOf2 + i8).equals(str3); i9++) {
                            sb2.append(str3);
                            sb2.append(substring3);
                            if (a(str, sparseIntArray2, sb2.toString(), str3)) {
                                for (int i10 = 0; i10 < sparseIntArray2.size(); i10++) {
                                    sparseIntArray.put(sparseIntArray2.keyAt(i10), sparseIntArray2.valueAt(i10));
                                }
                                return true;
                            }
                            i8++;
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
        if (sparseIntArray2.size() != i) {
            return false;
        }
        for (int i11 = 0; i11 < sparseIntArray2.size(); i11++) {
            sparseIntArray.put(sparseIntArray2.keyAt(i11), sparseIntArray2.valueAt(i11));
        }
        return true;
    }

    private static Language b(String str) {
        return "en".equalsIgnoreCase(str) ? Language.ENGLISH : "es".equalsIgnoreCase(str) ? Language.SPANISH : "uk".equalsIgnoreCase(str) ? Language.UKRAINIAN : ("hb".equalsIgnoreCase(str) || "iw".equalsIgnoreCase(str)) ? Language.HEBREW : "ru".equalsIgnoreCase(str) ? Language.RUSSIAN : "de".equalsIgnoreCase(str) ? Language.GERMAN : "el".equalsIgnoreCase(str) ? Language.GREEK : "fr".equalsIgnoreCase(str) ? Language.FRENCH : "br".equalsIgnoreCase(str) ? Language.PORTUGUESE : "pl".equalsIgnoreCase(str) ? Language.POLISH : "tr".equalsIgnoreCase(str) ? Language.TURKISH : "ga".equalsIgnoreCase(str) ? Language.IRISH : "th".equalsIgnoreCase(str) ? Language.THAI : "ko".equalsIgnoreCase(str) ? Language.KOREAN : "bg".equalsIgnoreCase(str) ? Language.BULGARIAN : ("id".equalsIgnoreCase(str) || "in".equalsIgnoreCase(str)) ? Language.INDONESIAN : "ar".equalsIgnoreCase(str) ? Language.ARABIC : "it".equalsIgnoreCase(str) ? Language.ITALIAN : "zu".equalsIgnoreCase(str) ? Language.ZULU : "ja".equalsIgnoreCase(str) ? Language.JAPANESE : "af".equalsIgnoreCase(str) ? Language.AFRIKAANS : Language.NONE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(char c2, int i) {
        if ((c2 >= '0' && c2 <= '9') || c2 == '*' || c2 == '#') {
            return true;
        }
        return (c2 == '+' && i == 0) || c2 == ',' || c2 == ';' || c2 == 'N';
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
        if (r4 == com.callapp.contacts.activity.settings.Language.NONE) goto L_0x001e;
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
                    if (T9Helper.b(charAt, i)) {
                        sb.append(charAt);
                    }
                    i++;
                }
                return sb.toString();
            }
        };
    }
}
