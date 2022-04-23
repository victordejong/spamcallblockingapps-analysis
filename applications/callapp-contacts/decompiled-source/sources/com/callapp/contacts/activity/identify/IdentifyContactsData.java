package com.callapp.contacts.activity.identify;

import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsData.class */
public class IdentifyContactsData {

    /* renamed from: a  reason: collision with root package name */
    private long f12913a;

    /* renamed from: b  reason: collision with root package name */
    private Phone f12914b;

    /* renamed from: c  reason: collision with root package name */
    private String f12915c;

    public String getLoadedName() {
        return this.f12915c;
    }

    public long getSuggestedContactId() {
        return this.f12913a;
    }

    public Phone getSuggestedPhone() {
        return this.f12914b;
    }

    public void setLoadedName(String str) {
        this.f12915c = str;
    }

    public void setSuggestedContactId(long j) {
        this.f12913a = j;
    }

    public void setSuggestedPhone(Phone phone) {
        this.f12914b = phone;
    }
}
