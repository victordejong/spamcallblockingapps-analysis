package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBTag.class */
public class JSONFBTag implements Serializable {
    private static final long serialVersionUID = 1590164238814612090L;
    private String tag_uid;
    private int x;
    private int y;

    public JSONFBTag(String str, int i, int i2) {
        setTag_uid(str);
        this.x = i;
        this.y = i2;
    }

    public String getTag_uid() {
        return this.tag_uid;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public void setTag_uid(String str) {
        this.tag_uid = str;
    }

    public void setX(int i) {
        this.x = i;
    }

    public void setY(int i) {
        this.y = i;
    }
}
