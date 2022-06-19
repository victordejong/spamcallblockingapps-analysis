package com.callapp.contacts.activity.favorites;

import com.callapp.contacts.activity.contact.list.MemoryContactItem;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AddContactAsFavoriteData.class */
public class AddContactAsFavoriteData extends FavoriteMemoryContactItem {
    public AddContactAsFavoriteData(MemoryContactItem memoryContactItem) {
        super(memoryContactItem);
    }

    @Override // com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem, com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    @Override // com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem, com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 12;
    }
}
