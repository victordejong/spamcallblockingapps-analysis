package com.callapp.contacts.activity.analytics.data.items;

import com.callapp.framework.phone.Phone;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData.class */
public class ContactDetailsInsightData {

    /* renamed from: a */
    public int f19935a;

    /* renamed from: b */
    public int f19936b;

    /* renamed from: c */
    public int f19937c;

    /* renamed from: d */
    public int f19938d;

    /* renamed from: e */
    public int f19939e;

    /* renamed from: f */
    public int f19940f;

    /* renamed from: g */
    public int f19941g;

    /* renamed from: h */
    public int f19942h;

    /* renamed from: i */
    public int f19943i;

    /* renamed from: j */
    public int f19944j;

    /* renamed from: k */
    public int f19945k;

    /* renamed from: l */
    public float f19946l;

    /* renamed from: m */
    public float f19947m;

    /* renamed from: n */
    public float f19948n;

    /* renamed from: o */
    private float f19949o;

    /* renamed from: p */
    private String f19950p;

    /* renamed from: q */
    private Phone f19951q;

    /* renamed from: r */
    private String f19952r;

    /* renamed from: s */
    private String f19953s;

    /* renamed from: t */
    private boolean f19954t;

    /* renamed from: u */
    private boolean f19955u;

    public ContactDetailsInsightData(String str, Phone phone, String str2) {
        this.f19950p = str;
        this.f19951q = phone;
        this.f19952r = str2;
    }

    public String getContactId() {
        return this.f19952r;
    }

    public String getContactName() {
        return this.f19950p;
    }

    public int getIncomingCalls() {
        return this.f19941g;
    }

    public int getIncomingDay() {
        return this.f19935a;
    }

    public float getIncomingDuration() {
        return this.f19947m;
    }

    public int getIncomingNight() {
        return this.f19936b;
    }

    public float getLongestCall() {
        return this.f19949o;
    }

    public int getMissedCalls() {
        return this.f19943i;
    }

    public int getNotAnsweredCalls() {
        return this.f19944j;
    }

    public int getOutgoingCalls() {
        return this.f19942h;
    }

    public int getOutgoingDay() {
        return this.f19937c;
    }

    public float getOutgoingDuration() {
        return this.f19946l;
    }

    public int getOutgoingNight() {
        return this.f19938d;
    }

    public String getTimeSlotData() {
        return this.f19953s;
    }

    public int getTotalCalls() {
        return this.f19945k;
    }

    public float getTotalDuration() {
        return this.f19948n;
    }

    public int getTotalIncoming() {
        return this.f19939e;
    }

    public int getTotalOutgoing() {
        return this.f19940f;
    }

    public boolean isHasVideo() {
        return this.f19954t;
    }

    public boolean isShowData() {
        return this.f19955u;
    }

    public void setHasVideo(boolean z) {
        this.f19954t = z;
    }

    public void setLongestCall(float f) {
        this.f19949o = f;
    }

    public void setShowData(boolean z) {
        this.f19955u = z;
    }

    public void setTimeSlotData(String str) {
        this.f19953s = str;
    }
}
