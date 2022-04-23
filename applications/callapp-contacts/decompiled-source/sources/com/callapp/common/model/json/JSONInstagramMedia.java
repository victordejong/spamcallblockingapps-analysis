package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInstagramMedia.class */
public class JSONInstagramMedia implements Serializable {
    private static final long serialVersionUID = 1521227413123238983L;
    private JSONInstagramCaption caption;
    private long created_time;
    private String id;
    private JSONInstagramImages images;
    private String link;
    private String type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONInstagramMedia jSONInstagramMedia = (JSONInstagramMedia) obj;
        if (this.created_time != jSONInstagramMedia.created_time) {
            return false;
        }
        JSONInstagramCaption jSONInstagramCaption = this.caption;
        if (jSONInstagramCaption != null) {
            if (!jSONInstagramCaption.equals(jSONInstagramMedia.caption)) {
                return false;
            }
        } else if (jSONInstagramMedia.caption != null) {
            return false;
        }
        String str = this.link;
        if (str != null) {
            if (!str.equals(jSONInstagramMedia.link)) {
                return false;
            }
        } else if (jSONInstagramMedia.link != null) {
            return false;
        }
        String str2 = this.type;
        if (str2 != null) {
            if (!str2.equals(jSONInstagramMedia.type)) {
                return false;
            }
        } else if (jSONInstagramMedia.type != null) {
            return false;
        }
        String str3 = this.id;
        if (str3 != null) {
            if (!str3.equals(jSONInstagramMedia.id)) {
                return false;
            }
        } else if (jSONInstagramMedia.id != null) {
            return false;
        }
        JSONInstagramImages jSONInstagramImages = this.images;
        JSONInstagramImages jSONInstagramImages2 = jSONInstagramMedia.images;
        return jSONInstagramImages != null ? jSONInstagramImages.equals(jSONInstagramImages2) : jSONInstagramImages2 == null;
    }

    public JSONInstagramCaption getCaption() {
        return this.caption;
    }

    public long getCreated_time() {
        return this.created_time;
    }

    public String getId() {
        return this.id;
    }

    public JSONInstagramImages getImages() {
        return this.images;
    }

    public String getLink() {
        return this.link;
    }

    public String getType() {
        return this.type;
    }

    public int hashCode() {
        JSONInstagramCaption jSONInstagramCaption = this.caption;
        int i = 0;
        int hashCode = jSONInstagramCaption != null ? jSONInstagramCaption.hashCode() : 0;
        String str = this.link;
        int hashCode2 = str != null ? str.hashCode() : 0;
        long j = this.created_time;
        int i2 = (int) (j ^ (j >>> 32));
        String str2 = this.type;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.id;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        JSONInstagramImages jSONInstagramImages = this.images;
        if (jSONInstagramImages != null) {
            i = jSONInstagramImages.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public void setCaption(JSONInstagramCaption jSONInstagramCaption) {
        this.caption = jSONInstagramCaption;
    }

    public void setCreated_time(long j) {
        this.created_time = j;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImages(JSONInstagramImages jSONInstagramImages) {
        this.images = jSONInstagramImages;
    }

    public void setLink(String str) {
        this.link = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
