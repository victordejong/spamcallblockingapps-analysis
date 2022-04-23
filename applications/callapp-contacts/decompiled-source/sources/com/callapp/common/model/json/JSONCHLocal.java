package com.callapp.common.model.json;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONCHLocal.class */
public class JSONCHLocal extends CallAppJSONObject {
    private static final long serialVersionUID = -3177291182052897005L;
    private List<JSONCHLocalResult> results;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        List<JSONCHLocalResult> list = this.results;
        List<JSONCHLocalResult> list2 = ((JSONCHLocal) obj).results;
        return list != null ? list.equals(list2) : list2 == null;
    }

    public List<JSONCHLocalResult> getResults() {
        return this.results;
    }

    public int hashCode() {
        List<JSONCHLocalResult> list = this.results;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public void setResults(List<JSONCHLocalResult> list) {
        this.results = list;
    }
}
