package com.freshchat.consumer.sdk.beans;

import com.amazon.device.ads.DtbConstants;
import e.m.e.d0.b;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/BHWorkingDays.class */
public class BHWorkingDays {
    @b("5")
    private boolean dayFive;
    @b("4")
    private boolean dayFour;
    @b("1")
    private boolean dayOne;
    @b("6")
    private boolean daySix;
    @b("3")
    private boolean dayThree;
    @b("2")
    private boolean dayTwo;
    @b(DtbConstants.NETWORK_TYPE_UNKNOWN)
    private boolean dayZero;

    public boolean isWorkingOnDayFive() {
        return this.dayFive;
    }

    public boolean isWorkingOnDayFour() {
        return this.dayFour;
    }

    public boolean isWorkingOnDayOne() {
        return this.dayOne;
    }

    public boolean isWorkingOnDaySix() {
        return this.daySix;
    }

    public boolean isWorkingOnDayThree() {
        return this.dayThree;
    }

    public boolean isWorkingOnDayTwo() {
        return this.dayTwo;
    }

    public boolean isWorkingOnDayZero() {
        return this.dayZero;
    }

    public void setWorkingOnDayFive(boolean z) {
        this.dayFive = z;
    }

    public void setWorkingOnDayFour(boolean z) {
        this.dayFour = z;
    }

    public void setWorkingOnDayOne(boolean z) {
        this.dayOne = z;
    }

    public void setWorkingOnDaySix(boolean z) {
        this.daySix = z;
    }

    public void setWorkingOnDayThree(boolean z) {
        this.dayThree = z;
    }

    public void setWorkingOnDayTwo(boolean z) {
        this.dayTwo = z;
    }

    public void setWorkingOnDayZero(boolean z) {
        this.dayZero = z;
    }
}
