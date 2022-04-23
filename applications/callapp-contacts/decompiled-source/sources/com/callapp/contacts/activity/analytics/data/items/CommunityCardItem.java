package com.callapp.contacts.activity.analytics.data.items;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/items/CommunityCardItem.class */
public class CommunityCardItem {

    /* renamed from: a  reason: collision with root package name */
    private int f10903a;

    /* renamed from: b  reason: collision with root package name */
    private int f10904b;

    /* renamed from: c  reason: collision with root package name */
    private int f10905c;

    public CommunityCardItem(int i, int i2, int i3) {
        this.f10903a = i;
        this.f10904b = i2;
        this.f10905c = i3;
    }

    public int getContactConfirm() {
        return this.f10903a;
    }

    public int getProfilePhotoChecked() {
        return this.f10905c;
    }

    public int getSpammersReport() {
        return this.f10904b;
    }
}
