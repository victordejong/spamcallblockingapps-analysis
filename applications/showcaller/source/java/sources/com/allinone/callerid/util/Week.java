package com.allinone.callerid.util;

import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/Week.class */
public enum Week {
    MONDAY("星期一", EZCallApplication.m26146c().getString(R$string.Monday), "Mon.", 1),
    TUESDAY("星期二", EZCallApplication.m26146c().getString(R$string.Tuesday), "Tues.", 2),
    WEDNESDAY("星期三", EZCallApplication.m26146c().getString(R$string.Wednesday), "Wed.", 3),
    THURSDAY("星期四", EZCallApplication.m26146c().getString(R$string.Thursday), "Thur.", 4),
    FRIDAY("星期五", EZCallApplication.m26146c().getString(R$string.Friday), "Fri.", 5),
    SATURDAY("星期六", EZCallApplication.m26146c().getString(R$string.Saturday), "Sat.", 6),
    SUNDAY("星期日", EZCallApplication.m26146c().getString(R$string.Sunday), "Sun.", 7);
    
    String name_cn;
    String name_en;
    String name_enShort;
    int number;

    Week(String str, String str2, String str3, int i) {
        this.name_cn = str;
        this.name_en = str2;
        this.name_enShort = str3;
        this.number = i;
    }

    public String getChineseName() {
        return this.name_cn;
    }

    public String getName() {
        return this.name_en;
    }

    public int getNumber() {
        return this.number;
    }

    public String getShortName() {
        return this.name_enShort;
    }
}
