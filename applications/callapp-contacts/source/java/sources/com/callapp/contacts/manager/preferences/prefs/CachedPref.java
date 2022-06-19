package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/CachedPref.class */
public class CachedPref<T> extends BasePref<T> {

    /* renamed from: a */
    private BasePref<T> f26670a;

    /* renamed from: b */
    private T f26671b;

    public CachedPref(BasePref<T> basePref) {
        super(basePref.key, basePref.defaultValue);
        this.f26670a = basePref;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public T get() {
        T t = this.f26671b;
        if (t != null) {
            return t;
        }
        T t2 = this.f26670a.get();
        this.f26671b = t2;
        return t2;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public void set(T t) {
        this.f26671b = t;
        this.f26670a.set(t);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public T stringToValue(String str) {
        return this.f26670a.stringToValue(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public String valueToString(T t) {
        return this.f26670a.valueToString(t);
    }
}
