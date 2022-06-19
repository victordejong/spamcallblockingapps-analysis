package com.allinone.callerid.bean;

import org.xutils.p343db.annotation.Column;
import org.xutils.p343db.annotation.Table;
@Table(name = "parseripbean")
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/ParserIpBean.class */
public class ParserIpBean {
    @Column(name = "city")
    private String city;
    @Column(name = "country")
    private String country;
    @Column(name = "country_full")
    private String country_full;
    @Column(autoGen = true, isId = true, name = "id")

    /* renamed from: id */
    private int f8127id;
    @Column(name = "state")
    private String state;
    @Column(name = "state_full")
    private String state_full;
    @Column(name = "true_ip")
    private String true_ip;

    public String getCity() {
        return this.city;
    }

    public String getCountry() {
        return this.country;
    }

    public String getCountry_full() {
        return this.country_full;
    }

    public int getId() {
        return this.f8127id;
    }

    public String getState() {
        return this.state;
    }

    public String getState_full() {
        return this.state_full;
    }

    public String getTrue_ip() {
        return this.true_ip;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCountry_full(String str) {
        this.country_full = str;
    }

    public void setId(int i) {
        this.f8127id = i;
    }

    public void setState(String str) {
        this.state = str;
    }

    public void setState_full(String str) {
        this.state_full = str;
    }

    public void setTrue_ip(String str) {
        this.true_ip = str;
    }

    public String toString() {
        return "ParserIpBean{id=" + this.f8127id + ", true_ip='" + this.true_ip + "', country='" + this.country + "', country_full='" + this.country_full + "', state='" + this.state + "', state_full='" + this.state_full + "', city='" + this.city + "'}";
    }
}
