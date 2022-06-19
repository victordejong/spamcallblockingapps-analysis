package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/DatePref.class */
public class DatePref extends BasePref<Date> {
    public DatePref(String str) {
        super(str);
    }

    public DatePref(String str, Date date) {
        super(str, date);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Date stringToValue(String str) {
        return new Date(Long.valueOf(str).longValue());
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Date date) {
        return String.valueOf(date.getTime());
    }
}
