package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBCategory.class */
public class JSONFBCategory implements Serializable {
    private static final long serialVersionUID = -5807713970751434722L;

    /* renamed from: id */
    private String f19123id;
    private String name;

    public JSONFBCategory() {
    }

    public JSONFBCategory(String str, String str2) {
        this.f19123id = str;
        this.name = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONFBCategory)) {
            return false;
        }
        JSONFBCategory jSONFBCategory = (JSONFBCategory) obj;
        String str = this.f19123id;
        if (str == null) {
            if (jSONFBCategory.f19123id != null) {
                return false;
            }
        } else if (!str.equals(jSONFBCategory.f19123id)) {
            return false;
        }
        String str2 = this.name;
        return str2 == null ? jSONFBCategory.name == null : str2.equals(jSONFBCategory.name);
    }

    public String getId() {
        return this.f19123id;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.f19123id;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.name;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setId(String str) {
        this.f19123id = str;
    }

    public void setName(String str) {
        this.name = str;
    }
}
