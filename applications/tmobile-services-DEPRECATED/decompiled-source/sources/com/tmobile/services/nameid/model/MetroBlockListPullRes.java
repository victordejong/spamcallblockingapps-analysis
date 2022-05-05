package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/MetroBlockListPullRes.class */
public class MetroBlockListPullRes {
    @SerializedName("bl")
    @Expose

    /* renamed from: bl */
    List<String> f13609bl;
    @SerializedName("cnt")
    @Expose
    int cnt;

    public List<String> getBl() {
        return this.f13609bl;
    }

    public int getCnt() {
        return this.cnt;
    }

    public void setBl(List<String> list) {
        this.f13609bl = list;
    }

    public void setCnt(int i) {
        this.cnt = i;
    }
}
