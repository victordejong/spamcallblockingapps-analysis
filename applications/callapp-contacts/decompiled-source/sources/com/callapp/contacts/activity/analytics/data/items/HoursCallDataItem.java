package com.callapp.contacts.activity.analytics.data.items;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/items/HoursCallDataItem.class */
public class HoursCallDataItem {

    /* renamed from: a  reason: collision with root package name */
    public int f10910a;

    /* renamed from: b  reason: collision with root package name */
    public int f10911b;

    /* renamed from: c  reason: collision with root package name */
    public int f10912c;

    /* renamed from: d  reason: collision with root package name */
    public int f10913d;
    public int e;
    public int f;

    public HoursCallDataItem(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f10910a = i;
        this.f10911b = i2;
        this.f10912c = i3;
        this.f10913d = i4;
        this.e = i5;
        this.f = i6;
    }

    public int getIncomingNight() {
        return this.f10911b;
    }

    public int getOutgoingNight() {
        return this.f10913d;
    }

    public int getTotalIncoming() {
        return this.e;
    }

    public int getTotalOutgoing() {
        return this.f;
    }
}
