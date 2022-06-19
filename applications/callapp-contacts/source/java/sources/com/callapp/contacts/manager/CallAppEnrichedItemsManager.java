package com.callapp.contacts.manager;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppEnrichedItemsManager.class */
public class CallAppEnrichedItemsManager {

    /* renamed from: a */
    public Set<Object> f25611a = new HashSet();

    /* renamed from: b */
    private Set<Integer> f25612b;

    public CallAppEnrichedItemsManager() {
        HashSet hashSet = new HashSet();
        this.f25612b = hashSet;
        Collections.addAll(hashSet, 0, 1, 2, 4, 11, 15);
    }

    /* renamed from: a */
    public final void m28706a(Object obj, boolean z) {
        if (z) {
            this.f25611a.add(obj);
        } else {
            this.f25611a.remove(obj);
        }
    }

    public boolean isTypeAbleToEnrich(int i) {
        return this.f25612b.contains(Integer.valueOf(i));
    }
}
