package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBTag.class */
public class JSONFBTag implements Serializable {
    private static final long serialVersionUID = 1590164238814612090L;
    private String tag_uid;

    /* renamed from: x */
    private int f19125x;

    /* renamed from: y */
    private int f19126y;

    public JSONFBTag(String str, int i, int i2) {
        setTag_uid(str);
        this.f19125x = i;
        this.f19126y = i2;
    }

    public String getTag_uid() {
        return this.tag_uid;
    }

    public int getX() {
        return this.f19125x;
    }

    public int getY() {
        return this.f19126y;
    }

    public void setTag_uid(String str) {
        this.tag_uid = str;
    }

    public void setX(int i) {
        this.f19125x = i;
    }

    public void setY(int i) {
        this.f19126y = i;
    }
}
