package com.freshchat.consumer.sdk.beans;

import com.amazon.device.ads.DtbConstants;
import e.m.e.d0.b;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/BHWeekDays.class */
public class BHWeekDays {
    @b("5")
    private String dayFiveTimings;
    @b("4")
    private String dayFourTimings;
    @b("1")
    private String dayOneTimings;
    @b("6")
    private String daySixTimings;
    @b("3")
    private String dayThreeTimings;
    @b("2")
    private String dayTwoTimings;
    @b(DtbConstants.NETWORK_TYPE_UNKNOWN)
    private String dayZeroTimings;

    public String getDayFiveTimings() {
        return this.dayFiveTimings;
    }

    public String getDayFourTimings() {
        return this.dayFourTimings;
    }

    public String getDayOneTimings() {
        return this.dayOneTimings;
    }

    public String getDaySixTimings() {
        return this.daySixTimings;
    }

    public String getDayThreeTimings() {
        return this.dayThreeTimings;
    }

    public String getDayTwoTimings() {
        return this.dayTwoTimings;
    }

    public String getDayZeroTimings() {
        return this.dayZeroTimings;
    }

    public void setDayFiveTimings(String str) {
        this.dayFiveTimings = str;
    }

    public void setDayFourTimings(String str) {
        this.dayFourTimings = str;
    }

    public void setDayOneTimings(String str) {
        this.dayOneTimings = str;
    }

    public void setDaySixTimings(String str) {
        this.daySixTimings = str;
    }

    public void setDayThreeTimings(String str) {
        this.dayThreeTimings = str;
    }

    public void setDayTwoTimings(String str) {
        this.dayTwoTimings = str;
    }

    public void setDayZeroTimings(String str) {
        this.dayZeroTimings = str;
    }
}
