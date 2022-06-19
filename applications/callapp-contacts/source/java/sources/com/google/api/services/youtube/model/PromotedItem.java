package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PromotedItem.class */
public final class PromotedItem extends GenericJson {
    @AbstractC15247q
    private String customMessage;
    @AbstractC15247q

    /* renamed from: id */
    private PromotedItemId f55590id;
    @AbstractC15247q
    private Boolean promotedByContentOwner;
    @AbstractC15247q
    private InvideoTiming timing;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final PromotedItem clone() {
        return (PromotedItem) super.clone();
    }

    public final String getCustomMessage() {
        return this.customMessage;
    }

    public final PromotedItemId getId() {
        return this.f55590id;
    }

    public final Boolean getPromotedByContentOwner() {
        return this.promotedByContentOwner;
    }

    public final InvideoTiming getTiming() {
        return this.timing;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final PromotedItem set(String str, Object obj) {
        return (PromotedItem) super.set(str, obj);
    }

    public final PromotedItem setCustomMessage(String str) {
        this.customMessage = str;
        return this;
    }

    public final PromotedItem setId(PromotedItemId promotedItemId) {
        this.f55590id = promotedItemId;
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
