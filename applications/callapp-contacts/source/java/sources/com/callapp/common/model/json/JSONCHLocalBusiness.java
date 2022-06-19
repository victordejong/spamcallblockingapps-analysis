package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocalBusiness.class */
public class JSONCHLocalBusiness implements Serializable {
    private static final long serialVersionUID = 8253443982999039749L;
    private List<JSONCHLocalBusinessCategory> categories;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        List<JSONCHLocalBusinessCategory> list = this.categories;
        List<JSONCHLocalBusinessCategory> list2 = ((JSONCHLocalBusiness) obj).categories;
        return list != null ? list.equals(list2) : list2 == null;
    }

    public List<JSONCHLocalBusinessCategory> getCategories() {
        return this.categories;
    }

    public int hashCode() {
        List<JSONCHLocalBusinessCategory> list = this.categories;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }
}
