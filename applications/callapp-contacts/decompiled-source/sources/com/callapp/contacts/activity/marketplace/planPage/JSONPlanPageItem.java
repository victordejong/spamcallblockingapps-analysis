package com.callapp.contacts.activity.marketplace.planPage;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/planPage/JSONPlanPageItem.class */
public class JSONPlanPageItem {
    @JsonProperty("JsonPlanPage")
    private JsonPlanPageConfig jsonPlanPageConfig;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.jsonPlanPageConfig, ((JSONPlanPageItem) obj).jsonPlanPageConfig);
    }

    public JsonPlanPageConfig getJsonPlanPageConfig() {
        return this.jsonPlanPageConfig;
    }

    public int hashCode() {
        return Objects.hash(this.jsonPlanPageConfig);
    }

    public void setJsonPlanPageConfig(JsonPlanPageConfig jsonPlanPageConfig) {
        this.jsonPlanPageConfig = jsonPlanPageConfig;
    }
}
