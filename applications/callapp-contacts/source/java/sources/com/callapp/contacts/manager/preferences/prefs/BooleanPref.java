package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/BooleanPref.class */
public class BooleanPref extends BasePref<Boolean> {
    public BooleanPref(String str) {
        super(str);
    }

    public BooleanPref(String str, Boolean bool) {
        super(str, bool);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Boolean stringToValue(String str) {
        return Boolean.valueOf(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Boolean bool) {
        return String.valueOf(bool);
    }
}
