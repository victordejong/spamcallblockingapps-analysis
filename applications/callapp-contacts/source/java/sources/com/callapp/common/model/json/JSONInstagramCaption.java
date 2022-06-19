package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInstagramCaption.class */
public class JSONInstagramCaption implements Serializable {
    private static final long serialVersionUID = 361966636775290474L;
    long created_time;

    /* renamed from: id */
    String f19129id;
    String text;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONInstagramCaption)) {
            return false;
        }
        JSONInstagramCaption jSONInstagramCaption = (JSONInstagramCaption) obj;
        if (this.created_time != jSONInstagramCaption.created_time) {
            return false;
        }
        String str = this.f19129id;
        if (str == null) {
            if (jSONInstagramCaption.f19129id != null) {
                return false;
            }
        } else if (!str.equals(jSONInstagramCaption.f19129id)) {
            return false;
        }
        String str2 = this.text;
        return str2 == null ? jSONInstagramCaption.text == null : str2.equals(jSONInstagramCaption.text);
    }

    public long getCreated_time() {
        return this.created_time;
    }

    public String getId() {
        return this.f19129id;
    }

    public String getText() {
        return this.text;
    }

    public int hashCode() {
        long j = this.created_time;
        int i = (int) (j ^ (j >>> 32));
        String str = this.f19129id;
        int i2 = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.text;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((i + 31) * 31) + hashCode) * 31) + i2;
    }

    public void setCreated_time(long j) {
        this.created_time = j;
    }

    public void setId(String str) {
        this.f19129id = str;
    }

    public void setText(String str) {
        this.text = str;
    }
}
