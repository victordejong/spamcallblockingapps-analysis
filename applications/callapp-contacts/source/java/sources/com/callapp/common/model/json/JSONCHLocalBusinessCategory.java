package com.callapp.common.model.json;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalBusinessCategory.class */
public class JSONCHLocalBusinessCategory implements Serializable {
    private static final long serialVersionUID = 7131005875740479836L;

    /* renamed from: id */
    private String f19121id;
    private String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONCHLocalBusinessCategory jSONCHLocalBusinessCategory = (JSONCHLocalBusinessCategory) obj;
        String str = this.f19121id;
        if (str != null) {
            if (!str.equals(jSONCHLocalBusinessCategory.f19121id)) {
                return false;
            }
        } else if (jSONCHLocalBusinessCategory.f19121id != null) {
            return false;
        }
        String str2 = this.name;
        String str3 = jSONCHLocalBusinessCategory.name;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getId() {
        return this.f19121id;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        String str = this.f19121id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.name;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }
}
