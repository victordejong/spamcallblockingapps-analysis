package com.callapp.contacts.activity.identify;

import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsData.class */
public class IdentifyContactsData {

    /* renamed from: a */
    private long f23077a;

    /* renamed from: b */
    private Phone f23078b;

    /* renamed from: c */
    private String f23079c;

    public String getLoadedName() {
        return this.f23079c;
    }

    public long getSuggestedContactId() {
        return this.f23077a;
    }

    public Phone getSuggestedPhone() {
        return this.f23078b;
    }

    public void setLoadedName(String str) {
        this.f23079c = str;
    }

    public void setSuggestedContactId(long j) {
        this.f23077a = j;
    }

    public void setSuggestedPhone(Phone phone) {
        this.f23078b = phone;
    }
}
