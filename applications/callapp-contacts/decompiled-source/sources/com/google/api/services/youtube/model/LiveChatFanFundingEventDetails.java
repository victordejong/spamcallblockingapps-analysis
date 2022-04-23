package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatFanFundingEventDetails.class */
public final class LiveChatFanFundingEventDetails extends GenericJson {
    @q
    private String amountDisplayString;
    @q
    @JsonString
    private BigInteger amountMicros;
    @q
    private String currency;
    @q
    private String userComment;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatFanFundingEventDetails clone() {
        return (LiveChatFanFundingEventDetails) super.clone();
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

    public final String getUserComment() {
        return this.userComment;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatFanFundingEventDetails set(String str, Object obj) {
        return (LiveChatFanFundingEventDetails) super.set(str, obj);
    }

    public final LiveChatFanFundingEventDetails setAmountDisplayString(String str) {
        this.amountDisplayString = str;
        return this;
    }

    public final LiveChatFanFundingEventDetails setAmountMicros(BigInteger bigInteger) {
        this.amountMicros = bigInteger;
        return this;
    }

    public final LiveChatFanFundingEventDetails setCurrency(String str) {
        this.currency = str;
        return this;
    }

    public final LiveChatFanFundingEventDetails setUserComment(String str) {
        this.userComment = str;
        return this;
    }
}
