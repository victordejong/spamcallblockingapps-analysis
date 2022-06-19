package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.phone.PhoneManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/CountryIsoPref.class */
public class CountryIsoPref extends StringPref {
    public CountryIsoPref(String str) {
        super(str);
    }

    public void set(String str) {
        super.set((CountryIsoPref) str);
        PhoneManager.get().m28220j();
    }
}
