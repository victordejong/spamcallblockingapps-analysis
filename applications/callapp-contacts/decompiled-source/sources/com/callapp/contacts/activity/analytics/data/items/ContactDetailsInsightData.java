package com.callapp.contacts.activity.analytics.data.items;

import com.callapp.framework.phone.Phone;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData.class */
public class ContactDetailsInsightData {

    /* renamed from: a  reason: collision with root package name */
    public int f10906a;

    /* renamed from: b  reason: collision with root package name */
    public int f10907b;

    /* renamed from: c  reason: collision with root package name */
    public int f10908c;

    /* renamed from: d  reason: collision with root package name */
    public int f10909d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public float l;
    public float m;
    public float n;
    private float o;
    private String p;
    private Phone q;
    private String r;
    private String s;
    private boolean t;
    private boolean u;

    public ContactDetailsInsightData(String str, Phone phone, String str2) {
        this.p = str;
        this.q = phone;
        this.r = str2;
    }

    public String getContactId() {
        return this.r;
    }

    public String getContactName() {
        return this.p;
    }

    public int getIncomingCalls() {
        return this.g;
    }

    public int getIncomingDay() {
        return this.f10906a;
    }

    public float getIncomingDuration() {
        return this.m;
    }

    public int getIncomingNight() {
        return this.f10907b;
    }

    public float getLongestCall() {
        return this.o;
    }

    public int getMissedCalls() {
        return this.i;
    }

    public int getNotAnsweredCalls() {
        return this.j;
    }

    public int getOutgoingCalls() {
        return this.h;
    }

    public int getOutgoingDay() {
        return this.f10908c;
    }

    public float getOutgoingDuration() {
        return this.l;
    }

    public int getOutgoingNight() {
        return this.f10909d;
    }

    public String getTimeSlotData() {
        return this.s;
    }

    public int getTotalCalls() {
        return this.k;
    }

    public float getTotalDuration() {
        return this.n;
    }

    public int getTotalIncoming() {
        return this.e;
    }

    public int getTotalOutgoing() {
        return this.f;
    }

    public boolean isHasVideo() {
        return this.t;
    }

    public boolean isShowData() {
        return this.u;
    }

    public void setHasVideo(boolean z) {
        this.t = z;
    }

    public void setLongestCall(float f) {
        this.o = f;
    }

    public void setShowData(boolean z) {
        this.u = z;
    }

    public void setTimeSlotData(String str) {
        this.s = str;
    }
}
