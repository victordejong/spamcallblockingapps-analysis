package com.callapp.contacts.manager.preferences;

import com.callapp.contacts.manager.preferences.prefs.IntegerPref;
import com.callapp.contacts.manager.preferences.prefs.LongPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/PrefsUtils.class */
public abstract class PrefsUtils {
    public static List<String> a(StringPref[] stringPrefArr) {
        ArrayList arrayList = new ArrayList(stringPrefArr.length);
        for (StringPref stringPref : stringPrefArr) {
            String str = stringPref.get();
            if (StringUtils.b((CharSequence) str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static void a(int[] iArr, IntegerPref[] integerPrefArr) {
        if (integerPrefArr != null) {
            for (int i = 0; i < Math.min(integerPrefArr.length, 3); i++) {
                integerPrefArr[i].set(Integer.valueOf(iArr[i]));
            }
        }
    }

    public static void a(long[] jArr, LongPref[] longPrefArr) {
        if (longPrefArr != null) {
            for (int i = 0; i < Math.min(longPrefArr.length, 3); i++) {
                longPrefArr[i].set(Long.valueOf(jArr[i]));
            }
        }
    }

    public static void a(String[] strArr, StringPref[] stringPrefArr) {
        if (!(strArr == null || stringPrefArr == null)) {
            for (int i = 0; i < Math.min(stringPrefArr.length, strArr.length); i++) {
                stringPrefArr[i].set(strArr[i]);
            }
        }
    }

    public static boolean a(StringPref[] stringPrefArr, String str) {
        if (StringUtils.a((CharSequence) str)) {
            return false;
        }
        for (StringPref stringPref : stringPrefArr) {
            String str2 = stringPref.get();
            if (StringUtils.a((CharSequence) str2)) {
                stringPref.set(str);
                return true;
            } else if (StringUtils.a(str, str2, true) == 0) {
                return false;
            }
        }
        return false;
    }

    public static boolean b(StringPref[] stringPrefArr, String str) {
        if (StringUtils.a((CharSequence) str)) {
            return false;
        }
        for (StringPref stringPref : stringPrefArr) {
            if (StringUtils.a(str, stringPref.get(), true) == 0) {
                stringPref.set(null);
                return true;
            }
        }
        return false;
    }
}
