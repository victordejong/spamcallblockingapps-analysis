package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatSuperChatDetails.class */
public final class LiveChatSuperChatDetails extends GenericJson {
    @AbstractC15247q
    private String amountDisplayString;
    @AbstractC15247q
    @JsonString
    private BigInteger amountMicros;
    @AbstractC15247q
    private String currency;
    @AbstractC15247q
    private Long tier;
    @AbstractC15247q
    private String userComment;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatSuperChatDetails clone() {
        return (LiveChatSuperChatDetails) super.clone();
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

    public final Long getTier() {
        return this.tier;
    }

    public final String getUserComment() {
        return this.userComment;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatSuperChatDetails set(String str, Object obj) {
        return (LiveChatSuperChatDetails) super.set(str, obj);
    }

    public final LiveChatSuperChatDetails setAmountDisplayString(String str) {
        this.amountDisplayString = str;
        return this;
    }

    public final LiveChatSuperChatDetails setAmountMicros(BigInteger bigInteger) {
        this.amountMicros = bigInteger;
        return this;
    }

    public final LiveChatSuperChatDetails setCurrency(String str) {
        this.currency = str;
        return this;
    }

    public final LiveChatSuperChatDetails setTier(Long l) {
        this.tier = l;
        return this;
    }

    public final LiveChatSuperChatDetails setUserComment(String str) {
        this.userComment = str;
        return this;
    }
}
