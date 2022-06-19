package com.callerid.block.bean;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/callerid/block/bean/SMSBean.class */
public class SMSBean implements Parcelable {
    public static final Parcelable.Creator<SMSBean> CREATOR = new Parcelable.Creator<SMSBean>() { // from class: com.callerid.block.bean.SMSBean.1
        @Override // android.os.Parcelable.Creator
        public SMSBean createFromParcel(Parcel parcel) {
            return new SMSBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SMSBean[] newArray(int i) {
            return new SMSBean[i];
        }
    };
    private String Search_name;
    private String address;
    private String avatar;
    private Long date;
    private String format_tel_number;
    private boolean has_attachment;
    private boolean isExistPhoto;
    private boolean isSearched;
    private boolean isSearchedData;
    private boolean is_contacts;
    private String msg_count;
    private String msg_snippet;
    private String name;
    private int raw_contact_id;
    private String read;
    private String recipient_ids;
    private String report_count;
    private String show_time;
    private String thread_id;
    private String time;
    private String type_label;
    private String type_label_show;

    public SMSBean() {
    }

    protected SMSBean(Parcel parcel) {
        this.thread_id = parcel.readString();
        this.msg_count = parcel.readString();
        this.msg_snippet = parcel.readString();
        this.address = parcel.readString();
        this.date = (Long) parcel.readValue(Long.class.getClassLoader());
        this.read = parcel.readString();
        this.time = parcel.readString();
        this.name = parcel.readString();
        this.type_label_show = parcel.readString();
        this.type_label = parcel.readString();
        this.report_count = parcel.readString();
        this.show_time = parcel.readString();
        this.format_tel_number = parcel.readString();
        this.avatar = parcel.readString();
        this.Search_name = parcel.readString();
        this.is_contacts = parcel.readByte() != 0;
        this.raw_contact_id = parcel.readInt();
        this.isSearched = parcel.readByte() != 0;
        this.isExistPhoto = parcel.readByte() != 0;
        this.isSearchedData = parcel.readByte() != 0;
        this.has_attachment = parcel.readByte() != 0;
        this.recipient_ids = parcel.readString();
    }

    public SMSBean(String str, String str2, String str3) {
        this.thread_id = str;
        this.msg_count = str2;
        this.msg_snippet = str3;
    }

    public SMSBean(String str, String str2, String str3, String str4) {
        this.thread_id = str;
        this.msg_count = str2;
        this.msg_snippet = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.address;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public Long getDate() {
        return this.date;
    }

    public String getFormat_tel_number() {
        return this.format_tel_number;
    }

    public String getMsg_count() {
        return this.msg_count;
    }

    public String getMsg_snippet() {
        return this.msg_snippet;
    }

    public String getName() {
        return this.name;
    }

    public int getRaw_contact_id() {
        return this.raw_contact_id;
    }

    public String getRead() {
        return this.read;
    }

    public String getRecipient_ids() {
        return this.recipient_ids;
    }

    public String getReport_count() {
        return this.report_count;
    }

    public String getSearch_name() {
        return this.Search_name;
    }

    public String getShow_time() {
        return this.show_time;
    }

    public String getThread_id() {
        return this.thread_id;
    }

    public String getTime() {
        return this.time;
    }

    public String getType_label() {
        return this.type_label;
    }

    public String getType_label_show() {
        return this.type_label_show;
    }

    public boolean isExistPhoto() {
        return this.isExistPhoto;
    }

    public boolean isHas_attachment() {
        return this.has_attachment;
    }

    public boolean isIs_contacts() {
        return this.is_contacts;
    }

    public boolean isSearched() {
        return this.isSearched;
    }

    public boolean isSearchedData() {
        return this.isSearchedData;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setDate(Long l) {
        this.date = l;
    }

    public void setExistPhoto(boolean z) {
        this.isExistPhoto = z;
    }

    public void setFormat_tel_number(String str) {
        this.format_tel_number = str;
    }

    public void setHas_attachment(boolean z) {
        this.has_attachment = z;
    }

    public void setIs_contacts(boolean z) {
        this.is_contacts = z;
    }

    public void setMsg_count(String str) {
        this.msg_count = str;
    }

    public void setMsg_snippet(String str) {
        this.msg_snippet = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRaw_contact_id(int i) {
        this.raw_contact_id = i;
    }

    public void setRead(String str) {
        this.read = str;
    }

    public void setRecipient_ids(String str) {
        this.recipient_ids = str;
    }

    public void setReport_count(String str) {
        this.report_count = str;
    }

    public void setSearch_name(String str) {
        this.Search_name = str;
    }

    public void setSearched(boolean z) {
        this.isSearched = z;
    }

    public void setSearchedData(boolean z) {
        this.isSearchedData = z;
    }

    public void setShow_time(String str) {
        this.show_time = str;
    }

    public void setThread_id(String str) {
        this.thread_id = str;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public void setType_label(String str) {
        this.type_label = str;
    }

    public void setType_label_show(String str) {
        this.type_label_show = str;
    }

    public String toString() {
        return "SMSBean{thread_id='" + this.thread_id + "', msg_count='" + this.msg_count + "', msg_snippet='" + this.msg_snippet + "', address='" + this.address + "', date=" + this.date + ", read='" + this.read + "', time='" + this.time + "', name='" + this.name + "', type_label_show='" + this.type_label_show + "', type_label='" + this.type_label + "', report_count='" + this.report_count + "', show_time='" + this.show_time + "', format_tel_number='" + this.format_tel_number + "', avatar='" + this.avatar + "', Search_name='" + this.Search_name + "', is_contacts=" + this.is_contacts + ", raw_contact_id=" + this.raw_contact_id + ", isSearched=" + this.isSearched + ", isExistPhoto=" + this.isExistPhoto + ", isSearchedData=" + this.isSearchedData + ", has_attachment=" + this.has_attachment + ", recipient_ids='" + this.recipient_ids + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.thread_id);
        parcel.writeString(this.msg_count);
        parcel.writeString(this.msg_snippet);
        parcel.writeString(this.address);
        parcel.writeValue(this.date);
        parcel.writeString(this.read);
        parcel.writeString(this.time);
        parcel.writeString(this.name);
        parcel.writeString(this.type_label_show);
        parcel.writeString(this.type_label);
        parcel.writeString(this.report_count);
        parcel.writeString(this.show_time);
        parcel.writeString(this.format_tel_number);
        parcel.writeString(this.avatar);
        parcel.writeString(this.Search_name);
        parcel.writeByte(this.is_contacts ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.raw_contact_id);
        parcel.writeByte(this.isSearched ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isExistPhoto ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isSearchedData ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.has_attachment ? (byte) 1 : (byte) 0);
        parcel.writeString(this.recipient_ids);
    }
}
