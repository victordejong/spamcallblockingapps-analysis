package com.callapp.contacts.manager;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppEnrichedItemsManager.class */
public class CallAppEnrichedItemsManager {

    /* renamed from: a  reason: collision with root package name */
    public Set<Object> f14812a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f14813b;

    public CallAppEnrichedItemsManager() {
        HashSet hashSet = new HashSet();
        this.f14813b = hashSet;
        Collections.addAll(hashSet, 0, 1, 2, 4, 11, 15);
    }

    public final void a(Object obj, boolean z) {
        if (z) {
            this.f14812a.add(obj);
        } else {
            this.f14812a.remove(obj);
        }
    }

    public boolean isTypeAbleToEnrich(int i) {
        return this.f14813b.contains(Integer.valueOf(i));
    }
}
