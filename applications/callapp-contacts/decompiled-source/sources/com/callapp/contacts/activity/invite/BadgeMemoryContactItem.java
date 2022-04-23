package com.callapp.contacts.activity.invite;

import com.callapp.contacts.activity.contact.list.MemoryContactItem;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/BadgeMemoryContactItem.class */
public class BadgeMemoryContactItem extends MemoryContactItem {

    /* renamed from: a  reason: collision with root package name */
    private int f12967a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f12968b;
    private int i;
    private String j;

    public BadgeMemoryContactItem(MemoryContactItem memoryContactItem) {
        super(memoryContactItem);
    }

    public BadgeMemoryContactItem(MemoryContactItem memoryContactItem, int i) {
        super(memoryContactItem);
        this.i = i;
    }

    public int getBadgeResId() {
        return this.f12967a;
    }

    public String getFullName() {
        return this.j;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return this.i;
    }

    public boolean isShouldGrey() {
        return this.f12968b;
    }

    public void setBadgeResId(int i) {
        this.f12967a = i;
    }

    public void setFullName(String str) {
        this.j = str;
    }

    public void setShouldGrey(boolean z) {
        this.f12968b = z;
    }
}
