package com.callapp.contacts.activity.analytics.data.items;

import com.callapp.contacts.manager.sim.SimManager;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/items/MyCallsCardItem.class */
public class MyCallsCardItem {

    /* renamed from: a */
    public int f19962a;

    /* renamed from: b */
    public int f19963b;

    /* renamed from: c */
    public int f19964c;

    /* renamed from: d */
    public int f19965d;

    /* renamed from: e */
    public float f19966e;

    /* renamed from: f */
    public float f19967f;

    /* renamed from: g */
    private float f19968g;

    /* renamed from: h */
    private int f19969h;

    /* renamed from: i */
    private SimManager.SimId f19970i;

    public MyCallsCardItem(int i, int i2, int i3, int i4, float f, float f2, SimManager.SimId simId, float f3, int i5) {
        this.f19962a = i;
        this.f19963b = i2;
        this.f19964c = i3;
        this.f19965d = i4;
        this.f19966e = f;
        this.f19967f = f2;
        this.f19970i = simId;
        this.f19969h = i5;
        this.f19968g = f3;
    }

    /* renamed from: a */
    public final void m31613a() {
        this.f19969h++;
    }

    /* renamed from: a */
    public final void m31612a(long j) {
        this.f19968g += (float) j;
    }

    public int getIncomingCalls() {
        return this.f19962a;
    }

    public float getIncomingDuration() {
        return this.f19967f;
    }

    public int getMissedCalls() {
        return this.f19964c;
    }

    public int getNotAnsweredCalls() {
        return this.f19965d;
    }

    public int getOutgoingCalls() {
        return this.f19963b;
    }

    public float getOutgoingDuration() {
        return this.f19966e;
    }

    public int getTotalCalls() {
        return this.f19969h;
    }

    public float getTotalDuration() {
        return this.f19968g;
    }
}
