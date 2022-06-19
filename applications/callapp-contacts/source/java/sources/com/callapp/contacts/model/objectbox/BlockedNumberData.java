package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedNumberData.class */
public class BlockedNumberData {
    private boolean blockCall;
    private boolean blockSms;
    private String fullName;

    /* renamed from: id */
    private long f26753id;
    private String phoneNum;
    public long when;

    public BlockedNumberData() {
    }

    public BlockedNumberData(long j, String str, String str2, boolean z, boolean z2, long j2) {
        this.f26753id = j;
        this.phoneNum = str;
        this.fullName = str2;
        this.blockSms = z;
        this.blockCall = z2;
        this.when = j2;
    }

    public BlockedNumberData(String str, String str2, boolean z, boolean z2, long j) {
        this.fullName = str;
        this.phoneNum = str2;
        this.blockSms = z;
        this.blockCall = z2;
        this.when = j;
    }

    public String getFullName() {
        return this.fullName;
    }

    public long getId() {
        return this.f26753id;
    }

    public Phone getPhone() {
        return PhoneManager.get().m28239a(this.phoneNum);
    }

    public String getPhoneNum() {
        return this.phoneNum;
    }

    public long getWhen() {
        return this.when;
    }

    public boolean isBlockCall() {
        return this.blockCall;
    }

    public boolean isBlockSms() {
        return this.blockSms;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public void setId(long j) {
        this.f26753id = j;
    }

    public void setWhen(long j) {
        this.when = j;
    }

    public String toString() {
        return "BlockedNumberData{id=" + this.f26753id + ", phoneNum='" + this.phoneNum + "', fullName='" + this.fullName + "', blockSms=" + this.blockSms + ", blockCall=" + this.blockCall + ", when=" + this.when + '}';
    }
}
