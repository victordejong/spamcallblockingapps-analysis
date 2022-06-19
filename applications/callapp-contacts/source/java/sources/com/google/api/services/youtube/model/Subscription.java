package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Subscription.class */
public final class Subscription extends GenericJson {
    @AbstractC15247q
    private SubscriptionContentDetails contentDetails;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55592id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private SubscriptionSnippet snippet;
    @AbstractC15247q
    private SubscriptionSubscriberSnippet subscriberSnippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Subscription clone() {
        return (Subscription) super.clone();
    }

    public final SubscriptionContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55592id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final SubscriptionSnippet getSnippet() {
        return this.snippet;
    }

    public final SubscriptionSubscriberSnippet getSubscriberSnippet() {
        return this.subscriberSnippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Subscription set(String str, Object obj) {
        return (Subscription) super.set(str, obj);
    }

    public final Subscription setContentDetails(SubscriptionContentDetails subscriptionContentDetails) {
        this.contentDetails = subscriptionContentDetails;
        return this;
    }

    public final Subscription setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Subscription setId(String str) {
        this.f55592id = str;
        return this;
    }

    public final Subscription setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Subscription setSnippet(SubscriptionSnippet subscriptionSnippet) {
        this.snippet = subscriptionSnippet;
        return this;
    }

    public final Subscription setSubscriberSnippet(SubscriptionSubscriberSnippet subscriptionSubscriberSnippet) {
        this.subscriberSnippet = subscriptionSubscriberSnippet;
        return this;
    }
}
