package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatSuperStickerDetails.class */
public final class LiveChatSuperStickerDetails extends GenericJson {
    @q
    private String amountDisplayString;
    @q
    @JsonString
    private BigInteger amountMicros;
    @q
    private String currency;
    @q
    private SuperStickerMetadata superStickerMetadata;
    @q
    private Long tier;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatSuperStickerDetails clone() {
        return (LiveChatSuperStickerDetails) super.clone();
    }

    public final String getAmountDisplayString() {
        return this.amountDisplayString;
    }

    public final BigInteger getAmountMicros() {
        return this.amountMicros;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final SuperStickerMetadata getSuperStickerMetadata() {
        return this.superStickerMetadata;
    }

    public final Long getTier() {
        return this.tier;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatSuperStickerDetails set(String str, Object obj) {
        return (LiveChatSuperStickerDetails) super.set(str, obj);
    }

    public final LiveChatSuperStickerDetails setAmountDisplayString(String str) {
        this.amountDisplayString = str;
        return this;
    }

    public final LiveChatSuperStickerDetails setAmountMicros(BigInteger bigInteger) {
        this.amountMicros = bigInteger;
        return this;
    }

    public final LiveChatSuperStickerDetails setCurrency(String str) {
        this.currency = str;
        return this;
    }

    public final LiveChatSuperStickerDetails setSuperStickerMetadata(SuperStickerMetadata superStickerMetadata) {
        this.superStickerMetadata = superStickerMetadata;
        return this;
    }

    public final LiveChatSuperStickerDetails setTier(Long l) {
        this.tier = l;
        return this;
    }
}
