package com.allinone.callerid.bean;

import com.allinone.callerid.search.CallLogBean;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/bean/QuickContactBean.class */
public class QuickContactBean {
    private CallLogBean bean;
    private Boolean isquick;

    public CallLogBean getBean() {
        return this.bean;
    }

    public Boolean getIsquick() {
        return this.isquick;
    }

    public void setBean(CallLogBean callLogBean) {
        this.bean = callLogBean;
    }

    public void setIsquick(Boolean bool) {
        this.isquick = bool;
    }

    public String toString() {
        return "QuickContactBean{bean=" + this.bean.toString() + ", isquick=" + this.isquick + '}';
    }
}
