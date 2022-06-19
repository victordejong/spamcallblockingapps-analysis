package com.callapp.contacts.model.objectbox;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SpamData.class */
public class SpamData {

    /* renamed from: id */
    private long f26799id;
    private String phoneAsRaw;
    public long when;

    public SpamData() {
    }

    public SpamData(long j, String str, long j2) {
        this.f26799id = j;
        this.phoneAsRaw = str;
        this.when = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SpamData spamData = (SpamData) obj;
        if (this.f26799id != spamData.f26799id || this.when != spamData.when) {
            return false;
        }
        return Objects.equals(this.phoneAsRaw, spamData.phoneAsRaw);
    }

    public long getId() {
        return this.f26799id;
    }

    public String getPhoneAsRaw() {
        return this.phoneAsRaw;
    }

    public long getWhen() {
        return this.when;
    }

    public int hashCode() {
        long j = this.f26799id;
        int i = (int) (j ^ (j >>> 32));
        String str = this.phoneAsRaw;
        int hashCode = str != null ? str.hashCode() : 0;
        long j2 = this.when;
        return (((i * 31) + hashCode) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public void setId(long j) {
        this.f26799id = j;
    }

    public void setPhoneAsRaw(String str) {
        this.phoneAsRaw = str;
    }

    public void setWhen(long j) {
        this.when = j;
    }

    public String toString() {
        return "SpamData{id=" + this.f26799id + ", phoneAsRaw='" + this.phoneAsRaw + "', when=" + this.when + '}';
    }
}
