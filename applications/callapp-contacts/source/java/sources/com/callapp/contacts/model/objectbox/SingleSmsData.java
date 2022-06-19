package com.callapp.contacts.model.objectbox;

import android.content.Intent;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleSmsData.class */
public class SingleSmsData {
    public static final String EXTRA_SMS_TEXT = "smsText";
    private long contactId;
    private String fullName;

    /* renamed from: id */
    protected long f26797id;
    private String lastText;
    private int pagePosition;
    private String phone;
    private String smsText;

    public SingleSmsData() {
        this.contactId = -1L;
        this.lastText = "";
    }

    public SingleSmsData(long j, long j2, String str, String str2, String str3, int i, String str4) {
        this.contactId = -1L;
        this.lastText = "";
        this.f26797id = j;
        this.contactId = j2;
        this.smsText = str;
        this.phone = str2;
        this.fullName = str3;
        this.pagePosition = i;
        this.lastText = str4;
    }

    public static SingleSmsData createFromIntent(Intent intent) {
        SingleSmsData singleSmsData = new SingleSmsData();
        singleSmsData.setSmsText(intent.getExtras().getString(EXTRA_SMS_TEXT, ""));
        singleSmsData.setPhone(intent.getExtras().getString(Constants.EXTRA_PHONE_NUMBER));
        singleSmsData.setContactId(intent.getExtras().getLong(Constants.EXTRA_CONTACT_ID));
        singleSmsData.setFullName(intent.getStringExtra(ContactDetailsActivity.EXTRA_FULL_NAME));
        return singleSmsData;
    }

    public long getContactId() {
        return this.contactId;
    }

    public String getFullName() {
        return this.fullName;
    }

    public long getId() {
        return this.f26797id;
    }

    public String getLastText() {
        return this.lastText;
    }

    public int getPagePosition() {
        return this.pagePosition;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getSmsText() {
        return this.smsText;
    }

    public void setContactId(long j) {
        this.contactId = j;
    }

    public void setFullName(String str) {
        this.fullName = str;
    }

    public void setId(long j) {
        this.f26797id = j;
    }

    public void setLastText(String str) {
        this.lastText = str;
    }

    public void setPagePosition(int i) {
        this.pagePosition = i;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setSmsText(String str) {
        this.smsText = str;
    }
}
