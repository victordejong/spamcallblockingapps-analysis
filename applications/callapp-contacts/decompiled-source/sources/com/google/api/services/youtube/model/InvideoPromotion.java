package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/InvideoPromotion.class */
public final class InvideoPromotion extends GenericJson {
    @q
    private InvideoTiming defaultTiming;
    @q
    private List<PromotedItem> items;
    @q
    private InvideoPosition position;
    @q
    private Boolean useSmartTiming;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final InvideoPromotion clone() {
        return (InvideoPromotion) super.clone();
    }

    public final InvideoTiming getDefaultTiming() {
        return this.defaultTiming;
    }

    public final List<PromotedItem> getItems() {
        return this.items;
    }

    public final InvideoPosition getPosition() {
        return this.position;
    }

    public final Boolean getUseSmartTiming() {
        return this.useSmartTiming;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final InvideoPromotion set(String str, Object obj) {
        return (InvideoPromotion) super.set(str, obj);
    }

    public final InvideoPromotion setDefaultTiming(InvideoTiming invideoTiming) {
        this.defaultTiming = invideoTiming;
        return this;
    }

    public final InvideoPromotion setItems(List<PromotedItem> list) {
        this.items = list;
        return this;
    }

    public final InvideoPromotion setPosition(InvideoPosition invideoPosition) {
        this.position = invideoPosition;
        return this;
    }

    public final InvideoPromotion setUseSmartTiming(Boolean bool) {
        this.useSmartTiming = bool;
        return this;
    }
}
