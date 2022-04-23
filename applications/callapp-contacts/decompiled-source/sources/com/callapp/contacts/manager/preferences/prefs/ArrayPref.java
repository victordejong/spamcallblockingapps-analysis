package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.common.util.Joiner;
import com.callapp.contacts.manager.preferences.BasePref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/ArrayPref.class */
public class ArrayPref extends BasePref<String[]> {
    public ArrayPref(String str) {
        super(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String[] stringToValue(String str) {
        return str.split("@@@");
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(String[] strArr) {
        return Joiner.a("@@@").a(strArr);
    }
}
