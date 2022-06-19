package com.callerid.block.search;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callerid/block/search/EZSearchResult.class */
public class EZSearchResult implements Serializable, Parcelable {
    public static final Parcelable.Creator<EZSearchResult> CREATOR = new C1128a();
    private int Report_count;
    private String address;
    private String block_times;
    private String complaint_times;
    private long date;
    private String email;
    private int faild_error_log;
    private String format_tel_number;
    private String icon;
    private boolean isContact;
    private boolean isSpam;
    private String location;
    private int max_report;
    private String name;
    private String number;
    private String old_tel_number;
    private String operator;
    private int raw_contact_id;
    private String soft_comments;
    private String t_p;
    private String tag_main;
    private String tag_sub;
    private String tel_number;
    private String type;
    private String type_label;
    private String website;

    /* renamed from: com.callerid.block.search.EZSearchResult$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/search/EZSearchResult$a.class */
    static final class C1128a implements Parcelable.Creator<EZSearchResult> {
        C1128a() {
        }

        /* renamed from: a */
        public EZSearchResult createFromParcel(Parcel parcel) {
            return new EZSearchResult(parcel);
        }

        /* renamed from: b */
        public EZSearchResult[] newArray(int i) {
            return new EZSearchResult[i];
        }
    }

    public EZSearchResult() {
    }

    protected EZSearchResult(Parcel parcel) {
        this.type = parcel.readString();
        this.location = parcel.readString();
        this.email = parcel.readString();
        this.isContact = parcel.readByte() != 0;
        this.icon = parcel.readString();
        this.website = parcel.readString();
        this.address = parcel.readString();
        this.Report_count = parcel.readInt();
        this.type_label = parcel.readString();
        this.date = parcel.readLong();
        this.old_tel_number = parcel.readString();
        this.tel_number = parcel.readString();
        this.format_tel_number = parcel.readString();
        this.name = parcel.readString();
        this.max_report = parcel.readInt();
        this.isSpam = parcel.readByte() != 0;
        this.block_times = parcel.readString();
        this.complaint_times = parcel.readString();
        this.number = parcel.readString();
        this.tag_main = parcel.readString();
        this.tag_sub = parcel.readString();
        this.soft_comments = parcel.readString();
        this.operator = parcel.readString();
        this.t_p = parcel.readString();
        this.faild_error_log = parcel.readInt();
        this.raw_contact_id = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAddress() {
        return this.address;
    }

    public String getBlock_times() {
        return this.block_times;
    }

    public String getComplaint_times() {
        return this.complaint_times;
    }

    public long getDate() {
        return this.date;
    }

    public String getEmail() {
        return this.email;
    }

    public int getFaild_error_log() {
        return this.faild_error_log;
    }

    public String getFormat_tel_number() {
        return this.format_tel_number;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getLocation() {
        return this.location;
    }

    public int getMax_report() {
        return this.max_report;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public String getOld_tel_number() {
        return this.old_tel_number;
    }

    public String getOperator() {
        return this.operator;
    }

    public int getRaw_contact_id() {
        return this.raw_contact_id;
    }

    public int getReport_count() {
        return this.Report_count;
    }

    public String getSoft_comments() {
        return this.soft_comments;
    }

    public String getT_p() {
        return this.t_p;
    }

    public String getTag_main() {
        return this.tag_main;
    }

    public String getTag_sub() {
        return this.tag_sub;
    }

    public String getTel_number() {
        return this.tel_number;
    }

    public String getType() {
        return this.type;
    }

    public String getType_label() {
        return this.type_label;
    }

    public String getWebsite() {
        return this.website;
    }

    public boolean isContact() {
        return this.isContact;
    }

    public boolean isSpam() {
        return this.isSpam;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setBlock_times(String str) {
        this.block_times = str;
    }

    public void setComplaint_times(String str) {
        this.complaint_times = str;
    }

    public void setContact(boolean z) {
        this.isContact = z;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setFaild_error_log(int i) {
        this.faild_error_log = i;
    }

    public void setFormat_tel_number(String str) {
        this.format_tel_number = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setIsSpam(boolean z) {
        this.isSpam = z;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setMax_report(int i) {
        this.max_report = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setOld_tel_number(String str) {
        this.old_tel_number = str;
    }

    public void setOperator(String str) {
        this.operator = str;
    }

    public void setRaw_contact_id(int i) {
        this.raw_contact_id = i;
    }

    public void setReport_count(int i) {
        this.Report_count = i;
    }

    public void setSoft_comments(String str) {
        this.soft_comments = str;
    }

    public void setSpam(boolean z) {
        this.isSpam = z;
    }

    public void setT_p(String str) {
        this.t_p = str;
    }

    public void setTag_main(String str) {
        this.tag_main = str;
    }

    public void setTag_sub(String str) {
        this.tag_sub = str;
    }

    public void setTel_number(String str) {
        this.tel_number = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setType_label(String str) {
        this.type_label = str;
    }

    public void setWebsite(String str) {
        this.website = str;
    }

    public String toString() {
        return "EZSearchResult{type='" + this.type + "', location='" + this.location + "', email='" + this.email + "', isContact=" + this.isContact + ", icon='" + this.icon + "', website='" + this.website + "', address='" + this.address + "', Report_count=" + this.Report_count + ", type_label='" + this.type_label + "', date=" + this.date + ", old_tel_number='" + this.old_tel_number + "', tel_number='" + this.tel_number + "', format_tel_number='" + this.format_tel_number + "', name='" + this.name + "', max_report=" + this.max_report + ", isSpam=" + this.isSpam + ", block_times='" + this.block_times + "', complaint_times='" + this.complaint_times + "', number='" + this.number + "', tag_main='" + this.tag_main + "', tag_sub='" + this.tag_sub + "', soft_comments='" + this.soft_comments + "', operator='" + this.operator + "', t_p='" + this.t_p + "', faild_error_log=" + this.faild_error_log + ", raw_contact_id=" + this.raw_contact_id + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.type);
        parcel.writeString(this.location);
        parcel.writeString(this.email);
        parcel.writeByte(this.isContact ? (byte) 1 : (byte) 0);
        parcel.writeString(this.icon);
        parcel.writeString(this.website);
        parcel.writeString(this.address);
        parcel.writeInt(this.Report_count);
        parcel.writeString(this.type_label);
        parcel.writeLong(this.date);
        parcel.writeString(this.old_tel_number);
        parcel.writeString(this.tel_number);
        parcel.writeString(this.format_tel_number);
        parcel.writeString(this.name);
        parcel.writeInt(this.max_report);
        parcel.writeByte(this.isSpam ? (byte) 1 : (byte) 0);
        parcel.writeString(this.block_times);
        parcel.writeString(this.complaint_times);
        parcel.writeString(this.number);
        parcel.writeString(this.tag_main);
        parcel.writeString(this.tag_sub);
        parcel.writeString(this.soft_comments);
        parcel.writeString(this.operator);
        parcel.writeString(this.t_p);
        parcel.writeInt(this.faild_error_log);
        parcel.writeInt(this.raw_contact_id);
    }
}
