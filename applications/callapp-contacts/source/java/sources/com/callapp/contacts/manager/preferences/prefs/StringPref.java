package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/StringPref.class */
public class StringPref extends BasePref<String> {

    /* renamed from: a */
    private int f26676a;

    public StringPref(String str) {
        super(str);
    }

    public StringPref(String str, int i) {
        super(str, m28166a(i));
        this.f26676a = i;
    }

    public StringPref(String str, String str2) {
        super(str, str2);
    }

    /* renamed from: a */
    private static String m28166a(int i) {
        String str;
        try {
            str = Activities.getString(i);
        } catch (Exception e) {
            str = null;
        }
        return str;
    }

    public int getDefaultResId() {
        return this.f26676a;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* bridge */ /* synthetic */ String stringToValue(String str) {
        return str;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* bridge */ /* synthetic */ String valueToString(String str) {
        return str;
    }
}
