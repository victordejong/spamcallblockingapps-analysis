package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.birthday.BirthdayReminderData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayData.class */
public class BirthdayData implements MonitoredDeviceID {
    private long contactId;
    private int dayOfMonth;
    private String displayName;

    /* renamed from: id */
    protected Long f26751id;
    private int month;
    private Phone phone;
    private String phoneOrIdKey;
    private int socialNetId;
    private String socialProfileId;

    public BirthdayData() {
    }

    public BirthdayData(Long l, String str, int i, int i2, int i3, String str2, String str3) {
        this.f26751id = l;
        this.phoneOrIdKey = str;
        this.dayOfMonth = i;
        this.month = i2;
        this.socialNetId = i3;
        this.socialProfileId = str2;
        this.displayName = str3;
    }

    public static BirthdayReminderData birthdayPojoToReminder(BirthdayData birthdayData) {
        Integer num;
        String str;
        if (birthdayData.isConnectedToSocialNetwork()) {
            int socialNetId = birthdayData.getSocialNetId();
            str = birthdayData.getSocialProfileId();
            num = Integer.valueOf(socialNetId);
        } else {
            num = null;
            str = null;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.set(5, birthdayData.getDayOfMonth());
        calendar.set(2, birthdayData.getMonth() - 1);
        return new BirthdayReminderData(calendar.getTime(), birthdayData.getContactId(), birthdayData.getPhone(), birthdayData.getDisplayName(), num, str);
    }

    public long getContactId() {
        return this.contactId;
    }

    public int getDayOfMonth() {
        return this.dayOfMonth;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.f26751id;
    }

    public int getMonth() {
        return this.month;
    }

    public Phone getPhone() {
        return this.phone;
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public int getSocialNetId() {
        return this.socialNetId;
    }

    public String getSocialProfileId() {
        return this.socialProfileId;
    }

    public boolean isConnectedToSocialNetwork() {
        return StringUtils.m26045b((CharSequence) this.socialProfileId) && this.socialNetId > 0;
    }

    public boolean isContact() {
        return StringUtils.m26045b((CharSequence) this.phoneOrIdKey) && !this.phoneOrIdKey.contains("@");
    }

    public void setContactId(long j) {
        this.contactId = j;
    }

    public void setDayOfMonth(int i) {
        this.dayOfMonth = i;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.f26751id = l;
    }

    public void setMonth(int i) {
        this.month = i;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setSocialNetId(int i) {
        this.socialNetId = i;
    }

    public void setSocialProfileId(String str) {
        this.socialProfileId = str;
    }

    public String toString() {
        return "BirthdayData{id=" + this.f26751id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', dayOfMonth=" + this.dayOfMonth + ", month=" + this.month + ", socialNetId=" + this.socialNetId + ", socialProfileId='" + this.socialProfileId + "', displayName='" + this.displayName + "', contactId=" + this.contactId + ", phone=" + this.phone + '}';
    }
}
