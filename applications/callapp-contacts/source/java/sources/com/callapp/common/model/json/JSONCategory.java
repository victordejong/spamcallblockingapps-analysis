package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCategory.class */
public class JSONCategory extends CallAppJSONObject {
    private static final long serialVersionUID = -8433614498912375585L;
    private String name;
    private String url;

    public JSONCategory() {
    }

    public JSONCategory(JSONCategory jSONCategory) {
        this.name = jSONCategory.name;
        this.url = jSONCategory.url;
    }

    public JSONCategory(String str, String str2) {
        this.name = str;
        this.url = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONCategory)) {
            return false;
        }
        JSONCategory jSONCategory = (JSONCategory) obj;
        String str = this.name;
        if (str == null) {
            if (jSONCategory.name != null) {
                return false;
            }
        } else if (!str.equals(jSONCategory.name)) {
            return false;
        }
        String str2 = this.url;
        return str2 == null ? jSONCategory.url == null : str2.equals(jSONCategory.url);
    }

    public String getName() {
        return this.name;
    }

    public String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.url;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "JSONCategory{name='" + this.name + "', url='" + this.url + "'}";
    }
}
