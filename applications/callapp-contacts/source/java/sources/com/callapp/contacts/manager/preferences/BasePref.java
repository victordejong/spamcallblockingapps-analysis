package com.callapp.contacts.manager.preferences;

import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/BasePref.class */
public abstract class BasePref<T> {
    public final T defaultValue;
    public final String key;

    public BasePref(String str) {
        this(str, null);
    }

    public BasePref(String str, T t) {
        this.key = str;
        this.defaultValue = t;
    }

    public T get() {
        String m28182a = Singletons.get().getPrefsStore().m28182a(this.key);
        if (m28182a == null) {
            return this.defaultValue;
        }
        T stringToValue = stringToValue(m28182a);
        T t = stringToValue;
        if (stringToValue == null) {
            t = this.defaultValue;
        }
        return t;
    }

    public final boolean isNotNull() {
        return get() != null;
    }

    public final boolean isNull() {
        return get() == null;
    }

    public void set(T t) {
        Singletons.get().getPrefsStore().m28181a(this.key, t == null ? null : valueToString(t));
    }

    public abstract T stringToValue(String str);

    public abstract String valueToString(T t);
}
