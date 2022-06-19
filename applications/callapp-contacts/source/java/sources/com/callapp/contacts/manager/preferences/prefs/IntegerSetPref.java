package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.common.util.Joiner;
import com.callapp.contacts.manager.preferences.BasePref;
import com.callapp.framework.util.StringUtils;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/IntegerSetPref.class */
public class IntegerSetPref extends BasePref<Set<Integer>> {
    public IntegerSetPref(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Set<Integer> stringToValue(String str) {
        String[] split = str.split(",");
        HashSet hashSet = new HashSet();
        if (split != null && split.length > 0) {
            for (String str2 : split) {
                if (StringUtils.m26026g(str2)) {
                    hashSet.add(Integer.valueOf(Integer.parseInt(str2)));
                }
            }
        }
        return hashSet;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Set<Integer> set) {
        return Joiner.m31918a(",").m31919a(set);
    }
}
