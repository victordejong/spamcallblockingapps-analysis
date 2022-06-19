package com.allinone.callerid.bean.recorder;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "AudioSourceInfo")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/recorder/AudioSourceInfo.class */
public class AudioSourceInfo {
    @Column(name = "audiosource")
    private int audiosource;
    @Column(name = "brand")
    private String brand;
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8135id;
    @Column(name = "isselected")
    private boolean isselected;
    @Column(name = "phonemodel")
    private String phonemodel;
    @Column(name = "sdk")
    private int sdk;
    @Column(name = "showname")
    private String showname;
    @Column(name = "version")
    private String version;

    public int getAudiosource() {
        return this.audiosource;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getPhonemodel() {
        return this.phonemodel;
    }

    public int getSdk() {
        return this.sdk;
    }

    public String getShowname() {
        return this.showname;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isselected() {
        return this.isselected;
    }

    public void setAudiosource(int i) {
        this.audiosource = i;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setIsselected(boolean z) {
        this.isselected = z;
    }

    public void setPhonemodel(String str) {
        this.phonemodel = str;
    }

    public void setSdk(int i) {
        this.sdk = i;
    }

    public void setShowname(String str) {
        this.showname = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
