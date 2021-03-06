package com.callapp.contacts.activity.favorites;

import com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.framework.util.StringUtils;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/FavoriteMemoryContactItem.class */
public class FavoriteMemoryContactItem extends MemoryContactItem {
    public FavoriteMemoryContactItem(MemoryContactItem memoryContactItem) {
        super(memoryContactItem);
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public String calculateCacheKey() {
        String str;
        Iterator<String> it2 = this.normalNumbers.iterator();
        String str2 = "";
        while (true) {
            str = str2;
            if (!it2.hasNext()) {
                break;
            }
            String next = it2.next();
            str2 = str + String.format("FavItemData_%s", PhoneManager.get().m28239a(next).m26101a());
        }
        String str3 = str;
        if (StringUtils.m26059a((CharSequence) str)) {
            str3 = super.calculateCacheKey();
        }
        return str3;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof FavoriteMemoryContactItem)) {
            return false;
        }
        FavoriteMemoryContactItem favoriteMemoryContactItem = (FavoriteMemoryContactItem) obj;
        return this.normalNumbers == null ? favoriteMemoryContactItem.normalNumbers == null : this.normalNumbers.equals(favoriteMemoryContactItem.normalNumbers);
    }

    public JsonStickyData getStickyData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 11;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        int i = 0;
        int hashCode2 = this.nameT9 == null ? 0 : this.nameT9.hashCode();
        if (this.normalNumbers != null) {
            i = this.normalNumbers.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }
}
