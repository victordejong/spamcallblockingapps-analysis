package com.callapp.contacts.activity.base;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactListDataProvider.class */
public abstract class BaseContactListDataProvider<T> {

    /* renamed from: a */
    Set<OnDataChangedListener<T>> f20298a = new LinkedHashSet();

    /* renamed from: b */
    private List<T> f20299b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener.class */
    public interface OnDataChangedListener<T> {
        /* renamed from: a */
        void mo31492a(List<T> list, boolean z);
    }

    public List<T> getData() {
        return this.f20299b;
    }

    public abstract List<T> getNewData();
}
