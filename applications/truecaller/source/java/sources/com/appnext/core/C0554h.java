package com.appnext.core;

import java.io.Serializable;
/* renamed from: com.appnext.core.h */
/* loaded from: classes-dex2jar.jar:com/appnext/core/h.class */
public class C0554h implements Serializable {
    private static final long serialVersionUID = 8086013010302241826L;
    private int adID = -1;
    private String adJSON = "";
    private String placementID = "";
    private String sid = "";

    public int getAdID() {
        return this.adID;
    }

    public String getAdJSON() {
        return this.adJSON;
    }

    public String getPlacementID() {
        return this.placementID;
    }

    public String getSession() {
        return this.sid;
    }

    public void setAdID(int i) {
        this.adID = i;
    }

    public void setAdJSON(String str) {
        this.adJSON = str;
    }

    public void setPlacementID(String str) {
        this.placementID = str;
    }

    public void setSession(String str) {
        this.sid = str;
    }
}
