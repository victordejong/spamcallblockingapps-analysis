package com.allinone.callerid.search;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/search/EZSearchResult.class */
public class EZSearchResult implements Serializable, Parcelable {
    public static final Parcelable.Creator<EZSearchResult> CREATOR = new C3577a();
    private int Report_count;
    private String activity_count;
    private String address;
    private int block_count;
    private String block_times;
    private String comment_tags;
    private String complaint_times;
    private int count;
    private String country;
    private long date;
    private int declined_count;
    private String email;
    private String format_tel_number;
    private String icon;
    private long incomingtime;
    private boolean isContact;
    private boolean isSpam;
    private int is_activity;
    private boolean issetfav;
    private String keyword;
    private String location;
    private long longnumberdate;
    private int max_report;
    private String name;
    private String number;
    private String old_tel_number;
    private int onedayincomingah;
    private String operator;
    private int raw_contact_id;
    private String soft_comments;
    private int status;
    private String subtype;
    private String subtype_cc;
    private String subtype_pdt;
    private String t_p;
    private String tag_main;
    private String tag_sub;
    private String tel_number;
    private String type;
    private String type_label;
    private String type_label_id;
    private String website;
    private int weekoutingnum;

    /* renamed from: com.allinone.callerid.search.EZSearchResult$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/search/EZSearchResult$a.class */
    class C3577a implements Parcelable.Creator<EZSearchResult> {
        C3577a() {
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
        this.type_label_id = parcel.readString();
        this.date = parcel.readLong();
        this.old_tel_number = parcel.readString();
        this.tel_number = parcel.readString();
        this.format_tel_number = parcel.readString();
        this.name = parcel.readString();
        this.max_report = parcel.readInt();
        this.status = parcel.readInt();
        this.isSpam = parcel.readByte() != 0;
        this.issetfav = parcel.readByte() != 0;
        this.block_times = parcel.readString();
        this.complaint_times = parcel.readString();
        this.number = parcel.readString();
        this.tag_main = parcel.readString();
        this.tag_sub = parcel.readString();
        this.soft_comments = parcel.readString();
        this.operator = parcel.readString();
        this.t_p = parcel.readString();
        this.comment_tags = parcel.readString();
        this.country = parcel.readString();
        this.subtype = parcel.readString();
        this.subtype_cc = parcel.readString();
        this.raw_contact_id = parcel.readInt();
        this.count = parcel.readInt();
        this.subtype_pdt = parcel.readString();
        this.keyword = parcel.readString();
        this.is_activity = parcel.readInt();
        this.activity_count = parcel.readString();
        this.weekoutingnum = parcel.readInt();
        this.block_count = parcel.readInt();
        this.declined_count = parcel.readInt();
        this.incomingtime = parcel.readLong();
        this.onedayincomingah = parcel.readInt();
        this.longnumberdate = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getActivity_count() {
        return this.activity_count;
    }

    public String getAddress() {
        return this.address;
    }

    public int getBlock_count() {
        return this.block_count;
    }

    public String getBlock_times() {
        return this.block_times;
    }

    public String getComment_tags() {
        return this.comment_tags;
    }

    public String getComplaint_times() {
        return this.complaint_times;
    }

    public int getCount() {
        return this.count;
    }

    public String getCountry() {
        return this.country;
    }

    public long getDate() {
        return this.date;
    }

    public int getDeclined_count() {
        return this.declined_count;
    }

    public String getEmail() {
        return this.email;
    }

    public String getFormat_tel_number() {
        return this.format_tel_number;
    }

    public String getIcon() {
        return this.icon;
    }

    public long getIncomingtime() {
        return this.incomingtime;
    }

    public int getIs_activity() {
        return this.is_activity;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public String getLocation() {
        return this.location;
    }

    public long getLongnumberdate() {
        return this.longnumberdate;
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

    public int getOnedayincomingah() {
        return this.onedayincomingah;
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

    public int getStatus() {
        return this.status;
    }

    public String getSubtype() {
        return this.subtype;
    }

    public String getSubtype_cc() {
        return this.subtype_cc;
    }

    public String getSubtype_pdt() {
        return this.subtype_pdt;
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

    public String getType_label_id() {
        return this.type_label_id;
    }

    public String getWebsite() {
        return this.website;
    }

    public int getWeekoutingnum() {
        return this.weekoutingnum;
    }

    public boolean isContact() {
        return this.isContact;
    }

    public boolean isIssetfav() {
        return this.issetfav;
    }

    public boolean isSpam() {
        return this.isSpam;
    }

    public boolean issetfav() {
        return this.issetfav;
    }

    public void setActivity_count(String str) {
        this.activity_count = str;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setBlock_count(int i) {
        this.block_count = i;
    }

    public void setBlock_times(String str) {
        this.block_times = str;
    }

    public void setComment_tags(String str) {
        this.comment_tags = str;
    }

    public void setComplaint_times(String str) {
        this.complaint_times = str;
    }

    public void setContact(boolean z) {
        this.isContact = z;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDeclined_count(int i) {
        this.declined_count = i;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setFormat_tel_number(String str) {
        this.format_tel_number = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setIncomingtime(long j) {
        this.incomingtime = j;
    }

    public void setIsSpam(boolean z) {
        this.isSpam = z;
    }

    public void setIs_activity(int i) {
        this.is_activity = i;
    }

    public void setIssetfav(boolean z) {
        this.issetfav = z;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setLongnumberdate(long j) {
        this.longnumberdate = j;
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

    public void setOnedayincomingah(int i) {
        this.onedayincomingah = i;
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

    public void setStatus(int i) {
        this.status = i;
    }

    public void setSubtype(String str) {
        this.subtype = str;
    }

    public void setSubtype_cc(String str) {
        this.subtype_cc = str;
    }

    public void setSubtype_pdt(String str) {
        this.subtype_pdt = str;
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

    public void setType_label_id(String str) {
        this.type_label_id = str;
    }

    public void setWebsite(String str) {
        this.website = str;
    }

    public void setWeekoutingnum(int i) {
        this.weekoutingnum = i;
    }

    public String toString() {
        return "EZSearchResult{type='" + this.type + "', location='" + this.location + "', email='" + this.email + "', isContact=" + this.isContact + ", icon='" + this.icon + "', website='" + this.website + "', address='" + this.address + "', Report_count=" + this.Report_count + ", type_label='" + this.type_label + "', type_label_id='" + this.type_label_id + "', date=" + this.date + ", old_tel_number='" + this.old_tel_number + "', tel_number='" + this.tel_number + "', format_tel_number='" + this.format_tel_number + "', name='" + this.name + "', max_report=" + this.max_report + ", status=" + this.status + ", isSpam=" + this.isSpam + ", issetfav=" + this.issetfav + ", block_times='" + this.block_times + "', complaint_times='" + this.complaint_times + "', number='" + this.number + "', tag_main='" + this.tag_main + "', tag_sub='" + this.tag_sub + "', soft_comments='" + this.soft_comments + "', operator='" + this.operator + "', t_p='" + this.t_p + "', comment_tags='" + this.comment_tags + "', country='" + this.country + "', subtype='" + this.subtype + "', subtype_cc='" + this.subtype_cc + "', raw_contact_id=" + this.raw_contact_id + ", count=" + this.count + ", subtype_pdt='" + this.subtype_pdt + "', keyword='" + this.keyword + "', is_activity=" + this.is_activity + ", activity_count='" + this.activity_count + "', weekoutingnum=" + this.weekoutingnum + ", block_count=" + this.block_count + ", declined_count=" + this.declined_count + ", incomingtime=" + this.incomingtime + ", onedayincomingah=" + this.onedayincomingah + ", longnumberdate=" + this.longnumberdate + '}';
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
        parcel.writeString(this.type_label_id);
        parcel.writeLong(this.date);
        parcel.writeString(this.old_tel_number);
        parcel.writeString(this.tel_number);
        parcel.writeString(this.format_tel_number);
        parcel.writeString(this.name);
        parcel.writeInt(this.max_report);
        parcel.writeInt(this.status);
        parcel.writeByte(this.isSpam ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.issetfav ? (byte) 1 : (byte) 0);
        parcel.writeString(this.block_times);
        parcel.writeString(this.complaint_times);
        parcel.writeString(this.number);
        parcel.writeString(this.tag_main);
        parcel.writeString(this.tag_sub);
        parcel.writeString(this.soft_comments);
        parcel.writeString(this.operator);
        parcel.writeString(this.t_p);
        parcel.writeString(this.comment_tags);
        parcel.writeString(this.country);
        parcel.writeString(this.subtype);
        parcel.writeString(this.subtype_cc);
        parcel.writeInt(this.raw_contact_id);
        parcel.writeInt(this.count);
        parcel.writeString(this.subtype_pdt);
        parcel.writeString(this.keyword);
        parcel.writeInt(this.is_activity);
        parcel.writeString(this.activity_count);
        parcel.writeInt(this.weekoutingnum);
        parcel.writeInt(this.block_count);
        parcel.writeInt(this.declined_count);
        parcel.writeLong(this.incomingtime);
        parcel.writeInt(this.onedayincomingah);
        parcel.writeLong(this.longnumberdate);
    }
}
