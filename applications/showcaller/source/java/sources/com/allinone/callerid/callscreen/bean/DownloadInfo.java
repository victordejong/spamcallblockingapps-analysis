package com.allinone.callerid.callscreen.bean;

import com.allinone.callerid.bean.ShortCut;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "DownloadInfo")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/bean/DownloadInfo.class */
public class DownloadInfo {
    public static final int DOWNLOAD_COMPLETE = 1;
    public static final int DOWNLOAD_ING = 2;
    @Column(name = "audio_path")
    private String audio_path;
    @Column(name = "dataId")
    private String dataId;
    @Column(name = "download_status")
    private int downloadStatus;
    @Column(autoGen = true, isId = true, name = "id", property = "NOT NULL")

    /* renamed from: id */
    private int f8430id;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = "path")
    private String path;
    @Column(name = "time")
    private long time;

    public String getAudio_path() {
        return this.audio_path;
    }

    public String getDataId() {
        return this.dataId;
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public int getId() {
        return this.f8430id;
    }

    public String getName() {
        return this.name;
    }

    public String getPath() {
        return this.path;
    }

    public long getTime() {
        return this.time;
    }

    public void setAudio_path(String str) {
        this.audio_path = str;
    }

    public void setDataId(String str) {
        this.dataId = str;
    }

    public void setDownloadStatus(int i) {
        this.downloadStatus = i;
    }

    public void setId(int i) {
        this.f8430id = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public String toString() {
        return "DownloadInfo{id=" + this.f8430id + ", name='" + this.name + "', path='" + this.path + "', audio_path='" + this.audio_path + "', time=" + this.time + ", downloadStatus=" + this.downloadStatus + ", dataId='" + this.dataId + "'}";
    }
}
