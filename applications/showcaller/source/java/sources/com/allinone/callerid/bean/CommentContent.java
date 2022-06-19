package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "comment")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/CommentContent.class */
public class CommentContent {
    @Column(name = "audit")
    private String audit;
    @Column(name = "author")
    private String author;
    @Column(name = "cid")
    private String cid;
    @Column(name = "comments_count")
    private int comments_count;
    @Column(name = "content")
    private String content;
    @Column(name = "create_time")
    private String create_time;
    @Column(autoGen = true, isId = true, name = "id", property = "NOT NULL")

    /* renamed from: id */
    private int f8120id;
    @Column(name = "inform")
    private String inform;
    @Column(name = "state")
    private int report_state;
    @Column(name = "t_p")
    private String t_p;
    @Column(name = "tel_number")
    private String tel_number;
    @Column(name = "type_label")
    private String type_label;

    public String getAudit() {
        return this.audit;
    }

    public String getAuthor() {
        return this.author;
    }

    public String getCid() {
        return this.cid;
    }

    public int getComments_count() {
        return this.comments_count;
    }

    public String getContent() {
        return this.content;
    }

    public String getCreate_time() {
        return this.create_time;
    }

    public int getId() {
        return this.f8120id;
    }

    public String getInform() {
        return this.inform;
    }

    public int getReport_state() {
        return this.report_state;
    }

    public String getT_p() {
        return this.t_p;
    }

    public String getTel_number() {
        return this.tel_number;
    }

    public String getType_label() {
        return this.type_label;
    }

    public void setAudit(String str) {
        this.audit = str;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setComments_count(int i) {
        this.comments_count = i;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCreate_time(String str) {
        this.create_time = str;
    }

    public void setId(int i) {
        this.f8120id = i;
    }

    public void setInform(String str) {
        this.inform = str;
    }

    public void setReport_state(int i) {
        this.report_state = i;
    }

    public void setT_p(String str) {
        this.t_p = str;
    }

    public void setTel_number(String str) {
        this.tel_number = str;
    }

    public void setType_label(String str) {
        this.type_label = str;
    }

    public String toString() {
        return "CommentContent{id=" + this.f8120id + ", cid='" + this.cid + "', tel_number='" + this.tel_number + "', author='" + this.author + "', create_time='" + this.create_time + "', content='" + this.content + "', audit='" + this.audit + "', inform='" + this.inform + "', t_p='" + this.t_p + "', comments_count=" + this.comments_count + ", report_state=" + this.report_state + ", type_label='" + this.type_label + "'}";
    }
}
