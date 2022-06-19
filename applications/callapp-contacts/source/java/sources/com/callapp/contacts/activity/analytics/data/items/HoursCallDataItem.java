package com.callapp.contacts.activity.analytics.data.items;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/items/HoursCallDataItem.class */
public class HoursCallDataItem {

    /* renamed from: a */
    public int f19956a;

    /* renamed from: b */
    public int f19957b;

    /* renamed from: c */
    public int f19958c;

    /* renamed from: d */
    public int f19959d;

    /* renamed from: e */
    public int f19960e;

    /* renamed from: f */
    public int f19961f;

    public HoursCallDataItem(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f19956a = i;
        this.f19957b = i2;
        this.f19958c = i3;
        this.f19959d = i4;
        this.f19960e = i5;
        this.f19961f = i6;
    }

    public int getIncomingNight() {
        return this.f19957b;
    }

    public int getOutgoingNight() {
        return this.f19959d;
    }

    public int getTotalIncoming() {
        return this.f19960e;
    }

    public int getTotalOutgoing() {
        return this.f19961f;
    }
}
