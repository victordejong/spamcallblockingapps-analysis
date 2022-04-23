package com.callapp.contacts.activity.analytics.data.items;

import com.callapp.contacts.manager.sim.SimManager;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/items/MyCallsCardItem.class */
public class MyCallsCardItem {

    /* renamed from: a  reason: collision with root package name */
    public int f10914a;

    /* renamed from: b  reason: collision with root package name */
    public int f10915b;

    /* renamed from: c  reason: collision with root package name */
    public int f10916c;

    /* renamed from: d  reason: collision with root package name */
    public int f10917d;
    public float e;
    public float f;
    private float g;
    private int h;
    private SimManager.SimId i;

    public MyCallsCardItem(int i, int i2, int i3, int i4, float f, float f2, SimManager.SimId simId, float f3, int i5) {
        this.f10914a = i;
        this.f10915b = i2;
        this.f10916c = i3;
        this.f10917d = i4;
        this.e = f;
        this.f = f2;
        this.i = simId;
        this.h = i5;
        this.g = f3;
    }

    public final void a() {
        this.h++;
    }

    public final void a(long j) {
        this.g += (float) j;
    }

    public int getIncomingCalls() {
        return this.f10914a;
    }

    public float getIncomingDuration() {
        return this.f;
    }

    public int getMissedCalls() {
        return this.f10916c;
    }

    public int getNotAnsweredCalls() {
        return this.f10917d;
    }

    public int getOutgoingCalls() {
        return this.f10915b;
    }

    public float getOutgoingDuration() {
        return this.e;
    }

    public int getTotalCalls() {
        return this.h;
    }

    public float getTotalDuration() {
        return this.g;
    }
}
