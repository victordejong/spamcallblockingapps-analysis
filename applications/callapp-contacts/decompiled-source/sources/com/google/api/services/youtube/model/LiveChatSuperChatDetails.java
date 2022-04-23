package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatSuperChatDetails.class */
public final class LiveChatSuperChatDetails extends GenericJson {
    @q
    private String amountDisplayString;
    @q
    @JsonString
    private BigInteger amountMicros;
    @q
    private String currency;
    @q
    private Long tier;
    @q
    private String userComment;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
