package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.common.util.Joiner;
import com.callapp.contacts.manager.preferences.BasePref;
import com.callapp.framework.util.StringUtils;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/LongSetPref.class */
public class LongSetPref extends BasePref<Set<Long>> {
    public LongSetPref(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Set<Long> stringToValue(String str) {
        String[] split = str.split(",");
        HashSet hashSet = new HashSet();
        if (split != null && split.length > 0) {
            for (String str2 : split) {
                if (StringUtils.g(str2)) {
                    hashSet.add(Long.valueOf(Long.parseLong(str2)));
                }
            }
        }
        return hashSet;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Set<Long> set) {
        return Joiner.a(",").a(set);
    }
}
