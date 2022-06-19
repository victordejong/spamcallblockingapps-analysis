package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBType.class */
public class JSONFBType extends CallAppJSONObject {
    private static final long serialVersionUID = -6860743694331745144L;
    @JsonProperty("id")

    /* renamed from: id */
    private String f19127id;
    @JsonProperty("name")
    private String name;

    public String getId() {
        return this.f19127id;
    }

    public String getName() {
        return this.name;
    }

    public void setId(String str) {
        this.f19127id = str;
    }

    public void setName(String str) {
        this.name = str;
    }
}
