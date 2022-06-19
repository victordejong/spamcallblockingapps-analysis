package com.callapp.contacts.activity.analytics.cards.myCallsCard;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem.class */
public class MyCallsGridItem {

    /* renamed from: a */
    public int f19830a;

    /* renamed from: b */
    public int f19831b;

    /* renamed from: c */
    public String f19832c;

    /* renamed from: d */
    public long f19833d;

    /* renamed from: e */
    public long f19834e;

    /* renamed from: f */
    public STATE f19835f;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE.class */
    public enum STATE {
        REGULAR,
        EMPTY,
        BLOCK
    }

    public MyCallsGridItem(int i, int i2, String str, long j, long j2, STATE state) {
        this.f19830a = i;
        this.f19831b = i2;
        this.f19832c = str;
        this.f19833d = j;
        this.f19834e = j2;
        this.f19835f = state;
    }
}
