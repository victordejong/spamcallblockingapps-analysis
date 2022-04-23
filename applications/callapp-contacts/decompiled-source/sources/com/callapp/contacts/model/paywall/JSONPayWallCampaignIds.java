package com.callapp.contacts.model.paywall;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/paywall/JSONPayWallCampaignIds.class */
public class JSONPayWallCampaignIds implements Serializable {
    private static final long serialVersionUID = 6907713426266423706L;
    private List<String> campaingIds;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.campaingIds, ((JSONPayWallCampaignIds) obj).campaingIds);
    }

    public List<String> getCampaingIds() {
        return this.campaingIds;
    }

    public int hashCode() {
        return Objects.hash(this.campaingIds);
    }

    public void setCampaingIds(List<String> list) {
        this.campaingIds = list;
    }
}
