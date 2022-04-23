package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SubscriptionContentDetails.class */
public final class SubscriptionContentDetails extends GenericJson {
    @q
    private String activityType;
    @q
    private Long newItemCount;
    @q
    private Long totalItemCount;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SubscriptionContentDetails clone() {
        return (SubscriptionContentDetails) super.clone();
    }

    public final String getActivityType() {
        return this.activityType;
    }

    public final Long getNewItemCount() {
        return this.newItemCount;
    }

    public final Long getTotalItemCount() {
        return this.totalItemCount;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SubscriptionContentDetails set(String str, Object obj) {
        return (SubscriptionContentDetails) super.set(str, obj);
    }

    public final SubscriptionContentDetails setActivityType(String str) {
        this.activityType = str;
        return this;
    }

    public final SubscriptionContentDetails setNewItemCount(Long l) {
        this.newItemCount = l;
        return this;
    }

    public final SubscriptionContentDetails setTotalItemCount(Long l) {
        this.totalItemCount = l;
        return this;
    }
}
