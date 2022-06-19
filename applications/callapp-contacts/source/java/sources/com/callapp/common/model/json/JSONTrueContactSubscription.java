package com.callapp.common.model.json;

import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONTrueContactSubscription.class */
public class JSONTrueContactSubscription implements Serializable {
    private static final long serialVersionUID = -8477479155289547744L;
    private String allocatedServer;
    private String peerHost;
    private String subscriptionId;

    @JsonIgnore
    public String getServerHost() {
        return StringUtils.m26045b((CharSequence) this.allocatedServer) ? this.allocatedServer : StringUtils.m26045b((CharSequence) this.peerHost) ? this.peerHost : "namerica.exposer.truecontact.me";
    }

    public String getSubscriptionId() {
        return this.subscriptionId;
    }

    public void setAllocatedServer(String str) {
        this.allocatedServer = str;
    }

    public void setPeerHost(String str) {
        this.peerHost = str;
    }

    public void setSubscriptionId(String str) {
        this.subscriptionId = str;
    }
}
