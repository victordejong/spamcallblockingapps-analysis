package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/IntegerPref.class */
public class IntegerPref extends BasePref<Integer> {
    public IntegerPref(String str) {
        super(str);
    }

    public IntegerPref(String str, Integer num) {
        super(str, num);
    }

    public final IntegerPref a(int i) {
        return get().intValue() >= i ? this : b(1);
    }

    public final IntegerPref b(int i) {
        Integer num = get();
        if (num == null) {
            set(Integer.valueOf(i));
        } else {
            set(Integer.valueOf(num.intValue() + i));
        }
        return this;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Integer stringToValue(String str) {
        return Integer.valueOf(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Integer num) {
        return String.valueOf(num);
    }
}
