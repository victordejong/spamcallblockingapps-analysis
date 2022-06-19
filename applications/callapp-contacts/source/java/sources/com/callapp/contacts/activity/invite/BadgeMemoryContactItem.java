package com.callapp.contacts.activity.invite;

import com.callapp.contacts.activity.contact.list.MemoryContactItem;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/invite/BadgeMemoryContactItem.class */
public class BadgeMemoryContactItem extends MemoryContactItem {

    /* renamed from: a */
    private int f23142a;

    /* renamed from: b */
    private boolean f23143b;

    /* renamed from: i */
    private int f23144i;

    /* renamed from: j */
    private String f23145j;

    public BadgeMemoryContactItem(MemoryContactItem memoryContactItem) {
        super(memoryContactItem);
    }

    public BadgeMemoryContactItem(MemoryContactItem memoryContactItem, int i) {
        super(memoryContactItem);
        this.f23144i = i;
    }

    public int getBadgeResId() {
        return this.f23142a;
    }

    public String getFullName() {
        return this.f23145j;
    }

    @Override // com.callapp.contacts.activity.contact.list.MemoryContactItem, com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return this.f23144i;
    }

    public boolean isShouldGrey() {
        return this.f23143b;
    }

    public void setBadgeResId(int i) {
        this.f23142a = i;
    }

    public void setFullName(String str) {
        this.f23145j = str;
    }

    public void setShouldGrey(boolean z) {
        this.f23143b = z;
    }
}
