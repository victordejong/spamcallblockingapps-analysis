package com.allinone.callerid.callscreen.bean;

import com.allinone.callerid.bean.ShortCut;
import java.io.File;
import java.io.Serializable;
import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "HomeInfo")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/bean/HomeInfo.class */
public class HomeInfo implements Serializable {
    @Column(name = "audio_path")
    private String audio_path;
    private String audio_url;
    private String author;
    private boolean contacts_diy;
    private int contacts_diy_counts;
    private String data_id;
    private boolean defautl_diy;
    private int downloads;
    private String gifimg_url;
    private long hdvideo_size;
    private String hdvideo_url;
    @Column(autoGen = true, isId = true, name = "id", property = "NOT NULL")

    /* renamed from: id */
    private int f8431id;
    @Column(name = "isUnLock")
    private boolean isUnLock;
    @Column(name = "isUseVideoAudioRing")
    private boolean isUseVideoAudioRing;
    @Column(name = "isdefault")
    private boolean isdefault;
    @Column(name = "isdiy")
    private boolean isdiy;
    private boolean islike;
    private boolean isreport;
    @Column(name = "isselect")
    private boolean isselect;
    private String jpgimg_url;
    private int like_count;
    @Column(name = ShortCut.NAME)
    private String name;
    @Column(name = "path")
    private String path;
    @Column(name = "phone")
    private String phone;
    private long sdvideo_size;
    private String sdvideo_url;
    @Column(name = "time")
    private long time;

    public String getAudio_path() {
        return this.audio_path;
    }

    public String getAudio_url() {
        return this.audio_url;
    }

    public String getAuthor() {
        return this.author;
    }

    public int getContacts_diy_counts() {
        return this.contacts_diy_counts;
    }

    public String getData_id() {
        return this.data_id;
    }

    public int getDownloads() {
        return this.downloads;
    }

    public String getGifimg_url() {
        return this.gifimg_url;
    }

    public long getHdvideo_size() {
        return this.hdvideo_size;
    }

    public String getHdvideo_url() {
        return this.hdvideo_url;
    }

    public int getId() {
        return this.f8431id;
    }

    public String getJpgimg_url() {
        return this.jpgimg_url;
    }

    public int getLike_count() {
        return this.like_count;
    }

    public String getName() {
        return this.name;
    }

    public String getPath() {
        return this.path;
    }

    public String getPhone() {
        return this.phone;
    }

    public long getSdvideo_size() {
        return this.sdvideo_size;
    }

    public String getSdvideo_url() {
        return this.sdvideo_url;
    }

    public long getTime() {
        return this.time;
    }

    public boolean isContacts_diy() {
        return this.contacts_diy;
    }

    public boolean isDefautl_diy() {
        return this.defautl_diy;
    }

    public boolean isDownloaded() {
        String str = this.path;
        return str != null && !"".equals(str) && new File(this.path).exists();
    }

    public boolean isIsdefault() {
        return this.isdefault;
    }

    public boolean isIsdiy() {
        return this.isdiy;
    }

    public boolean isIslike() {
        return this.islike;
    }

    public boolean isIsreport() {
        return this.isreport;
    }

    public boolean isIsselect() {
        return this.isselect;
    }

    public boolean isUnLock() {
        return this.isUnLock;
    }

    public boolean isUseVideoAudioRing() {
        return this.isUseVideoAudioRing;
    }

    public void setAudio_path(String str) {
        this.audio_path = str;
    }

    public void setAudio_url(String str) {
        this.audio_url = str;
    }

    public void setAuthor(String str) {
        this.author = str;
    }

    public void setContacts_diy(boolean z) {
        this.contacts_diy = z;
    }

    public void setContacts_diy_counts(int i) {
        this.contacts_diy_counts = i;
    }

    public void setData_id(String str) {
        this.data_id = str;
    }

    public void setDefautl_diy(boolean z) {
        this.defautl_diy = z;
    }

    public void setDownloads(int i) {
        this.downloads = i;
    }

    public void setGifimg_url(String str) {
        this.gifimg_url = str;
    }

    public void setHdvideo_size(long j) {
        this.hdvideo_size = j;
    }

    public void setHdvideo_url(String str) {
        this.hdvideo_url = str;
    }

    public void setId(int i) {
        this.f8431id = i;
    }

    public void setIsdefault(boolean z) {
        this.isdefault = z;
    }

    public void setIsdiy(boolean z) {
        this.isdiy = z;
    }

    public void setIslike(boolean z) {
        this.islike = z;
    }

    public void setIsreport(boolean z) {
        this.isreport = z;
    }

    public void setIsselect(boolean z) {
        this.isselect = z;
    }

    public void setJpgimg_url(String str) {
        this.jpgimg_url = str;
    }

    public void setLike_count(int i) {
        this.like_count = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setSdvideo_size(long j) {
        this.sdvideo_size = j;
    }

    public void setSdvideo_url(String str) {
        this.sdvideo_url = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setUnLock(boolean z) {
        this.isUnLock = z;
    }

    public void setUseVideoAudioRing(boolean z) {
        this.isUseVideoAudioRing = z;
    }

    public String toString() {
        return "HomeInfo{data_id='" + this.data_id + "', author='" + this.author + "', gifimg_url='" + this.gifimg_url + "', jpgimg_url='" + this.jpgimg_url + "', sdvideo_url='" + this.sdvideo_url + "', sdvideo_size=" + this.sdvideo_size + ", hdvideo_url='" + this.hdvideo_url + "', hdvideo_size=" + this.hdvideo_size + ", audio_url='" + this.audio_url + "', downloads=" + this.downloads + ", like_count=" + this.like_count + ", islike=" + this.islike + ", isreport=" + this.isreport + ", defautl_diy=" + this.defautl_diy + ", contacts_diy=" + this.contacts_diy + ", contacts_diy_counts=" + this.contacts_diy_counts + ", id=" + this.f8431id + ", name='" + this.name + "', path='" + this.path + "', audio_path='" + this.audio_path + "', isselect=" + this.isselect + ", phone='" + this.phone + "', isdefault=" + this.isdefault + ", time=" + this.time + ", isdiy=" + this.isdiy + ", isUnLock=" + this.isUnLock + '}';
    }
}
