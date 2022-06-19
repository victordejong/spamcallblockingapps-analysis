package com.callapp.contacts.manager.preferences;

import com.callapp.contacts.manager.preferences.prefs.IntegerPref;
import com.callapp.contacts.manager.preferences.prefs.LongPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/PrefsUtils.class */
public abstract class PrefsUtils {
    /* renamed from: a */
    public static List<String> m28175a(StringPref[] stringPrefArr) {
        ArrayList arrayList = new ArrayList(stringPrefArr.length);
        for (StringPref stringPref : stringPrefArr) {
            String str = stringPref.get();
            if (StringUtils.m26045b((CharSequence) str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m28177a(int[] iArr, IntegerPref[] integerPrefArr) {
        if (integerPrefArr != null) {
            for (int i = 0; i < Math.min(integerPrefArr.length, 3); i++) {
                integerPrefArr[i].set(Integer.valueOf(iArr[i]));
            }
        }
    }

    /* renamed from: a */
    public static void m28176a(long[] jArr, LongPref[] longPrefArr) {
        if (longPrefArr != null) {
            for (int i = 0; i < Math.min(longPrefArr.length, 3); i++) {
                longPrefArr[i].set(Long.valueOf(jArr[i]));
            }
        }
    }

    /* renamed from: a */
    public static void m28173a(String[] strArr, StringPref[] stringPrefArr) {
        if (strArr == null || stringPrefArr == null) {
            return;
        }
        for (int i = 0; i < Math.min(stringPrefArr.length, strArr.length); i++) {
            stringPrefArr[i].set(strArr[i]);
        }
    }

    /* renamed from: a */
    public static boolean m28174a(StringPref[] stringPrefArr, String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return false;
        }
        for (StringPref stringPref : stringPrefArr) {
            String str2 = stringPref.get();
            if (StringUtils.m26059a((CharSequence) str2)) {
                stringPref.set(str);
                return true;
            } else if (StringUtils.m26051a(str, str2, true) == 0) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m28172b(StringPref[] stringPrefArr, String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return false;
        }
        for (StringPref stringPref : stringPrefArr) {
            if (StringUtils.m26051a(str, stringPref.get(), true) == 0) {
                stringPref.set(null);
                return true;
            }
        }
        return false;
    }
}
