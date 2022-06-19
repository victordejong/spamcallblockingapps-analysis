package com.callapp.contacts.manager.preferences.prefs;

import com.callapp.contacts.manager.preferences.BasePref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/preferences/prefs/LongPref.class */
public class LongPref extends BasePref<Long> {
    public LongPref(String str) {
        super(str);
    }

    public LongPref(String str, Long l) {
        super(str, l);
    }

    /* renamed from: a */
    public final LongPref m28168a() {
        synchronized (this) {
            Long l = get();
            if (l == null) {
                set(1L);
            } else {
                set(Long.valueOf(l.longValue() + 1));
            }
        }
        return this;
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ Long stringToValue(String str) {
        return Long.valueOf(str);
    }

    @Override // com.callapp.contacts.manager.preferences.BasePref
    public /* synthetic */ String valueToString(Long l) {
        return String.valueOf(l);
    }
}
