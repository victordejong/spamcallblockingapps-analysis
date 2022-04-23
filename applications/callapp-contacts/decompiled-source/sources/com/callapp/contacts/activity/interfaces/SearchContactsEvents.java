package com.callapp.contacts.activity.interfaces;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/SearchContactsEvents.class */
public interface SearchContactsEvents {
    String getCurrentFilter();

    void registerFilteredEvents(SearchContactsFilter searchContactsFilter);

    boolean shouldSkipEmptyView();

    void unRegisterFilteredEvents(SearchContactsFilter searchContactsFilter);
}
