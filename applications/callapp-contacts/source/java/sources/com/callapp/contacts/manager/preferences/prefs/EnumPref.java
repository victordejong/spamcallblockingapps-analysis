package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
import com.callapp.contacts.util.CLog;
import java.lang.Enum;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/EnumPref.class */
public class EnumPref<T extends Enum> extends BasePref<T> {
    public EnumPref(String str, T t) {
        super(str, t);
    }

    /* renamed from: a */
    public T stringToValue(String str) {
        try {
            return (T) Enum.valueOf(((Enum) this.defaultValue).getClass(), str);
        } catch (IllegalArgumentException e) {
            CLog.m27609a(EnumPref.class, e);
            return null;
        }
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Object obj) {
        return ((Enum) obj).name();
    }
}
