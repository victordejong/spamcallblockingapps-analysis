package com.callapp.common.model.json;

import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONFBCategorizedType.class */
public class JSONFBCategorizedType extends JSONFBType {
    private static final long serialVersionUID = 5973827554122461872L;
    @JsonProperty("category")
    private String category;

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String str) {
        this.category = str;
    }
}
