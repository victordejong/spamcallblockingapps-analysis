package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/StringPref.class */
public class StringPref extends BasePref<String> {

    /* renamed from: a  reason: collision with root package name */
    private int f15243a;

    public StringPref(String str) {
        super(str);
    }

    public StringPref(String str, int i) {
        super(str, a(i));
        this.f15243a = i;
    }

    public StringPref(String str, String str2) {
        super(str, str2);
    }

    private static String a(int i) {
        String str;
        try {
            str = Activities.getString(i);
        } catch (Exception e) {
            str = null;
        }
        return str;
    }

    public int getDefaultResId() {
        return this.f15243a;
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
