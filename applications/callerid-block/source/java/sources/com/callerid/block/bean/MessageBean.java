package com.callerid.block.bean;
/* loaded from: classes-dex2jar.jar:com/callerid/block/bean/MessageBean.class */
public class MessageBean {
    private String date;
    private String date_time;

    /* renamed from: id */
    private String f4120id;
    private int imageOrVideo;
    private boolean isMms;
    private boolean isSelect;
    private boolean isSendIng;
    private String name;
    private String number;
    private String partId;
    private String spamtag;
    private String text;
    private long time;
    private int type;

    public String getDate() {
        return this.date;
    }

    public String getDate_time() {
        return this.date_time;
    }

    public String getId() {
        return this.f4120id;
    }

    public int getImageOrVideo() {
        return this.imageOrVideo;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public String getPartId() {
        return this.partId;
    }

    public String getSpamtag() {
        return this.spamtag;
    }

    public String getText() {
        return this.text;
    }

    public long getTime() {
        return this.time;
    }

    public int getType() {
        return this.type;
    }

    public boolean isMms() {
        return this.isMms;
    }

    public boolean isSelect() {
        return this.isSelect;
    }

    public boolean isSendIng() {
        return this.isSendIng;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setDate_time(String str) {
        this.date_time = str;
    }

    public void setId(String str) {
        this.f4120id = str;
    }

    public void setImageOrVideo(int i) {
        this.imageOrVideo = i;
    }

    public void setMms(boolean z) {
        this.isMms = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setPartId(String str) {
        this.partId = str;
    }

    public void setSelect(boolean z) {
        this.isSelect = z;
    }

    public void setSendIng(boolean z) {
        this.isSendIng = z;
    }

    public void setSpamtag(String str) {
        this.spamtag = str;
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "MessageBean{name='" + this.name + "', number='" + this.number + "', date='" + this.date + "', date_time='" + this.date_time + "', text='" + this.text + "', spamtag='" + this.spamtag + "', type=" + this.type + ", time=" + this.time + ", isMms=" + this.isMms + ", partId='" + this.partId + "', imageOrVideo=" + this.imageOrVideo + ", isSendIng=" + this.isSendIng + '}';
    }
}
