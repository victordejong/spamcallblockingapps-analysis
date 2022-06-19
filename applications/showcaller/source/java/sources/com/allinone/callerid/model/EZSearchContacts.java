package com.allinone.callerid.model;

import com.allinone.callerid.bean.ShortCut;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "com_allinone_callerid_model_EZSearchContacts")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/model/EZSearchContacts.class */
public class EZSearchContacts {
    @Column(name = "activity_count")
    private String activity_count;
    @Column(name = "address")
    private String address;
    @Column(name = "avatar")
    private String avatar;
    @Column(name = "belong_area")
    private String belong_area;
    @Column(name = "block_count")
    private int block_count;
    @Column(name = "cc")

    /* renamed from: cc */
    private String f9969cc;
    @Column(name = "comment_count")
    private String comment_count;
    @Column(name = "comment_tags")
    private String comment_tags;
    @Column(name = "country")
    private String country;
    @Column(name = "date")
    private long date;
    @Column(name = "declined_count")
    private int declined_count;
    @Column(name = "e164_tel_number")
    private String e164_tel_number;
    @Column(name = "faild_error_log")
    private int faild_error_log;
    @Column(name = "fb_avatar")
    private String fb_avatar;
    @Column(name = "format_tel_number")
    private String format_tel_number;
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f9970id;
    @Column(name = "isSearched")
    private boolean isSearched;
    @Column(name = "is_activity")
    private int is_activity;
    @Column(name = "keyword")
    private String keyword;
    @Column(name = "longnumberdate")
    private long longnumberdate;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = "name_tags")
    private String name_tags;
    @Column(name = "old_tel_number")
    private String old_tel_number;
    @Column(name = "onedayincomingah")
    private int onedayincomingah;
    @Column(name = "operator")
    private String operator;
    @Column(name = "report_count")
    private String report_count;
    @Column(name = "search_time")
    private long search_time;
    @Column(name = "searched_buyu")
    private boolean searched_buyu;
    @Column(name = "subtype")
    private String subtype;
    @Column(name = "subtype_cc")
    private String subtype_cc;
    @Column(name = "subtype_isserach")
    private boolean subtype_isserach;
    @Column(name = "subtype_pdt")
    private String subtype_pdt;
    @Column(name = "t_p")
    private String t_p;
    @Column(name = "tag_main")
    private String tag_main;
    @Column(name = "tag_sub")
    private String tag_sub;
    @Column(name = "tel_number")
    private String tel_number;
    @Column(name = "type")
    private String type;
    @Column(name = "type_label")
    private String type_label;
    @Column(name = "type_tags")
    private String type_tags;
    @Column(name = "website")
    private String website;
    @Column(name = "weekoutingnum")
    private int weekoutingnum;
    @Column(name = "weekoutingtime")
    private long weekoutingtime;
    @Column(name = "wiki_search_time")
    private long wiki_search_time;
    @Column(name = "soft_comments")
    private String soft_comments = "[]";
    @Column(name = "is_can_search")
    private boolean is_can_search = true;
    @Column(name = "can_search_commentcount")
    private boolean can_search_commentcount = true;

    public String getActivity_count() {
        return this.activity_count;
    }

    public String getAddress() {
        return this.address;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getBelong_area() {
        return this.belong_area;
    }

    public int getBlock_count() {
        return this.block_count;
    }

    public String getCc() {
        return this.f9969cc;
    }

    public String getComment_count() {
        return this.comment_count;
    }

    public String getComment_tags() {
        return this.comment_tags;
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

    public String getE164_tel_number() {
        return this.e164_tel_number;
    }

    public int getFaild_error_log() {
        return this.faild_error_log;
    }

    public String getFb_avatar() {
        return this.fb_avatar;
    }

    public String getFormat_tel_number() {
        return this.format_tel_number;
    }

    public int getId() {
        return this.f9970id;
    }

    public int getIs_activity() {
        return this.is_activity;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public long getLongnumberdate() {
        return this.longnumberdate;
    }

    public String getName() {
        return this.name;
    }

    public String getName_tags() {
        return this.name_tags;
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

    public String getReport_count() {
        return this.report_count;
    }

    public long getSearch_time() {
        return this.search_time;
    }

    public String getSoft_comments() {
        return this.soft_comments;
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

    public String getType_tags() {
        return this.type_tags;
    }

    public String getWebsite() {
        return this.website;
    }

    public int getWeekoutingnum() {
        return this.weekoutingnum;
    }

    public long getWeekoutingtime() {
        return this.weekoutingtime;
    }

    public long getWiki_search_time() {
        return this.wiki_search_time;
    }

    public boolean isCan_search_commentcount() {
        return this.can_search_commentcount;
    }

    public boolean isIs_can_search() {
        return this.is_can_search;
    }

    public boolean isSearched() {
        return this.isSearched;
    }

    public boolean isSearched_buyu() {
        return this.searched_buyu;
    }

    public boolean isSubtype_isserach() {
        return this.subtype_isserach;
    }

    public void setActivity_count(String str) {
        this.activity_count = str;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBelong_area(String str) {
        this.belong_area = str;
    }

    public void setBlock_count(int i) {
        this.block_count = i;
    }

    public void setCan_search_commentcount(boolean z) {
        this.can_search_commentcount = z;
    }

    public void setCc(String str) {
        this.f9969cc = str;
    }

    public void setComment_count(String str) {
        this.comment_count = str;
    }

    public void setComment_tags(String str) {
        this.comment_tags = str;
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

    public void setE164_tel_number(String str) {
        this.e164_tel_number = str;
    }

    public void setFaild_error_log(int i) {
        this.faild_error_log = i;
    }

    public void setFb_avatar(String str) {
        this.fb_avatar = str;
    }

    public void setFormat_tel_number(String str) {
        this.format_tel_number = str;
    }

    public void setId(int i) {
        this.f9970id = i;
    }

    public void setIs_activity(int i) {
        this.is_activity = i;
    }

    public void setIs_can_search(boolean z) {
        this.is_can_search = z;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setLongnumberdate(long j) {
        this.longnumberdate = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setName_tags(String str) {
        this.name_tags = str;
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

    public void setReport_count(String str) {
        this.report_count = str;
    }

    public void setSearch_time(long j) {
        this.search_time = j;
    }

    public void setSearched(boolean z) {
        this.isSearched = z;
    }

    public void setSearched_buyu(boolean z) {
        this.searched_buyu = z;
    }

    public void setSoft_comments(String str) {
        this.soft_comments = str;
    }

    public void setSubtype(String str) {
        this.subtype = str;
    }

    public void setSubtype_cc(String str) {
        this.subtype_cc = str;
    }

    public void setSubtype_isserach(boolean z) {
        this.subtype_isserach = z;
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

    public void setType_tags(String str) {
        this.type_tags = str;
    }

    public void setWebsite(String str) {
        this.website = str;
    }

    public void setWeekoutingnum(int i) {
        this.weekoutingnum = i;
    }

    public void setWeekoutingtime(long j) {
        this.weekoutingtime = j;
    }

    public void setWiki_search_time(long j) {
        this.wiki_search_time = j;
    }

    public String toString() {
        return "EZSearchContacts{id=" + this.f9970id + ", tel_number='" + this.tel_number + "', old_tel_number='" + this.old_tel_number + "', format_tel_number='" + this.format_tel_number + "', operator='" + this.operator + "', type='" + this.type + "', type_label='" + this.type_label + "', report_count='" + this.report_count + "', name='" + this.name + "', address='" + this.address + "', belong_area='" + this.belong_area + "', faild_error_log=" + this.faild_error_log + ", avatar='" + this.avatar + "', fb_avatar='" + this.fb_avatar + "', tag_main='" + this.tag_main + "', tag_sub='" + this.tag_sub + "', soft_comments='" + this.soft_comments + "', website='" + this.website + "', t_p='" + this.t_p + "', type_tags='" + this.type_tags + "', name_tags='" + this.name_tags + "', comment_tags='" + this.comment_tags + "', country='" + this.country + "', keyword='" + this.keyword + "', subtype='" + this.subtype + "', subtype_cc='" + this.subtype_cc + "', subtype_pdt='" + this.subtype_pdt + "', subtype_isserach=" + this.subtype_isserach + ", date=" + this.date + ", isSearched=" + this.isSearched + ", search_time=" + this.search_time + ", is_can_search=" + this.is_can_search + ", comment_count='" + this.comment_count + "', can_search_commentcount=" + this.can_search_commentcount + ", is_activity=" + this.is_activity + ", activity_count='" + this.activity_count + "', e164_tel_number='" + this.e164_tel_number + "', cc='" + this.f9969cc + "', block_count=" + this.block_count + ", declined_count=" + this.declined_count + ", wiki_search_time=" + this.wiki_search_time + ", onedayincomingah=" + this.onedayincomingah + ", longnumberdate=" + this.longnumberdate + ", searched_buyu=" + this.searched_buyu + ", weekoutingnum=" + this.weekoutingnum + ", weekoutingtime=" + this.weekoutingtime + '}';
    }
}
