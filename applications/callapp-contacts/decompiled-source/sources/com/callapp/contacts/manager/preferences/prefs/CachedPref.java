package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/CachedPref.class */
public class CachedPref<T> extends BasePref<T> {

    /* renamed from: a  reason: collision with root package name */
    private BasePref<T> f15237a;

    /* renamed from: b  reason: collision with root package name */
    private T f15238b;

    public CachedPref(BasePref<T> basePref) {
        super(basePref.key, basePref.defaultValue);
        this.f15237a = basePref;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public T get() {
        T t = this.f15238b;
        if (t != null) {
            return t;
        }
        T t2 = this.f15237a.get();
        this.f15238b = t2;
        return t2;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public void set(T t) {
        this.f15238b = t;
        this.f15237a.set(t);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public T stringToValue(String str) {
        return this.f15237a.stringToValue(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public String valueToString(T t) {
        return this.f15237a.valueToString(t);
    }
}
