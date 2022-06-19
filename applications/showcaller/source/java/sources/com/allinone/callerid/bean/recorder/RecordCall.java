package com.allinone.callerid.bean.recorder;

import com.allinone.callerid.bean.ShortCut;
import java.io.Serializable;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "RrcordCall")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/recorder/RecordCall.class */
public class RecordCall implements Serializable {
    public static final int PHONESTATUSANSWER = 110;
    public static final int PHONESTATUSCALL = 111;
    public static final int harassstatusHARASS = 121;
    public static final int harassstatusORDINARY = 120;
    public static final int harassstatusUNIDENTIFICATION = 122;
    public static final int numbertypeCONTACT = 101;
    public static final int numbertypeSTRANGE = 100;
    @Column(name = "callid")
    private String callid;
    @Column(name = "callidint")
    private int callidint;
    @Column(name = "endtime")
    private long endtime;
    @Column(name = "filename")
    private String filename;
    @Column(name = "filepath")
    private String filepath;
    @Column(name = "filesize")
    private long filesize;
    @Column(name = "filesizestring")
    private String filesizestring;
    @Column(name = "harassstatus")
    private int harassstatus;
    private String hearddata;
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8137id;
    @Column(name = "isupload")
    private int isupload;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = ShortCut.NUMBER)
    private String number;
    @Column(name = "numbertype")
    private int numbertype;
    @Column(name = "phoneType")
    private String phoneType;
    @Column(name = "phonestatus")
    private int phonestatus;
    @Column(name = "recordcount")
    private int recordcount;
    @Column(name = "recordtime")
    private String recordtime;
    @Column(name = "recordtimems")
    private String recordtimems;
    @Column(name = "remark")
    private String remark;
    @Column(name = "starttime")
    private long starttime;
    @Column(name = "timespan")
    private long timespan;
    @Column(name = "timespanstring")
    private String timespanstring;
    @Column(name = "uploaddate")
    private String uploaddate;

    public long getEndtime() {
        return this.endtime;
    }

    public String getFilename() {
        return this.filename;
    }

    public String getFilepath() {
        return this.filepath;
    }

    public long getFilesize() {
        return this.filesize;
    }

    public String getFilesizestring() {
        return this.filesizestring;
    }

    public int getHarassstatus() {
        return this.harassstatus;
    }

    public String getHearddata() {
        return this.hearddata;
    }

    public int getIsupload() {
        return this.isupload;
    }

    public String getName() {
        return this.name;
    }

    public String getNumber() {
        return this.number;
    }

    public int getNumbertype() {
        return this.numbertype;
    }

    public String getPhoneType() {
        return this.phoneType;
    }

    public int getPhonestatus() {
        return this.phonestatus;
    }

    public int getRecordcount() {
        return this.recordcount;
    }

    public String getRecordtime() {
        return this.recordtime;
    }

    public String getRecordtimems() {
        return this.recordtimems;
    }

    public String getRemark() {
        return this.remark;
    }

    public String getShowName() {
        return (getName() == null || "".equals(getName())) ? getNumber() : getName();
    }

    public long getStarttime() {
        return this.starttime;
    }

    public long getTimespan() {
        return this.timespan;
    }

    public String getTimespanstring() {
        return this.timespanstring;
    }

    public String getUploaddate() {
        return this.uploaddate;
    }

    public void setEndtime(long j) {
        this.endtime = j;
    }

    public void setFilename(String str) {
        this.filename = str;
    }

    public void setFilepath(String str) {
        this.filepath = str;
    }

    public void setFilesize(long j) {
        this.filesize = j;
    }

    public void setFilesizestring(String str) {
        this.filesizestring = str;
    }

    public void setHarassstatus(int i) {
        this.harassstatus = i;
    }

    public void setHearddata(String str) {
        this.hearddata = str;
    }

    public void setIsupload(int i) {
        this.isupload = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public void setNumbertype(int i) {
        this.numbertype = i;
    }

    public void setPhoneType(String str) {
        this.phoneType = str;
    }

    public void setPhonestatus(int i) {
        this.phonestatus = i;
    }

    public void setRecordcount(int i) {
        this.recordcount = i;
    }

    public void setRecordtime(String str) {
        this.recordtime = str;
    }

    public void setRecordtimems(String str) {
        this.recordtimems = str;
    }

    public void setRemark(String str) {
        this.remark = str;
    }

    public void setStarttime(long j) {
        this.starttime = j;
    }

    public void setTimespan(long j) {
        this.timespan = j;
    }

    public void setTimespanstring(String str) {
        this.timespanstring = str;
    }

    public void setUploaddate(String str) {
        this.uploaddate = str;
    }

    public String toString() {
        return "RecordCall{id=" + this.f8137id + ", number='" + this.number + "', name='" + this.name + "', phonestatus=" + this.phonestatus + ", timespan=" + this.timespan + ", timespanstring='" + this.timespanstring + "', starttime=" + this.starttime + ", recordtime='" + this.recordtime + "', recordtimems='" + this.recordtimems + "', endtime=" + this.endtime + ", uploaddate='" + this.uploaddate + "', filesize=" + this.filesize + ", filesizestring='" + this.filesizestring + "', harassstatus=" + this.harassstatus + ", remark='" + this.remark + "', isupload=" + this.isupload + ", numbertype=" + this.numbertype + ", filepath='" + this.filepath + "', filename='" + this.filename + "', callid='" + this.callid + "', callidint=" + this.callidint + ", recordcount=" + this.recordcount + ", phoneType='" + this.phoneType + "', hearddata='" + this.hearddata + "'}";
    }
}
