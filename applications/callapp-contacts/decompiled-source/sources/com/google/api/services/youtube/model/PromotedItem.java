package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PromotedItem.class */
public final class PromotedItem extends GenericJson {
    @q
    private String customMessage;
    @q
    private PromotedItemId id;
    @q
    private Boolean promotedByContentOwner;
    @q
    private InvideoTiming timing;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PromotedItem clone() {
        return (PromotedItem) super.clone();
    }

    public final String getCustomMessage() {
        return this.customMessage;
    }

    public final PromotedItemId getId() {
        return this.id;
    }

    public final Boolean getPromotedByContentOwner() {
        return this.promotedByContentOwner;
    }

    public final InvideoTiming getTiming() {
        return this.timing;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PromotedItem set(String str, Object obj) {
        return (PromotedItem) super.set(str, obj);
    }

    public final PromotedItem setCustomMessage(String str) {
        this.customMessage = str;
        return this;
    }

    public final PromotedItem setId(PromotedItemId promotedItemId) {
        this.id = promotedItemId;
        return this;
    }

    public final PromotedItem setPromotedByContentOwner(Boolean bool) {
        this.promotedByContentOwner = bool;
        return this;
    }

    public final PromotedItem setTiming(InvideoTiming invideoTiming) {
        this.timing = invideoTiming;
        return this;
    }
}
