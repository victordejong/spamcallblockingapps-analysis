package com.callapp.contacts.util.ads;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONExperiment.class */
public class JSONExperiment<T> {
    @JsonProperty("experiments")
    private List<T> experiments;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Objects.equals(this.experiments, ((JSONExperiment) obj).experiments);
        }
        return false;
    }

    public List<T> getExperiments() {
        return this.experiments;
    }

    public int hashCode() {
        List<T> list = this.experiments;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }
}
