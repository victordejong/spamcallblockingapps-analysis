package com.callapp.contacts.activity.analytics.cards.myCallsCard;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem.class */
public class MyCallsGridItem {

    /* renamed from: a  reason: collision with root package name */
    public int f10854a;

    /* renamed from: b  reason: collision with root package name */
    public int f10855b;

    /* renamed from: c  reason: collision with root package name */
    public String f10856c;

    /* renamed from: d  reason: collision with root package name */
    public long f10857d;
    public long e;
    public STATE f;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE.class */
    public enum STATE {
        REGULAR,
        EMPTY,
        BLOCK
    }

    public MyCallsGridItem(int i, int i2, String str, long j, long j2, STATE state) {
        this.f10854a = i;
        this.f10855b = i2;
        this.f10856c = str;
        this.f10857d = j;
        this.e = j2;
        this.f = state;
    }
}
