package com.callapp.contacts.activity.favorites;

import com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0018��2\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0012"}, d2 = {"Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;", "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;", "memoryContactItem", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "jsonStickyData", "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;", "(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V", "getJsonStickyData", "()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;", "setJsonStickyData", "(Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V", "equals", "", "other", "", "getStickyData", "getViewType", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/PromotionFavoriteData.class */
public final class PromotionFavoriteData extends FavoriteMemoryContactItem {

    /* renamed from: a  reason: collision with root package name */
    private JsonStickyData f12867a;

    public PromotionFavoriteData(MemoryContactItem memoryContactItem, JsonStickyData jsonStickyData) {
        super(memoryContactItem);
        this.f12867a = jsonStickyData;
    }

    public /* synthetic */ PromotionFavoriteData(MemoryContactItem memoryContactItem, JsonStickyData jsonStickyData, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(memoryContactItem, (i & 2) != 0 ? null : jsonStickyData);
    }

    @Override // com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem, com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseAdapterItemData
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && !(p.a(getClass(), obj.getClass()) ^ true);
    }

    @Override // com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem
    public final JsonStickyData getStickyData() {
        return this.f12867a;
    }

    @Override // com.callapp.contacts.activity.favorites.FavoriteMemoryContactItem, com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseViewTypeData
    public final int getViewType() {
        return 23;
    }
}
