package com.callapp.contacts.activity.base;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactListDataProvider.class */
public abstract class BaseContactListDataProvider<T> {

    /* renamed from: a  reason: collision with root package name */
    Set<OnDataChangedListener<T>> f11116a = new LinkedHashSet();

    /* renamed from: b  reason: collision with root package name */
    private List<T> f11117b;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseContactListDataProvider$OnDataChangedListener.class */
    public interface OnDataChangedListener<T> {
        void a(List<T> list, boolean z);
    }

    public List<T> getData() {
        return this.f11117b;
    }

    public abstract List<T> getNewData();
}
